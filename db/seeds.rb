# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.create(:admin_name =>"管理人A", :email =>"kanri1@cp.com", :password =>"111111")
Admin.create(:admin_name =>"管理人B", :email =>"kanri2@cp.com", :password =>"111111")

User.create(:user_name =>"まことさん", :name_kanji => "佐藤 誠", :name_kana => "サトウマコト", :postal_code => "1111111", :address =>"東京都◯◯◯1-1-1", :phone_number => "0311111111", :email =>"1@cp.com", :password =>"111111", :quit_flg => 0)
User.create(:user_name =>"とおるさん", :name_kanji => "鈴木 徹", :name_kana => "スズキトオル", :postal_code => "2222222", :address =>"埼玉県◯◯◯2-2-2", :phone_number => "0322222222", :email =>"2@cp.com", :password =>"111111", :quit_flg => 0)
User.create(:user_name =>"ゆたかさん", :name_kanji => "田中 豊", :name_kana => "タナカユタカ", :postal_code => "3333333", :address =>"茨城県◯◯◯3-3-3", :phone_number => "0333333333", :email =>"3@cp.com", :password =>"111111", :quit_flg => 0)
User.create(:user_name =>"さとるさん", :name_kanji => "小林 聡", :name_kana => "コバヤシサトル", :postal_code => "4444444", :address =>"京都府◯◯◯4-4-4", :phone_number => "0344444444", :email =>"4@cp.com", :password =>"111111", :quit_flg => 0)


Genre.create(:genre_name => "j-POP")
Genre.create(:genre_name => "J-ROCK")
Genre.create(:genre_name => "サウンドトラック")
Genre.create(:genre_name => "洋楽")
Genre.create(:genre_name => "EDM")
Genre.create(:genre_name => "ジャズ")
Genre.create(:genre_name => "クラシック")
Genre.create(:genre_name => "アニメ/キッズ/ゲーム")

Artist.create(:artist_name => "Various Artist")
Artist.create(:artist_name => "One Direction")
Artist.create(:artist_name => "BUMP OF CHICKEN")
Artist.create(:artist_name => "Avicii")
Artist.create(:artist_name => "BABY-T")

Sending.create(:user_id => 1, :sending_show_flg => 1, :sending_name => "自宅", :sending_code => "1111111", :sending_address=>"東京都◯◯◯1-1-1")
Sending.create(:user_id => 2, :sending_show_flg => 1, :sending_name => "自宅", :sending_code => "2222222", :sending_address=>"埼玉県◯◯◯2-2-2")
Sending.create(:user_id => 3, :sending_show_flg => 1, :sending_name => "自宅", :sending_code => "3333333", :sending_address=>"茨城県◯◯◯3-3-3")
Sending.create(:user_id => 4, :sending_show_flg => 1, :sending_name => "自宅", :sending_code => "4444444", :sending_address=>"京都府◯◯◯4-4-4")

Sending.create(:user_id => 1, :sending_show_flg => 1, :sending_name => "会社", :sending_code => "1231111", :sending_address=>"北海道◯◯◯1-1-1")
Sending.create(:user_id => 2, :sending_show_flg => 1, :sending_name => "会社", :sending_code => "1232222", :sending_address=>"大阪府◯◯◯2-2-2")
Sending.create(:user_id => 3, :sending_show_flg => 1, :sending_name => "会社", :sending_code => "1233333", :sending_address=>"徳島県◯◯◯3-3-3")
Sending.create(:user_id => 4, :sending_show_flg => 1, :sending_name => "会社", :sending_code => "1234444", :sending_address=>"千葉県◯◯◯4-4-4")


Item.create(:genre_id => 2, :artist_id => 3, :admin_id => 1, :label => "トイズファクトリー", :item_img => File.open("./app/assets/images/BUMP.jpg"), :album_name => "BUMP OF CHICKEN BEST", :item_price_tax_free => 2880, :stock => 50, :on_sale_date => "2013/7/3", :item_show_flg => 1)
Item.create(:genre_id => 3, :artist_id => 1, :admin_id => 2, :label => "ワーナーミュージック・ジャパン", :item_img => File.open("./app/assets/images/greatest_showman.jpeg"), :album_name => "グレイテスト・ショーマン", :item_price_tax_free => 2138, :stock => 200, :on_sale_date => "2018/1/17", :item_show_flg => 1)
Item.create(:genre_id => 4, :artist_id => 2, :admin_id => 1, :label => "SYCOM", :item_img => File.open("./app/assets/images/takemehome.jpeg"), :album_name =>"TAKE ME HOME", :item_price_tax_free => 1399, :stock => 10, :on_sale_date => "2012/11/9", :item_show_flg => 1)
Item.create(:genre_id => 5, :artist_id => 4, :admin_id => 1, :label => "UNIVERSAL MUSIC", :item_img => File.open("./app/assets/images/true.jpg"), :album_name => "TRUE", :item_price_tax_free => 5980, :stock => 500, :on_sale_date => "2013/1/1", :item_show_flg => 1)
Item.create(:genre_id => 5, :artist_id => 4, :admin_id => 1, :label => "UNIVERSAL MUSIC", :item_img => File.open("./app/assets/images/stories.jpg"), :album_name => "STORIES", :item_price_tax_free => 6980, :stock => 1000, :on_sale_date => "2014/1/1", :item_show_flg => 1)
Item.create(:genre_id => 5, :artist_id => 4, :admin_id => 1, :label => "UNIVERSAL MUSIC", :item_img => File.open("./app/assets/images/days.jpg"), :album_name => "THE DAYS", :item_price_tax_free => 3980, :stock => 3000, :on_sale_date => "2015/1/1", :item_show_flg => 1)
Item.create(:genre_id => 5, :artist_id => 4, :admin_id => 1, :label => "UNIVERSAL MUSIC", :item_img => File.open("./app/assets/images/triangle.jpg"), :album_name => "TRIANGLE", :item_price_tax_free => 6980, :stock => 1000, :on_sale_date => "2014/1/1", :item_show_flg => 1)
Item.create(:genre_id => 5, :artist_id => 4, :admin_id => 1, :label => "UNIVERSAL MUSIC", :item_img => File.open("./app/assets/images/waiting.jpg"), :album_name => "WAITING FOR LOVE", :item_price_tax_free => 3980, :stock => 3000, :on_sale_date => "2015/1/1", :item_show_flg => 1)
Item.create(:genre_id => 5, :artist_id => 4, :admin_id => 1, :label => "UNIVERSAL MUSIC", :item_img => File.open("./app/assets/images/wake.jpg"), :album_name => "WAKE ME UP!", :item_price_tax_free => 5980, :stock => 500, :on_sale_date => "2013/1/1", :item_show_flg => 1)
Item.create(:genre_id => 5, :artist_id => 4, :admin_id => 1, :label => "UNIVERSAL MUSIC", :item_img => File.open("./app/assets/images/better.jpg"), :album_name => "FOR A BETTER DAY", :item_price_tax_free => 5980, :stock => 500, :on_sale_date => "2013/1/1", :item_show_flg => 1)
Item.create(:genre_id => 1, :artist_id => 5, :admin_id => 1, :label => "JIN", :item_img => File.open("./app/assets/images/jin.jpg"), :album_name => "WALL", :item_price_tax_free => 5980, :stock => 0, :on_sale_date => "2017/1/1", :item_show_flg => 1)


Disc.create(:item_id => 1, :disc_type => "CD1")
Song.create(:disc_id => 1, :song_name => "ガラスのブルース")
Song.create(:disc_id => 1, :song_name => "くだらない唄")
Song.create(:disc_id => 1, :song_name => "ランプ")
Song.create(:disc_id => 1, :song_name => "K")
Song.create(:disc_id => 1, :song_name => "ダイヤモンド")
Song.create(:disc_id => 1, :song_name => "天体観測")
Song.create(:disc_id => 1, :song_name => "ハルジオン")
Song.create(:disc_id => 1, :song_name => "Stage of the ground")
Song.create(:disc_id => 1, :song_name => "スノースマイル")
Song.create(:disc_id => 1, :song_name => "ロストマン")
Song.create(:disc_id => 1, :song_name => "sailing day")
Song.create(:disc_id => 1, :song_name => "アルエ")
Song.create(:disc_id => 1, :song_name => "オンリー ロンリー グローリー")
Song.create(:disc_id => 1, :song_name => "車輪の唄")

Disc.create(:item_id => 1, :disc_type => "CD2")
Song.create(:disc_id =>2, :song_name => "プラネタリウム")
Song.create(:disc_id =>2, :song_name => "カルマ")
Song.create(:disc_id =>2, :song_name => "supernova")
Song.create(:disc_id =>2, :song_name => "ギルド")
Song.create(:disc_id =>2, :song_name => "涙のふるさと")
Song.create(:disc_id =>2, :song_name => "花の名")
Song.create(:disc_id =>2, :song_name => "メーデー")
Song.create(:disc_id =>2, :song_name => "R.I.P.")
Song.create(:disc_id =>2, :song_name => "Merry Christmas")
Song.create(:disc_id =>2, :song_name => "HAPPY")
Song.create(:disc_id =>2, :song_name => "魔法の料理 ~君から君へ~")
Song.create(:disc_id =>2, :song_name => "モーターサイクル")
Song.create(:disc_id =>2, :song_name => "宇宙飛行士への手紙")

Disc.create(:item_id => 2, :disc_type => "CD")
Song.create(:disc_id => 3, :song_name => "The Greatest Show")
Song.create(:disc_id => 3, :song_name => "A Million Dreams")
Song.create(:disc_id => 3, :song_name => "A Million Dreams (Reprise)")
Song.create(:disc_id => 3, :song_name => "Come Alive")
Song.create(:disc_id => 3, :song_name => "The Other Side")
Song.create(:disc_id => 3, :song_name => "Never Enough")
Song.create(:disc_id => 3, :song_name => "This Is Me")
Song.create(:disc_id => 3, :song_name => "Rewrite The Stars")
Song.create(:disc_id => 3, :song_name => "Tightrope")
Song.create(:disc_id => 3, :song_name => "Never Enough (Reprise)")
Song.create(:disc_id => 3, :song_name => "From Now On")

Disc.create(:item_id => 3, :disc_type => "CD")
Song.create(:disc_id => 4, :song_name => "リヴ・ホワイル・ウィアー・ヤング")
Song.create(:disc_id => 4, :song_name => "キス・ユー")
Song.create(:disc_id => 4, :song_name => "リトル・シングス")
Song.create(:disc_id => 4, :song_name => "カモン・カモン")
Song.create(:disc_id => 4, :song_name => "ラスト・ファースト・キス")
Song.create(:disc_id => 4, :song_name => "ハート・アタック")
Song.create(:disc_id => 4, :song_name => "ロック・ミー")
Song.create(:disc_id => 4, :song_name => "チェンジ・マイ・マインド")
Song.create(:disc_id => 4, :song_name => "アイ・ウッド")
Song.create(:disc_id => 4, :song_name => "オーヴァー・アゲイン")
Song.create(:disc_id => 4, :song_name => "バック・フォー・ユー")
Song.create(:disc_id => 4, :song_name => "ゼイ・ドント・ノウ・アバウト・アス")
Song.create(:disc_id => 4, :song_name => "サマー・ラヴ")

CartItem.create(:user_id =>1, :item_id =>1, :item_cart_counted =>1)
CartItem.create(:user_id =>1, :item_id =>2, :item_cart_counted =>1)

CartItem.create(:user_id =>2, :item_id =>2, :item_cart_counted =>2)
CartItem.create(:user_id =>2, :item_id =>3, :item_cart_counted =>2)

CartItem.create(:user_id =>3, :item_id =>3, :item_cart_counted =>3)
CartItem.create(:user_id =>3, :item_id =>1, :item_cart_counted =>3)

CartItem.create(:user_id =>4, :item_id =>1, :item_cart_counted =>4)
CartItem.create(:user_id =>4, :item_id =>2, :item_cart_counted =>4)
CartItem.create(:user_id =>4, :item_id =>3, :item_cart_counted =>4)

Order.create(:user_id =>1, :order_sending_id =>1, :order_number =>"1-1-000000001", :status => 1, :order_sending_str =>"東京都◯◯◯1-1-1" , :order_sending_postal_code => "1111111")
OrderItem.create(:item_id =>1, :order_id =>1, :item_order_counted =>1, :item_order_price => 2880)
OrderItem.create(:item_id =>2, :order_id =>1, :item_order_counted =>2, :item_order_price => 2138)

Order.create(:user_id =>1, :order_sending_id =>1, :order_number =>"1-1-000000002", :status => 2, :order_sending_str =>"東京都◯◯◯1-1-1" , :order_sending_postal_code => "1111111")
OrderItem.create(:item_id =>3, :order_id =>2, :item_order_counted =>1, :item_order_price => 1399)
OrderItem.create(:item_id =>1, :order_id =>2, :item_order_counted =>2, :item_order_price => 2880)

Order.create(:user_id =>1, :order_sending_id =>1, :order_number =>"1-1-000000003", :status => 3, :order_sending_str =>"東京都◯◯◯1-1-1" , :order_sending_postal_code => "1111111")
OrderItem.create(:item_id =>3, :order_id =>3, :item_order_counted =>2, :item_order_price => 1399)
OrderItem.create(:item_id =>1, :order_id =>3, :item_order_counted =>1, :item_order_price => 2880)

Order.create(:user_id =>2, :order_sending_id =>2, :order_number =>"2-2-000000004", :status => 1, :order_sending_str =>"埼玉県◯◯◯2-2-2" , :order_sending_postal_code => "2222222")
OrderItem.create(:item_id =>2, :order_id =>4, :item_order_counted =>1, :item_order_price => 2138)
OrderItem.create(:item_id =>1, :order_id =>4, :item_order_counted =>1, :item_order_price => 2880)

Order.create(:user_id =>2, :order_sending_id =>2, :order_number =>"2-2-000000005", :status => 2, :order_sending_str =>"埼玉県◯◯◯2-2-2" , :order_sending_postal_code => "2222222")
OrderItem.create(:item_id =>3, :order_id =>5, :item_order_counted =>4, :item_order_price => 1399)
OrderItem.create(:item_id =>2, :order_id =>5, :item_order_counted =>6, :item_order_price => 2138)

Order.create(:user_id =>2, :order_sending_id =>2, :order_number =>"2-2-000000006", :status => 3, :order_sending_str =>"埼玉県◯◯◯2-2-2" , :order_sending_postal_code => "2222222")
OrderItem.create(:item_id =>2, :order_id =>6, :item_order_counted =>1, :item_order_price => 2138)

Order.create(:user_id =>3, :order_sending_id =>1, :order_number =>"3-1-000000007", :status => 1, :order_sending_str =>"茨城県◯◯◯3-3-3" , :order_sending_postal_code => "3333333")
OrderItem.create(:item_id =>3, :order_id =>7, :item_order_counted =>4, :item_order_price => 1399)

Order.create(:user_id =>3, :order_sending_id =>2, :order_number =>"3-2-000000008", :status => 2, :order_sending_str =>"茨城県◯◯◯3-3-3" , :order_sending_postal_code => "3333333")
OrderItem.create(:item_id =>2, :order_id =>8, :item_order_counted =>2, :item_order_price => 2138)

Order.create(:user_id =>3, :order_sending_id =>1, :order_number =>"3-1-000000009", :status => 3, :order_sending_str =>"茨城県◯◯◯3-3-3" , :order_sending_postal_code => "3333333")
OrderItem.create(:item_id =>3, :order_id =>9, :item_order_counted =>11, :item_order_price => 1399)

Order.create(:user_id =>4, :order_sending_id =>2, :order_number =>"4-2-00000000A", :status => 1, :order_sending_str =>"京都府◯◯◯4-4-4" , :order_sending_postal_code => "4444444")
OrderItem.create(:item_id =>1, :order_id =>10, :item_order_counted =>1, :item_order_price => 2880)

Order.create(:user_id =>4, :order_sending_id =>1, :order_number =>"4-1-00000000B", :status => 2, :order_sending_str =>"京都府◯◯◯4-4-4" , :order_sending_postal_code => "4444444")
OrderItem.create(:item_id =>1, :order_id =>11, :item_order_counted =>2, :item_order_price => 2880)
OrderItem.create(:item_id =>2, :order_id =>11, :item_order_counted =>1, :item_order_price => 2138)
OrderItem.create(:item_id =>3, :order_id =>11, :item_order_counted =>2, :item_order_price => 1399)

Order.create(:user_id =>4, :order_sending_id =>2, :order_number =>"4-2-00000000C", :status => 3, :order_sending_str =>"京都府◯◯◯4-4-4" , :order_sending_postal_code => "4444444")
OrderItem.create(:item_id =>1, :order_id =>12, :item_order_counted =>4, :item_order_price => 2880)
OrderItem.create(:item_id =>2, :order_id =>12, :item_order_counted =>6, :item_order_price => 2138)
OrderItem.create(:item_id =>3, :order_id =>12, :item_order_counted =>9, :item_order_price => 1399)


