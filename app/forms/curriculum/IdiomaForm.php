<?php
/**
 * Created by PhpStorm.
 * User: dmunioz
 * Date: 20/01/2016
 * Time: 14:21
 */
use Phalcon\Forms\Form;
use Phalcon\Forms\Element\Text;
use Phalcon\Forms\Element\TextArea;
use Phalcon\Validation\Validator\PresenceOf;
use \Phalcon\Forms\Element\Date;
use \Phalcon\Forms\Element\Email;
use \Phalcon\Forms\Element\Select;
class IdiomaForm extends Form {
    /**
     * Initialize the products form
     */
    public function initialize($entity = null, $options = array())
    {

        /*========================== IDIOMA ==========================*/
        $elemento = new Text('idiomas_nombre',array('class'=>'form-control','required'=>'true','placeholder'=>'Ingrese el Idioma'));
        $elemento->setLabel('Idioma');
        $elemento->setFilters(array('striptags', 'string'));

        $this->add($elemento);
        /*========================== ==========================*/
        $elemento = new Select('idiomas_nivelId', \Curriculum\Nivel::find(), array(
            'using'      => array('nivel_id', 'nivel_nombre'),
            'useEmpty'   => true,
            'emptyText'  => 'Seleccionar ',
            'emptyValue' => '',
            'class'      => 'form-control','required'=>'true'
        ));
        $elemento->addValidators(array(
            new PresenceOf(array(
                'message' => 'Seleccione el Nivel'
            ))
        ));
        $elemento->setLabel('Nivel');
        $this->add($elemento);

    }

}