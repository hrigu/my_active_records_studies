ActiveAdmin.register Client do

  show do |client|
    attributes_table do
      row :name
      row "users" do
        table_for client.users do |user|
          puts "user.class = #{user.class}"
          column :name do |user|
            link_to user.email, admin_user_path(user)
          end
        end
      end
    end
    active_admin_comments
  end

end
