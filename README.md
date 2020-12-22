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

## Users

|Column          |Type  |Options               |  
|name            |string|null:false            |  
|email           |string|null:false,unique:true|
|last_name       |string|null:false            |
|first_name      |string|null:false            |
|last_name(kana) |string|null:false            |
|first_name(kana)|string|null:false            |


### Association

- has_many :items
- has_many :purchases

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


### Association

- belongs_to :users
- has_one :purchases

## Purchases

|Column |Type      |Options                     |  
|item   |references|null:false,foreign_key:true |  
|user   |references|null:false,foreign_key:true |

### Association

- belongs_to :users
- belongs_to :items

## Addresses

|Column        |Type       |Options                     |  
|post_code     |string     |null:false                  |  
|prefecture_id |integer    |null:false,foreing_key:true |
|city          |string     |null:false                  |
|building_name |string     |                            |
|phone_number  |string     |null:false,unique:true      |
|purchase      |references |null:false,foreign_key:true |


### Association

- belongs_to :purchases