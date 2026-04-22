# ArkInventory Character Rules

WoW Addon (Lua) that extends [ArkInventory](https://www.curseforge.com/wow/addons/ark-inventory) with character-specific rules: `class`, `playername`, `spec`, and `role`.

## Project Overview

- **Addon:** `ArkInventoryCharacterRules`
- **Language:** Lua (World of Warcraft API)
- **Dependencies:** `ArkInventory`, `ArkInventoryRules`
- **Distribution:** GitHub → CurseForge via [BigWigsMods/packager](https://github.com/BigWigsMods/packager)
- **Release trigger:** Any git tag push (see `.github/workflows/release.yml`)

## File Structure

| File | Purpose |
|------|---------|
| `ArkInventoryCharacterRules.lua` | Main addon logic — rule registration and implementations |
| `ArkInventoryCharacterRules.toc` | WoW Table of Contents — metadata, interface version, file list |
| `.pkgmeta` | Packager config — controls what gets excluded from the CurseForge release |
| `.github/workflows/release.yml` | CI pipeline — packages and uploads to CurseForge/Wago on tag push |

## Rules Provided

| Rule | Alias | Description |
|------|-------|-------------|
| `playername(...)` | — | Matches the current player's name |
| `class(...)` | — | Matches player class (localized or English) |
| `spec(...)` | — | Matches spec name, spec ID, or role |
| `role(...)` | `spec` | Alias for `spec()` |

## Versioning

Version is maintained in `ArkInventoryCharacterRules.toc` (`## Version:`).
Interface versions (`## Interface:`) must be kept in sync with current WoW patch numbers.

## Releasing

1. Bump `## Version:` in the `.toc` file
2. Update `## Interface:` if the WoW patch changed
3. Stage all new and changed files before committing (`git add <file>` oder `git add -A`)
4. Commit and push a git tag — the GitHub Action handles packaging and upload to CurseForge/Wago automatically

## CurseForge Packaging Exclusions

Files excluded from the CurseForge release package are listed in `.pkgmeta` under the `ignore:` key.
Dev/CI-only files (`.github/`, `README.md`, `CLAUDE.md`, etc.) should be added there.

## Secrets Required (GitHub Repository Settings)

| Secret | Purpose |
|--------|---------|
| `CF_API_KEY` | CurseForge upload API key |
| `WAGO_API_TOKEN` | Wago.io upload token |
