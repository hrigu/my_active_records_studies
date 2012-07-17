ActiveAdmin.register Staff do

  show do |staff|
    attributes_table do
      row :abbreviation
      row :first_name
      row :last_name

      row :client

      row "services" do
        table_for staff.services do
          column "service_type" do |services|
            link_to services.service_type.explanation, admin_service_path(services)
          end
          column :date_time_from
        end
      end
    end
    active_admin_comments
  end

end
