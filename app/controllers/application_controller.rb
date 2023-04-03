class ApplicationController < ActionController::Base
  def homepage
    render({ :template => "my_templates/homepage.html.erb" })
  end

  def text_qr
    @user_text = params.fetch("content")

    qrcode = RQRCode::QRCode.new(@user_text)

    @svg = qrcode.as_svg

    render ({ :template => "my_templates/text.html.erb" })
  end

  def url_qr
    @url_link = params.fetch("url")

    qrcode = RQRCode::QRCode.new(@url_link)

    @svg = qrcode.as_svg

    render({ :template => "my_templates/url.html.erb" })
  end

  def wifi_qr
    @ssid_name = params.fetch("ssid")

    @password = params.fetch("pw")

    # WIFI:T:WPA;S:Your network name;P:secret password;;

    @final_string = "WIFI:T:WPA;S:#{@ssid_name};P:#{@password};;"

    qrcode = RQRCode::QRCode.new(@final_string)

    @svg = qrcode.as_svg

    render({ :template => "my_templates/wifi.html.erb"})
  end

  def sms_qr
    @phone_num = params.fetch("phone")

    @text_message = params.fetch("message")

    # SMSTO:9876543210:Hi Alice! It's me, 

    @final_string = "SMSTO:#{@phone_num}:#{@text_message}"

    qrcode = RQRCode::QRCode.new(@final_string)

    @svg = qrcode.as_svg

    render({ :template => "my_templates/sms.html.erb" })
  end
end
