# 履歴書・職務経歴書ビルドシステム

このリポジトリは履歴書と職務経歴書をマークダウンからPDFに変換するためのシステムです。

> 最終更新: 2025年5月26日 - GitHub Actions環境でのPuppeteer対応を強化

## 機能

- マークダウン形式で書かれた履歴書と職務経歴書をPDFに変換
- `${today}`タグを実行日の日付（例：2025年5月26日）に自動的に置換
- GitHub Actionsによるビルド検証

## 使い方

### ローカル環境での実行

1. 依存パッケージのインストール

```bash
npm install
```

2. ビルドスクリプトの実行

```bash
npm run build
# または直接実行
./build.sh
```

3. 生成されたPDFファイル

- `履歴書_大野拓.pdf`
- `職務経歴書_大野拓.pdf`

### GitHub Actionsについて

このリポジトリにはGitHub Actionsのワークフローが設定されており、以下のタイミングで自動的にビルドチェックが実行されます：

- mainブランチへのプッシュ時
- mainブランチへのプルリクエスト時
- 手動トリガー

ビルドが成功すると、生成されたPDFファイルはワークフローの成果物（Artifacts）として保存され、ダウンロードできます。

## ファイル構造

```
.
├── build.sh                # ビルドスクリプト
├── package.json            # プロジェクト設定
├── 履歴書_大野拓.pdf         # 生成されるPDF
├── 職務経歴書_大野拓.pdf      # 生成されるPDF
├── .github/workflows/      # GitHub Actions設定
├── Resume/                 # 職務経歴書のマークダウンソース
│   └── resume.md
└── Rirekisyo/              # 履歴書のマークダウンソース
    └── rirekisyo.md
```

## カスタマイズ

- `Resume/resume.md` - 職務経歴書の内容を編集
- `Rirekisyo/rirekisyo.md` - 履歴書の内容を編集

両ファイルとも、`${today}`と記述された箇所は実行日の日付に置換されます。
