# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Bakery.create(name: "동규네 빵집", address: "경기도 안산시 단원구 이삭3길 30", telephone_number: "010-9196-9896", business_license: "11-11-11", email: "ehdrbchd@naver.com", open_time: Time.now+(60*60*1), close_time: Time.now+(60*60*13), seat: 100,img: "1")
Bakery.create(name: "민경이네 카페", address: "경기 과천시 경마공원대로 107", telephone_number: "010-5161-5998", business_license: "22-22-22", email: "alsrud@gmail.com", open_time: Time.now+(60*60*2), close_time: Time.now+(60*60*7), seat: 1000,img: "2")
Bakery.create(name: "서울바게트", address: "서울 용산구 남산공원길 105", telephone_number: "010-1111-1111", business_license: "33-33-33", email: "skek@daum.net", open_time: Time.now+(60*60*3), close_time: Time.now+(60*60*6), seat: 35,img: "3")
Bakery.create(name: "또래주르", address: "서울 동작구 남부순환로 2089", telephone_number: "010-2222-2222", business_license: "44-44-44", email: "qkqh@hanmail.net", open_time: Time.now+(60*60*4), close_time: Time.now+(60*60*5), seat: 30,img: "4")
Bakery.create(name: "멋쟁이빵집", address: "서울 마포구 양화로 160", telephone_number: "010-3333-3333", business_license: "55-55-55", email: "ajdchddl@naver.com", open_time: Time.now+(60*60*1), close_time: Time.now+(60*60*4), seat: 20,img: "5")
Bakery.create(name: "중앙대학교", address: "서울특별시 동작구 흑석로 84", telephone_number: "010-4444-4444", business_license: "66-66-66", email: "cau@cau.ac.kr", open_time: Time.now+(60*60*2), close_time: Time.now+(60*60*3), seat: 40000,img: "6")
Bakery.create(name: "오늘의빵빵", address: "서울 강남구 강남대로 396", telephone_number: "010-5555-5555", business_license: "77-77-77", email: "mm@naver.com", open_time: Time.now+(60*60*3), close_time: Time.now+(60*60*15), seat: 130,img: "7")
Bakery.create(name: "그냥날이좋아서", address: "경기 안양시 동안구 동안로 130", telephone_number: "010-6666-6666", business_license: "88-88-88", email: "nodap@naver.com", open_time: Time.now+(60*60*1), close_time: Time.now+(60*60*10), seat: 30,img: "8")
Bakery.create(name: "달콤살벌", address: "부산 해운대구 달맞이길62번길 47", telephone_number: "010-7777-7777", business_license: "99-99-99", email: "hello@gmail.com", open_time: Time.now+(60*60*5), close_time: Time.now+(60*60*7), seat: 40,img: "9")


Bread.create(bakery_name: "동규네 빵집", bread_name: "동규아침", category: "쿠키", amount: 10,bookable_num: 5, price: 1000, star_point: 0.0, bakery_id: 1)
Bread.create(bakery_name: "동규네 빵집", bread_name: "동규점심", category: "파이", amount: 20,bookable_num: 10, price: 2000, star_point: 0.0, bakery_id: 1)
Bread.create(bakery_name: "동규네 빵집", bread_name: "동규저녁", category: "쿠키", amount: 30,bookable_num: 15, price: 3000, star_point: 0.0, bakery_id: 1)
Bread.create(bakery_name: "민경이네 카페", bread_name: "민경이 아침", category: "마카롱", amount: 11,bookable_num: 4, price: 1000, star_point: 0.0, bakery_id: 2)
Bread.create(bakery_name: "민경이네 카페", bread_name: "민경이 점심", category: "쿠키", amount: 23,bookable_num: 10, price: 3000, star_point: 0.0, bakery_id: 2)
Bread.create(bakery_name: "민경이네 카페", bread_name: "민경이 저녁", category: "마카롱", amount: 34,bookable_num: 14, price: 3000, star_point: 0.0, bakery_id: 2)
Bread.create(bakery_name: "민경이네 카페", bread_name: "민경이 간식", category: "쿠키", amount: 45,bookable_num: 15, price: 3000, star_point: 0.0, bakery_id: 2)
Bread.create(bakery_name: "서울바게트", bread_name: "차도녀", category: "마카롱", amount: 24,bookable_num: 14, price: 1000, star_point: 0.0, bakery_id: 3)
Bread.create(bakery_name: "서울바게트", bread_name: "차도남", category: "타르트", amount: 11,bookable_num: 5, price: 4000, star_point: 0.0, bakery_id: 3)
Bread.create(bakery_name: "또래주르", bread_name: "소세지빵", category: "파이", amount: 17,bookable_num: 5, price: 4000, star_point: 0.0, bakery_id: 4)
Bread.create(bakery_name: "또래주르", bread_name: "에그타", category: "타르트", amount: 8,bookable_num: 2, price: 1000, star_point: 0.0, bakery_id: 4)
Bread.create(bakery_name: "또래주르", bread_name: "띠용쓰콘", category: "스콘", amount: 7,bookable_num: 2, price: 4000, star_point: 0.0, bakery_id: 4)
Bread.create(bakery_name: "또래주르", bread_name: "이모티콘", category: "스콘", amount: 6,bookable_num: 2, price: 1000, star_point: 0.0, bakery_id: 4)
Bread.create(bakery_name: "멋쟁이빵집", bread_name: "이두희빵", category: "타르트", amount: 45,bookable_num: 30, price: 4000, star_point: 0.0, bakery_id: 5)
Bread.create(bakery_name: "멋쟁이빵집", bread_name: "멋쟁이빵", category: "스콘", amount: 23,bookable_num: 13, price: 1000, star_point: 0.0, bakery_id: 5)
Bread.create(bakery_name: "멋쟁이빵집", bread_name: "나는사자다", category: "파이", amount: 15,bookable_num: 4, price: 4000, star_point: 0.0, bakery_id: 5)
Bread.create(bakery_name: "중앙대학교", bread_name: "컴공맛", category: "마카롱", amount: 47,bookable_num: 15, price: 1000, star_point: 0.0, bakery_id: 6)
Bread.create(bakery_name: "중앙대학교", bread_name: "통계맛", category: "스콘", amount: 23,bookable_num: 8, price: 2000, star_point: 0.0, bakery_id: 6)
Bread.create(bakery_name: "오늘의빵빵", bread_name: "사실어제꺼", category: "파이", amount: 33,bookable_num: 7, price: 1000, star_point: 0.0, bakery_id: 7)
Bread.create(bakery_name: "오늘의빵빵", bread_name: "내일만들꺼", category: "식빵", amount: 25,bookable_num: 6, price: 2000, star_point: 0.0, bakery_id: 7)
Bread.create(bakery_name: "그냥날이좋아서", bread_name: "따뜻행", category: "쿠키", amount: 42,bookable_num: 9, price: 1000, star_point: 0.0, bakery_id: 8)
Bread.create(bakery_name: "그냥날이좋아서", bread_name: "시원혀", category: "도넛", amount: 41,bookable_num: 4, price: 3000, star_point: 0.0, bakery_id: 8)
Bread.create(bakery_name: "달콤살벌", bread_name: "히잉", category: "케이크", amount: 23,bookable_num: 10, price: 2000, star_point: 0.0, bakery_id: 9)

admin_user = User.create( name: "관리자", email: 'admin@email.com', password: '12345678' )
admin_user.add_role :admin