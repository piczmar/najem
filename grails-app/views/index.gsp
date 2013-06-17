
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>ProsteUmowy.pl</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/bootstrap-responsive.css" rel="stylesheet">
    <link rel="stylesheet" href="css/style.css">
    <style>


    </style>

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <![endif]-->

    <!-- Fav and touch icons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="ico/apple-touch-icon-57-precomposed.png">
    <link rel="shortcut icon" href="ico/favicon.png">
</head>

<body>


<div class="container-fluid">
    <div class="row-fluid">
        <div class="span12">
            <img src="images/examples/logo1.jpg" alt="" style="height: 100px">
        </div>
        <!-- <div class="span11">
            <div class="row-fluid" style="padding: 20px">
              <h1>Bezpieczne Przejrzyste Proste Umowy</h1>
            </div>
          </div> -->
    </div>
    <div class="row-fluid navigation" style="background-color: #103970">
        <div class="offset4 span2"><a href="#">O nas</a></div>
        <div class="span2"><a href="#">Cennik</a></div>
        <div class="span2"><a href="#">Blog</a></div>
        <div class="span2"><a href="#">Kontakty</a></div>
    </div>
</div>

<div class="container-fluid">
<div class="row-fluid">
    <div class="span4 advantage">
        <div class="row-fluid">
            <div class="span2">
                <img class="img-circle" src="images/examples/safe.jpg">
            </div>
            <div class="span10">
                <h3>Bezpieczeństwo</h3>
                <!-- <p>Przygotowane umowy dają pewność, że Twoje interesy są zabezpieczone. </p> -->
            </div>
        </div>
        <div class="row-fluid">
            <div class="span2">
                <img class="img-circle" src="images/examples/shield.jpg">
            </div>
            <div class="span10">
                <h3>Gwarancja</h3>
                <!-- <p>Proste Umowy gwarantują bezpieczeństwo umów dzięki współpracy z uznanymi radcami prawnymi i adwokatami. Zapewniamy najwyższą ochronę prawną.</p> -->
            </div>
        </div><!-- /.span4 -->
        <div class="row-fluid">
            <div class="span2">
                <img class="img-circle" src="images/examples/plus.png">
            </div>
            <div class="span10">
                <h3>Prostota</h3>
                <!-- <p>Proste rozwiązania są najlepsze dlatego w prosty sposób przygotujesz potrzebne Ci umowy.</p>   -->
            </div>
        </div><!-- /.span4 -->
        <div class="row-fluid">
            <div class="span2">
                <img class="img-circle" src="images/examples/klepsydra.jpg">
            </div>
            <div class="span10">
                <h3>Oszczędność czasu</h3>
            </div>
        </div><!-- /.span4 -->

        <div class="row-fluid">
            <div class="span2">
                <img class="img-circle" src="images/examples/money.jpg">
            </div>
            <div class="span10">
                <h3>Niższe koszty</h3>
            </div>
        </div><!-- /.span4 -->
        <div class="row-fluid">
            <div class="span2">
                <img class="img-circle" src="images/examples/clock.jpg">
            </div>
            <div class="span10">
                <h3>Dostęp 24h</h3>
            </div>
        </div><!-- /.span4 -->
    </div>
    <div id='wizard' class="span4">
        <form id="demoForm" method="post" action="json.html" class="demoForm">
            <div id="fieldWrapper">
                <div class="step" id="first">
                    <h3>Podaj swoje dane</h3>
                    <input id="seller_name" name="seller_name" value="Jan" type="text" class="input-block-level required" placeholder="Imie">
                    <input id="seller_surname" name="seller_surname" value="Kowalski" type="text" class="input-block-level required" placeholder="Nazwisko">
                    <input id="seller_nr_dow" name="seller_nr_dow" value="ALC120211" type="text" class="input-block-level required" placeholder="Nr dowodu osobistego">
                    <input id="seller_street" name="seller_street" value="Klonowa 4 m.1 " type="text" class="input-block-level required" placeholder="Ulica">
                    <input id="seller_city" name="seller_city" value="Łódź" type="text" class="input-block-level required" placeholder="Miasto">
                    <input id="seller_zip" name="seller_zip" value="94-107" type="text" class="input-block-level required" placeholder="Kod pocztowy">
                </div>
                <div class="step" id="rodzaj_umowy">
                    <h3>Rodzaj najemcy</h3>
                    <p>Czy najemca to osoba fizyczna czy firma?</p>
                    <div class="controls-row">
                        <label class="radio inline">
                            <input type="radio" class="link required" id="osoba" value="osoba" name="goto"
                                   checked="true"/>
                            Osoba
                        </label>
                        <label class="radio inline">
                            <input type="radio" class="link" id="firma" value="firma" name="goto"/>
                            Firma
                        </label>
                    </div>
                    <br/>
                </div>

                <div class="step" id="firma">
                    <h3>Podaj dane firmy</h3>
                    <input id="buyer_company" name="buyer_company"  value="Sell Cheap" type="text" class="input-block-level" placeholder="Nazwa firmy">
                    <input id="buyer_krs" name="buyer_krs" value="1298322" type="text" class="input-block-level" placeholder="Numer KRS" rel="tooltip"
                           title="Numer wpisu do rejestru przedsiębiorców Krajowego Rejestru Sądowego">
                    <input id="buyer_company_street" name="buyer_company_street" value="Spacerowa 2" type="text" class="input-block-level" placeholder="Siedziba firmy - ulica">
                    <input id="buyer_company_city" name="buyer_company_city" value="Warszawa" type="text" class="input-block-level" placeholder="Siedziba firmy - miasto">
                    <input id="buyer_company_zip" name="buyer_company_zip" value="22-012" type="text" class="input-block-level" placeholder="Siedziba firmy - kod poczt.">
                    <input id="buyer_name" name="buyer_name" type="text" value="Adam" class="input-block-level" placeholder="Imię" rel="tooltip"
                           title="Imię osoby reprezentującej firme">
                    <input id="buyer_surname" name="buyer_surname" value="Markowski" type="text" class="input-block-level" placeholder="Nazwisko" rel="tooltip"
                           title="Nazwisko osoby reprezentującej firmę">
                    <input id="buyer_nr_dow" name="buyer_nr_dow" value="AVD123498" type="text" class="input-block-level" placeholder="Nr dowodu osobistego">
                    <input id="buyer_street" name="buyer_street" value="Wolska 91" type="text" class="input-block-level" placeholder="Ulica" rel="tooltip"
                           title="Adres osoby representującej firmę">
                    <input id="buyer_city" name="buyer_city" value="Warszawa" type="text" class="input-block-level" placeholder="Miasto">
                    <input id="buyer_zip" name="buyer_zip" value="22-020" type="text" class="input-block-level" placeholder="Kod pocztowy">
                    <input type="hidden" class="link" value="mieszkanie"/>
                </div>
                <div class="step" id="osoba">
                    <h3>Podaj dane osoby ktora wynajmuje mieszkanie</h3>
                    <input id="buyer_os_name" name="buyer_os_name" value="Joanna" type="text" class="input-block-level required" placeholder="Imie">
                    <input id="buyer_os_surname" name="buyer_os_surname" value="Marszałek" type="text" class="input-block-level required" placeholder="Nazwisko">
                    <input id="buyer_os_nr_dow" name="buyer_os_nr_dow" value="ADB234598" type="text" class="input-block-level" placeholder="Nr dowodu osobistego">
                    <input id="buyer_os_street" name="buyer_os_street" value="Brukowa 5" type="text" class="input-block-level" placeholder="Ulica">
                    <input id="buyer_os_city" name="buyer_os_city" value="Zakopane" type="text" class="input-block-level" placeholder="Miasto">
                    <input id="buyer_os_zip" name="buyer_os_zip" value="78-143" type="text" class="input-block-level" placeholder="Kod pocztowy">
                    <input type="hidden" class="link" value="mieszkanie"/>
                </div>
                <div class="step" id="mieszkanie">
                    <h3>Wynajmowane mieszkanie</h3>
                    <input id="rent_size" name="rent_size" type="text" class="input-block-level" placeholder="Powierzchnia" rel="tooltip"
                           title="Powierzchnia w m2.">
                    <input id="rent_street" name="rent_street" type="text" class="input-block-level" placeholder="Ulica" rel="tooltip"
                           title="Adres osoby representującej firmę">
                    <input id="rent_city" name="rent_city" type="text" class="input-block-level" placeholder="Miasto">
                    <input  id="rent_zip" name="rent_zip" type="text" class="input-block-level" placeholder="Kod pocztowy">

                    <p>Data przekazania mieszkania najemcy</p>

                    <div class="controls-row">
                        <label class="radio inline">
                            <label for="dataWynajmu">&nbsp;&nbsp;</label>
                        </label>
                        <label class="radio inline">
                            <input id="dataWynajmu" type="date" class="input-block-level">
                        </label>
                    </div>
                    <p>Na jaki czas chcesz wynająć mieszkanie?</p>

                    <div class="controls-row">
                        <label class="radio inline">
                            <input type="radio" id="okreslony" name="czas_najmu" value="okreslony"  onclick="$('#czas_najmu_do').show();" rel="tooltip"
                                   title="Jeśli nie chcesz określać końca umowy"/>
                            Określony
                        </label>
                        <label class="radio inline">
                            <input type="radio" id="nieokreslony"  name="czas_najmu" value="nieokreslony" onclick="$('#czas_najmu_do').hide();"/>
                            Nieokreślony
                        </label>
                    </div>

                    <div id="czas_najmu_od" class="controls-row">
                        <label class="radio inline">
                            <label for="czasNajmuOd">Od</label>
                        </label>
                        <label class="radio inline">
                            <input id="czasNajmuOd" name="czasNajmuOd" type="date" class="input-block-level required">
                        </label>
                    </div>
                    <div id="czas_najmu_do" class="controls-row" hidden='true'>
                        <label class="radio inline">
                            <label for="czasNajmuDo">Do</label>
                        </label>
                        <label class="radio inline">
                            <input id="czasNajmuDo" name="czasNajmuDo" type="date" class="input-block-level">
                        </label>
                    </div>
                    <input  id="rent_month_cost" name="rent_month_cost" type="text" class="input-block-level" placeholder="Miesięczny czynsz">

                    <input type="hidden" class="link" value="drobne_naprawy"/>
                </div>

                <div id="drobne_naprawy" class="step">
                    <p>Czy chcesz jakie drobne naprawy ma ponosić najemca??</p>

                    <div class="controls-row">
                        <label class="radio inline">
                            <input type="radio" onclick="$('#drobneNaprawy').hide();" name="drobne_naprawy" />
                            Nie
                        </label>
                        <label class="radio inline">
                            <input type="radio" onclick="$('#drobneNaprawy').show();" name="drobne_naprawy" />
                            Tak
                        </label>
                    </div>
                    <textarea id="drobneNaprawy" hidden='true' class="input-xlarge"
                              placeholder="Np. naprawa i konserwacja okien, naprawa wykładzin"></textarea>

                </div>
                <div id="demoNavigation">
                    <input class="btn btn-large btn-primary" id="back" value="Wróć" type="reset"/>
                    <input class="btn btn-large btn-primary" id="next" value="Dalej" type="submit"/>
                </div>

            </div>
        </form>
    </div>
    <div class="span6">
        <div id="umowa-txt" class="long-div"></div>
    </div>
</div>

<!-- Marketing messaging and featurettes
    ================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->

<div class="container marketing">

    <!-- FOOTER -->
    <footer>
        <p>&copy; 2013 Company, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
    </footer>

</div><!-- /.container -->


<script src="js/jquery.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/holder/holder.js"></script>
<script src="js/jquery.js"></script>
<script src="js/bootstrap.js"></script>


<script type="text/javascript" src="js/jquery.form.js"></script>
<script type="text/javascript" src="js/jquery.validate.js"></script>
<script type="text/javascript" src="js/bbq.js"></script>
<script type="text/javascript" src="js/jquery-ui-1.8.5.custom.min.js"></script>
<script type="text/javascript" src="js/jquery.form.wizard.js"></script>


<script src="js/jquery-mustache.js"></script>
<script src="js/mustache.js"></script>

<script src="js/application.js"></script>
</body>
</html>
