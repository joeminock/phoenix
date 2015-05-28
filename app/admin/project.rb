ActiveAdmin.register Project do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end
	
	permit_params :name, :description, :content, :price, :supplies_cost, :ability, :time_to_complete, :image

	show do |t|
		attributes_table do
			row :name
			row :description
			row :content
			row :price
			row :supplies_cost
			row :ability
			row :time_to_complete
			row :image do
				project.image? ? image_tag(project.image.url, height: '100') : content_tag(:span, "No photo yet")
			end
		end
	end

	form :html => { :enctype => "multipart/form-data" } do |f|
		f.inputs do
			f.input :name
			f.input :description
			f.input :content
			f.input :price
			f.input :supplies_cost
			f.input :ability
			f.input :time_to_complete
			f.input :image, hint: f.project.image? ? image_tag(project.image.url, height: '100') : content_tag(:span, "Upload JPG/PNG/GIF image")
		end
		f.actions
	end
end
