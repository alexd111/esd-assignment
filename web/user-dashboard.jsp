<%-- 
    Document   : user-dashboard
    Created on : 15-Nov-2016, 18:55:57
    Author     : jackwinter
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/main.css">
        <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/css/materialize.min.css">
        <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/js/materialize.min.js"></script>
        <title>Submit claim</title>
    </head>
    <body>

        <nav>
            <div class="nav-wrapper teal">
                <a href="#" class="brand-logo center">XYZ Assoc.</a>
                <ul id="nav-mobile" class="left hide-on-med-and-down">

                </ul>
            </div>
        </nav>

        <div class="container">
            <h4>Submit a claim:</h4>
            <div class="row">
                <form class="col s12" action="MakeClaim.do" method="POST">
                    <div class="row" >
                        <div class="input-field col s12">
                            <textarea id="textarea1" class="materialize-textarea" name="rationale"></textarea>
                            <label for="rationale">Claim rationale</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s3">
                            <input id="amount" type="text" name="amount">
                            <label for="amount">Claim amount</label>
                        </div>
                    </div>
                    <button class="btn waves-effect waves-light" type="submit" name="action">Submit claim
                        <i class="material-icons right">send</i>
                    </button>
                </form>
            </div>
        </div>
    </body>
</html>
