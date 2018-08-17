class SearchController < ApplicationController

  def index
    category = search_DB()

    if category == "bakery"
      redirect_to "/search/bakery/#{params[:keyword]}"
    elsif category == "bread_name"
      redirect_to "/search/bread_name/#{params[:keyword]}"
    elsif category == "bread_category"
      redirect_to "/search/bread_category/#{params[:keyword]}"
    else
      redirect_to "/search/nonexist/#{params[:keyword]}"
    end

    #redirect_to "/search/#{category}/#{params[:keyword]}"
  end

  def search_DB
    search_itm = params[:keyword] # 찾을 키워드 parsing
    search_Bakery = Bakery.all # 모든 빵집
    search_Bakery.each do |b| # 빵집 중에서 결과가 있다면
      if b.name == search_itm
        return "bakery"
      end
    end

    # 빵 중에서 결과가 있다면, 가정> 빵 이름과 카테고리는 겹치지 않는다 (ex, 빵 이름 != 쿠키), 빵 이름은 고유하다(distinct)
    search_bread = Bread.all
    search_bread.each do |b|
      if b.bread_name == search_itm # 빵 이름으로 검색
        return "bread_name"
      elsif b.category == search_itm # 빵 종류 (ex, 도넛 등으로 검색하면 여러개가 출력되야함)
        return "bread_category"
      else
      end
    end

    return "nonexist"                 # 결과 값이 아예 없다면
  end

  def bakery
    @search_itm = params[:keyword]
    search_Bakery = Bakery.all

    search_Bakery.each do |b|
      if b.name == @search_itm
        @bakery_info = Bakery.find(b.id) # 여기 빵집의 빵들을 다 가져와야함 Bread에서 가져오기
        @bakery_search_result = @bakery_info.breads
        break
      end
    end
  end

  def bread_category
    @search_itm = params[:keyword]
    @bread_search_result = Array.new() # 검색한 빵 담을 틀
    search_bread = Bread.all
    search_bread.each do |b|
      if b.category == @search_itm # 빵 종류 (ex, 도넛 등으로 검색하면 여러개가 출력되야함)
        @bread_search_result.push(Bread.find(b.id))
      end
    end
  end

  def bread_name
    @search_itm = params[:keyword]
    search_bread = Bread.all
    search_bread.each do |b|
      if b.bread_name == @search_itm # 빵 이름으로 검색
        @search_result = Bread.find(b.id)
        break
      end
    end
  end

  def nonexist
    @keyword = params[:keyword]
  end
end
