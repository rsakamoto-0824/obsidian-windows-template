<%*
let title = await tp.system.prompt("備忘録のタイトル");
if (!title) title = "新しい備忘録";
const fileTitle = title.replace(/[\\/:*?"<>|#\[\]^]/g, " ").trim() || "新しい備忘録";
await tp.file.rename(fileTitle + "-" + tp.date.now("YYYYMMDDHHmmss"));
tR += "---\n";
tR += "title: " + JSON.stringify(title) + "\n";
tR += "created: " + tp.date.now("YYYY-MM-DD") + "\n";
tR += "kind: memo\n";
tR += "status: captured\n";
tR += "tags:\n  - memo\n";
tR += "---\n\n# " + title + "\n\n";
tR += "## 要点\n\n> \n\n## 詳細・手順\n\n1. \n\n## 出典・関連ノート\n\n- \n\n## 次回の注意\n\n- \n";
%>

