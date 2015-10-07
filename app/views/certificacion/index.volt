<section id="certificacion">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12">
                <div class="about_area">
                    <!-- START CERTIFICACION HEADING -->
                    <div class="heading">
                        <h2 class="wow fadeInLeftBig">Certificación de Supervivencia</h2>

                        <div class="pull-right">{{ link_to('index/index','class':'btn btn-lg btn-default btn-block btn-volver','<i class="fa fa-undo"></i> VOLVER') }}</div>
                        <p>A través de este servicio, Ud. podrá obtener el comprobante de Certificación Negativa que
                            acredita que
                            no registra antecedentes de Jubilación y/o Pensión del Instituto Municipal de Previsión
                            Social de la
                            Ciudad de Neuquén.
                        </p>
                    </div>

                    <!-- START CERTIFICACION CONTENT -->
                    <div class="about_content wow bounceInUp">
                        <div class="row">
                            <div class="col-lg-12 col-md-12">
                                <div class="certificacion-info">
                                    <hr>
                                    <i class="fa fa-info-circle"
                                       style="vertical-align: middle;font-size: 35px;color: #5e7b97;margin-left: 2%;margin-right: 1%;"></i>
                                    <span>
                                         <em>Por favor, ingrese el número de documento, <strong>SIN</strong> puntos ni
                                             comas, luego,
                                             presione sobre el botón <strong>Generar PDF</strong>.</em>
                                         <hr>
                                    </span>
                                </div>
                                {{ content() }}
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-12">
                                <div class="certificacion-form" align="center">
                                    {{ form('certificacion/generar','method':'post') }}
                                    <div>
                                        {{ text_field('certificacion-nroDoc','class':'','style':'width:50%;height: 50px !important;font-size: 26px;','placeholder':' INGRESE SU Nº DE DOCUMENTO') }}
                                    </div>
                                    <br>
                                    <br>

                                    <div class="col-md-4 col-md-offset-4">
                                        {{ submit_button('GENERAR PDF','class':'btn btn-blue btn-lg btn-block') }}
                                        <br>
                                    </div>
                                    {{ end_form() }}
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>