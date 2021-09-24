# 進捗管理

[notion](https://www.notion.so/mws_2021-f471f42d28e948b6a24ac4e812556f88)

## 現在のタスク

#### 周・楊：  

- ...

#### 岡・栗：

- vms/malware_analysis配下に"static_install.sh"(名前は別のものでも良い)
    - Remnuxの動的解析以外のツール
    - katoolinの[ReverseEngineering]の項目のツール

#### 吉・吉：  

-  他の環境について教育目的や実装のアウトラインを考える
    -  ワンチャン、セキュリティ診断として、Web, プラットフォーム, コンテナとかを一緒にしてもよさげ

## 設計思想と目標

- できるだけ軽くしたい
- 環境の候補
  - マルウェア解析環境（Cuckoo Sandbox+静的解析ツール）
  - Webスキャン　(スキャン → セキュアコーディング?)
    - スキャンツール
      - BurpSuite
      - OWASP ZAP
    - やられサーバ
      - web-dwma
  - プラットフォームスキャン
      - スキャンツール
        - Nessus
        - Nikto
      - やられサーバ
        - metasploitable
  - コンテナスキャン
    - スキャンツール
      - Trivy
      - [etc](https://dev.classmethod.jp/articles/container-security-tools-and-docs/)
    - やられサーバ
      - ...
  - フォレンジック
  - ブロックチェーン
  - インシデントレスポンス
      - [https://github.com/The-Art-of-Hacking/h4cker/tree/master/dfir](https://github.com/The-Art-of-Hacking/h4cker/tree/master/dfir)
  - etc (教育ツールなら拡張性としてCTFあってもよさそう)
