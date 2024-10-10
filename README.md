# README

# ProtoSpaceのER図

## users テーブル
| Column             | Type   | Options                 |
| ------------------ | ------ | ----------------------- |
| email              | string | null:false, email (U)   |
| encrypted_password | string | null:false              |
| name               | string | null:false              |
| profile            | text   | null:false              |
| occupation         | text   | null:false              |
| position           | text   | null:false              |

- has_many :prototypes
- has_many :comments

## prototypes テーブル
| Column             | Type      | Options      |
| ------------------ | ------    | ------------ |
| title              | string    | null:false   |
| catch_copy         | text      | null:false   |
| concept            | text      | null:false   |
| user               | reference | null:false   |

- belongs_to :user
- has_many :comments

## comments テーブル
| Column             | Type      | Options              |
| ------------------ | ------    | -------------------- |
| content            | text      | null:false           |
| prototype          | reference | null:false,外部キー   |
| user               | reference | null:false,外部キー   |

### Association

- belongs_to :prototype
- belongs_to :user