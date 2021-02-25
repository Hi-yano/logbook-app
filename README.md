# テーブル設計

## users テーブル

| Column             | Type    | Options     |
| ------------------ | ------- | ----------- |
| email              | string  | null: false |
| encrypted_password | string  | null: false |
| nickname           | string  | null: false |

### Association

- has_many :areas
- has_many :tweets

## tweets テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| text    | string     | null: false                    |
| user_id | integer    | null: false                    |

### Association
- belongs_to :user

## logbooks テーブル

| Column     | Type      | Options                        |
| ---------- | --------- | ------------------------------ |
| count      | integer   | null: false                    |
| start_air  | integer   | null: false                    |
| finish_air | integer   | null: false                    |
| max_depth  | integer   | null: false                    |
| ave_depth  | integer   | null: false                    |
| point      | string    | null: false                    |
| entry_time | time      | null: false                    |
| exit_time  | time      | null: false                    |
| text       | text      | null: false                    |
| area       | reference | null: false, foreign_key: true |

### Association

- belongs_to :area

## items テーブル

| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| thickness    | integer    | null: false                    |
| suitstype_id | integer    | null: false                    |
| weight       | integer    | null: false                    |
| capacity_id  | integer    | null: false                    |
| type_id      | integer    | null: false                    |
| area         | references | null: false, foreign_key: true |

### Association

- belongs_to :area

## conditions テーブル

| Column            | Type       | Options                        |
| ----------------- | ---------- | ------------------------------ |
| weather           | string     | null: false                    |
| wind              | string     | null: false                    |
| temperature       | integer    | null: false                    |
| water_temperature | integer    | null: false                    |
| wave              | float      | null: false                    |
| tide_id           | integer    | null: false                    |
| area              | references | null: false, foreign_key: true |

### Association

- belongs_to :area

## Areas テーブル

| Column   | Type       | Options                        |
| -------- | ---------- | ------------------------------ |
| dive_day | string     | null: false                    |
| region   | string     | null: false                    |
| entry_id | integer    | null: false                    |
| user     | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_one :condition
- has_one :item
- has_one :logbook