class Emailer < ActionMailer::Base
  default from: "from@example.com"
  def item_added
	  attachments.inline["mobile.jpg"] = File.read(Rails.root.join("public/images/mobile.jpg"))
	
	  mail(:to => "pattabhi.540@gmail.com", :subject => "new item added")
	  end
end
