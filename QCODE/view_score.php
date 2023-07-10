<?php
include('header_dashboard.php');
include('session.php');

// Get the submission_id from the URL
$submission_id = $_GET['submission_id'];

// Retrieve the submission details
$submission_query = mysqli_query($conn, "SELECT * FROM student_class_quiz WHERE submission_id = '$submission_id'") or die(mysqli_error());
$submission_row = mysqli_fetch_array($submission_query);
$score = $submission_row['score'];
?>

<body>
    <?php include('navbar_teacher.php'); ?>
    <div class="container-fluid">
        <div class="row-fluid">
            <div class="span9" id="content">
                <div class="row-fluid">
                    <h2>Score: <?php echo $score; ?></h2>
                </div>
            </div>
        </div>
    </div>
    <?php include('footer.php'); ?>
</body>

</html>
