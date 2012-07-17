ActiveAdmin.register ServiceType do
  index do
    column :explanation do |st|
      link_to st.explanation, admin_service_type_path(st)
    end
    column :time_from
    column :time_to
    column :color
  end
end
