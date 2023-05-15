# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
%i[ 
  子犬
  成犬
  老犬
  小型犬
  チワワ
  トイプードル
  ミニチュアダックスフンド
  パピヨン
  シーズー系
  豆柴
  中型犬
  大型犬
  ゴールデンレトリバー
  ラブラドールレトリバー
  シベリアンハスキー
  コリー
  プードル
  甲斐犬
  北海道犬
  柴犬
  スピッツ
  秋田犬
  土佐犬
  その他の和犬
  ミックス犬
  子猫
  成猫
  老猫
  アメリアカンショートへアー
  スコッティシュホールド
  マンチカン
  鳥
  インコ
  文鳥
  梟
  爬虫類
  その他
].each { |name| Genre.find_or_create_by(name:) }
genre_ids = Genre.all.pluck(:id)