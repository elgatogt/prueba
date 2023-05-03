<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />        
        <title>TEST</title>
        <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">        
        <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
        <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
        
    </head>
    <body>
        <p>Date: <input type="text" id="datepicker"></p>
        <script>
        $( function() {
            $( "#datepicker" ).datepicker();
        } );
        </script>
    </body>
</html>
