---
title: "{{date:YYYY-MM-DD}}"
created: "{{date:YYYY-MM-DD}}"
kind: daily
tags:
  - daily
---

# {{date:YYYY-MM-DD}}

## 今日の予定

```dataview
TABLE WITHOUT ID file.link AS 予定, start AS 開始, end AS 終了
FROM #schedule
WHERE kind = "schedule" AND scheduled = date("{{date:YYYY-MM-DD}}") AND status != "cancelled"
SORT start ASC
```

## 今日やるタスク

```tasks
not done
path does not include OneNote/
path does not include Template/
happens on {{date:YYYY-MM-DD}}
sort by priority
sort by due
```

## 作業記録

<!-- ai-worklog:start -->
### Codex

- 実施内容: 未記録
- 成果物・変更ファイル: 未記録
- 確認結果: 未記録

### Claude Code

- 実施内容: 未記録
- 成果物・変更ファイル: 未記録
- 確認結果: 未記録

### AI作業記録メモ

- 自動更新時刻: 未記録
- 未確認事項: なし
<!-- ai-worklog:end -->

## 今日の成果物

<!-- daily-artifacts:start -->
### ファイル・レポート

- 未記録

### GitHub・外部反映

- 未記録

### 設定・環境変更

- 未記録

### 調査・設計結果

- 未記録
<!-- daily-artifacts:end -->

## クイック記録

### タスク

- [ ] 

### 思考・気づき

- 

### 備忘録

- 

## 一日の振り返り

- 完了したこと:
- 持ち越すこと:
- 明日の最初の一手:


## 関連ノート
