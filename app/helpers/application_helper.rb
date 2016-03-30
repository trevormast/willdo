module ApplicationHelper
  def user_first_name
    current_user.name.match(/\A\S*/).to_s
  end
end
