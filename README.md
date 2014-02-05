<h2>Transforma qualquer projeto para o formato PDF (útil para registro de software no INPI)</h2>

<h2>Pré requisitos</h2>
instalar o enscript no unix (fácil, basta procurar no google)

<h2>Como Usar?</h2>

<h3>Baixe o projeto:</h3>
git clone https://github.com/denoww/app-to-pdf-registro-inpi


<h3>Configurar duas variáveis do arquivo "projeto-to-pdf.rb" conforme mostrado abaixo</h3>
<div>
  dir_do_projeto_que_serah_clonado_em_pdf = "/home/sc/Dropbox/workspace/alunos" 
</div>
<div>
  destino_do_clone_pdf = "/home/sc/Downloads/pdf-alunos"
</div>

<h3>Depois no terminal unix executar o comando</h3>
ruby projeto-to-pdf.rb

<h2>
  Tudo será transformado em pdf, até mesmo imagens
</h2>

