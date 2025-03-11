module ApplicationHelper
  SVGS = {
    0 => 'material-symbols--book-2-outline.svg',
    1 => 'material-symbols--school-outline.svg',
    2 => 'material-symbols--table-lamp-outline-sharp',
  }

  def svg_by_index(index)
    SVGS[index]
  end
  
  def form_error_notification(object)
    if object.errors.any?
      tag.div class: "error-message" do
        object.errors.full_messages.to_sentence.capitalize
      end
    end
  end
end
