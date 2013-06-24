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

<div id='wizard' class="span4">
    <form id="demoForm" method="post" class="form-inline demoForm">
        <fieldset>

            <!-- Form Name -->
            <legend>Podaj swoje dane</legend>

            <!-- Text input-->
            <div class="control-group">
                <div id="demoFormInput" class="controls">
                    <input type="hidden" id="stepNumber" name="stepNumber" value="1" />
                    <input type="hidden" id="docNumber" name="docNumber" value="1" />
                </div>
            </div>

            <!-- Button (Double) -->
            <div class="control-group">
                <div class="controls">
                    <button id="back" name="back" class="btn btn-primary">Wstecz</button>
                    <button id="next" name="next" class="btn btn-primary">Dalej</button>
                </div>
            </div>

        </fieldset>
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

<script src="js/admin.js"></script>

</body>
</html>
