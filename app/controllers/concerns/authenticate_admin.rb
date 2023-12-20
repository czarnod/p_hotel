def authenticate_admin!
    authenticate_user!
    redirect_to :somewhere, status: :forbidden unless current_user.admin?
  end
  