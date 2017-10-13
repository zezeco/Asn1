<?php
    require_once('database.php');
    
    //get user semester and class id
    $sem = $_POST['Sem'];
    $sub = $_POST['sub'];


    // Get current customers
    $query = "SELECT * FROM schedules WHERE class_ID=$sub AND semester_ID = $sem ORDER BY class_Level, section";
    $classes = $db->query($query);
    
    // Create test query
    $query = "SELECT * FROM schedules WHERE class_ID=$sub AND semester_ID = $sem ORDER BY class_Level, section";
    $test = $db->query($query);
    $test = $test->fetch();
    $old_section = 0;
    $old_level = '    ';
?>

<!DOCTYPE html>
<html>

<!-- the head section -->
<head>
    <title>My Shop</title>
    <link rel="stylesheet" type="text/css" href="Main.css" />
</head>

<!-- the body section -->
<body>
    <div id="page">

    <div id="header">
        <h1>Class Search</h1>
    </div>
    
    <div id="main">

        <div id="content">
            <?php if ($test['CRN'] == null): ?>
                    <p >Our school has run out of funding and cannot offer these classes this semester...
                    Please sign up for more classes to help pay for next year's classes!!</p>
                    <?php endif; ?>
            <!-- display a table of Customers -->
            <table>
                <?php foreach ($classes as $class) : ?>
                    
                <tr>
                    <?php if ($class['section'] != $old_section and $class['class_Level'] != $old_level): ?>
                    <th><?php echo $class['class_abr']; ?> <?php echo $class['class_Level']; ?></th>
                    <th colspan="2"><?php echo $class['class_Name']; ?></th>
                    <th></th>
                    <th></th>
                    <th>CREDITS: <?php echo $class['credits']; ?></th>
                    
                </tr>
                <tr rowspan="4">
                    <td colspan="7"><?php echo $class['description']; ?></td>
                </tr>
                <tr>
                    <th>CRN</th>
                    <th>Section</th>
                    <th>Day</th>
                    <th colspan="2">Time</th>
                    <th>Location</th>
                    <th>Instructor</th>
                </tr>
                <?php endif; ?>
                <tr>
                    <td><?php echo $class['CRN']; ?></td>
                    <td align="center"><?php echo $class['section']; ?></td>
                    <td><?php echo $class['days']; ?></td>
                    <td colspan="2"><?php echo $class['time']; ?></td>
                    <td><?php echo $class['location']; ?></td>
                    <?php
                        $teach = $class['teacher_ID'];
                        $query = "SELECT first_Name, last_Name FROM teachers WHERE teacher_ID= $teach";
                        $teacher = $db->query($query);
                        $teacher = $teacher->fetch();
                    ?>
                    <td><?php echo $teacher['first_Name']; ?> <?php echo $teacher['last_Name'];?></td>
                    <td></td>
                    <?php
                        $old_level = $class['class_Level'];
                        $old_section = $class['section'];
                    ?>
                </tr>
                <tr></tr><tr></tr>
                <?php endforeach; ?>
                
            </table>
        </div>
    </div>
    <div id="footer">
        <p>&copy; <?php echo date("Y"); ?> My search</p>
    </div>

    </div><!-- end page -->
</body>
</html>