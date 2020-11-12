# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(
   email: 'user1@test.com',
   password: 'testuser',
   name: 'テストユーザー',
   introduction: 'テスト用のユーザーになります。',
   image: File.open("./app/assets/images/p.1.jpg")
)

User.create!(
   email: 'user2@test.com',
   password: 'testuser',
   name: 'テストユーザー',
   introduction: 'テスト用のユーザーになります。',
   image: File.open("./app/assets/images/p.2.jpg")
)

User.create!(
   email: 'user3@test.com',
   password: 'testuser',
   name: 'テストユーザー',
   introduction: 'テスト用のユーザーになります。',
   image: File.open("./app/assets/images/p.3.jpg")
)

Post.create!(
   user_id: '1',
   place_id: '1',
   image: File.open("./app/assets/images/1.jpeg"),
   title: '一生の思い出になりました。',
   body: '一生の思い出になり、協力してくださったプランナーの皆様にはとても感謝をしております。'
)

Post.create!(
   user_id: '2',
   place_id: '2',
   image: File.open("./app/assets/images/2.jpeg"),
   title: '皆さんとても祝ってくださいました。',
   body: '来場してくださった皆様に本当に祝っていただき、一生の思い出になりました。'
)

Post.create!(
   user_id: '3',
   place_id: '3',
   image: File.open("./app/assets/images/3.jpeg"),
   title: '最高の結婚式にすることが出来ました。',
   body: '一から夫婦で準備して来て、来てくださった皆様もとても楽しんでいただけているように見受けられたので、本当に良かったです。'
)

Post.create!(
   user_id: '1',
   place_id: '1',
   image: File.open("./app/assets/images/4.jpeg"),
   title: 'サプライズが特に嬉しかったです。',
   body: '内緒で旦那さんがサプライズを用意してくれていて、泣いてしまいました。'
)

Post.create!(
   user_id: '2',
   place_id: '2',
   image: File.open("./app/assets/images/5.jpeg"),
   title: '両親への恩返しが出来ました。',
   body: 'お世話になった両親に今までの感謝を伝えることが出来ました。今まで迷惑をかけて来ましたが、少し恩返しができたと思います。'
)

Post.create!(
   user_id: '3',
   place_id: '3',
   image: File.open("./app/assets/images/6.jpeg"),
   title: '来ていただいた皆様有難うございました。',
   body: '職場の上司の皆様、同期、学校の友達の方々が祝ってくれました。最高の１日になりました。'
)

Post.create!(
   user_id: '1',
   place_id: '1' ,
   image: File.open("./app/assets/images/7.jpeg"),
   title: '奥さんが過去最高にきれいでした。' ,
   body: '今まで見た中でダントツできれいでした。あまりにきれいだったので初めて会った時より緊張しました。'
)

Post.create!(
   user_id: '2',
   place_id: '2',
   image: File.open("./app/assets/images/8.jpeg"),
   title: 'これから夫婦二人三脚で頑張っていこうと思います。',
   body: 'これからも長い結婚生活のスタートをこんなに最高の形で迎えることが出来たことをとても幸せに思います。'
)

Post.create!(
   user_id: '3',
   place_id: '3',
   image: File.open("./app/assets/images/9.jpeg"),
   title: '子供も一緒に参加できてよかったです。',
   body: '子供もとても楽しんでいて、幸せな結婚式にすることが出来ました。祝っていただいた方々に感謝を申し上げます。'
)

Place.create!(
   user_id: '1',
   image: File.open('./app/assets/images/pl.1.jpg'),
   name: 'チャペル',
   introduction: '景色がとてもきれいな結婚式場です。',
   postal_code: '1111111',
   address: '福岡県'
)

Place.create!(
   user_id: '2',
   image: File.open('./app/assets/images/pl.2.jpg'),
   name: '教会',
   introduction: '格式が高く、上品な結婚式場です。',
   postal_code: '2222222',
   address: '京都府'
)

Place.create!(
   user_id: '1',
   image: File.open('./app/assets/images/pl.3.jpg'),
   name: 'チャーチ',
   introduction: 'すぐ近くの海を一望できる結婚式場です・',
   postal_code: '3333333',
   address: '東京都'
)