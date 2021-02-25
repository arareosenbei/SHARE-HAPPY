# SHARE HAPPYとは
<img width="1680" alt="スクリーンショット 2021-02-22 15 07 04" src="https://user-images.githubusercontent.com/69485684/108677844-9cd33e80-752d-11eb-80d8-c78f44193d51.png">
<!-- gifに変更 -->

## URL
http://54.144.107.159/

## ポートフォリオ作成の動機  
- 友人の結婚式の準備をそばで手伝った際に式場選択、衣装選択、料理、親族や友人へのおもてなし、披露宴の出し物や二次会の準備など本当にたくさんの準備が必要なことを知ることが出来た。そこで、これから結婚される人にすでに結婚式を挙げられた人の良かった点や改善しておけばよかった点などリアルな感想を届ける事ができる場所を作りたいと考えた。

<!-- ## ポートフォリオ作成にあたっての課題 -->

## 使用技術
- OS：Linux(CentOS)
- 言語：HTML,CSS,JavaScript,Ruby
- フレームワーク：Ruby on Rails
- JSライブラリ：jQuery
- 仮想環境：AWS cloud9

## 画面一覧

<img width="1680" alt="スクリーンショット 2021-02-22 15 07 04" src="https://user-images.githubusercontent.com/69485684/108683747-63063600-7535-11eb-86b2-dd18d7b993b7.png">
<img width="1680" alt="スクリーンショット 2021-02-22 17 17 53" src="https://user-images.githubusercontent.com/69485684/108683763-67caea00-7535-11eb-89a7-566dc1147612.png">
<img width="1679" alt="スクリーンショット 2021-02-22 17 15 51" src="https://user-images.githubusercontent.com/69485684/108683797-70bbbb80-7535-11eb-9902-1f9e5393c0d8.png">
<img width="1680" alt="スクリーンショット 2021-02-22 17 15 59" src="https://user-images.githubusercontent.com/69485684/108683805-72857f00-7535-11eb-960e-f7eab801261b.png">
<img width="1677" alt="スクリーンショット 2021-02-22 16 49 01" src="https://user-images.githubusercontent.com/69485684/108683832-7a452380-7535-11eb-8afd-31ee1e41a438.png">
<img width="1679" alt="スクリーンショット 2021-02-22 17 30 51" src="https://user-images.githubusercontent.com/69485684/108683853-8204c800-7535-11eb-823d-895783c966bd.png">
<img width="1680" alt="スクリーンショット 2021-02-22 16 50 05" src="https://user-images.githubusercontent.com/69485684/108683870-8630e580-7535-11eb-9afd-168762d0d1a0.png">
<img width="1678" alt="スクリーンショット 2021-02-22 16 48 11" src="https://user-images.githubusercontent.com/69485684/108683899-8f21b700-7535-11eb-8b1d-07d1e8e46906.png">
<img width="1678" alt="スクリーンショット 2021-02-22 16 49 30" src="https://user-images.githubusercontent.com/69485684/108684241-00fa0080-7536-11eb-9c4e-722fa1492216.png">
<img width="1679" alt="スクリーンショット 2021-02-22 16 49 43" src="https://user-images.githubusercontent.com/69485684/108684254-05261e00-7536-11eb-9f26-82a63fbe44a6.png">
<img width="1680" alt="スクリーンショット 2021-02-22 16 50 27" src="https://user-images.githubusercontent.com/69485684/108684260-07887800-7536-11eb-9dcb-a4dfa290e97b.png">

## 機能一覧

- ユーザー登録関連
  - 新規登録、プロフィール編集機能
  - ログイン、ログアウト機能
  - かんたんログイン機能（ゲストユーザーログイン）

- 結婚式投稿機能
- いいね機能　(ajax)
 - 非同期通信でハートボタンを押すと非同期通信でハートの色が変わる機能

- コメント機能 (ajax)
  - チャット形式でのコメント機能
  - 背景色を変えることによって自身のコメントを判別することが可能

- 式場閲覧機能

- レビュー機能 (jQuery)
    - jQueryを使いリアルタイムで星を表示
    - 平均値を計算し表示することが可能

- フラッシュメッセージ表示機能

- 検索機能（実装予定）

- ランキング機能（実装予定）


## DB設計
### ER図
![SHARE-HAPPY　ER図](https://user-images.githubusercontent.com/69485684/108620322-d98c3080-746e-11eb-80bc-04eb3e0905a1.png)

### 各テーブルについて
|テーブル名|説明|
|---|---|
|users|登録したユーザーの情報|
|posts|投稿した内容の情報|
|places|結婚式場の情報|
|favorites|投稿に対してのいいね機能を実装するための中間テーブル|
|comments|投稿に対してのコメント情報|
|reviews|結婚式場にに対してのレビュー情報|


## インフラ構成図
![インフラ構成図](https://user-images.githubusercontent.com/69485684/108620323-e01aa800-746e-11eb-9be8-d7dbfc4505a1.png)

## 工夫した点
  - ユーザーの興味を引きつけるトップページデザイン
  - noteを参考に各ページのUIを作成、使いやすさをとにかく意識
  - githubでissue,プルリクを使い開発


 <!-- ## 苦労したこと-->

<!-- ## 学んだこと -->

<!-- ## 反省し、次に活かす点 -->
