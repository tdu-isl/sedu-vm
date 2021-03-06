# sedu-vm

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
<img src="docs/../images/sedu-vm.gif" alt="属性" title="demo">
</div>

## スクリーンショット
<div align="center">
<p> インストールを開始
<img src="/docs/images/start_installation.png" alt="属性" title="start_installation">
<p> ウェブスキャンを選択
<img src="/docs/images/web_scan.png" alt="属性" title="web_scan">
<p> ウェブスキャンをインストールした
<img src="/docs/images/web_scan_installed.png" alt="属性" title="web_scan_installed">
<p> ウェブスキャンの状況確認
<img src="/docs/images/web_scan_confirm.png" alt="属性" title="web_scan_confirm">
</div>

## Tool/Environment
- [マルウェア解析](https://github.com/tdu-isl/sedu-vm/tree/main/vms/malware_analysis)
- [ウェブスキャン](https://github.com/tdu-isl/sedu-vm/tree/main/vms/web_scan)
- [プラットフォームスキャン](https://github.com/tdu-isl/sedu-vm/tree/main/vms/platform_scan)


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

## Doing
- プラットフォーム診断環境の拡張

## ToDo
- 環境追加

  1. マルウェア解析環境のCuckoo SandboxをDockerコンテナのものにする #[Ref](https://www.oreilly.com/library/view/security-automation-with/9781788394512/eae29df4-1052-4c41-94e5-0564b4d6bff6.xhtml)
  2. プラットフォーム診断環境
     - 現在はやられサーバとしてmetasploitable2が用意されているが、「サーバの修正」という工程を演習に入れたいため、実際に脆弱性を持ったターゲットをDockerにより用意することを考えている
  3. ブロックチェーン診断環境　
     - スマートコントラクトを用いたアプリを用意し、ブロックチェーン診断ツールで診断演習ができるようにする # まだ無償の診断ツールが見つかっていないのが現状
  4. コンテナ診断環境
     - Web診断と同じように、コンテナセキュリティのポリシーに沿って脆弱なコンテナイメージを作り、無償のコンテナスキャンツールを用いることで、コンテナスキャンツールの使い方を学ぶとともに、コンテナで意識するべきセキュリティを学べるようにする
  5. 純粋なLinuxやWSL環境　　
     - セキュリティ教育でLinuxを用いることが多いことから、純粋なLinuxを用意するだけでもサーバをセキュアにする演習に用いることができるし、Winodws特有の機能であるWSLも、ワンスクで環境が用意できるとなにかと便利だと考えている

- UI改善

  1. 最初のツール/環境の選択画面を使いやすく、多肢選択できるように改善する

## Licene
[MIT](https://github.com/tdu-isl/sedu-vm/blob/develop/LICENSE)

## Author

- [:boy:栗原 史弥](https://github.com/kur1h4r4)
- [:boy:岡安 良輔](https://github.com/RyosukeOkayasu)
- [:boy:ヨウ シゲン](https://github.com/Twinsoul-Y)
- [:boy:吉川 照規](https://github.com/terib0l)
- [:boy:吉田 侑生](https://github.com/y0sh1da)
- [:man:周 家興](https://github.com/Syuukakou)
