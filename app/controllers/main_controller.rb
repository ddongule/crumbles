class MainController < ApplicationController
  def index
    hash_rand()
    recommend_rand()
  end

  def hash_rand # 해쉬테그로 검색 키워드 추천
    @recommend_category = Array.new()
    isExist = false
    i = 0
    while i < 5
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
    while i < 6
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
