ActiveAdmin.register Article do
  	
  	form do |f|
        f.inputs 'Article' do
            f.input :title
            f.input :content, :as => :text
               
            f.input :admin_user_id, :as => :hidden , :input_html => {:value => current_admin_user.id}
        end
        f.buttons
    end
end
