<!--=========== BEGIN SERVICE SECTION ================-->
<section id="service" class="fondo">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12">
                <!-- BEGAIN SERVICE HEADING -->
                <div class="heading">
                    <h2 class="wow fadeInLeftBig">Servicios Online</h2>
                    <p>Desde la comodidad de tu casa podrás usar nuestros servicios. </p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12 col-md-12">
                <!-- BEGAIN SERVICE  -->
                <div class="service_area">
                    <div class="row">
                        <div class="col-md-4 list-group list-group-content">
                            <h3 class="font-gotham">{{ image('img/servicios/icon_turnos.png') }} Turnos Online <small>para</small> Préstamos</h3>
                            {{ link_to('index/presentacionTurnos',' <h4>¿Como funciona?</h4>
                                <p>Le explicamos con detalle en que consiste nuestro servicio para solicitar los turnos.</p>
                            ','class':'list-group-item puntero') }}
                            {#============#}
                            {{ link_to('solicitudTurno/calendario',' <h4>Ver Calendario</h4>
                                <p>Visite nuestro calendario para visualizar cuando puede solictar turnos.</p>','class':'list-group-item puntero') }}
                            {#===== Se genera un link_to en index/index =======#}
                            <div id="solicitudes">
                                <a id="btn_turno" class="list-group-item">
                                  {{ image('img/turnos/loading.gif','alt':'Analizando Estado del Periodo', 'height':'30','weight':'30') }}
                                    <p class="pulse_text" style="display: inline;"> Analizando Estado del Período</p>

                                </a>
                            </div>
                        </div>
                        <div class="col-md-4 list-group list-group-content">
                            <h3 class="font-gotham">{{ image('img/servicios/icon_cn.png') }} Certificación Negativa</h3>
                            {{ link_to('certificacion/index',' <h4>Solicitar Comprobante</h4>
                                <p>Ud. podrá obtener el comprobante de Certificación Negativa que acredita que no registra antecedentes de Jubilación y/o Pensión del Instituto Municipal de Previsión Social de la Ciudad de Neuquén.</p>','class':'list-group-item puntero') }}
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--=========== END SERVICE SECTION ================-->
