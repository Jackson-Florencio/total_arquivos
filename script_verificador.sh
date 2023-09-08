#!/bin/bash

# Defina o diretório que você deseja analisar
directory="Caminho do seu deretório"  # Substitua pelo seu diretório desejado

# Verifique se o diretório existe
if [ ! -d "$directory" ]; then
    echo "Diretório: $directory não encontrado"
    exit 1
fi

# Defina o nome do arquivo de saída
output_file="resultado2.txt"

# Crie um arquivo vazio para armazenar os resultados
> "$output_file"

# Use um loop para listar os diretórios no diretório especificado
for dir in "$directory"/*/
do
    num_files=$(find "$dir" -type f | wc -l)
    echo "Diretório: $dir Total de arquivos: $num_files" >> "$output_file"
done
