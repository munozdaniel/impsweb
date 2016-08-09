<style>
    ul {
        padding: 0 0 0 0;
        margin: 0 0 0 0;
    }

    ul li {
        list-style: none;
        margin-bottom: 25px;
    }

    ul li img {
        cursor: pointer;
    }

    .controls {
        width: 50px;
        display: block;
        font-size: 11px;
        padding-top: 8px;
        font-weight: bold;
    }

    .next {
        float: right;
        text-align: right;
    }

    @media screen and (max-width: 1500px) {
        #ads {
            display: none;
        }
    }
</style>

<section id="onepage" class="admin bg_line">
    <div class="container ">
        <div align="center">
            <div class="curriculum-bg-header modal-header " align="left">
                <h1>
                    <ins>NUEVA SEDE</ins>
                    <br>
                </h1>
                <h3>
                    <small>
                        <em style=" color:#FFF !important;">Para que puedan ir conociendo de las instalaciones les dejamos una descripción breve, junto a las fotos y videos de la inauguración. </em>
                    </small>
                </h3>
                <table class="" width="100%">
                    <tr>
                        <td align="right">{{ link_to("index", "<i class='fa fa-sign-out'></i> SALIR",'class':'btn btn-lg btn-primary') }}</td>
                    </tr>
                </table>

            </div>
            <hr>
            {{ content() }}

            <div class="curriculum-bg-form borde-top" align="center">
                <div class="container">
                    <div class="row">
                    <div class="col-md-9 col-md-offset-1" align="left">
                        <h3>El Edificio, ubicado en Bouquet Roldán entre calles Roca y Belgrano, tiene una superficie del
                            terreno de casi mil metros. Tiene siete Niveles.</h3>
                        <div class="col-md-11">
                        <ul>Los dos primeros niveles son los destinados a las oficinas administrativas del IMPS y Melewe,
                        con una superficie construida de 2.250m y semicubierta de 59m, distribuidos de la
                        siguiente de manera:

                        <li style="list-style: circle; margin-left: 15px;"> un subsuelo para cocheras con 24 módulos (se compartirán con los niveles superiores); planta
                        baja, donde funcionarán a la derecha las oficinas de Melewe, al frente Atención a Afiliados y
                        oficinas administrativas, y a la izquierda el ingreso a la escalera principal que comunica los
                        siete niveles;</li>
                        <li  style="list-style: circle; margin-left: 15px;"> en el primer piso estará la oficina del Administrador, un salón de usos múltiples para
                        cuarenta personas y oficinas administrativas del IMPS;
                            </li>
                        <li style="list-style: circle; margin-left: 15px;">los niveles segundo, tercero, cuarto y quinto, con una superficie cubierta de 310 metros cada
                        uno, están destinados a su comercialización. Con la renta de esos alquileres se obtendrán
                        ingresos para que el edificio sea autosustentable económicamente, es decir que se puede cubrir
                        sus gastos de funcionamiento. Esto resulta indispensable para no tener que utilizar fondos
                        previsionales para ese fin. Hay que destacar que el interior de estos pisos se concluirán en una
                        tercera etapa (actualmente se está desarrollando el proyecto ejecutivo, cómputo y presupuesto) y
                        estará supeditada a las necesidades de los inquilinos. El segundo nivel cuenta con una
                        vinculación interna, que permitirña una expansion de la Administración cuando los futuros
                        Consejos de Administración lo consideren necesario.</li>
                        </ul>
                       {# En cuanto a sus características generales, el proyecto del edificio fue realizado por la empresa
                        Aiasa arquitectos e ingenieros asociados, cuyos responsables interactuaron con el personal del
                        IMPS para la ejecución. Cuenta con una concepción moderna para el desarrollo de actividades
                        públicas y privadas, prevaleciendo la ilumincación natural en los distintos ambientes.
                        El edificio dispondrá de dos ascensores para todos los niveles y en el hall de entrada un
                        ascensor para personas con capacidades físicas diferentes.

                        Cuenta con escaleras públicas que vinculan todos los niveles y escaleras internas de
                        comunicación administrativa del IMPS. Las oficinas públicas del IMPS y Melewe contarán con
                        sistema de calefacción por piso radiante y equipos exteriores de aire acondicionado. Ello,
                        sumado a una aislación térmica de vanguardia, permitirá obtener un importante ahorro energético.
                        Además, se destaca la red de energía estabilizada en todas las oficinas, distribución por
                        bandejas de todo el sistema informático, y una amplia sala de servidores para el sistema
                        informático. También se contará con tres amplios patios interiores que permitirán no sólo la
                        iluminación de las oficinas, sino también disponer de un espacio aireado para el personal y
                        visitantes.#}
                    </div>
                    </div>
                    </div>
                    <div style=" height: 30px; margin-top: 10px; text-align: center; overflow: hidden; white-space: nowrap; font-size: 18px; color: #000; font-weight: bold;">
                        Videos
                    </div>
                    <div class="row">
                        <div class="col-md-5 col-md-offset-1">
                            <div class="embed-responsive embed-responsive-16by9">
                                <iframe class="embed-responsive-item"
                                        src="//www.youtube.com/embed/d_iLSPwxqUo"></iframe>
                            </div>
                        </div>
                        <div class="col-md-5">
                            <div class="embed-responsive embed-responsive-16by9">
                                <iframe class="embed-responsive-item"
                                        src="https://www.youtube.com/embed/o_yd2dUh8Wg"></iframe>
                            </div>
                        </div>
                    </div>
                    <hr>

                    <div class="row">
                        <a id="gallery" class="btn btn-danger ocultar" onclick="flipGallery()"></a>

                        <div id="flipGallery">
                        </div>

                    </div>

                </div>
            </div>
        </div>
    </div>
    <script>
        $(document).ready(function () {
            //INAUGURACION: Eliminar cuando no se necesite
            $("#gallery").trigger("click");
        });
    </script>
</section>