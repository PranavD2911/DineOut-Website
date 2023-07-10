<?php
        if(isset($_POST['submit']))
        {
            include_once("DBConnect.php");
            $name = $_POST['name'];
            $email = ($_POST['email']);
            $phone = ($_POST['phone']);
            $date = date("Y-m-d");
            $people = ($_POST['people']);

            $message = ($_POST['message']);

            $res = mysqli_query($con, "insert into booktable(name, email, phone, date, people, message) VALUES('$name', '$email', '$phone', '$date', '$people', '$message')");

            if($res)
            {
              echo "<script>alert('Enquiry Successfully Submitted');window.location='index.php';
              </script>";
            }else{
              echo "<script>alert('something went wrong');window.location='index.php';
              </script>";
            }
        }

        ?>