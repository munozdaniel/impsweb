<?php
/**
 * Created by PhpStorm.
 * User: dmunioz
 * Date: 21/12/2015
 * Time: 13:12
 */

use Phalcon\Forms\Form;
use Phalcon\Forms\Element\Text;
use Phalcon\Forms\Element\TextArea;
use Phalcon\Validation\Validator\PresenceOf;
use \Phalcon\Forms\Element\Date;
use \Phalcon\Forms\Element\Email;
use \Phalcon\Forms\Element\Select;
class DatosPersonalesForm  extends Form {
    /**
     * Initialize the products form
     */
    public function initialize($entity = null, $options = array())
    {
     /*   if (!isset($options['edit'])) {

            $element = new Text("persona_id");
            $this->add($element->setLabel("Id"));
        } else {
            $this->add(new \Phalcon\Forms\Element\Hidden("persona_id"));
        }*/
        /*========================== ==========================*/
        $persona_apellido = new Text('persona_apellido');
        $persona_apellido->setLabel('<strong class="font-rojo "> * </strong>Apellido');
        $persona_apellido->setFilters(array('striptags', 'string'));
        $persona_apellido->addValidators(array(
            new PresenceOf(array(
                'message' => 'El Apellido es requerido'
            ))
        ));
        $this->add($persona_apellido);
        /*========================== ==========================*/
        $persona_nombre = new Text('persona_nombre');
        $persona_nombre->setLabel('<strong class="font-rojo "> * </strong>Nombre');
        $persona_nombre->setFilters(array('striptags', 'string'));
        $persona_nombre->addValidators(array(
            new PresenceOf(array(
                'message' => 'El Nombre es requerido'
            ))
        ));
        $this->add($persona_nombre);
        /*========================== ==========================*/
        $persona_fechaNacimiento = new Date('persona_fechaNacimiento');
        $persona_fechaNacimiento->setLabel('<strong class="font-rojo "> * </strong>Fecha Nacimiento');
        $persona_fechaNacimiento->setFilters(array('striptags', 'string'));
        $persona_fechaNacimiento->addValidators(array(
            new PresenceOf(array(
                'message' => 'La Fecha Nacimiento es requerida'
            ))
        ));
        $this->add($persona_fechaNacimiento);
        /*========================== ==========================*/
        $persona_tipoDocumentoId = new Select('persona_tipoDocumentoId', \Curriculum\Tipodocumento::find(), array(
            'using'      => array('tipodocumento_id', 'tipodocumento_descripcion'),
            'useEmpty'   => true,
            'emptyText'  => 'Seleccionar ',
            'emptyValue' => ''
        ));
        $persona_tipoDocumentoId->addValidators(array(
            new PresenceOf(array(
                'message' => 'Seleccione el Tipo de Documento'
            ))
        ));
        $persona_tipoDocumentoId->setLabel('<strong class="font-rojo "> * </strong>Tipo Documento');
        $this->add($persona_tipoDocumentoId);
        /*========================== ==========================*/
        $persona_numeroDocumento = new Text('persona_numeroDocumento',array('placeholder'=>'SOLO NÚMEROS'));
        $persona_numeroDocumento->setLabel('<strong class="font-rojo "> * </strong>Nro Documento');
        $persona_numeroDocumento->setFilters(array('int'));
        $persona_numeroDocumento->addValidators(array(
            new PresenceOf(array(
                'message' => 'El Documento es requerido'
            ))
        ));
        $this->add($persona_numeroDocumento);
        /*========================== ==========================*/
        $persona_sexo = new Select('persona_sexo', array('Masculino','Femenino'));
        $this->add($persona_sexo);
        /*========================== ==========================*/
        $persona_sexo = new Select('persona_sexo', array('Masculino','Femenino'));
        $persona_sexo->setLabel('<strong class="font-rojo "> * </strong>Sexo');
        $this->add($persona_sexo);
        /*========================== Estado Civil ==========================*/
        $persona_estadoCivilId = new Select('persona_estadoCivilId',  \Curriculum\Estadocivil::find(), array(
            'using'      => array('estadoCivil_id', 'estadoCivil_nombre'),
            'useEmpty'   => true,
            'emptyText'  => 'Seleccionar ',
            'emptyValue' => ''
        ));
        $persona_estadoCivilId->addValidators(array(
            new PresenceOf(array(
                'message' => 'Seleccione el Estado Civil'
            ))
        ));
        $persona_estadoCivilId->setLabel('<strong class="font-rojo "> * </strong>Estado Civil');
        $this->add($persona_estadoCivilId);
        /*========================== ==========================*/
        $persona_nacionalidadId = new Select('persona_nacionalidadId',  \Curriculum\Nacionalidad::find(), array(
            'using'      => array('nacionalidad_id', 'nacionalidad_nombre'),
            'useEmpty'   => true,
            'emptyText'  => 'Seleccionar ',
            'emptyValue' => ''
        ));
        $persona_nacionalidadId->addValidators(array(
            new PresenceOf(array(
                'message' => 'Seleccione la Nacionalidad'
            ))
        ));
        $persona_nacionalidadId->setLabel('<strong class="font-rojo "> * </strong>Nacionalidad');
        $this->add($persona_nacionalidadId);

        /*========================== ==========================*/
        $localidad_codigoPostal = new Text('localidad_codigoPostal');
        $localidad_codigoPostal->setLabel('<strong class="font-rojo "> * </strong>Codigo Postal');
        $localidad_codigoPostal->setFilters(array('int'));
        $localidad_codigoPostal->addValidators(array(
            new PresenceOf(array(
                'message' => 'El Codigo Postal es requerido'
            ))
        ));
        $this->add($localidad_codigoPostal);
        /*========================== Dependent Select Dropdown ==========================*/
        $provincia = new Select('provincia_id',  \Curriculum\Provincia::find(), array(
            'using'      => array('provincia_id', 'provincia_nombre'),
            'useEmpty'   => true,
            'emptyText'  => 'Seleccionar ',
            'emptyValue' => ''
        ));
        $provincia->addValidators(array(
            new PresenceOf(array(
                'message' => 'Seleccione la Provincia'
            ))
        ));
        $provincia->setLabel('<strong class="font-rojo "> * </strong>Provincia');
        $this->add($provincia);

        $ciudad =  new Select('ciudad_id',array(), array(
            'using'      => array('ciudad_id', 'ciudad_nombre'),
            'useEmpty'   => true,
            'emptyText'  => 'Seleccionar Provincia',
            'emptyValue' => ''
        ));
        $ciudad->addValidators(array(
            new PresenceOf(array(
                'message' => 'Seleccione la Ciudad'
            ))
        ));
        $ciudad->setLabel('<strong class="font-rojo "> * </strong>Ciudad');
        $this->add($ciudad);

        /*========================== Domicilio ==========================*/
        $localidad_domicilio = new Text('localidad_domicilio');
        $localidad_domicilio->setLabel('<strong class="font-rojo "> * </strong>Domicilio');
        $localidad_domicilio->setFilters(array('string'));
        $localidad_domicilio->addValidators(array(
            new PresenceOf(array(
                'message' => 'El Domicilio es requerido'
            ))
        ));
        $this->add($localidad_domicilio);
        /*========================== Telefono ==========================*/
        $persona_telefono = new Text('persona_telefono',array('placeholder'=>'SOLO NÚMEROS'));
        $persona_telefono->setLabel('<strong class="font-rojo "> * </strong>Teléfono <small>(Únicamente números)</small>');
        $persona_telefono->setFilters(array('int'));
        $persona_telefono->addValidators(array(
            new PresenceOf(array(
                'message' => 'El Teléfono es requerido'
            ))
        ));
        $this->add($persona_telefono);
        /*========================== Celular ==========================*/
        $persona_celular = new Text('persona_celular',array('placeholder'=>'SOLO NÚMEROS'));
        $persona_celular->setLabel('Celular <small>(Únicamente números)</small>');
        $persona_celular->setFilters(array('int'));
        $persona_celular->addValidators(array(
            new PresenceOf(array(
                'message' => 'El Celular es requerido'
            ))
        ));
        $this->add($persona_celular);
        /*========================== Email ==========================*/
        $persona_email = new Email('persona_email',array('placeholder'=>'ejemplo@imps.org.ar'));
        $persona_email->setLabel('<strong class="font-rojo "> * </strong>Email');
        $persona_email->setFilters(array('email'));
        $persona_email->addValidators(array(
            new PresenceOf(array(
                'message' => 'El Email es requerido'
            ))
        ));
        $this->add($persona_email);

        /*========================== Script para los selects dependientes =============== */
        $script = new DataListScript('script_ciudadProvincia',array(
            'url' => '/impsweb/persona/buscarCiudades',
            'idPrincipal'=>'provincia_id',
            'idSecundario'=>'ciudad_id',
            'columnas'=>array('ciudad_id','ciudad_nombre')
        ));
        $script->setLabel(" ");
        $this->add($script);
    }
}