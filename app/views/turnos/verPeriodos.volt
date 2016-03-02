<section id="onepage" class="admin bg-rayado">

    <style>
        a {
            color: #2da2c8
        }
        .heading h2 {
            font-size: 35px;
            line-height: 35px;
        }
    </style>

    <div class="container">
        <div class="row" align="center" style="margin-top: 30px;">
            <div class="heading">
                <h2 class="">Listado de periodos
                    <small> Activos/Inactivos</small>
                </h2>
                {{ link_to('administrar/index','class':'btn btn-lg btn-primary pull-left','<i class="fa fa-undo"></i> VOLVER') }}
                <p style="font-size: 20px">
                    A continuación se visualizarán todos los períodos creados hasta la fecha.
                    <br><em style="color:tomato">
                        <ins>Advertencia:</ins>
                        La modificación del periodo activo queda bajo responsabilidad del usuario.</em>
                </p>
            </div>
        </div>
        <div class="row  form-blanco borde-top borde-left-4 borde-right-4 borde-bottom-4">

            <div class="" align="center">
                <h3 style="text-transform: uppercase">{{ content() }}</h3>
            </div>

            <table class="table table-striped table-bordered table-condensed" style="text-align: center !important;">
                <thead>
                <tr>
                    <th style="text-align: center !important;">Inicio de Solicitud</th>
                    <th style="text-align: center !important;">Fin de Solicitud</th>
                    <th style="text-align: center !important;">Día de Atención</th>
                    <th style="text-align: center !important;">Cantidad de Turnos</th>
                    <th style="text-align: center !important;">Cantidad de Turnos Autorizados</th>
                    <th style="text-align: center !important;">Cantidad de días para confirmación</th>
                    <th style="text-align: center !important;">Activo</th>
                    <th style="text-align: center !important;"><i class="glyphicon glyphicon-edit"></i></th>
                </tr>
                </thead>

                <tbody>
                {% for item in tabla.items %}
                    {% if   item.fechasTurnos_activo == 0 %}
                        <tr>
                    {% else %}
                        <tr style="background-color: rgba(154, 205, 50, 0.28); font-style: italic; font-weight: bold">
                    {% endif %}
                    <td>
                        {% set fechaModif =  date('d/m/Y',(item.fechasTurnos_inicioSolicitud) | strtotime) %}
                        {{ fechaModif }}
                    </td>
                    <td>
                        {% set fechaModif =  date('d/m/Y',(item.fechasTurnos_finSolicitud) | strtotime) %}
                        {{ fechaModif }}
                    </td>
                    <td>
                        {% set fechaModif =  date('d/m/Y',(item.fechasTurnos_diaAtencion) | strtotime) %}
                        {{ fechaModif }}
                    </td>
                    <td>{{ item.fechasTurnos_cantidadDeTurnos }}</td>
                    <td>{{ item.fechasTurnos_cantidadAutorizados }}</td>
                    <td>{{ item.fechasTurnos_cantidadDiasConfirmacion }}</td>
                    {% if   item.fechasTurnos_activo == 0 %}
                        <td>NO</td>
                        <td>-</td>
                    {% else %}
                        <td>SI</td>
                        <td width="7%">
                            {{ link_to("turnos/editarPeriodo/"~item.fechasTurnos_id,'<i class="glyphicon glyphicon-edit"></i> Editar', "class": "btn btn-danger") }}
                        </td>
                    {% endif %}
                    </tr>
                {% endfor %}
                </tbody>

                <tbody>
                <tr>
                    <td colspan="10">
                        <div align="center">
                            {{ link_to('turnos/verPeriodos','<i class="icon-fast-backward"></i> Primera','class':'btn') }}
                            {{ link_to('turnos/verPeriodos?page='~tabla.before,'<i class="icon-step-backward"></i> Anterior','class':'btn') }}
                            {{ link_to('turnos/verPeriodos?page='~tabla.next,'<i class="icon-step-forward"></i> Siguiente','class':'btn') }}
                            {{ link_to('turnos/verPeriodos?page='~tabla.last,'<i class="icon-fast-forward"></i> Última','class':'btn') }}
                            &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
                            P&aacute;gina {{ tabla.current }} de {{ tabla.total_pages }}
                        </div>
                    </td>
                <tr>
                </tbody>
            </table>
        </div>
    </div>
</section>
