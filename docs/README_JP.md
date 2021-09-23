```
 ____  _____ ____  _   _    __     ____  __ 
/ ___|| ____|  _ \| | | |   \ \   / /  \/  |
\___ \|  _| | | | | | | |____\ \ / /| |\/| |
 ___) | |___| |_| | |_| |_____\ V / | |  | |
|____/|_____|____/ \___/       \_/  |_|  |_|
                                            
```

- [English Version README](https://github.com/tdu-isl/sedu-vm/blob/main/README.md)

## Description
これは、複数のサイバーセキュリティ関連のツールと環境の自動構築スクリプトです。

## Demo
<div align="center">
<img src="https://github.com/tdu-isl/sedu-vm/wiki/images/demo.gif" alt="属性" title="demo">
</div>

## Tool/Environment
- [マルウェア解析]("https://github.com/tdu-isl/sedu-vm/tree/main/vms/malware_analysis")
- [セキュリティ診断]("https://github.com/tdu-isl/sedu-vm/tree/main/vms/security_assessment")
- [?]()
- [?]()

## Install
1. まずは、このレポジトリをローカルにクローンしてください。
2. ```Powershell```を開き、```cd```コマンドでクローンしたレポジトリのフォルダに入ってください。
3. ```.\start_installation.ps1```コマンドを入力し、```Enter```キーを押してから、インストラクションが自動的に開始されます。
4. 仮想マシンUbuntu 20.04がインストールされた次第、インストールしたいまたは構築したい環境を選択する画面が出てくるため、その中から一つ選んでください。


## Note
1. ローカルでインストールされた Ubuntu 20.04 のコンフィグレーションは以下となります：
   > Vagrantfileファイルにある vb.custome ところから Ubuntu の設定を変更できます。
    1. 仮想マシンの名前：```MalAnalysis_Ubuntu```
    2. ログイン名 / パスワード：```vagrant``` / ```vagrant```
    3. GUI: 利用可能
    4. CPU数：4
    5. メモリ：4096M
    6. ビデオRAM：256M
    7. ディスクサイズ：50GB
    8. ホストとゲスト間のコピペ：双方向

## Licene
[MIT](https://github.com/tdu-isl/sedu-vm/blob/develop/LICENSE)

## Author

- [:boy:栗原 史弥]()
- [:boy:岡安 良輔]()
- [:boy:ヨウ シゲン]()
- [:boy:吉川 照規]()
- [:boy:吉田 侑生]()
- [:man:周 家興]()
