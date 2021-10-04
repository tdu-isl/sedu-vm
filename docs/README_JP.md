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
- [プラットフォームスキャン](https://github.com/tdu-isl/sedu-vm/tree/main/vms/platform_scan)
- [?]()

## Install
1. まずは、このレポジトリをローカルにクローンしてください。
2. 管理者として```Powershell```を開き、```cd```コマンドでクローンしたレポジトリのフォルダに入ってください。
3. ```Set-ExecutionPolicy RemoteSigned -scope CurrentUser -Force```を実行してから、```.\pre-build.ps1```を実行してchocolatey, vagrantとvirtualboxをインストールします。
4. ```Powershell```をリスタートして、下記のコマンドを実行してください。
   - ```vagrant plugin install vagrant-disksize```
   - ```vagrant plugin install vagrant-vbguest```
5. Git bashを開き、```cd```コマンドでレポジトリフォルダに入って、```sh vm_selection.sh```コマンドで仮想環境のインストールを開始します。
6. Ubuntu 20.04仮想マシンをインストールした後、インストールするツールまたは環境を選択するように求められます。 そのうちの1つを選択してください。 インストールには時間がかかります :coffee:


## Note
1. Windowsの機能で「Hyper-V」と「仮想マシンプラットフォーム」が無効になっていることを確認してください。 「仮想マシンプラットフォーム」が無効になると、WindowsサブシステムLinux（WSL）は使用できなくなります。 「仮想マシンプラットフォーム」を無効にした後、CMDでbashコマンドを入力すると、以下のエラーが発生します。 そのため、GitBashを使用してshvm_selection.shを実行してください。
    <br>```Please enable the Virtual Machine Platform Windows feature and ensure virtualization is enabled in the BIOS.For information please visit https://aka.ms/wsl2-install```
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

- [:boy:栗原 史弥](https://github.com/kur1h4r4)
- [:boy:岡安 良輔]()
- [:boy:ヨウ シゲン](https://github.com/Twinsoul-Y)
- [:boy:吉川 照規](https://github.com/terib0l)
- [:boy:吉田 侑生]()
- [:man:周 家興](https://github.com/Syuukakou)
