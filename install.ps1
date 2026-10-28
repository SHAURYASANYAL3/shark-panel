# Install script for Shark Panel skill and slash commands (Windows PowerShell)

Write-Host "🦈 Installing The Shark Panel across AI agents..." -ForegroundColor Cyan

$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$sourceSkill = Join-Path $scriptDir "SKILL.md"
$sourceCommand = Join-Path $scriptDir "commands\shark-panel.md"

if (-not (Test-Path $sourceSkill)) {
    Write-Error "SKILL.md not found in $scriptDir"
    exit 1
}

$userHome = [Environment]::GetFolderPath("UserProfile")

# Common skill locations
$skillLocations = @(
    (Join-Path $userHome ".gemini\skills\shark-panel"),
    (Join-Path $userHome ".claude\skills\shark-panel"),
    (Join-Path $userHome ".agents\skills\shark-panel"),
    (Join-Path $userHome ".codex\skills\shark-panel"),
    (Join-Path $userHome ".roo\skills\shark-panel"),
    (Join-Path $userHome ".openhands\skills\shark-panel")
)

# Common command locations
$commandLocations = @(
    (Join-Path $userHome ".claude\commands"),
    (Join-Path $userHome ".gemini\antigravity-cli\commands"),
    (Join-Path $userHome ".continue\prompts"),
    (Join-Path $userHome ".codex\commands")
)

$installedCount = 0

foreach ($loc in $skillLocations) {
    try {
        New-Item -ItemType Directory -Path $loc -Force | Out-Null
        Copy-Item -Path $sourceSkill -Destination (Join-Path $loc "SKILL.md") -Force
        $installedCount++
    } catch {
        # ignore permission errors
    }
}

foreach ($cmdLoc in $commandLocations) {
    try {
        New-Item -ItemType Directory -Path $cmdLoc -Force | Out-Null
        Copy-Item -Path $sourceCommand -Destination (Join-Path $cmdLoc "shark-panel.md") -Force
        $installedCount++
    } catch {
        # ignore
    }
}

Write-Host "✅ The Shark Panel successfully installed across $installedCount agent directories!" -ForegroundColor Green
Write-Host "💡 You can now type '/shark-panel' in Claude Code, Gemini CLI, or your favorite agent!" -ForegroundColor Yellow
