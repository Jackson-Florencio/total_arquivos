#!/bin/bash

# Definindo o diretório que você deseja analisar
directory="Caminho do seu deretório"  

# Verificando se o diretório existe
if [ ! -d "$directory" ]; then
    echo "Diretório: $directory não encontrado"
    exit 1
fi

# Definindo o nome do arquivo de saída
output_file="resultado2.txt"

# Criando um arquivo vazio para armazenar os resultados
> "$output_file"

# loop para listar os diretórios
for dir in "$directory"/*/
do
    num_files=$(find "$dir" -type f | wc -l)
    echo "Diretório: $dir Total de arquivos: $num_files" >> "$output_file"
done
