---
title: Obsidian AI運用ガイド
tags:
  - class/obsidian
  - guide/ai
---

# Obsidian AI運用ガイド

このVaultは、タスク、予定、思考整理、備忘録をタグ中心で管理し、CodexとClaude Codeからも安全に扱える構成です。

## 基本の入口

- `Home.canvas`: 普段の入口
- `Class/運用ダッシュボード.md`: 今日のタスク・予定、最近の思考・メモ
- `Daily/`: 日々の予定、タスク、作業記録、振り返り
- `Pages/`: タスク、予定、思考整理、備忘録などの通常ノート
- `Template/`: 新規ノート用テンプレート
- `Refs/`: 画像などの添付

## 1日の使い方

1. Obsidianを起動し、`Home.canvas` を開く。
2. Calendarで日付を選び、Dailyノートを作成する。
3. 今日のタスクと予定を確認する。
4. Homeのボタンからタスク、予定、思考整理、備忘録を作成する。
5. 終業時にDailyノートへ完了内容、持ち越し、明日の最初の一手を記録する。

## タグの考え方

保存先の細かなフォルダ分けは不要です。`kind` でノートの役割を区別し、分野をまたぐ内容には `topic/statistics`、`topic/semiconductor` のようなタグを追加します。

## Codex / Claude Codeへの依頼例

```text
Pages内の #memo を読み、重複候補だけ一覧にしてください。まだ統合・削除はしないでください。
```

```text
この #thinking ノートについて、事実と仮説が混ざっている箇所を指摘し、次に確認するタスク案を追記してください。
```

```text
今日のCodexとClaude Codeの作業を確認し、DailyノートのAI作業記録欄へ追記してください。
```

## 安全な運用

- AIへ依頼するときは、対象、目的、変更してよい範囲を指定する。
- `ai_access: restricted` のノートは、明示的に対象を指定した場合だけAIに読ませる。
- 一括変更前にVaultをバックアップする。
- パスワード、APIキー、回復コードをVaultやGitへ保存しない。
- 外部送信、削除、GitHubへのpushは、対象を確認してから実行する。
