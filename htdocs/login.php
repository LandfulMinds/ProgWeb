<?php
session_start();

//var_dump($_POST);
if (!empty($_POST["email"]) || !empty($_POST["password"])) {


 include ("connect.php");

//$email = "fodase@123.com";
$email = $_POST["email"];
$password = $_POST["password"];
$sql = "SELECT * FROM login WHERE email = :email";

$stmt = $pdo->prepare($sql);
    $stmt->bindParam(':email', $email);
    $stmt->execute();

    $usuarioEncontrado = $stmt->fetch();
    //var_dump($usuarioEncontrado);


    if (!$usuarioEncontrado) {
        header("Location: index.php?erro=1");
        exit;
    } 
    
    else {
        if (md5($password) == $usuarioEncontrado["senha"]) {
            echo "senha OK";
            $_SESSION["logado"] = true;
            $_SESSION["nome"] = $usuarioEncontrado["nome"];
            header("Location: painel.php");
            exit;

        } else {
            header("Location: index.php?erro=2");
            exit;
        }
    }
}
else {
 echo "não post";
}
?>