ActiveAdmin.register User do

  show do |user|
    attributes_table do
      row :email
      row "clients" do
        table_for user.clients do
          column :name do |client|
            link_to client.name, admin_client_path(client)
          end
        end
      end
    end
    active_admin_comments
  end


end
