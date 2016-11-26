<%-- 
    Document   : Register
    Created on : 14-Nov-2016, 17:27:11
    Author     : av2-ihuoma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <link rel="stylesheet" href="css/main.css">
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/css/materialize.min.css">
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/js/materialize.min.js"></script>
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
        <h3>Registration Form</h3>
        <div class="row">
            <form class="col s12" action="RegisterUser.do" method="POST">
                <div class="row" >
                    <div class="input-field col s6">
                        <input id="firstname" type="text" name="firstname">
                        <label for="firstname">First Name</label>
                    </div>
                    <div class="input-field col s6">
                        <input id="lastname" type="text" name="lastname">
                        <label for="lastname">Last Name</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s6">
                        <input id="postcode" type="text" name="postcode">
                        <label for="postcode">Postcode</label>
                    </div>
                    <div class="input-field col s6 tooltipped" data-position="bottom" data-tooltip="Date of birth">
                        <input id="DOB" type="date" name="DOB">
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s6">
                        <select id="addressChooser" name="address">
                            
                        </select>
                        <label>Select address</label>
                    </div>
                </div>
                <button class="btn waves-effect waves-light" type="button" id="lookup" >Lookup postcode
                    <i class="material-icons right">search</i>
                </button>
                <br>
                <br>
                <button class="btn waves-effect waves-light disabled" id="submitButton" type="submit" name="action">Submit
                    <i class="material-icons right">send</i>
                </button>
            </form>
        </div>
    </div>




    <script>
        $('.datepicker').pickadate({
            formatSubmit: 'yyyy-mm-dd'
        });
        $(document).ready(function () {
            $('select').material_select();
        });
        $("#lookup").click(function () {
            var postcode = $('#postcode').val();
            var apiKey = "J7H5TSlc4kWLDxw6NFqnZQ6512"
            var url = "https://api.getAddress.io/v2/uk/" + postcode + "?api-key=" + apiKey;

            $.ajax({
                url: url,
                dataType: 'json',
                success: function (result) {
                    console.log(result.Addresses);
                    for (i = 0; i < result.Addresses.length; i++) {
                        $("#addressChooser").append("<option value='" + result.Addresses[i] + "'>" + result.Addresses[i] + "</option>");
                    }
                    $('select').material_select();
                    $("#submitButton").removeClass("disabled");
                }});
        });
    </script>
</body>
</html>
