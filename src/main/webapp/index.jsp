<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Web Tester</title>
</head>
<body>
<form action="/test" method="POST">
    <h1>What language do you prefer?</h1>
    <input type='radio' id='java' name='select_language' value='Java'>
    <label for='java'>Java</label>
    <input type='radio' id='python' name='select_language' value='Python'>
    <label for='python'>Python</label>
    <input type='radio' id='php' name='select_language' value='Php'>
    <label for='php'>Php</label>

    <h1>Choose your level</h1>
    <input type='radio' id='junior' name='choose_your_lvl' value='Junior'>
    <label for='junior'>Junior</label>
    <input type='radio' id='middle' name='choose_your_lvl' value='Middle'>
    <label for='middle'>Middle</label>
    <input type='radio' id='senior' name='choose_your_lvl' value='Senior'>
    <label for='senior'>Senior</label>

    <br><button type="submit">Submit</button>
</form>
</body>
</html>
