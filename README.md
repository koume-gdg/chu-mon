readme

# README

# テーブル設計

## usersテーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| shop_name          | string | null: false, unique: true |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| owner_name         | string | null: false               |


### Association
- has_many :menus
- has_many :orders

## menusテーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| name               | string     | null: false                    |
| price              | integer    | null: false                    |
| user               | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- has_one :buyer


## ordersテーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| menu    | references | null: false, foreign_key: true |

### Association
- belongs_to :menu
- has_one :seats

## seatsテーブル

| Column    | Type       | Options                        |
| --------- | ---------- | ------------------------------ |
| seat      | integer    | null: false                    |
| order     | references | null: false, foreign_key: true |

### Association
- belongs_to : order

