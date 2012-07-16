ActiveAdmin.register ServiceType do
  index do
    column :time_from
    column :time_to
    column :explanation
    column "Farbe", :color
  end

end
