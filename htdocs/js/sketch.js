function validarFormulario() {
document.getElementById('loginForm').addEventListener('submit', function(event) {
  event.preventDefault(); // Impede o envio padrão do formulário
  //return false; 
  const email = document.getElementById("email").value;
  const password = document.getElementById("password").value;
  const erroBox = document.getElementById('mensagemErro');
  const overlay = document.getElementById('overlay');
  let mensagem = "";

  // Função para exibir mensagem de erro
  function exibirErro(mensagem, cor = 'red') {
    erroBox.textContent = mensagem;
    erroBox.style.color = cor;
    overlay.style.visibility = 'visible';
  }

  

  // Validação do campo email
  if (email.length < 6) {
    mensagem = "O email deve ter pelo menos 6 caracteres.";
  } else if (email.length > 25) {
    mensagem = "O email deve ter no máximo 25 caracteres.";
  } else if (!email.includes("@")) {
    mensagem = "O email deve conter o caractere '@'.";
  }

  // Validação do campo senha
  if (!mensagem && password.length < 3) {
    mensagem = "A senha deve ter pelo menos 3 caracteres.";
  } else if (!mensagem && password.length > 8) {
    mensagem = "A senha deve ter no máximo 8 caracteres.";
  }

  // Exibição de mensagens
  if (mensagem) {
    exibirErro(mensagem); // Exibe o erro
  } else {
    exibirErro("Formulário enviado com sucesso!", "green"); // Sucesso
    return true;
  }
});
}
// Função para fechar a mensagem de erro
document.getElementById("fecharErro").addEventListener('click', function() {
  overlay.style.visibility = 'hidden';
});
if (erro == 1) {
  const erroBox = document.getElementById('mensagemErro');
  const overlay = document.getElementById('overlay');
  erroBox.textContent = "Usuário Inválido";
    erroBox.style.color = "red";
    overlay.style.visibility = 'visible';
}

else if (erro == 2) {
  const erroBox = document.getElementById('mensagemErro');
  const overlay = document.getElementById('overlay');
  erroBox.textContent = "Senha Incorreta";
    erroBox.style.color = "red";
    overlay.style.visibility = 'visible';
}