[CmdletBinding()]
param(
    [switch]$SkipLaunch
)

$ErrorActionPreference = "Stop"
$VaultPath = (Resolve-Path $PSScriptRoot).Path
$RequiredPaths = @(
    ".obsidian",
    "Template",
    "Class",
    "Pages",
    "Daily",
    "Refs",
    "Home.canvas"
)

Write-Host "Obsidian Vaultを確認します: $VaultPath"

$MissingPaths = foreach ($RelativePath in $RequiredPaths) {
    $FullPath = Join-Path $VaultPath $RelativePath
    if (-not (Test-Path $FullPath)) {
        $RelativePath
    }
}

if ($MissingPaths.Count -gt 0) {
    throw "必要なファイルが不足しています: $($MissingPaths -join ', ')"
}

$PluginManifestCount = @(
    Get-ChildItem (Join-Path $VaultPath ".obsidian\plugins") -Filter "manifest.json" -Recurse -File
).Count

if ($PluginManifestCount -eq 0) {
    throw "コミュニティプラグインが見つかりません。リポジトリを再度クローンしてください。"
}

Write-Host "設定ファイル: OK"
Write-Host "プラグイン: $PluginManifestCount 件"

if ($SkipLaunch) {
    Write-Host "確認のみで終了しました。"
    exit 0
}

try {
    $EscapedVaultPath = [System.Uri]::EscapeDataString($VaultPath)
    Start-Process "obsidian://open?path=$EscapedVaultPath"
    Write-Host "Obsidianを起動しました。初回はコミュニティプラグインの信頼確認を行ってください。"
}
catch {
    Write-Warning "Obsidianを自動起動できませんでした。Obsidianの『保管庫としてフォルダーを開く』から次を選択してください。"
    Write-Host $VaultPath
}
