<?php
if (!empty($_GET["erro"])){
  $erro = $_GET["erro"];
}
else {
  $erro = 0;
}
?>


<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset ="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Página de Login</title>
  <link rel="stylesheet" href="css/style.css">
  <link rel="icon" href="img/favicon.png" type="image/png">
</head>
<body>
  <script>
    var erro = <?php echo $erro;?>;
    </script>
  <header>
    <h1><u><b>Bem-vindo ao EchoWave!</b></u></h1>
  </header>
  <main class="container">
    <!-- Formulário de Login -->
    <form class="login-form" id="loginForm" action="login.php" onsubmit="return validarFormulario()" novalidate method="POST">
      <h2>Acesse sua conta</h2>
      
      <label for="email">Usuário (Email):</label>
      <input 
        type="email" 
        id="email" 
        name="email" 
        placeholder="Digite seu email"
        value="victor.f@email.com" 
        minlength="6" 
        maxlength="25" 
        autocomplete="off" 
        required 
      />
      
      <label for="password">Senha:</label>
      <input 
        type="password" 
        id="password" 
        name="password" 
        placeholder="Digite sua senha"
        value="meucodigo" 
        minlength="3" 
        maxlength="8" 
        autocomplete="off" 
        required 
      />
      
      <input type="submit" value="Entrar" />
    </form>
    <div id="overlay" style="visibility: hidden; position: fixed; top: 0; left: 0; width: 100%; height: 100%; background: rgba(0, 0, 0, 0.5);">
      <div style="background: white; padding: 20px; margin: 100px auto; width: 300px; text-align: center;">
        <p id="mensagemErro"></p>
        <button id="fecharErro">Fechar</button>
      </div>
    </div>
   
    <!-- Imagem -->
    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0uCD27xjHhhEIUvSg_pqVP-u3yLaS_vArJg&s" alt="Imagem de Tecnologia" class="login-image">
  </main>
  <script src="js/sketch.js"></script>
  <footer>
    
    <P><b>Philipe F. - O Único, 2024 @PROGWEB</b></P>
      
  </footer>
</body>
</html>
