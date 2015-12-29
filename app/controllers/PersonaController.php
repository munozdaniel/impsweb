<?php

use Phalcon\Mvc\Model\Criteria;
use Phalcon\Paginator\Adapter\Model as Paginator;

class PersonaController extends ControllerBase
{
    public function initialize()
    {
        $this->tag->setTitle('Datos Personales');
        $this->view->setTemplateAfter('admin');
        $this->assets->collection('footerInline')
            ->addInlineJs("$(\".navbar-fixed-top\").addClass('past-main');");

        parent::initialize();
    }

    /**
     * Index action
     */
    public function indexAction()
    {
        $this->persistent->parameters = null;
    }



    /**
     * Searches for persona
     */
    public function searchAction()
    {

        $numberPage = 1;
        if ($this->request->isPost()) {
            $query = Criteria::fromInput($this->di, "Persona", $_POST);
            $this->persistent->parameters = $query->getParams();
        } else {
            $numberPage = $this->request->getQuery("page", "int");
        }

        $parameters = $this->persistent->parameters;
        if (!is_array($parameters)) {
            $parameters = array();
        }
        $parameters["order"] = "persona_id";

        $persona = Persona::find($parameters);
        if (count($persona) == 0) {
            $this->flash->notice("No se han encontrado resultados");

            return $this->dispatcher->forward(array(
                "controller" => "persona",
                "action" => "index"
            ));
        }

        $paginator = new Paginator(array(
            "data" => $persona,
            "limit" => 10,
            "page" => $numberPage
        ));

        $this->view->page = $paginator->getPaginate();
    }

    /**
     * Displays the creation form
     */
    public function newAction()
    {
        $this->view->formulario = new DatosPersonalesForm();

    }

    /**
     * Edits a persona
     *
     * @param string $persona_id
     */
    public function editAction($persona_id)
    {

        if (!$this->request->isPost()) {

            $persona = Persona::findFirstBypersona_id($persona_id);
            if (!$persona) {
                $this->flash->error("La persona no fue encontrada");

                return $this->dispatcher->forward(array(
                    "controller" => "persona",
                    "action" => "index"
                ));
            }

            $this->view->persona_id = $persona->persona_id;

            $this->tag->setDefault("persona_id", $persona->getPersonaId());
            $this->tag->setDefault("persona_apellido", $persona->getPersonaApellido());
            $this->tag->setDefault("persona_nombre", $persona->getPersonaNombre());
            $this->tag->setDefault("persona_fechaNacimiento", $persona->getPersonaFechanacimiento());
            $this->tag->setDefault("persona_tipoDocumentoId", $persona->getPersonaTipodocumentoid());
            $this->tag->setDefault("persona_numeroDocumento", $persona->getPersonaNumerodocumento());
            $this->tag->setDefault("persona_sexo", $persona->getPersonaSexo());
            $this->tag->setDefault("persona_nacionalidadId", $persona->getPersonaNacionalidadid());
            $this->tag->setDefault("persona_localidadId", $persona->getPersonaLocalidadid());
            $this->tag->setDefault("persona_telefono", $persona->getPersonaTelefono());
            $this->tag->setDefault("persona_celular", $persona->getPersonaCelular());
            $this->tag->setDefault("persona_email", $persona->getPersonaEmail());
            $this->tag->setDefault("persona_estadoCivilId", $persona->getPersonaEstadocivilid());
            $this->tag->setDefault("persona_habilitado", $persona->getPersonaHabilitado());
            $this->tag->setDefault("persona_fechaCreacion", $persona->getPersonaFechacreacion());

        }
    }

    /**
     * Permite cargar el combobox Ciudad segun la provincia que se seleccione.
     */
    public function buscarCiudadesAction()
    {
        $this->view->disable();

        if($this->request->isPost())
        {
            if($this->request->isAjax())
            {
                $id= $this->request->getPost("id","int");
                $ciudadesPorProvincia = Ciudad::findByCiudad_provinciaId($id);
                foreach ($ciudadesPorProvincia as $ciudad) {
                    $resData[]= array("ciudad_id"=>$ciudad->ciudad_id, "ciudad_nombre"=>$ciudad->ciudad_nombre);
                }
                if (count($ciudadesPorProvincia) > 0)
                {
                    $this->response->setJsonContent(array("lista"=>$resData));
                    $this->response->setStatusCode(200,"OK");
                }
                else
                    $this->response->setStatusCode(404, "Not Found");

                $this->response->send();
            }
        }

    }
    /**
     * Creates a new persona
     */
    public function createAction()
    {

        if (!$this->request->isPost()) {
            return $this->dispatcher->forward(array(
                "controller" => "persona",
                "action" => "index"
            ));
        }
        try {
            $this->db->begin();
            /*==================== DATOS PERSONALES =========================*/
            $persona = new Persona();

            $persona->setPersonaApellido($this->request->getPost("persona_apellido"),array('string'));
            $persona->setPersonaNombre($this->request->getPost("persona_nombre",array('string')));
            $persona->setPersonaFechanacimiento($this->request->getPost("persona_fechaNacimiento"));
            $persona->setPersonaTipodocumentoid($this->request->getPost("persona_tipoDocumentoId"));
            $persona->setPersonaNumerodocumento($this->request->getPost("persona_numeroDocumento",array('int')));
            $persona->setPersonaSexo($this->request->getPost("persona_sexo"));
            $persona->setPersonaNacionalidadid($this->request->getPost("persona_nacionalidadId"));
            $persona->setPersonaLocalidadid($this->request->getPost("persona_localidadId"));
            $persona->setPersonaTelefono($this->request->getPost("persona_telefono",array('int')));
            $persona->setPersonaCelular($this->request->getPost("persona_celular",array('int')));
            $persona->setPersonaEmail($this->request->getPost("persona_email"));
            $persona->setPersonaEstadocivilid($this->request->getPost("persona_estadoCivilId"));
            $persona->setPersonaHabilitado(1);
            $persona->setPersonaFechacreacion(Date('Y-m-d'));


            if (!$persona->save()) {
                foreach ($persona->getMessages() as $message) {
                    $this->flash->message('problema',$message);
                }
                $this->db->rollback();
                return $this->redireccionar('persona/new');

            }
            /*==================== CURRICULUM =========================*/
            $curriculum = new Curriculum();
            $curriculum->setCurriculumPersonaid($persona->getPersonaId());
            $curriculum->setCurriculumHabilitado(1);
            $curriculum->setCurriculumFechaCreacion(date('Y-m-d'));
            if (!$curriculum->save()) {
                foreach ($curriculum->getMessages() as $message) {
                    $this->flash->message('problema',$message);
                }
                $this->db->rollback();
                return $this->redireccionar('persona/new');
            }
            $this->flash->success("Los Datos Personales han sido cargados correctamente");
            $this->db->commit();
            return $this->redireccionar('curriculum/ver');

        } catch (Phalcon\Mvc\Model\Transaction\Failed $e) {
            $this->flash->message('problema','Transaccion Fallida: ', $e->getMessage());
        } catch (\Exception $e) {
            $this->flash->message('problema','Transaccion Fallida2: ', $e->getMessage());
        }
    }

    /**
     * Saves a persona edited
     *
     */
    public function saveAction()
    {

        if (!$this->request->isPost()) {
            return $this->dispatcher->forward(array(
                "controller" => "persona",
                "action" => "index"
            ));
        }

        $persona_id = $this->request->getPost("persona_id");

        $persona = Persona::findFirstBypersona_id($persona_id);
        if (!$persona) {
            $this->flash->error("persona does not exist " . $persona_id);

            return $this->dispatcher->forward(array(
                "controller" => "persona",
                "action" => "index"
            ));
        }

        $persona->setPersonaApellido($this->request->getPost("persona_apellido"));
        $persona->setPersonaNombre($this->request->getPost("persona_nombre"));
        $persona->setPersonaFechanacimiento($this->request->getPost("persona_fechaNacimiento"));
        $persona->setPersonaTipodocumentoid($this->request->getPost("persona_tipoDocumentoId"));
        $persona->setPersonaNumerodocumento($this->request->getPost("persona_numeroDocumento"));
        $persona->setPersonaSexo($this->request->getPost("persona_sexo"));
        $persona->setPersonaNacionalidadid($this->request->getPost("persona_nacionalidadId"));
        $persona->setPersonaLocalidadid($this->request->getPost("persona_localidadId"));
        $persona->setPersonaTelefono($this->request->getPost("persona_telefono"));
        $persona->setPersonaCelular($this->request->getPost("persona_celular"));
        $persona->setPersonaEmail($this->request->getPost("persona_email"));
        $persona->setPersonaEstadocivilid($this->request->getPost("persona_estadoCivilId"));
        $persona->setPersonaHabilitado($this->request->getPost("persona_habilitado"));
        $persona->setPersonaFechacreacion($this->request->getPost("persona_fechaCreacion"));


        if (!$persona->save()) {

            foreach ($persona->getMessages() as $message) {
                $this->flash->error($message);
            }

            return $this->dispatcher->forward(array(
                "controller" => "persona",
                "action" => "edit",
                "params" => array($persona->persona_id)
            ));
        }

        $this->flash->success("Los Datos Personales se han actualizado correctamente");

        return $this->dispatcher->forward(array(
            "controller" => "persona",
            "action" => "index"
        ));

    }

    /**
     * Deletes a persona
     *
     * @param string $persona_id
     */
    public function deleteAction($persona_id)
    {

        $persona = Persona::findFirstBypersona_id($persona_id);
        if (!$persona) {
            $this->flash->error("Los Datos Personales no fueron encontrados");

            return $this->dispatcher->forward(array(
                "controller" => "persona",
                "action" => "index"
            ));
        }

        if (!$persona->delete()) {

            foreach ($persona->getMessages() as $message) {
                $this->flash->error($message);
            }

            return $this->dispatcher->forward(array(
                "controller" => "persona",
                "action" => "search"
            ));
        }

        $this->flash->success("La persona ha sido eliminada.");

        return $this->dispatcher->forward(array(
            "controller" => "persona",
            "action" => "index"
        ));
    }

}
