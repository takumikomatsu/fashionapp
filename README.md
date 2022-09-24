## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| height             | string | null: false               |

has_many :requests
has_many :answers
has_many :favorites
has_many :sns_credentials

## requests テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| text   | string     | null: false                    |
| sex_id | integer    | null: false                    |
| user   | references | null: false, foreign_key: true |

belongs_to :user
has_many :answers
has_many :favorites

## answers テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| text    | string     | null: false                    |
| user    | references | null: false, foreign_key: true |
| request | references | null: false, foreign_key: true |

belongs_to :user
belongs_to :request
has_many :favorites

## favorites 　テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| user    | references | null: false, foreign_key: true |
| answer  | references | null: false, foreign_key: true |
| request | references | null: false, foreign_key: true |

belongs_to :user
belongs_to :request
belongs_to :answer

## sns_credentials テーブル

| Column   | Type       | Options           |
| -------- | ---------- | ----------------- |
| provider | string     | ----------------- |
| uid      | string     | ----------------- |
| user     | references | foreign_key: true |

belongs_to :user
