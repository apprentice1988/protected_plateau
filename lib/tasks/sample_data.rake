namespace :db do 
	desc "Fill database with sample data"
	task populate: :environment do 
		admin = User.create!(username: "jizilong",
													email: "jizilong1988@163.com",
													mobilephone: "18940883460",
													subscription: false,
													password: "jzl312",
													password_confirmation: "jzl312")
		admin.toggle!(:admin)
		cart1 = Cart.create!(user_id: 1)
	end
	task makeproduct: :environment do 
			Product.create!(title: "Wine Barrel - Wedding Reception",
									image_url: "http://img3.etsystatic.com/000/0/6672583/il_fullxfull.319646599.jpg",
									image_url1: "http://img2.etsystatic.com/000/0/6672583/il_fullxfull.319769902.jpg",
									image_url2: "http://img3.etsystatic.com/000/0/6672583/il_fullxfull.319647195.jpg",
									image_url3: "http://img2.etsystatic.com/007/0/6672583/il_fullxfull.404449666_g6po.jpg",
									photo_url: "http://img3.etsystatic.com/000/0/6672583/il_fullxfull.319646599.jpg",
									ftap: "grocery",
									price: "128.5",
									description: "Make it a picnic, party, or wedding reception to remember! ")
	end
end

