<?php
        if(isset($_POST['submit']))
        {
            include_once("DBConnect.php");
            $name = $_POST['name'];
            $email = ($_POST['email']);
            $subject = ($_POST['subject']);
            $message = ($_POST['message']);
            $enquiry_dt = date("Y-m-d");

            $res = mysqli_query($con, "insert into enquiry(name, email, subject, message ,enquiry_dt) VALUES('$name', '$email', '$subject', '$message', '$enquiry_dt')");

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