<section id="onepage" class="admin bg_line">
    <div class="container ">
        <div align="center">
            <div class="curriculum-bg-header modal-header " align="left">
                <h1>
                    <ins>CATÁLOGO</ins>
                    <br>
                </h1>
                <h3><small><em style=" color:#FFF !important;"> Seleccione la revista que desea ver</em></small></h3>
                <table class="" width="100%">
                    <tr>
                        <td align="right">{{ link_to("index", "<i class='fa fa-sign-out'></i> SALIR",'class':'btn btn-lg btn-primary') }}</td>
                    </tr>
                </table>

            </div>
            <hr>
            {{ content() }}
            <div class="curriculum-bg-form borde-top" align="center">
                <div class="row">
                    <div class="col-xs-6 col-md-3">
                        {{ link_to('index/revista?volumen=57','class':'thumbnail btn btn-block btn-gris','target':'',
                        image('img/revista/volumen/57/1.jpg')~'ABRIL') }}
                    </div>
                    <div class="col-xs-6 col-md-3">
                        {{ link_to('index/revista?volumen=58','class':'thumbnail btn btn-block btn-gris','target':'',
                        image('img/revista/volumen/58/1.jpg')~'JULIO') }}
                    </div>

                    <div class="col-xs-6 col-md-3">
                        <a  class="thumbnail btn btn-block">
                            {{ image('img/revista/proximamente.png','width':'453','height':'650') }}
                            <br>
                            <br>
                            MAYO
                        </a>
                    </div>

                </div>
            </div>
        </div>
    </div>
</section>