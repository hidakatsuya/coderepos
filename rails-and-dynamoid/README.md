# Rails + DynamoDB + dynamoid

## AWS profile for localstack

```shell
aws configure --profile localstack
```
```
AWS Access Key ID [None]: dummy
AWS Secret Access Key [None]: dummy
Default region name [None]: us-east-1
Default output format [None]: json
```

## ヘルスチェック

```shell
bin/rails dynamoid:ping
```

```
curl http://localstack:4566/_localstack/health | jq
```

## テーブルを作成する

```shell
bin/rails dynamoid:create_tables
```

未検証
```shell
bin/rails r 'Dynamoid.adapter.create_table("table_name", "key", options)
```

未検証
```shell
aws --endpoint-url=http://localhost:4566 dynamodb create-table \
    --table-name MyTable \
    --attribute-definitions AttributeName=Id,AttributeType=S \
    --key-schema AttributeName=Id,KeyType=HASH \
    --provisioned-throughput ReadCapacityUnits=5,WriteCapacityUnits=5
```

## テーブルを削除する

```shell
bin/rails r 'Dynamoid.adapter.delete_table("table_name")'
```

## テーブル一覧を表示する

```shell
bin/rails r 'puts Dynamoid.adapter.list_tables
```

```shell
aws --endpoint-url=http://localhost:4566 dynamodb list-tables --profile localstack
```

## 管理画面

Visit http://localhost:8001

## References

* [DynamoDB Available Commands](https://docs.aws.amazon.com/cli/latest/reference/dynamodb/#available-commands)
* [lib/dynamoid/adapter.rb](https://github.com/Dynamoid/dynamoid/blob/3fc2fc7155b1d7a294048126e31c8c095d888da4/lib/dynamoid/adapter.rb)
* [AWS入門ブログリレー2024〜Amazon DynamoDB編〜](https://dev.classmethod.jp/articles/introduction-2024-amazon-dynamodb/)
* [Dynamoid/dynamoid - README.md](https://github.com/Dynamoid/dynamoid/blob/master/README.md)
* [Dynamoid の使い方【global_secondary_index 編】](https://developer.feedforce.jp/entry/2017/11/26/195509)
* [Dynamoid で gsi が有効化された状態で where できているか確かめる](https://zenn.dev/ndjndj/articles/c400e006459f90)
