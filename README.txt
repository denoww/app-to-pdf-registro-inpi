app-to-pdf-registro-inpi
========================

Transforma qualquer projeto em PDF para registro no INPI

Pré requisitos
instalar o enscript no unix (fácil, basta procurar no google)

Como Usar?

Baixe o projeto:
git clone https://github.com/denoww/app-to-pdf-registro-inpi


Configurar duas variáveis do arquivo "projeto-to-pdf.rb" conforme mostrado abaixo
dir_do_projeto_que_serah_clonado_em_pdf = "/home/sc/Dropbox/workspace/alunos"
destino_do_clone_pdf = "/home/sc/Downloads/pdf-alunos"

Depois no terminal unix executar o comando
ruby projeto-to-pdf.rb

Tudo será transformado em pdf, até mesmo imagens
