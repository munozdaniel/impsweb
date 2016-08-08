<style>

    ul.ul_tramites {
        margin-bottom: 14px;
        list-style: none;
    }

    li.li_tramites {
        width: 300px;
        height: 30px;
        margin: 0 0 7px 0;
    }

    li.li_tramites a {
        display: block;
        width: 300px;
        height: 30px;
        margin: 0 0 7px 0;
        background: #F7F5F2 url('/impsweb/public/img/tramites/flecha_derecha.gif') 97% center no-repeat;
        font-size: 18px;
        color: #333;
        padding: 5px 0 0 20px;
        text-decoration: none;
    }

    li a:hover {
        background-color: #EFEFEF;
    }

    .orange {
        border-left: 5px solid #F5876E;
    }

    .blue {
        border-left: 5px solid #61A8DC;
    }

    .green {
        border-left: 5px solid #8EBD40;
    }

    .purple {
        border-left: 5px solid #988CC3;
    }

    .gold {
        border-left: 5px solid #D8C86E;
    }
</style>
<section id="onepage" class="admin bg_line">
    <div class="container ">
        <div align="center">
            <div class="curriculum-bg-header modal-header " align="left">
                <h1>
                    <ins>GUÍA DE TRÁMITES</ins>
                    <br>
                </h1>
                <h3>
                    <small><em style=" color:#FFF !important;">Guía de Trámites </em></small>
                </h3>
                <table class="" width="100%">
                    <tr>
                        <td align="right">{{ link_to("index", "<i class='fa fa-sign-out'></i> SALIR",'class':'btn btn-lg btn-primary') }}</td>
                    </tr>
                </table>

            </div>
            <hr>
            {{ content() }}

            <div class="curriculum-bg-form borde-top" align="left">
                <div class="row">
                    <div class="col-md-4">
                        <ul class="ul_tramites ">
                            <li class="li_tramites orange">{{ link_to("index/guia/1",'Jubilación Ordinaria') }}</li>
                            <li class="li_tramites blue">{{ link_to("index/guia/2",'Pensión Ordinaria') }}</li>
                            <li class="li_tramites green">{{ link_to("index/guia/3",'Retiro por Invalidez') }}</li>
                            <li class="li_tramites purple">{{ link_to("index/guia/4",'Reconocimiento de Servicios') }}</li>
                            <li class="li_tramites gold">{{ link_to("index/guia/5",'Certificado de Supervivencia') }}</li>
                            <li class="li_tramites orange">{{ link_to("index/guia/6",'Carta Poder') }}</li>
                            <li class="li_tramites blue">{{ link_to("index/guia/7",'Seguro de Vida Obligatorio') }}</li>
                            <li class="li_tramites green">{{ link_to("index/guia/8",'Adhesion al Coseguro') }}</li>
                            <li class="li_tramites purple">{{ link_to("index/guia/9",'Óptica') }}</li>
                            <li class="li_tramites gold">{{ link_to("index/guia/10",'Ortopedia') }}</li>
                            <li class="li_tramites orange">{{ link_to("index/guia/11",'Excimer Láser') }}</li>
                        </ul>
                    </div>
                    <div class="col-md-8" style="border-left: 2px solid #607D8B">
                        {% if opcion  is defined %}
                            {% if opcion == 1 %}
                                {{ partial('index/tramites/jubilacion') }}
                            {% elseif opcion == 2 %}
                                {{ partial('index/tramites/pension') }}
                            {% elseif opcion == 3 %}
                                {{ partial('index/tramites/retiro') }}
                            {% elseif opcion == 4 %}
                                {{ partial('index/tramites/reconocimiento') }}
                            {% elseif opcion == 5 %}
                                {{ partial('index/tramites/certificado') }}
                            {% elseif opcion == 6 %}
                                {{ partial('index/tramites/carta') }}
                            {% elseif opcion == 7 %}
                                {{ partial('index/tramites/seguro') }}
                            {% elseif opcion == 8 %}
                                {{ partial('index/tramites/adhesion') }}
                            {% elseif opcion == 9 %}
                                {{ partial('index/tramites/optica') }}
                            {% elseif opcion == 10 %}
                                {{ partial('index/tramites/ortopedia') }}
                            {% elseif opcion == 11 %}
                                {{ partial('index/tramites/excimer') }}
                            {% endif %}
                        {% endif %}
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>