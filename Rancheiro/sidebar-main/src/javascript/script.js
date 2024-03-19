document.getElementById('open_btn').addEventListener('click', function () {
    document.getElementById('sidebar').classList.toggle('open-sidebar');
});

function toggleSidebar() {
    document.getElementById('sidebar').classList.toggle('collapsed');
}

// Adicionando um event listener para o link "Cadastro do Cardápio"
document.getElementById("cadastroCardapioLink").addEventListener("click", function(event) {
    event.preventDefault(); // Previne o comportamento padrão do link (não segue o href)
    window.location.href = "http://localhost/rancheiro/site/refei%c3%a7%c3%a3oadm.html"; // Redireciona para a página desejada
})

// Adicionando um event listener para o link "Cadastro dos Militares"
document.getElementById("cadastroMilitaresLink").addEventListener("click", function(event) {
    event.preventDefault(); // Previne o comportamento padrão do link (não segue o href)
    window.location.href = "http://localhost/rancheiro/site/formulario.html"; // Redireciona para a página desejada
});

