#!/usr/bin/env bash
set -e

echo "🦈 Installing The Shark Panel across AI agents..."

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SOURCE_SKILL="$SCRIPT_DIR/SKILL.md"
SOURCE_COMMAND="$SCRIPT_DIR/commands/shark-panel.md"

if [ ! -f "$SOURCE_SKILL" ]; then
    echo "Error: SKILL.md not found in $SCRIPT_DIR"
    exit 1
fi

SKILL_DIRS=(
    "$HOME/.gemini/skills/shark-panel"
    "$HOME/.claude/skills/shark-panel"
    "$HOME/.agents/skills/shark-panel"
    "$HOME/.codex/skills/shark-panel"
    "$HOME/.roo/skills/shark-panel"
    "$HOME/.openhands/skills/shark-panel"
)

COMMAND_DIRS=(
    "$HOME/.claude/commands"
    "$HOME/.gemini/antigravity-cli/commands"
    "$HOME/.continue/prompts"
    "$HOME/.codex/commands"
)

INSTALLED=0

for dir in "${SKILL_DIRS[@]}"; do
    mkdir -p "$dir" 2>/dev/null || true
    cp "$SOURCE_SKILL" "$dir/SKILL.md" 2>/dev/null && ((INSTALLED++)) || true
done

for dir in "${COMMAND_DIRS[@]}"; do
    mkdir -p "$dir" 2>/dev/null || true
    cp "$SOURCE_COMMAND" "$dir/shark-panel.md" 2>/dev/null && ((INSTALLED++)) || true
done

echo "✅ The Shark Panel successfully installed across $INSTALLED agent locations!"
echo "💡 You can now run '/shark-panel' in Claude Code, Gemini CLI, or your favorite agent!"
