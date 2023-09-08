# total_arquivos
Script para verificar o total de arquivos em um diretório 

Primeiro, definimos a variável "directory" para armazenar o caminho do diretório que você deseja analisar.

Em seguida, o script verifica se o diretório especificado realmente existe. Caso contrário, ele exibe uma mensagem de erro e sai do script.

Após isso definimos o nome do arquivo de saída como resultado.txt e cria um arquivo vazio com esse nome. Cuidado para não definir com o nome de algum txt já existe, pois ele apagará todo o conteúdo anterior que tem no arquivo.

Dentro do loop for, o script lista todos os diretórios especificado usando a expressão "$directory"/*/. Isso lista todos os subdiretórios dentro do diretório principal.

Para cada subdiretório encontrado no loop, o script usa o comando find para contar o número de arquivos dentro do mesmo. A opção -type f do find é usada para procurar apenas por arquivos (não diretórios ou links simbólicos) e a saída é passada para o comando wc -l para contar o número de linhas, que corresponde ao número de arquivos.

O resultado é armazenado na variável num_files.

Em seguida, o script escreve no arquivo de saída o caminho do diretório raiz e o total de arquivos encontrados nas subpastas, no formato "Diretório: $dir Total de arquivos: $num_files".

O loop continua até que todos os subdiretórios dentro do diretório principal tenham sido verificados.

O resultado final é um arquivo "resultado.txt" que contém uma linha para cada subpasta no diretório principal, mostrando o caminho, e o total de arquivos encontrados dentro.

Isso deve fornecer um resumo do número total de arquivos em cada subpasta no diretório principal.
