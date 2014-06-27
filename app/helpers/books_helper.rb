module BooksHelper

  def show_count
    "estimated: #{@count_estimated} / not estimated: #{@count_not_estimated} / all: #{@count_all}"
  end

  def show_distribution
    "difficulty dsitribution: " + @distribution_array.map{|d| "(#{d[0]}, #{d[1]})" }.join(", ")
  end
end
