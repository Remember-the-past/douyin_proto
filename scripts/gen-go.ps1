$ErrorActionPreference = 'Stop'

$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$RootDir = Resolve-Path (Join-Path $ScriptDir '..')
$OutDir = Join-Path $RootDir 'gen/go'
$ProtoFile = Join-Path $RootDir 'douyin.proto'

if (-not (Get-Command protoc -ErrorAction SilentlyContinue)) {
    Write-Error 'protoc is not installed. Please install protoc first.'
}

if (-not (Get-Command protoc-gen-go -ErrorAction SilentlyContinue)) {
    Write-Error 'protoc-gen-go is not installed. Install it with: go install google.golang.org/protobuf/cmd/protoc-gen-go@latest'
}

New-Item -ItemType Directory -Force -Path $OutDir | Out-Null

& protoc `
  --proto_path="$RootDir" `
  --go_out="$OutDir" `
  --go_opt=paths=source_relative `
  "$ProtoFile"

Write-Host "Go protobuf files generated in $OutDir"
