module ApplicationHelper

  # def medium_avatar_exists?(user)
  #   if user.avatar.present?
  #     image_tag user.avatar.thumb_medium_url
  #   else
  #     image_tag "missing-avatar-medium.png"
  #   end
  # end

  def check_if_image_is_present(model_name)
    image_tag(model_name.image.present? ? input_name.image_file_name : 'default-trip.jpg')
  end

end
