<section id="onepage" class="admin bg-rayado">

    {#Firefox: Para ver el calendario en los input type=date #}
    {{ javascript_include('js/firefox/polyfiller.js') }}
    <script>
        webshims.setOptions('forms-ext', {types: 'date'});
        webshims.polyfill('forms forms-ext');
    </script>


    <style>
        .heading h2 {font-size: 35px;line-height: 35px;}
    </style>

    <div class="container">
        <div class="row" align="center" style="margin-top: 30px;">
            <div class="heading">
                <h2 class="">Período de Solicitud de Turnos</h2>
                {{ link_to('administrar/index','class':'btn btn-lg btn-primary pull-left','<i class="fa fa-undo"></i> VOLVER') }}
                <p><i class="fa fa-info-circle"
                      style="vertical-align: middle;font-size: 35px;color: #5e7b97;margin-left: 2%;margin-right: 1%;"></i>
                    <em>Llene los campos para generar un nuevo período para solicitar turnos.</em>
                </p>
            </div>
        </div>

        <div class="row  form-blanco borde-top borde-left-4 borde-right-4">
            <div class="" align="center">
                <h3 style="text-transform: uppercase">{{ content() }}</h3>
            </div>

            <div class="col-md-12">
                    {{ form('turnos/guardarPeriodoSolicitud','method':'post','style':'text-align:left') }}

                    <div class="row">
                        <div align="center">
                            <h4><ins><strong>Período para solicitud de turnos </strong></ins></h4><br>

                        </div>
                        <div class="col-md-4 col-md-offset-2">
                            {{ formulario.label('periodoSolicitudDesde',['class': 'control-label']) }}
                            {{ formulario.render('periodoSolicitudDesde',['class': 'form-control']) }}
                            {{ formulario.messages('periodoSolicitudDesde') }}
                        </div>
                        <div class="col-md-4">
                            {{ formulario.label('periodoSolicitudHasta',['class': 'control-label']) }}
                            {{ formulario.render('periodoSolicitudHasta',['class': 'form-control']) }}
                            {{ formulario.messages('periodoSolicitudHasta') }}
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-md-4 col-md-offset-2">
                            {{ formulario.label('periodoAtencionDesde',['class': 'control-label']) }}
                            {{ formulario.render('periodoAtencionDesde',['class': 'form-control']) }}
                            {{ formulario.messages('periodoAtencionDesde') }}
                        </div>
                        <div class="col-md-4">
                            {{ formulario.label('cantidadTurnos',['class': 'control-label']) }}
                            {{ formulario.render('cantidadTurnos' ,['class': 'form-control']) }}
                            {{ formulario.messages('cantidadTurnos') }}
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-md-4 col-md-offset-2">
                            {{ formulario.label('cantidadDias',['class': 'control-label']) }}
                            {{ formulario.render('cantidadDias',['class': 'form-control']) }}
                            {{ formulario.messages('cantidadDias') }}
                        </div>

                    </div>
                    <hr>

                    <div class="row">
                        <div class="col-lg-9 col-lg-offset-4">
                            {{ submit_button('GUARDAR','class':'btn btn-blue btn-lg form-control','style':'width:320px;') }}
                        </div>
                    </div>
                    {{ end_form() }}

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