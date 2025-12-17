$ErrorActionPreference = "Stop"
$mavenUrl = "https://dlcdn.apache.org/maven/maven-3/3.9.12/binaries/apache-maven-3.9.12-bin.zip"
$mavenZip = "maven.zip"
$installDir = "tools"

if (-not (Test-Path $installDir)) {
    New-Item -ItemType Directory -Force -Path $installDir | Out-Null
}

if (-not (Test-Path "$installDir\apache-maven-3.9.12\bin\mvn.cmd")) {
    Write-Host "Downloading Maven from $mavenUrl..."
    Invoke-WebRequest -Uri $mavenUrl -OutFile $mavenZip
    
    Write-Host "Extracting Maven..."
    Expand-Archive -Path $mavenZip -DestinationPath $installDir -Force
    
    Remove-Item $mavenZip
    Write-Host "Maven installed successfully."
} else {
    Write-Host "Maven is already installed."
}

$env:PATH = "$PWD\$installDir\apache-maven-3.9.12\bin;$env:PATH"
Write-Host "Added Maven to PATH."

mvn -version
