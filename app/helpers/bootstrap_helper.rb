module BootstrapHelper
  def flash_message(name, msg)
    type = (name == :notice) ? 'success' : 'error'
    content_tag :div, '<a class="close" data-dismiss="alert">&times;</a>'.html_safe+msg, :class => "alert alert-#{type}"
  end
end