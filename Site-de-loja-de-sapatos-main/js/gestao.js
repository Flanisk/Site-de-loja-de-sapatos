const API_URL = 'http://localhost:3000'; 
let produtosCache = [];

document.addEventListener('DOMContentLoaded', () => {
    configurarDataHoje();
    carregarDadosIniciais();
});

function configurarDataHoje() {
    const hoje = new Date().toISOString().split('T')[0];
    const dataInput = document.getElementById('dataPedido');
    if(dataInput) dataInput.value = hoje;
}

async function carregarDadosIniciais() {
    try {
        const resProd = await fetch(`${API_URL}/produtos`);
        produtosCache = await resProd.json();
        
        const datalist = document.getElementById('datalistOptions');
        if (datalist) {
            datalist.innerHTML = '';
            produtosCache.forEach(p => {
                const option = document.createElement('option');
                option.value = `${p.nome} | R$ ${p.preco}`; 
                datalist.appendChild(option);
            });
        }

        const params = new URLSearchParams(window.location.search);
        const produtoNomeUrl = params.get('produto');
        
        if (produtoNomeUrl && document.getElementById('inputProduto')) {
            const produtoEncontrado = produtosCache.find(p => p.nome.includes(produtoNomeUrl));
            if (produtoEncontrado) {
                document.getElementById('inputProduto').value = `${produtoEncontrado.nome} | R$ ${produtoEncontrado.preco}`;
            }
        }

        const resForn = await fetch(`${API_URL}/fornecedores`);
        const fornecedores = await resForn.json();
        
        const selForn = document.getElementById('selectFornecedor');
        if (selForn) {
            selForn.innerHTML = '<option value="">Selecione um fornecedor...</option>';
            fornecedores.forEach(f => {
                selForn.innerHTML += `<option value="${f.id}">${f.nome}</option>`;
            });
        }

        carregarTabelaPedidos();

    } catch (error) {
        console.error("Erro ao carregar dados:", error);
        alert("Erro de conexão com o Backend!");
    }
}

async function carregarTabelaPedidos() {
    try {
        const res = await fetch(`${API_URL}/pedidos`);
        const pedidos = await res.json();
        const tbody = document.getElementById('tabelaPedidosBody');
        
        if (tbody) {
            tbody.innerHTML = '';
            pedidos.sort((a, b) => new Date(b.data) - new Date(a.data));

            pedidos.forEach(p => {
                const nomeProduto = p.produto ? p.produto.nome : '<span class="text-danger">Produto Removido</span>';
                const nomeFornecedor = p.fornecedor ? p.fornecedor.nome : '<span class="text-danger">Forn. Removido</span>';
                const dataFormatada = new Date(p.data).toLocaleDateString('pt-BR');

                tbody.innerHTML += `
                    <tr>
                        <td>${dataFormatada}</td>
                        <td class="fw-bold">${nomeProduto}</td>
                        <td><span class="badge bg-secondary">${p.quantidade} un</span></td>
                        <td class="text-muted small">${nomeFornecedor}</td>
                    </tr>
                `;
            });
        }
    } catch (error) {
        console.error("Erro tabela:", error);
    }
}

const formPedido = document.getElementById('formPedido');
if (formPedido) {
    formPedido.addEventListener('submit', async (e) => {
        e.preventDefault();

        const valorDigitado = document.getElementById('inputProduto').value;
        const produtoSelecionado = produtosCache.find(p => valorDigitado.includes(p.nome));

        if (!produtoSelecionado) {
            alert("Por favor, selecione um produto válido da lista!");
            return;
        }

        const payload = {
            data: document.getElementById('dataPedido').value,
            id_produto: produtoSelecionado.codigo,
            id_fornecedor: parseInt(document.getElementById('selectFornecedor').value),
            quantidade: parseInt(document.getElementById('qtdPedido').value)
        };

        try {
            const res = await fetch(`${API_URL}/pedidos`, {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify(payload)
            });

            if (res.ok) {
                alert('Pedido registrado com sucesso!');
                carregarTabelaPedidos();
                document.getElementById('inputProduto').value = '';
            } else {
                alert('Erro ao salvar. Verifique os dados.');
            }
        } catch (error) {
            console.error(error);
            alert('Erro na comunicação com o servidor.');
        }
    });
}