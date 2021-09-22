# 進捗管理

[notion](https://www.notion.so/mws_2021-f471f42d28e948b6a24ac4e812556f88)

## 現在のタスク

#### 周・楊：  
```
* ３の作業については、どの環境を立てるかが選べるような設計が良い？
* できればパッケージマネージャは一つのほうが良いかと思う
* cuckoo sandboxのインストールスクリプトの配置はvms/malware_analysis配下（変更可）
```  

  1. install virtualbox (VboxManage/vagrant)
  2. install ubuntu in virtualbox
  3. install Cuckoo sandbox  on Ubuntu (based on cuckoo-vm)

#### 岡・栗：
```
* Remnuxの動的解析以外のツールとkalitoolsの[ReverseEngineering]の項目のツール
* 実装はkalitoolsみたいにスクリプトだけ置いといて後入れで良いと思う
```  

  1. 静的解析ツールのインストールスクリプト

#### 吉・吉：  
```
* とりまWeb?
* ワンチャン、セキュリティ診断として、Webスキャンとプラットフォームスキャン、コンテナスキャンとかを一緒にしてもよさげ
```

  1. 他の環境について教育目的や実装のアウトラインを考える

## 設計思想と目標

* できるだけ軽くしたい
* 環境の候補
  - マルウェア解析環境（Cuckoo Sandbox+静的解析ツール）
  - Webスキャン　(スキャン → セキュアコーディングが必要!!　を学ぶ)
      - スキャンツール　+　脆弱なWebサーバ（←こっちが肝？）
  - プラットフォームスキャン
      - スキャンツール　+　dockerのmetasploitable2　（一つの環境で済むから）
  - フォレンジック
  - ブロックチェーン
  - インシデントレスポンス
      - [https://github.com/The-Art-of-Hacking/h4cker/tree/master/dfir](https://github.com/The-Art-of-Hacking/h4cker/tree/master/dfir)
  - etc (教育ツールなら拡張性としてCTFあってもよさそう)
