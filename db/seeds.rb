# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Bakery.create(name: "동규네 빵집", address: "경기도 안산시 단원구 이삭3길 30", telephone_number: "010-9196-9896", business_license: "11-11-11", email: "ehdrbchd@naver.com", open_time: Time.now+(60*60*1), close_time: Time.now+(60*60*13), seat: 100, owner_id: 1)
Bakery.create(name: "민경이네 카페", address: "경기 과천시 경마공원대로 107", telephone_number: "010-5161-5998", business_license: "22-22-22", email: "alsrud@gmail.com", open_time: Time.now+(60*60*2), close_time: Time.now+(60*60*7), seat: 1000)
Bakery.create(name: "서울바게트", address: "서울 용산구 남산공원길 105", telephone_number: "010-1111-1111", business_license: "33-33-33", email: "skek@daum.net", open_time: Time.now+(60*60*3), close_time: Time.now+(60*60*6), seat: 35)
Bakery.create(name: "또래주르", address: "서울 동작구 남부순환로 2089", telephone_number: "010-2222-2222", business_license: "44-44-44", email: "qkqh@hanmail.net", open_time: Time.now+(60*60*4), close_time: Time.now+(60*60*5), seat: 30)
Bakery.create(name: "멋쟁이빵집", address: "서울 마포구 양화로 160", telephone_number: "010-3333-3333", business_license: "55-55-55", email: "ajdchddl@naver.com", open_time: Time.now+(60*60*1), close_time: Time.now+(60*60*4), seat: 20)
Bakery.create(name: "중앙대학교", address: "서울특별시 동작구 흑석로 84", telephone_number: "010-4444-4444", business_license: "66-66-66", email: "cau@cau.ac.kr", open_time: Time.now+(60*60*2), close_time: Time.now+(60*60*3), seat: 40000)
Bakery.create(name: "오늘의빵빵", address: "서울 강남구 강남대로 396", telephone_number: "010-5555-5555", business_license: "77-77-77", email: "mm@naver.com", open_time: Time.now+(60*60*3), close_time: Time.now+(60*60*15), seat: 130)
Bakery.create(name: "그냥날이좋아서", address: "경기 안양시 동안구 동안로 130", telephone_number: "010-6666-6666", business_license: "88-88-88", email: "nodap@naver.com", open_time: Time.now+(60*60*1), close_time: Time.now+(60*60*10), seat: 30)
Bakery.create(name: "달콤살벌", address: "부산 해운대구 달맞이길62번길 47", telephone_number: "010-7777-7777", business_license: "99-99-99", email: "hello@gmail.com", open_time: Time.now+(60*60*5), close_time: Time.now+(60*60*7), seat: 40)


Bread.create(bakery_name: "동규네 빵집", bread_name: "스콘", category: "스콘", image: open("app/assets/images/scon.png"), amount: 10,bookable_num: 5, price: 1000, star_point: 0.0, bakery_id: 1)
Bread.create(bakery_name: "동규네 빵집", bread_name: "구움빵", category: "건강빵", image: open("app/assets/images/baked.jpg"), amount: 20,bookable_num: 10, price: 2000, star_point: 0.0, bakery_id: 1)
Bread.create(bakery_name: "동규네 빵집", bread_name: "에끌레어", category: "에끌레어", image:open("app/assets/images/eclair.jpg"), amount: 30,bookable_num: 15, price: 3000, star_point: 0.0, bakery_id: 1)
Bread.create(bakery_name: "민경이네 카페", bread_name: "초코 컵케이크", category: "컵케이크", image: open("app/assets/images/cupcakes.jpg"), amount: 11,bookable_num: 4, price: 1000, star_point: 0.0, bakery_id: 2)
Bread.create(bakery_name: "민경이네 카페", bread_name: "딸기 마카롱", category: "마카롱", image: open("app/assets/images/macaroons.jpg"), amount: 23,bookable_num: 10, price: 3000, star_point: 0.0, bakery_id: 2)
Bread.create(bakery_name: "민경이네 카페", bread_name: "녹차 마카롱", category: "마카롱", image: open("app/assets/images/macaronos2.jpg"),amount: 34,bookable_num: 14, price: 3000, star_point: 0.0, bakery_id: 2)
Bread.create(bakery_name: "민경이네 카페", bread_name: "버터 프레첼", category: "프레첼", image: open("app/assets/images/pretzels.jpg"),amount: 45,bookable_num: 15, price: 3000, star_point: 0.0, bakery_id: 2)
Bread.create(bakery_name: "서울바게트", bread_name: "구움빵", category: "건강빵", image: open("app/assets/images/bread.jpg"), amount: 24,bookable_num: 14, price: 1000, star_point: 0.0, bakery_id: 3)
Bread.create(bakery_name: "서울바게트", bread_name: "오렌지 케이크", category: "케이크", image: open("app/assets/images/dessert.jpg"), amount: 11,bookable_num: 5, price: 4000, star_point: 0.0, bakery_id: 3)
Bread.create(bakery_name: "또래주르", bread_name: "버터 크로와상", category: "크로와상", image: open("app/assets/images/croissant.jpg"), amount: 17,bookable_num: 5, price: 4000, star_point: 0.0, bakery_id: 4)
Bread.create(bakery_name: "또래주르", bread_name: "초코 케이크", category: "케이크", image: open("app/assets/images/chocolate-cakes.jpg"), amount: 8,bookable_num: 2, price: 1000, star_point: 0.0, bakery_id: 4)
Bread.create(bakery_name: "또래주르", bread_name: "햄치즈 샌드위치", category: "샌드위치", image: open("app/assets/images/sandwich2.jpg"), amount: 7,bookable_num: 2, price: 4000, star_point: 0.0, bakery_id: 4)
Bread.create(bakery_name: "또래주르", bread_name: "팬케이크", category: "샌드위치", image: open("app/assets/images/pancakes.jpg"), amount: 6,bookable_num: 2, price: 1000, star_point: 0.0, bakery_id: 4)
Bread.create(bakery_name: "멋쟁이 빵집", bread_name: "초코 디저트", category: "에끌레어", image: open("app/assets/images/bananas.jpg"), amount: 45,bookable_num: 30, price: 4000, star_point: 0.0, bakery_id: 5)
Bread.create(bakery_name: "멋쟁이 빵집", bread_name: "초콜렛 쿠키", category: "쿠키", image: open("app/assets/images/cookies.jpg"), amount: 23,bookable_num: 13, price: 1000, star_point: 0.0, bakery_id: 5)
Bread.create(bakery_name: "멋쟁이 빵집", bread_name: "딸기 케이크", category: "케이크", image: open("app/assets/images/cake.jpg"), amount: 15,bookable_num: 4, price: 4000, star_point: 0.0, bakery_id: 5)
Bread.create(bakery_name: "중앙 빵집", bread_name: "에그 샌드위치", category: "샌드위치", image: open("app/assets/images/sandwich.jpg"), amount: 47,bookable_num: 15, price: 1000, star_point: 0.0, bakery_id: 6)
Bread.create(bakery_name: "중앙 빵집", bread_name: "케이크 팝", category: "케이크", image: open("app/assets/images/cake-pops.jpg"), amount: 23,bookable_num: 8, price: 2000, star_point: 0.0, bakery_id: 6)
Bread.create(bakery_name: "오늘의 빵빵", bread_name: "오픈 샌드위치", category: "샌드위치", image: open("app/assets/images/bruschetta.jpg"), amount: 33,bookable_num: 7, price: 1000, star_point: 0.0, bakery_id: 7)
Bread.create(bakery_name: "오늘의 빵빵", bread_name: "블루베리 컵케이크", category: "컵케이크", image: open("app/assets/images/blueberry.jpg"), amount: 25,bookable_num: 6, price: 2000, star_point: 0.0, bakery_id: 7)
Bread.create(bakery_name: "jmt 빵집", bread_name: "초코 타르트", category: "타르트", image: open("app/assets/images/tarts.jpg"), amount: 42,bookable_num: 9, price: 1000, star_point: 0.0, bakery_id: 8)
Bread.create(bakery_name: "jmt 빵집", bread_name: "머핀", category: "컵케이크", image: open("app/assets/images/muffin.jpg"), amount: 41,bookable_num: 4, price: 3000, star_point: 0.0, bakery_id: 8)
Bread.create(bakery_name: "jmt 빵집", bread_name: "설탕 츄러스", category: "츄러스", image: open("app/assets/images/churros.jpg"), amount: 23,bookable_num: 10, price: 2000, star_point: 0.0, bakery_id: 9)

admin_user = User.create( name: "관리자", email: 'admin@email.com', password: '12345678' )
admin_user.add_role :admin

test_user = User.create( name: "유저테스트", email: 'test@naver.com', password: '111111')
test_user.add_role :user

test_owner = Owner.create( name: "점주테스트", email: 'ehdrbchd@naver.com', password: '111111')
test_owner.add_role :owner