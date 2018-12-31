class Amazon_shop
		@@user_name
		@@category_no=0
		@@amount=0
		@@item_name=Array.new
		@@item_quantity=Array.new
		@@item_price=Array.new
		@@electronics_item=Array["Mobile","Laptop","Mouse","Digital Watch","Mobail Charger"]
		@@electronics_price=Array[10000,30000,120,13000,300]
		@@appliance_item=Array["Mixer Grinder","Water Purifiers","Induction Cooktops","Microwaves","Dishwashers"]
		@@appliance_price=Array[10000,20000,1000,12000,100000]
		@@cloth_item=Array["Blue Jeans","Black T-Shirt","Ring Beanie Cap","SkyBlue Shirt","FormalMen's Blazer"]
		@@cloth_price=Array[800,400,300,600,2000]
		@@footwear_item=Array["Sport Shoes","Formal Shoes","Casual Shoes","Sandal","Slipper"]
		@@footwear_price=Array[2000,1000,1000,700,300]
		@@toy_item=Array["Racing car","Flying Helicopter","Dancing Robot","Toy-superman","Rose Teddy Bear"]
		@@toy_price=Array[4000,5000,3500,1200,1000]
	def get_user_detail #get user info==========================================
		puts "Enter user name:"
		@@user_name=gets.chomp
	end
	def electronics_main
		puts "========================="
		for i in 0...@@electronics_item.length
			print"#{i+1}.#{@@electronics_item[i]}"
			print"\t\t#{@@electronics_price[i]}\n"
		end
		puts"----------------------------"
		puts"Enter choice No:"
		@item_choice=gets.chomp
		puts"Eneter Quantity:"
		@quantity=gets.chomp
		@total=@@electronics_price[(@item_choice.to_i)-1]*@quantity.to_i
		puts"Your item is #{@@electronics_item[(@item_choice.to_i)-1]}and Quantity is:#{@quantity} and Total :#{@total}"
		
		@@item_name.push(@@electronics_item[(@item_choice.to_i)-1])
		@@item_quantity.push(@quantity)
		@@item_price.push(@total)	
		@@amount+=@total
	end
	def appliance_main
		puts"==========================="
		for i in 0...@@appliance_item.length
			print"#{i+1}.#{@@appliance_item[i]}"
			print"\t\t#{@@appliance_price[i]}\n"
		end
		puts"----------------------------"
		puts"Enter choice No:"
		@item_choice=gets.chomp
		puts"Eneter Quantity:"
		@quantity=gets.chomp
		@total=@@appliance_price[(@item_choice.to_i)-1]*@quantity.to_i
		puts"Your item is #{@@appliance_item[(@item_choice.to_i)-1]}and Quantity is:#{@quantity} and Total :#{@total}"

		@@item_name.push(@@appliance_item[(@item_choice.to_i)-1])
		@@item_quantity.push(@quantity)
		@@item_price.push(@total)
		@@amount+=@total
	end
	def cloth_main
		puts"==========================="
		for i in 0...@@cloth_item.length
			print"#{i+1}.#{@@cloth_item[i]}"
			print"\t\t#{@@cloth_price[i]}\n"
		end
		puts"----------------------------"
		puts"Enter choice No:"
		@item_choice=gets.chomp
		puts"Eneter Quantity:"
		@quantity=gets.chomp
		@total=@@cloth_price[(@item_choice.to_i)-1]*@quantity.to_i
		puts"Your item is #{@@cloth_item[(@item_choice.to_i)-1]}and Quantity is:#{@quantity} and Total :#{@total}"

		@@item_name.push(@@cloth_item[(@item_choice.to_i)-1])
		@@item_quantity.push(@quantity)
		@@item_price.push(@total)
		@@amount+=@total
	end
	def footwear_main
		puts"==========================="
		for i in 0...@@footwear_item.length
			print"#{i+1}.#{@@footwear_item[i]}"
			print"\t\t#{@@footwear_price[i]}\n"
		end
		puts"----------------------------"
		puts"Enter choice No:"
		@item_choice=gets.chomp
		puts"Eneter Quantity:"
		@quantity=gets.chomp
		@total=@@footwear_price[(@item_choice.to_i)-1]*@quantity.to_i
		puts"Your item is #{@@footwear_item[(@item_choice.to_i)-1]}and Quantity is:#{@quantity} and Total :#{@total}"

		@@item_name.push(@@footwear_item[(@item_choice.to_i)-1])
		@@item_quantity.push(@quantity)
		@@item_price.push(@total)
		@@amount+=@total
	end
	def toy_main
		puts"==========================="
		for i in 0...@@toy_item.length
			print"#{i+1}.#{@@toy_item[i]}"
			print"\t\t#{@@toy_price[i]}\n"
		end
		puts"----------------------------"
		puts"Enter choice No:"
		@item_choice=gets.chomp
		puts"Eneter Quantity:"
		@quantity=gets.chomp
		@total=@@toy_price[(@item_choice.to_i)-1]*@quantity.to_i
		puts"Your item is #{@@toy_item[(@item_choice.to_i)-1]}and Quantity is:#{@quantity} and Total :#{@total}"

		@@item_name.push(@@toy_item[(@item_choice.to_i)-1])
		@@item_quantity.push(@quantity)
		@@item_price.push(@total)
		@@amount+=@total
	end
	def display_detail
		puts"=============================================================="
		puts"Amazon Shop \t\t\t\t Customer:#{@@user_name.capitalize}"
		puts"Product Name\t\tProduct Quantity\t\tTotal Price"
		puts"------------\t\t----------------\t\t-----------"
		for i in 0..@@item_name.length
			puts"#{@@item_name[i]}\t\t\t#{@@item_quantity[i]}\t\t\t\t#{@@item_price[i]}"
		end
		puts"\t\tYourTotal Bill is #{@@amount}"
		puts"=============================================================="
	end
	def select_category

	while 1
		
	
		puts "==============="
		puts "1.Electronics"
		puts "2.Appliance"
		puts "3.Clothing"
		puts "4.Footwear"
		puts "5.Toys"
		puts "6.Exit!!!!\n\n"

		puts "Enter Choice No:"
		@@category_no=gets.chomp
		case (@@category_no.to_i)

		when 1
			electronics_main()
		when 2
			appliance_main()
		when 3
			cloth_main()
		when 4
			footwear_main()
		when 5
			toy_main()
		when 6
			display_detail()
			exit
		else
			puts "Pless Enter corect choice!!!!"
		end
	end			
	end
	
end
obj1=Amazon_shop.new
obj1.get_user_detail
#obj1.display_detail
obj1.select_category