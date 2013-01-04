ActiveAdmin.register Gage do

    form do |f|
        f.inputs 'Test' do
            f.input :name
            f.input :description
            f.input :photo
            
            f.input :difficulty_id, :label => 'Difficulty', :as => :select, :collection => Difficulty.all
            f.input :categories, :as => :select, :collection => Category.all
        end
        f.buttons
    end
end
