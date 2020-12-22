#　テーブルの設計

## users テーブル
|Column      |Type    |Option     |
| ---------- | ------ | -----     |
|email       |string  |null: false|
|password    |string  |null: false|
|name        |string  |null: false|
|profile     |text    |null: false|
|occupation  |text    |null: false|
|position    |text    |null: false|

### Association
- has_many :comments
- has_many :prototype

## comments テーブル
|Column    |Type       |Option     |
| -------- | --------- | --------- |
|text      |text       |null: false|
|user      |references |null: false, foreign_key: true|
|prototype |references |null: false, foreign_key: true|

### Association
- belongs_to :users
- belongs_to :prototype

## prototypes テーブル
|Column     |Type          |Option      |
| --------- | ------------ | ---------- |
|title      |string        |null: false |
|catch_copy |text          |null: false |
|concept    |text          |null: false |
|image      |              |            |
|user       |reference     |null: false, foreign_key: true|

### Association
- belongs_to :users
- has_many :comments