# DB設計

## users テーブル

| Column             | Type     | Options                   |
| ------------------ | ------   | --------------            |
| email              | string   | null: false, unique: true |
| encrypted_password | string   | null: false               |
| nickname           | string   | null: false               |
| age                | integer  | null: false               |
| height             | integer  | null: false               |
| weight             | integer  | null: false               |

### Association

* has_many :cordes


## cordes テーブル

| Column          | Type       | Options                          |
| ----------      | --------   | ------------------------------   |
| title           | string     | null: false                      |
| concept         | text       | null: false                      |
| user            | references | null: false, foreign_key: true   |

### Association

* belongs_to :user