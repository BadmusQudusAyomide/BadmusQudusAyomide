<?php include('header_dashboard.php'); ?>
<?php include('session.php'); ?>
<?php $get_id = $_GET['id']; ?>
<body>
    <div class="container-fluid">
        <div class="row-fluid">
            <div class="span12" id="content">
                <div class="row-fluid">
                    <!-- breadcrumb -->
                    <ul class="breadcrumb">
                        <li><a href="#"><b>..</b></a></li>
                    </ul>
                    <!-- end breadcrumb -->

                    <!-- block -->
                    <div id="block_bg" class="block">
                        <div class="navbar navbar-inner block-header">
                            <div id="" class="muted pull-left"><h4> Practice Quiz Progress</h4></div>
                        </div>
                        <div class="block-content collapse in">
                            <div class="span12">
                                <table cellpadding="0" cellspacing="0" border="0" class="table" id="">
                                    <thead>
                                        <tr>
                                            <th>Quiz Title</th>
                                            <th>Description</th>
                                            <th>Quiz Time (In Minutes)</th>
                                            <th>Student</th>
                                            <th>Score</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                        $query = mysqli_query($conn, "SELECT * FROM class_quiz 
                                            LEFT JOIN quiz ON class_quiz.quiz_id = quiz.quiz_id
                                            WHERE teacher_class_id = '$get_id' ORDER BY class_quiz_id DESC") or die(mysqli_error());
                                        while ($row = mysqli_fetch_array($query)) {
                                            $id  = $row['class_quiz_id'];
                                            $quiz_id  = $row['quiz_id'];
                                            $quiz_time  = $row['quiz_time'];

                                            $student_query = mysqli_query($conn, "SELECT * FROM student_class_quiz 
                                                INNER JOIN student ON student_class_quiz.student_id = student.student_id
                                                WHERE class_quiz_id = '$id'") or die(mysqli_error());
                                            while ($student_row = mysqli_fetch_array($student_query)) {
                                                $student_id = $student_row['student_id'];
                                                $grade = $student_row['grade'];
                                        ?>
                                                <tr>
                                                    <td><?php echo $row['quiz_title']; ?></td>
                                                    <td><?php echo $row['quiz_description']; ?></td>
                                                    <td><?php echo $row['quiz_time'] / 60; ?></td>
                                                    <td><?php echo $student_row['firstname'] . ' ' . $student_row['lastname']; ?></td>
                                                    <td><?php echo $grade; ?></td>
                                                </tr>
                                        <?php
                                            }
                                        }
                                        ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <!-- /block -->
                </div>
            </div>
        </div>
        <?php include('footer.php'); ?>
    </div>
    <?php include('script.php'); ?>
</body>

</html>
