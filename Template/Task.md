<%*
let title = await tp.system.prompt("タスク名");
if (!title) title = "新しいタスク";
let due = await tp.system.prompt("期限（YYYY-MM-DD、未定は空欄）");
if (!/^\d{4}-\d{2}-\d{2}$/.test(due || "")) due = "";
const fileTitle = title.replace(/[\\/:*?"<>|#\[\]^]/g, " ").trim() || "新しいタスク";
await tp.file.rename(fileTitle + "-" + tp.date.now("YYYYMMDDHHmmss"));
tR += "---\n";
tR += "title: " + JSON.stringify(title) + "\n";
tR += "created: " + tp.date.now("YYYY-MM-DD") + "\n";
tR += "kind: task\n";
tR += "status: inbox\n";
tR += "priority: medium\n";
tR += "due: " + (due || "null") + "\n";
tR += "tags:\n  - task\n";
tR += "---\n\n# " + title + "\n\n";
tR += "## 実行項目\n\n- [ ] " + title + (due ? " 📅 " + due : "") + "\n\n";
tR += "## 完了条件\n\n- \n\n## 背景・関連資料\n\n- \n\n## 作業メモ\n\n";
%>
