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
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="icon" type="image/png" href="img/favicon.png">
    <title>Qual é a sua idade?</title>
    <meta charset="utf-8" />
  </head>
  <body>
    <script>
      var erro = <?php echo $erro;?>;
    </script>  
    <main>
      <h1>Faça seu login</h1>
      <div class="baixo">
      <div class="image"><img src="img/imagem-html-capa-login.jpg" alt="imagem html capa login" title="Faça seu login ao lado"></div>
      <div id="pergunta">
        <form name="usuario" action="login.php" autocomplete="off" novalidate method="post">
          <!--label for="idade">Qual é a sua idade?</label-->
          <input type="email" id="user" name="email" maxlength="25" minlength="6" placeholder="Informe seu usuário" value="b@b.com">
          <input type="password" id="pass" name="senha" maxlength="8" minlength="3" placeholder="Informe sua senha" value="1234">
          <input type="submit" value="OK" onclick="valida();">
        </form>
      </div>
    </div>
    </main>
    <div id="overlay">
      <div id="mensagem">
        <button id="x" onclick="x();">&times;</button>
        <p id="msg"></p>
      </div>
      </div>
      <script src="js/sketch.js"></script>
  </body>
</html>
