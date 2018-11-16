<?php

     require_once("connect.php");
     $delete="DELETE  from  Customers where Id='$_GET[id]' ";
     mysqli_query($conn,$delete);
     if ($delete==true)
       {
         echo "<script type=\"text/javascript\">alert(\"xoa thanh cong!\");   </script>";
         echo"<script language='javascript'> window.location = 'admin.php';    </script>";
       }
       header('locahost:admin.php');
?>