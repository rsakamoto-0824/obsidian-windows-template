<%*
let title = await tp.system.prompt("予定名");
if (!title) title = "新しい予定";
let scheduled = await tp.system.prompt("日付（YYYY-MM-DD）");
if (!/^\d{4}-\d{2}-\d{2}$/.test(scheduled || "")) scheduled = tp.date.now("YYYY-MM-DD");
let start = await tp.system.prompt("開始時刻（HH:mm、未定は空欄）");
let end = await tp.system.prompt("終了時刻（HH:mm、未定は空欄）");
const fileTitle = title.replace(/[\\/:*?"<>|#\[\]^]/g, " ").trim() || "新しい予定";
await tp.file.rename(scheduled + "-" + fileTitle + "-" + tp.date.now("HHmmss"));
tR += "---\n";
tR += "title: " + JSON.stringify(title) + "\n";
tR += "created: " + tp.date.now("YYYY-MM-DD") + "\n";
tR += "kind: schedule\n";
tR += "status: planned\n";
tR += "scheduled: " + scheduled + "\n";
tR += "start: " + JSON.stringify(start || "") + "\n";
tR += "end: " + JSON.stringify(end || "") + "\n";
tR += "tags:\n  - schedule\n";
tR += "---\n\n# " + title + "\n\n";
tR += "## 目的\n\n- \n\n## 準備\n\n- [ ] \n\n## メモ\n\n";
%>

