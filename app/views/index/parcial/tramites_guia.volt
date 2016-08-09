<!--=========== BEGAIN WORKS SECTION ================-->
<style>

    ul.ul_tramites {
        margin-bottom: 14px;
        list-style: none;
    }

    li.li_tramites {
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
<section id="guia_tramites">
    <!-- BEGAIN FORTFOLIO WORSK SECTION -->
    <div class="row">
        <div class="portfolio_area">
            <!-- BEGAIN PORTFOLIO HEADER -->
            <div class="row">
                <div class="col-lg-12 col-md-12">
                    <div class="container">
                        <div class="heading">
                            <h2 class="wow fadeInLeftBig">Guía de Trámites</h2>
                        </div>
                    </div>
                </div>
            </div>
            <!-- END PORTFOLIO HEADER -->
            <!-- GALERIA -->
            <div class="container" style="margin-top:15px;">
                <div class="row" style="background-color: rgba(55, 55, 55, 0.47);
                                    -moz-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
                                    -webkit-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
                                    box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);    margin-top: 20px;
                                    padding: 40px 0px 20px 0px;">

                    <div >
                        <div class="col-md-3  padding-left-md-10">

                            <ul class="ul_tramites ">
                                <li class="li_tramites orange">{{ link_to("index/guia/1",'Jubilación Ordinaria') }}</li>
                                <li class="li_tramites blue">{{ link_to("index/guia/2",'Pensión Ordinaria') }}</li>
                                <li class="li_tramites green">{{ link_to("index/guia/3",'Retiro por Invalidez') }}</li>
                                <li class="li_tramites purple">{{ link_to("index/guia/4",'Reconocimiento de Servicios') }}</li>


                            </ul>
                        </div>
                        <div class="col-md-3  padding-left-md-40">
                            <ul class="ul_tramites">
                                <li class="li_tramites gold">{{ link_to("index/guia/5",'Certificado de Supervivencia') }}</li>
                                <li class="li_tramites orange">{{ link_to("index/guia/6",'Carta Poder') }}</li>
                                <li class="li_tramites blue">{{ link_to("index/guia/7",'Seguro de Vida Obligatorio') }}</li>
                                <li class="li_tramites green">{{ link_to("index/guia/8",'Adhesion al Coseguro') }}</li>

                            </ul>
                        </div>
                        <div class="col-md-3 padding-left-md-40">
                            <ul class="ul_tramites">
                                <li class="li_tramites purple">{{ link_to("index/guia/9",'Óptica') }}</li>
                                <li class="li_tramites gold">{{ link_to("index/guia/10",'Ortopedia') }}</li>
                                <li class="li_tramites orange">{{ link_to("index/guia/11",'Excimer Láser') }}</li>
                            </ul>
                        </div>

                    </div>
                </div>
                <!-- FIN: GALERIA -->

            </div>
        </div>
    </div>
</section>

