# 仮想環境の作成

## 新規環境作成

作成したいディレクトリに移動

```
$ py -m vnev .venv
```

`.venv`はフォルダ名になるので好きにつけていい

### バージョン指定方法

```
$ py -3.9 -m vnev .venv
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

# パッケージ保存インストール

## パッケージ保存

```
(.venv)$ pip freeze > requirements.txt
```

## パッケージインストール
```
(.venv)$ pip install -r requirements.txt
```

[参考](https://www.python.jp/install/windows/venv.html)
