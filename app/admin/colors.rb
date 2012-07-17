ActiveAdmin.register Color do
  #index do
  #  column :name
  #  column :rgb
  #end


  show do |color|
    attributes_table do
      row :name
      row :rgb
    end
    table_for color.service_types do |st|
      column :explanation do |st|
        link_to st.explanation, admin_service_type_path(st)
      end
      column :duration

    end
    active_admin_comments
  end

end
