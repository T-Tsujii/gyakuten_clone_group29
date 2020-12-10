ActiveAdmin.register TextBook do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :genre, :title, :content, :image
  form do |f|
      f.inputs "TextBooks" do
        f.input :genre
        f.input :title
        f.input :content
        f.input :image, :as => :file
      end
      f.actions
    end
    
    show do |item_image|
      attributes_table do
        row :genre
        row :title
        row :content
        # show画面で画像を表示するためのタグを追加
        row :image do
          image_tag(text_book.image.url)
        end
      end
    end    
  #
  # or
  #
  # permit_params do
  #   permitted = [:genre, :title, :content, :image]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
