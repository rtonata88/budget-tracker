module ApplicationHelper
def active_link(link_path)
    current_page?(link_path)
  end
end
