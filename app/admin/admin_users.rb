ActiveAdmin.register AdminUser do
  permit_params :email, :password, :password_confirmation

  controller do
    def create
      create!
      email = permitted_params[:email]
      title = "登録しました"
      name = "新規登録san"
      ContactMailer.contact_mail(email, title, name).deliver_now
      # super
    end
  end


  index do
    selectable_column
    id_column
    column :email
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs do
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

end
