  # pré requisitos
  # instalar o enscript no ubuntu (fácil se procurar no google)

  require 'find'
  require 'fileutils'
  dir_do_projeto_que_serah_clonado_em_pdf = "/home/sc/Dropbox/workspace/seucondominio"
  destino_do_clone_pdf = "/home/sc/Downloads/pdf-seucondominio"



  Find.find(dir_do_projeto_que_serah_clonado_em_pdf) do |path|
    pathComCaminhoParaOutraPasta = path.gsub(dir_do_projeto_que_serah_clonado_em_pdf, destino_do_clone_pdf)
    if FileTest.directory?(path)
      # cria as pastas
      if File.basename(path)[0] == ?.
        Find.prune       # Don't look any further into this directory.
      else
        FileUtils.mkdir_p(pathComCaminhoParaOutraPasta) unless File.exists?(pathComCaminhoParaOutraPasta)
        next
      end
    else
      # aqui temos os arquivos
      # somente arquivos de formato texto podem virar pdf portanto selecionar os arquivos
      # extensoes_que_sao_possiveis_virar_pdf = [".js", ".rb", ".coffee", ".scss", ".txt", ".svg"]

      extensao_arquivo = File.extname(pathComCaminhoParaOutraPasta)  # retorna ".rb" ou ".html" etc...
      if extensao_arquivo == ""
        path_e_arquivo_com_extensao_pdf = "#{pathComCaminhoParaOutraPasta}.pdf"
      else
        path_e_arquivo_com_extensao_pdf = pathComCaminhoParaOutraPasta.gsub(extensao_arquivo, ".pdf")
      end
      puts "De -> #{path}" 
      puts "Para -> #{path_e_arquivo_com_extensao_pdf}"       
      %x( enscript #{path} -o - | ps2pdf - #{path_e_arquivo_com_extensao_pdf} )
      # total_size += FileTest.size(path)
    end
  end