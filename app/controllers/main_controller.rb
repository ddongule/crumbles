class MainController < ApplicationController
  def index
    hash_rand()
    recommend_rand()
  end

  def hash_rand # 해쉬테그로 검색 키워드 추천
    @recommend_category = Array.new()
    isExist = false
    i = 0

    # 빵 종류 개수 세기
    temp_arr = Array.new()
    temp_bread = Bread.all
    temp_bread.each do |b|
      for j in 0..temp_arr.length
        if temp_arr[j] == b.category
          isExist = true
        end
      end
      if isExist == false
        temp_arr.push(b.category)
      end
      isExist = false
    end
    
    # 변수 초기화
    isExist = false

    if temp_arr.length < 5
      list_num = temp_arr.length
    else
      list_num = 5
    end

    while i < list_num
      rand_Num = (1..Bread.last.id).to_a.sample(1)
      bread = Bread.find(rand_Num[0])
      @recommend_category.each do |r|
        if r == bread.category
          isExist = true
        end
      end
      if isExist == false
        @recommend_category.push(bread.category)
        i += 1
      end
      isExist = false
    end
  end

  def recommend_rand # 빵을 추천
    @recommend_bread_arr = Array.new()
    isExist = false
    i = 0
    
    if Bread.last.id < 6
      item_num = Bread.last.id
    else
      item_num = 6
    end

    while i < item_num
      rand_Num = (1..Bread.last.id).to_a.sample(1)
      recommend_bread = Bread.find(rand_Num[0])
      @recommend_bread_arr.each do |r|
        if r == recommend_bread
          isExist = true
        end
      end
      if isExist == false
        @recommend_bread_arr.push(recommend_bread)
        i += 1
      end
      isExist = false
    end
  end
end
