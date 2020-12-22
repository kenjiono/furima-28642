# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

<<<<<<< Updated upstream
## Users

|Column          |Type  |Options               |  
|name            |string|null:false            |  
|email           |string|null:false,unique:true|
|last_name       |string|null:false            |
|first_name      |string|null:false            |
|last_name(kana) |string|null:false            |
|first_name(kana)|string|null:false            |

=======
# テーブル設計

## users テーブル

| Column           | Type   | Options                 |
| ---------------- | ------ | ----------------------- |
| name             | string | null: false             |
| email            | string | null: false,unique:true |
| password         | string | null: false,unique:true |
| last_name        | string | null: false             |
| first_name       | string | null: false             |
| last_name(kana)  | string | null: false             |
| first_name(kana) | string | null: false             |
| birth_date       | string | null: false             |
>>>>>>> Stashed changes

### Association

- has_many :items
- has_many :purchases

<<<<<<< Updated upstream
## Items

|Column           |Type      |Options                     |  
|seller           |references|null:false,foreign_key:true |  
|name             |string    |null:false                  |
|description      |text      |null:false                  |
|images_id        |integer   |null:false                  |
|category_id      |integer   |null:false                  |
|condition_id     |integer   |null:false                  |
|postage_payer_id |integer   |null:false                  |
|prefecture       |integer   |null:false                  |
|handling_time_id |integer   |null:false                  |
|price            |integer   |null:false                  |

=======
## items テーブル

| Column           | Type       | Options                       |
| ---------------- | ---------- | ----------------------------- |
| user             | references | null: false, foreign_key:true |
| name             | string     | null: false                   |
| description      | text       | null: false                   |
| images_id        | integer    | null: false                   |
| category_id      | integer    | null: false                   |
| condition_id     | integer    | null: false                   |
| postage_payer_id | integer    | null: false                   |
| prefecture_id    | integer    | null: false                   |
| handling_time_id | integer    | null: false                   |
| price            | string     | null: false                   |
>>>>>>> Stashed changes

### Association

- belongs_to :users
<<<<<<< Updated upstream
- has_one :purchases

## Purchases

|Column |Type      |Options                     |  
|item   |references|null:false,foreign_key:true |  
|user   |references|null:false,foreign_key:true |
=======
- has_many :purchases

## purchases テーブル

| Column     | Type       | Options                       |
| ---------- | ---------- | ----------------------------- |
| item       | references | null: false, foreign_key:true |
| user       | references | null: false, foreign_key:true |
>>>>>>> Stashed changes

### Association

- belongs_to :users
- belongs_to :items

<<<<<<< Updated upstream
## Addresses

|Column        |Type       |Options                     |  
|post_code     |string     |null:false                  |  
|prefecture_id |integer    |null:false,foreing_key:true |
|city          |string     |null:false                  |
|building_name |string     |                            |
|phone_number  |string     |null:false,unique:true      |
|purchase      |references |null:false,foreign_key:true |

=======
## addresses テーブル

| Column         | Type       | Options                       |
| -------------- | ---------- | ----------------------------- |
| post_code      | string     | null: false,                  |
| prefecture_id  | integer    | null: false, foreign_key:true |
| city           | string     | null: false,                  |
| building_name  | string     |                               |
| phone_number   | string     | null: false, unique:true      |
| purchase       | references | null: false, foreign_key:true |
>>>>>>> Stashed changes

### Association

- belongs_to :purchases