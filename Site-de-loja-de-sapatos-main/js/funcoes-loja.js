document.addEventListener('DOMContentLoaded', () => {
    const botoesCarrinho = document.querySelectorAll('.btn.btn-success');

    botoesCarrinho.forEach(btn => {
        btn.style.cursor = 'pointer'; 
        
        btn.addEventListener('click', (e) => {
            const cardProduto = e.target.closest('.card');
            
            if (cardProduto) {
                const nomeElemento = cardProduto.querySelector('h1');
                const nomeProduto = nomeElemento ? nomeElemento.innerText.trim() : null;

                if (nomeProduto) {
                    console.log("Produto selecionado:", nomeProduto);
                    window.location.href = `../gestao.html?produto=${encodeURIComponent(nomeProduto)}`;
                } else {
                    console.error("Nome do produto não encontrado no card.");
                }
            } else {
                console.error("Container do produto (.card) não encontrado.");
            }
        });
    });
});