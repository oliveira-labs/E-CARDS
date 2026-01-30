#Pegar o diretório atual
$scriptDirectory= Split-Path -Path $MyInvocation.MyCommand.Definition -Parent

#Arquivo de saída com todos os scripts de migração
$outputFile = Join-Path -Path $scriptDirectory -ChildPath "all_migrations.sql"

# Verifique se o arquivo de saída já existe e remova-o
if (Test-Path $outputFile) {
    Remove-Item $outputFile
}

# Obter todos os arquivos .sql no diretório atual e subdiretórios
$sqlFiles = Get-ChildItem -Path $scriptDirectory -Recurse -Filter *.sql -File | Sort-Object Name

# Concatenar o conteúdo de cada arquivo no arquivo de saída
foreach ($file in $sqlFiles) {
    Get-Content $file.FullName | Out-File -Append -FilePath $outputFile
    "Go" | Out-File -Append -FilePath $outputFile
    
}

Write-Host "Todos Arquivos forma combinados em $outputFile"

# Caso o arquivo esteja em uma pasta com espaços no nome, informe o caminho completo entre aspas ao utilizá-lo.