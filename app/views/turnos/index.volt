<section id="certificacion">
    <div class="container">

        <div class="row">
            <div class="col-lg-12 col-md-12">
                <div class="about_area">
                    <!-- START  SOLICITUD TURNOS HEADING -->
                    <div class="heading">
                        <h2 class="wow fadeInLeftBig">Solicite turnos para préstamos personales</h2>


                        <br>

                        <p><i class="fa fa-info-circle"
                              style="vertical-align: middle;font-size: 35px;color: #5e7b97;margin-left: 2%;margin-right: 1%;"></i>
                            <em>Por favor, llene los siguientes campos para solicitar un turno con el departamento de Préstamos .</em>
                            <br/>
                            <em style="color:tomato">* Campos obligatorios.</em>
                        </p>
                    </div>
                    <div class="pull-right">
                        {{ link_to('index/index','class':'btn btn-lg btn-default btn-block btn-volver',
                        '<i class="fa fa-undo"></i> VOLVER') }}
                    </div>
                </div>
            </div>
        </div>

        <div class="row formulario-turnos">
            <div class="col-md-12">
                {{ content() }}
            </div>

            <div class="col-lg-8 col-md-8 col-md-offset-2">

                <!-- START SOLICITUD TURNOS CONTENT -->
                <div class="about_content wow bounceInUp ">
                    {{ form('turnos/index','method':'post','style':'','class':'') }}

                    {% set name = 1 %}
                    {% for elto in formulario %}
                    <div class="row">

                        <div class="col-lg-3  col-md-3  col-sm-6 col-xs-12 col-md-offset-2">
                        {{ elto.label(['class': 'control-label']) }}
                        </div>

                        <div class="col-lg-9  col-md-9  col-sm-6 col-xs-12 col-md-offset-5">
                            {{ elto }}
                            {{ formulario.messages(elto.getName()) }}
                        </div>

                    </div><br/>

                    {% endfor %}

                    <br/>

                    <div class="row">
                        <div class="col-lg-9 col-lg-offset-4">
                            {{ submit_button('ENVIAR DATOS','class':'btn btn-blue btn-lg btn-block','style':'width:320px;') }}
                        </div>
                    </div>

                    {{ end_form() }}

                </div>
            </div>
        </div>
    </div>
</section>
<!-- cdn for modernizr, if you haven't included it already -->
<script src="http://cdn.jsdelivr.net/webshim/1.12.4/extras/modernizr-custom.js"></script>
<!-- polyfiller file to detect and load polyfills -->
<script src="http://cdn.jsdelivr.net/webshim/1.12.4/polyfiller.js"></script>
<script>
    webshims.setOptions('waitReady', false);
    webshims.setOptions('forms-ext', {types: 'date'});
    webshims.polyfill('forms forms-ext');
</script>