# 仮想環境の作成

## bat
`Building_venv.bat` を使えば簡単に仮想環境の構築ができます。

- 自動で以下のものが実行されます
  - 環境の構築
  - pipのアップデート
  - requirements.txtのインストール



## 新規環境作成

作成したいディレクトリに移動

```
$ py -m venv .venv
```

`.venv`はフォルダ名になるので好きにつけていい

### バージョン指定方法

```
$ py -3.9 -m venv .venv
```

環境にインストールされているPythonのバージョンであれば好きに指定できる

## 環境起動(Activate)

Windows
```
$ .venv\Scripts\activate
```

仮想環境に入ると以下のようになる

```
(.venv)$
```

## 環境終了(Deactivate)

```
(.venv)$ deactivate
```

## pipのアップデート
```
(.venv)$ [環境] -m pip install --upgrade pip
```
もしくは

```
(.venv)$ pip install -U pip setuptools
```

## ライブラリのアップデート

### 確認
```
(.venv)$ pip list --outdated
```
もしくは

```
(.venv)$ pip list -o
```

### アップデート
```
(.venv)$ pip install --upgrade <パッケージ名>
```
もしくは

```
(.venv)$ pip install -U <パッケージ名>
```

# パッケージ保存インストール

## パッケージ保存

```
(.venv)$ pip freeze > requirements.txt
```

## パッケージインストール
```
(.venv)$ pip install -r requirements.txt
```

## パッケージアインストール

### 一括
```
(.venv)$ pip uninstall -y -r requirements.txt
```

### 単一

```
(.venv)$ pip uninstall <パッケージ名>
```

[参考](https://www.python.jp/install/windows/venv.html)

# バッチファイルから起動

```bat
[仮想環境名]\Scripts\python.exe [起動アプリ名].py --pycmd [仮想環境名]\Scripts\python.exe
pause
```

例
```bat
.venv\Scripts\python.exe app.py --pycmd .venv\Scripts\python.exe
pause
```
