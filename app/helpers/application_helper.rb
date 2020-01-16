module ApplicationHelper


  def flash_alert(key)
    case key
      when "notice" then "alert alert-success"
      when "alert" then "alert alert-danger"
      # when "notice" then "alert alert-info"
      # when "notice" then "alert alert-primary"  
    end        
  end
  
end
