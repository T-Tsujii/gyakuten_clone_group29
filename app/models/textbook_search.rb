class TextBookSearch
  include ActiveModel::Model
  
  attr_accessor :search_title

  def execute
    Textbook.ransack(title_cont: @search_title).result
  end
end