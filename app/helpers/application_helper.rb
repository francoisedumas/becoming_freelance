module ApplicationHelper
  SVGS = {
    0 => 'material-symbols--book-2-outline.svg',
    1 => 'material-symbols--school-outline.svg',
    2 => 'material-symbols--table-lamp-outline-sharp',
  }

  def svg_by_index(index)
    SVGS[index]
  end
end
