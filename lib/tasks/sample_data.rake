namespace :db do 
	desc "Fill database with sample data"
	task populate: :environment do 
		make_users
		make_products
	end
end
def make_users
	admin = User.create!(username: "jizilong",
												email: "jizilong1988@163.com",
												mobilephone: "18940883460",
												subscription: false,
												password: "jzl312",
												password_confirmation: "jzl312")
	admin.toggle!(:admin)
	cart1 = Cart.create!(user_id: 1)
end

def make_products
	Product.create!(title: "Wine Barrel - Wedding Reception",
									image_url: "http://img3.etsystatic.com/000/0/6672583/il_fullxfull.319646599.jpg",
									image_url1: "http://img2.etsystatic.com/000/0/6672583/il_fullxfull.319769902.jpg",
									image_url2: "http://img3.etsystatic.com/000/0/6672583/il_fullxfull.319647195.jpg",
									image_url3: "http://img2.etsystatic.com/007/0/6672583/il_fullxfull.404449666_g6po.jpg",
									photo_url: "http://img3.etsystatic.com/000/0/6672583/il_fullxfull.319646599.jpg",
									ftap: "grocery",
									price: "128.5",
									description: "Make it a picnic, party, or wedding reception to remember! Imagine your drink table filled with these barrels holding the wine and my awesome 6 pack carriers holding all the beer!!

No more ugly (and cheap looking) boxes!!! This rustic pine barrel holds the wine bladder from a 3 or 5 Liter box of wine. Want to know if it's Red or White? Just flip the sign (which is also the peg that holds the door shut tight) and let everyone know what they're drinking.

The best part of this barrel, is that like my 6 pack cartons, they're reusable, eco friendly and something you'll have for a lifetime! A great gift that will be treasured for generations! I can't think of a better housewarming gift, either!
The pictured wine barrel is stained Early American.
Approx. Measurements:
***PLEASE READ THE FOLLOWING INFORMATION, THANKS!!!!*****

**** US CUSTOMERS: This item ships through UPS . Please enter a physical Street Address in NOTE TO SELLER at checkout if your registered address is PO Box. Thank you for your understanding!!!*****

**INTERNATIONAL ORDERS: These prices are for USPS International Priority. This cost does not include any Duties, Taxes, VAT charges that may be imposed upon arrival by your Government. We just like to mention this, so you don't have an unpleasant surprise if you haven't placed an International Order before. :)

These are made to order by Ryan for you. Though  may show more than one is available, this is our method to allow you to either order more than one at a time, and also the way we are able to renew our listing on Etsy.

Feel free to contact us if you need your order expedited and we'll see what we can do!")
end