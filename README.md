<h2>Transforma qualquer projeto para o formato PDF (útil para registro de software no INPI)</h2>

<h2>Pré requisitos</h2>
1) Ruby instalado na máquina
<br />
2) Instalar o enscript na máquina (fácil, basta procurar no google)

<h2>Como Usar?</h2>

<h3>Baixe os arquivos:</h3>
git clone https://github.com/denoww/app-to-pdf-registro-inpi.git


<h3>Dentro do arquivo "projeto-to-pdf.rb" configure essas duas variáveis</h3>
<div>
  diretorio_do_projeto = "/home/sc/Dropbox/workspace/alunos" 
</div>
<div>
  diretorio_destino_do_clone_pdf = "/home/sc/Downloads/pdf-alunos"
</div>

<h3>Depois executar o arquivo com o comando</h3>
ruby projeto-to-pdf.rb

<h2>
  Tudo será transformado em pdf, até mesmo imagens
</h2>

