@echo off
chcp 65001 > nul

REM Pythonのパスを自動的に検出
for /f "delims=" %%i in ('where python py') do set "python_path=%%i"

REM Pythonのパスが見つからない場合はエラーメッセージを表示して終了
if "%python_path%"=="" (
    echo Pythonが見つかりませんでした。Pythonのインストールを確認してください。
    pause
    exit
)

REM 仮想環境の作成
%python_path% -m venv .venv

REM 仮想環境の有効化
call .venv\Scripts\activate

REM 仮想環境のpipをアップデート
python -m pip install --upgrade pip

REM メッセージの表示
echo 仮想環境の作成とpipのアップデートが完了しました。

REM コマンドプロンプトを開いたままにする
cmd /k
