<?php
// Check if the 'id' parameter is set in the URL
if (isset($_GET['id'])) {
    $get_id = $_GET['id'];
} else {
    // Handle the case when 'id' parameter is not set
    // You can provide a default value or show an error message
    // For example:
    $get_id = 0; // Set a default value of 0
    // or
    // echo "Error: 'id' parameter is missing.";
}

// Check if the 'school_year' parameter is set in the URL
if (isset($_GET['school_year'])) {
    $school_year = $_GET['school_year'];
} else {
    // Handle the case when 'school_year' parameter is not set
    // You can provide a default value or show an error message
    // For example:
    $school_year = ''; // Set a default value of an empty string
    // or
    // echo "Error: 'school_year' parameter is missing.";
}

// Retrieve class information based on the provided teacher class ID ($get_id)
$class_query = mysqli_query($conn, "SELECT * FROM teacher_class
    LEFT JOIN class ON class.class_id = teacher_class.class_id
    LEFT JOIN subject ON subject.subject_id = teacher_class.subject_id
    WHERE teacher_class.teacher_class_id = '$get_id'") or die(mysqli_error($conn));

$class_row = mysqli_fetch_array($class_query);
?>

<ul class="breadcrumb">
    <li><a href="#"><?php echo $class_row['class_name']; ?></a> <span class="divider">/</span></li>
    <li><a href="#"><?php echo $class_row['subject_code']; ?></a> <span class="divider">/</span></li>
    <li><a href="#">School Year: <?php echo $class_row['school_year']; ?></a> <span class="divider">/</span></li>
    <li><a href="#"><b>My Students</b></a></li>
</ul>

<!-- Rest of your code in my_students_breadcrums.php -->

<!-- Example usage of the variables -->
<?php
// Assuming you want to display the breadcrumb navigation
echo "<a href=\"/\">Home</a>";
echo "/";
echo "<a href=\"/school_year.php?school_year=$school_year\">School Year: $school_year</a>";
echo "/";
echo "My Students";
?>

<!-- end breadcrumb -->
