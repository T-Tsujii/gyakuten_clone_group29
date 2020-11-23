class TextBookSearch
  include ActiveModel::Model
  
  attr_accessor :search_title

  def execute
    TextBook.ransack(title_cont: @search_title).result
  end
end