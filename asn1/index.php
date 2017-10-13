<!DOCTYPE html>
<html>
<head>
    <title>ASN1 Class Search</title>
    <link rel="stylesheet" type="text/css" href="cur.css" />
</head>

<body>
    <div id="content">
        <h1>Class Search</h1>
        <p>Would you kindly.. select a semester?</p>
        <form action="show_classes.php" method="post">
            
            <input type="radio" name="Sem" value= 1> Spring<br>
            <input type="radio" name="Sem" value= 2> Fall<br>
            <input type="radio" name="Sem" value= 3> Summer<br>
            
            <p>Would you kindly... select a subject?</p>
            <select name="sub">
              <option value= 0>    </option>
              <option value= 4>Art</option>
              <option value= 5>Biology</option>
              <option value= 6>Chemestry</option>
              <option value= 1>Computer Science</option>
              <option value= 3>English</option>
              <option value= 2>Math</option>
              <option value= 7>Theatre</option>
            </select>
            
            
            <p></p>
            <div id="buttons">
                <label>&nbsp;</label>
                <input type="submit" value="Show Classes" /><br />
            </div>

        </form>
    </div>
</body>
</html>