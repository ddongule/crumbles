class SearchController < ApplicationController
  def index
    @search_itm = params[:keyword]
    search_Bakery = Bakery.all
    isExist = false
    @category = "Bakery"

    # 빵집 중에서 결과가 있다면
    search_Bakery.each do |b|
      if b.name == @search_itm
        isExist = true
        @search_result = Bakery.find(b.id) # 여기 빵집의 빵들을 다 가져와야함 Bread에서 가져오기
        @bakery_search_result = @search_result.breads
        break
      else
        isExist = false
      end
    end

    # 빵 중에서 결과가 있다면, 가정> 빵 이름과 카테고리는 겹치지 않는다 (ex, 빵 이름 != 쿠키), 빵 이름은 고유하다(distinct)
    if isExist == false
      @bread_search_result = Array.new() # 검색한 빵 담을 틀
      search_bread = Bread.all
      search_bread.each do |b|
        if b.bread_name == @search_itm # 빵 이름으로 검색
          isExist = true
          @search_result = Bread.find(b.id)
          @category = "Bread_name"
        elsif b.category == @search_itm # 빵 종류 (ex, 도넛 등으로 검색하면 여러개가 출력되야함)
          isExist = true
          @bread_search_result.push(Bread.find(b.id))
          @category = "Bread_category"
        else
        end
      end
    end

    if isExist == false                 # 결과 값이 아예 없다면
      @search_result = "결과값이 없습니다."
    end
  end
end
