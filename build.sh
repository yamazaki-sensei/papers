set -eux

# 日付変数を設定（日本のフォーマット - 例: 2025年5月25日）
TODAY=$(date "+%Y年%m月%d日")

# 履歴書の前処理 - ${today}を実際の日付に置き換え
cp ./Rirekisyo/rirekisyo.md ./Rirekisyo/rirekisyo_tmp.md
sed -i "" "s/\${today}/$TODAY/g" ./Rirekisyo/rirekisyo_tmp.md

# 職務経歴書の前処理 - ${today}を実際の日付に置き換え
cp ./Resume/resume.md ./Resume/resume_tmp.md
sed -i "" "s/\${today}/$TODAY/g" ./Resume/resume_tmp.md

# PDFに変換
cat ./Rirekisyo/rirekisyo_tmp.md | npx md-to-pdf  > ./履歴書_大野拓.pdf
cat ./Resume/resume_tmp.md | npx md-to-pdf  > ./職務経歴書_大野拓.pdf

# 一時ファイルを削除
rm ./Rirekisyo/rirekisyo_tmp.md
rm ./Resume/resume_tmp.md
