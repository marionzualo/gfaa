ActiveAdmin.register Advice do


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

  permit_params :text, :state

  controller do
    def update
      update! do |format|
        format.html { redirect_to admin_advices_path }
      end
    end

    def create
      create! do |format|
        format.html { redirect_to admin_advices_path }
      end
    end
  end

  form do |f|
    f.semantic_errors(*f.object.errors.keys)
    f.inputs 'Edit' do
      f.input :text, required: true
      f.input :state, :as => :select, :collection => %w(pending_review accepted rejected)
    end
    f.actions
  end
end
