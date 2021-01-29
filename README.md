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

アプリケーション名: tm32582
アプリケーション概要: スーパーの見切り商品をネットで購入できる
URL:
Basic認証: admin/2222
テスト用アカウント: example@com/1qa2ws, test@co.jp/9ol8ik
利用方法: トップページから「おすすめ」をクリック→商品を選択→購入
目指した課題解決: 消費者層は30〜40代の主婦や働く女性が空いた時間に店の商品をネットで購入ができる。店舗側は廃棄予算の削減と食品ロスへの取り組みとなる。
洗い出した要件: https://docs.google.com/spreadsheets/d/1Xcs3B3Z47o4rs-3T9vInaQ2T7qxfxjOhMMuSubc1VQI/edit#gid=282075926
実装した機能についてのGIFと説明: 商品出品機能、SNS機能(https://gyazo.com/74d2496fb7ce7ba255a17467fe680b95)
実装予定の機能: 商品購入機能、地図機能
データベース設計: ER図(er.png)
ローカルでの動作方法: 

# テーブル設計

## users テーブル

| Column             | Type    | Options     |
| ------------------ | ------- | ----------- |
| nickname           | string  | null: false |
| email              | string  | null: false |
| encrypted_password | string  | null: false |
| last_name          | string  | null: false |
| first_name         | string  | null: false |
| last_name_kana     | string  | null: false |
| first_name_kana    | string  | null: false |
| birthday           | date    | null: false |
| post_code          | string  | null: false |
| prefecture_id      | integer | null: false |
| city               | string  | null: false |
| address            | string  | null: false |
| building           | string  |             |
| phone_number       | string  | null: false |

### Association

- has_many :tmarts, orders

## tmarts テーブル

| Column        | Type       | Options          |
| ------------- | ---------- | ---------------- |
| product_name  | string     | null: false      |
| disposal_id   | integer    | null: false      |
| category_id   | integer    | null: false      |
| deadline_id   | integer    | null: false      |
| store_id      | integer    | null: false      |
| before_price  | integer    | null: false      |
| after_price   | integer    | null: false      |
| text          | text       | null: false      |
| user          | references | foreign_key:true |

### Association

- belongs to :user
- has_one :order

## orders テーブル

| Column        | Type       | Options          |
| ------------- | ---------- | ---------------- |
| user          | references | foreign_key:true |
| tmart         | references | foreign_key:true |

### Association

- belongs to :user
- has_one :tmart