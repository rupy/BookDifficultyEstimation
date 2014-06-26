module BooksHelper

  def show_count
    "estimated: #{@count_estimated} / not estimated: #{@count_not_estimated} / all: #{@count_all}"
  end

  def show_distribution
  	"difficulty: 1,2,3,4 / " + @distribution_array.join(",")
  end
end
