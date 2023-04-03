Rails.application.routes.draw do
  # Write your routes here. URLs to support:
  
  # /text
  get("/text", { :controller => "application", :action => "text_qr" })
  # /url
  get("/url", { :controller => "application", :action => "url_qr" })
  # /wifi
  get("/wifi", { :controller => "application", :action => "wifi_qr" })
  # /sms
  get("/sms", { :controller => "application", :action => "sms_qr" })

  get("/", {:controller => "application", :action => "homepage"})

  # Solutions below.

  get("/solutions/text", {:controller => "solutions", :action => "text_qr"})

  get("/solutions/url", {:controller => "solutions", :action => "url_qr"})

  get("/solutions/wifi", {:controller => "solutions", :action => "wifi_qr"})

  get("/solutions/sms", {:controller => "solutions", :action => "sms_qr"})

end
