class FeaturedScreen < ScreenActions

  def count_movies
    web_element = find_element(:class_name, "UIATableView").find_elements(:class_name, "UIATableCell")
    puts "Total movies on Featured screen = #{web_element.size}"
  end

  def open_movies
    movies_list = find_elements(:class_name, "UIATableCell")
    movies_list.first(5).each do |element|
      element.click
      movie_page = find_element(:class_name, "UIATableCell").find_elements(:class_name, "UIAStaticText")
      movie_page.each { |link| puts link['label'] }
      $driver.back
    end
  end

  def highest_movie_rating
    @ratings = []
    movies_list = find_elements(:class_name, "UIATableCell")
    movies_list.first(5).each do |element|
      element.click
      rating = find_elements(:xpath, "//UIAStaticText[@name='rating_label']")
      rating.each { |rating_value| @ratings << rating_value['label'][1..-1].to_f }
      $driver.back
    end
    puts "Highest rating: #{@ratings.max}"
  end

end
