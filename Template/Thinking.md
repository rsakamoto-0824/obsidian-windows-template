<%*
let title = await tp.system.prompt("整理したい問い・テーマ");
if (!title) title = "新しい思考整理";
const fileTitle = title.replace(/[\\/:*?"<>|#\[\]^]/g, " ").trim() || "新しい思考整理";
await tp.file.rename(fileTitle + "-" + tp.date.now("YYYYMMDDHHmmss"));
tR += "---\n";
tR += "title: " + JSON.stringify(title) + "\n";
tR += "created: " + tp.date.now("YYYY-MM-DD") + "\n";
tR += "kind: thinking\n";
tR += "status: exploring\n";
tR += "tags:\n  - thinking\n";
tR += "---\n\n# " + title + "\n\n";
tR += "## 問い\n\n- \n\n## 確認できた事実\n\n- \n\n## 解釈・仮説\n\n- \n\n## 選択肢と評価軸\n\n| 選択肢 | 利点 | 懸念 | 確認事項 |\n| --- | --- | --- | --- |\n|  |  |  |  |\n\n";
tR += "## 現時点の判断\n\n- \n\n## 次に確かめること\n\n- [ ] \n\n## 関連ノート・出典\n\n- \n";
%>

