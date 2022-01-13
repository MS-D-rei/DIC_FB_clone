module ApplicationHelper
  def action_based
    case action_name
    when 'create'
      confirm_posts_path
    when 'edit'
      post_path
    end
  end
end
