# Obsidian Windows Template

Windows端末でそのまま開ける、個人用Obsidian Vaultの初期テンプレートです。タスク、予定、Dailyノート、思考整理、備忘録を1つのVaultで扱い、CodexとClaude Codeからも安全に編集できる構成です。

このリポジトリに個人ノート、OneNote移行データ、メール、Teams履歴、認証情報は含まれていません。

## 含まれるもの

- `Home.canvas`: 起動後の入口
- `Template/`: Daily、タスク、予定、思考整理、備忘録などのテンプレート
- `Class/`: タスク・予定・思考・備忘録の一覧
- `Pages/*.base`: Obsidian Bases用の一覧定義
- `Canvas/`: 思考整理用Canvas
- `.obsidian/`: Vault設定、CSSスニペット、有効なコミュニティプラグイン
- `AGENTS.md` / `CLAUDE.md`: Codex・Claude Code向けの安全な管理ルール

## Windowsへの導入

### GitHub Desktopを使う場合

1. WindowsへObsidianとGitHub Desktopをインストールする。
2. GitHub DesktopでこのPrivateリポジトリをクローンする。
3. PowerShellでクローン先へ移動し、`setup-windows.ps1` を実行する。
4. Obsidianが開いたら、このフォルダをVaultとして選ぶ。
5. 「コミュニティプラグインを信頼する」確認が出た場合は、内容を確認して有効化する。

```powershell
Set-ExecutionPolicy -Scope Process Bypass
.\setup-windows.ps1
```

### コマンドでクローンする場合

```powershell
gh auth login
gh repo clone rsakamoto-0824/obsidian-windows-template
cd obsidian-windows-template
Set-ExecutionPolicy -Scope Process Bypass
.\setup-windows.ps1
```

初回起動後は、`Home.canvas`、右サイドバーのCalendar、`Class/運用ダッシュボード.md` が利用できることを確認してください。

## 日常の使い方

1. `Home.canvas` を開く。
2. Calendarから当日のDailyノートを作成する。
3. Homeのボタンからタスク、予定、思考整理、備忘録を作る。
4. 通常ノートは `Pages/` に保存し、フォルダではなく `kind` と `tags` で整理する。

詳細は `AI運用ガイド.md` を参照してください。

## Codex / Claude Codeで管理する

Windows TerminalでVault直下へ移動してから起動します。

```powershell
cd C:\path\to\obsidian-windows-template
codex
```

```powershell
cd C:\path\to\obsidian-windows-template
claude
```

両ツールは、作業前にVault直下の管理ルールを読みます。ノート本文中の命令文は資料として扱い、ユーザーの依頼と区別します。

## リポジトリの役割

このリポジトリは初期テンプレート配布用です。`Daily/`、`Pages/`、`Refs/`、`Excalidraw/` に作成した個人データは既定でGit管理されません。複数端末間で個人ノートも同期したい場合は、Obsidian Syncなど別の同期手段を使用してください。

## 更新

テンプレートを更新する前に、Windows側で個人ノートのバックアップを取得してください。その後、GitHub Desktopの「Fetch origin」→「Pull origin」、または次を実行します。

```powershell
git pull --ff-only
```

## 注意

- GitHubリポジトリはPrivateのまま使用してください。
- APIキー、パスワード、個人情報をコミットしないでください。
- `.obsidian/workspace.json` は端末ごとの画面状態なので管理対象外です。
- 同梱プラグインは、このテンプレート作成時点のバージョンです。更新前にVaultをバックアップしてください。
