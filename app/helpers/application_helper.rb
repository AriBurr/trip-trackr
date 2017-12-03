module ApplicationHelper

  def check_if_image_is_present(model_name)
    image_tag(model_name.image.present? ? model_name.image_file_name : 'default-trip.jpg')
  end

  def display_date_range(trip)
    if current_page?(trips_path)
      "#{trip.date_start.strftime("%m/%d/%Y")} - #{trip.date_end.strftime("%m/%d/%Y")}"
    else
      "#{trip.date_start.strftime('%B %e, %Y')} | #{trip.date_end.strftime('%B %e, %Y')}"
    end
  end

end
