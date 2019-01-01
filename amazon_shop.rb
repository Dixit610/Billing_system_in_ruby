class Amazon_shop
		@@user_name
		@@amount=0
		#@@item_name=Array.new
		#@@item_quantity=Array.new
		#@@item_price=Array.new
		@@category=Array["Electronics","Appliance","Clothing","Footwear","Toys"]
		@@result_array=Array.new
	def get_user_detail #get user info==========================================
		puts "Enter user name:"
		@@user_name=gets.chomp
	end
	def electronics_main
		electronics_items=Array[{"name":"Mobile","price":10000},{"name":"Laptop","price":30000},{"name":"Mouse","price":120},{"name":"Mobail Charger","price":300}]
		item_array=Hash.new
		puts "========================="
		printf"%-20s %s \n","Product Name","Product Price"
		electronics_items.each do |item|
			printf"%-20s %d \n",item["name"],item["price"]
		end
		puts"----------------------------"
		puts"Enter choice No:"
		item_choice=gets.chomp
		puts"Eneter Quantity:"
		quantity=gets.chomp
		total=electronics_price[(item_choice.to_i)-1]*quantity.to_i
		puts"Your item is #{electronics_item[(item_choice.to_i)-1]}and Quantity is:#{quantity} and Total :#{total}"
		item_array["Product Category"]=@@category[0]
		item_array["Product Name"]=electronics_item[(item_choice.to_i)-1]
		item_array["Product Price"]=electronics_price[(item_choice.to_i)-1]
		item_array["quantity"]=quantity.to_i
		item_array["Total"]=total
		item_array["Total amount"]=(@@amount+=total)
		@@result_array.push(item_array)
		#puts @@result_array
		
			#@@item_name.push()
			#@@item_quantity.push()
			#@@item_price.push()	
			#@@amount+=@total
	end
	def appliance_main
		item_array=Hash.new
		appliance_items=Array[{"name":"Mixer Grinder","price":10000},{"name":"Water Purifiers","price":20000},{"name":"Induction Cooktops","price":1000},{"name":"Microwaves","price":12000},{"name":"Dishwashers","price":100000}]
		puts"==========================="
		printf"%-20s %s \n","Product Name","Product Price"
		appliance_items.each do |item|
			printf"%-20s %d \n",item["name"],item["price"]
		end
		puts"----------------------------"
		puts"Enter choice No:"
		item_choice=gets.chomp
		puts"Eneter Quantity:"
		quantity=gets.chomp
		total=appliance_price[(item_choice.to_i)-1]*quantity.to_i
		puts"Your item is #{appliance_item[(item_choice.to_i)-1]}and Quantity is:#{quantity} and Total :#{total}"
		
		item_array["Product Category"]=@@category[1]	
		item_array["Product Name"]=appliance_item[(item_choice.to_i)-1]
		item_array["Product Price"]=appliance_price[(item_choice.to_i)-1]
		item_array["quantity"]=quantity
		item_array["Total"]=total
		item_array["amount"]=(@@amount+=total)
		@@result_array.push(item_array)
		#puts @@result_array

		#@@item_name.push(@appliance_item[(@item_choice.to_i)-1])
		#@@item_quantity.push(@quantity)
		#@@item_price.push(@total)
		#@@amount+=@total
	end
	def cloth_main
		item_array=Hash.new
		cloth_items=Array[{"name":"Blue Jeans","price":800},{"name":"Black T-Shirt","price":400},{"name":"Ring Beanie Cap","price":300},{"name":"SkyBlue Shirt","price":600},{"name":"FormalMen's Blazer","price":2000}]
		puts"==========================="
		printf"%-20s %s \n","Product Name","Product Price"
		for i in 0...cloth_item.length
			printf"%d %s %-20s %d \n",i+1,".",cloth_item[i],cloth_price[i]
		end
		puts"----------------------------"
		puts"Enter choice No:"
		item_choice=gets.chomp
		puts"Eneter Quantity:"
		quantity=gets.chomp
		total=cloth_price[(item_choice.to_i)-1]*quantity.to_i
		puts"Your item is #{cloth_item[(item_choice.to_i)-1]}and Quantity is:#{quantity} and Total :#{total}"
		item_array["Product Category"]=@@category[2]
		item_array["Product Name"]=cloth_item[(item_choice.to_i)-1]
		item_array["Product Price"]=cloth_price[(item_choice.to_i)-1]
		item_array["quantity"]=quantity
		item_array["Total"]=total
		item_array["amount"]=(@@amount+=total)
		@@result_array.push(item_array)
		#puts @@result_array
		#=begin
		#@@item_name.push(@cloth_item[(@item_choice.to_i)-1])
		#@@item_quantity.push(@quantity)
		#@@item_price.push(@total)
		#@@amount+=@total
		#=end
	end
	def footwear_main
		item_array=Hash.new
			footwear_items=Array[{"name":"Sport Shoes","price":2000},{"name":"Formal Shoes","price":1000},{"name":"Casual Shoes","price":1000},{"name":"Sandal","price":700},{"name":"Slipper","price":300}]
		puts"==========================="
		printf"%-20s %s \n","Product Name","Product Price"
		for i in 0...footwear_item.length
			printf"%d %s %-20s %d \n",i+1,".",footwear_item[i],footwear_price[i]
		end
		puts"----------------------------"
		puts"Enter choice No:"
		item_choice=gets.chomp
		puts"Eneter Quantity:"
		quantity=gets.chomp
		total=footwear_price[(item_choice.to_i)-1]*quantity.to_i
		puts"Your item is #{footwear_item[(item_choice.to_i)-1]}and Quantity is:#{quantity} and Total :#{total}"
		item_array["Product Category"]=@@category[3]
		item_array["Product Name"]=footwear_item[(item_choice.to_i)-1]
		item_array["Product Price"]=footwear_price[(item_choice.to_i)-1]
		item_array["quantity"]=quantity
		item_array["Total"]=total
		item_array["amount"]=(@@amount+=total)
		@@result_array.push(item_array)
		#puts @@result_array
		#=begin
		#@@item_name.push(@footwear_item[(@item_choice.to_i)-1])
		#@@item_quantity.push(@quantity)
		#@@item_price.push(@total)
		#@@amount+=@total
		#=end
	end
	def toy_main
		item_array=Hash.new
		toy_items=Array[{"name":"Racing car","price":4000},{"name":"Flying Helicopter","price":5000},{"name":"Dancing Robot","price":3500},{"name":"Toy-superman","price":1200},{"name":"Rose Teddy Bear","price":1000}]
		puts"==========================="
		printf"%-20s %s \n","Product Name","Product Price"
		for i in 0...toy_item.length
			printf"%d %s %-20s %d \n",i+1,".",toy_item[i],toy_price[i]
		end
		puts"----------------------------"
		puts"Enter choice No:"
		item_choice=gets.chomp
		puts"Eneter Quantity:"
		quantity=gets.chomp
		total=toy_price[(item_choice.to_i)-1]*quantity.to_i
		puts"Your item is #{toy_item[(item_choice.to_i)-1]}and Quantity is:#{quantity} and Total :#{total}"
		item_array["Product Category"]=@@category[4]
		item_array["Product Name"]=toy_item[(item_choice.to_i)-1]
		item_array["Product Price"]=toy_price[(item_choice.to_i)-1]
		item_array["quantity"]=quantity
		item_array["Total"]=total
		item_array["amount"]=(@@amount+=total)
		@@result_array.push(item_array)
		#puts @@result_array
		#=begin
		#@@item_name.push(@toy_item[(@item_choice.to_i)-1])
		#@@item_quantity.push(@quantity)
		#@@item_price.push(@total)
		#@@amount+=@total
		#=end
	end
	def display_detail
		puts"==============================================================================="
		puts"Amazon Shop \t\t\t\t\t\t Customer:#{@@user_name.capitalize}\n\n"
		puts"Product Category\tProduct Name\tProduct Price\tQuantity\tTotal"
		puts"----------------\t------------\t-------------\t--------\t-----"
		for i in 0...@@result_array.length
			printf "%d %s %-18s %-20s %-15d %-11d %-10d \n",i+1,".",@@result_array[i]["Product Category"],@@result_array[i]["Product Name"],@@result_array[i]["Product Price"],@@result_array[i]["quantity"],@@result_array[i]["Total"]
		end
		#for i in 0..@@item_name.length
		#	puts"#{i+1}.#{@@item_name[i]}\t\t\t#{@@item_quantity[i]}\t\t\t\t#{@@item_price[i]}"
		#end
		puts"\n\t\t\tYour Total Bill:#{@@amount}"
		puts"================================================================================"
	end
	def select_category
		@category_no=0
	while 1
		
	
		puts "==============="
		for i in 0...@@category.length
		puts "#{i+1}.#{@@category[i]}"
		end
		puts "6.Exit!!!!\n\n"

		puts "Enter Choice No:"
		@category_no=gets.chomp
		case (@category_no.to_i)

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