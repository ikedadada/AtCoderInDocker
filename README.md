# AtCoderInDocker

## 準備

.envファイルの作成
```
LOGIN_ID=[AtCoderのログインID]
PASSWORD=[AtCoderのログインPassword]
```

コンテナの立ち上げ
```
docker-compose up -d
```

## 利用
コンテナへのログイン
```
docker-compose exec app sh --login
```

コンテストへのアクセス
```
$ acc new [コンテストID]
```

ディレクトリ移動
```
cd [コンテストID]/[問題ID]
```

回答の作成
```
code answer.py
```

```python:answer.py
#!/usr/bin/env python
~~~
~~~
```

テストの実行
```
oj t -c "python answer.py" -d tests 
```

提出
```
acc submit answer.py
```
