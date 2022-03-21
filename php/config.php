<?php
    $conn = mysqli_connect("localhost", "root", "QtJPC97#/wa", "chat_wilsoftia");
    if(!$conn){
        echo "Database not Connect - " . mysqli_connect_error();
    }
?>