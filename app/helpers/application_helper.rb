module ApplicationHelper

  def auth_token_input
  "<input
      type=\"hidden\"
      name=\"authenticity_token\"
      value=\"#{ form_authenticity_token }\">".html_safe
  end

  def errors
    "<%= flash[:errors].join("<br>").html_safe %>" if flash[:erros]
  end

end
