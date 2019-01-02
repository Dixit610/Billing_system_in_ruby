class Amazon_shop
		@@user_name
		@@amount=0
		@@category=Array["Electronics","Appliance","Clothing","Footwear","Toys"]
		@@result_array=Array.new
	def get_user_detail #get user info==========================================
		puts "Enter user name:"
		@@user_name=gets.chomp
	end
	def duplication_check(item_array)
=begin
		@@result_array.each do |item|
			if item['Product_Category'] == item_array['Product_Category'] && item['Product_Name'] == item_array['Product_Name']
				item['quantity'] += item_array['quantity']
				item['Total'] +=item_array['Total']
				puts"Your item is #{item["Product_Name"]}and Quantity is:#{item['quantity']} and Total :#{item['Total']}"
				return
			end
		end
=end		
		puts"Your item is #{item_array["Product_Name"]}and Quantity is:#{item_array["quantity"]} and Total :#{item_array["Total"]}"		
		@@result_array.push(item_array)
	end
	def duplication_check2(result_array)
		temp_result=Array.new
		result_array.each do |record|
			flag=0
				temp_result.each do |temp_record|
					if record["Product_Category"] == temp_record["Product_Category"] && record["Product_Name"] == temp_record["Product_Name"] then
						temp_record["quantity"] += record["quantity"]
						temp_record["Total"] += record["Total"]
						flag=1
					end
				end
				if flag == 0
					temp_result.push(record)
				end
			end	

			#printf "Ans: %s",temp_result
			return temp_result
	end
	def electronics_main
		electronics_items=Array[{"name":"Mobile","price":10000},{"name":"Laptop","price":30000},{"name":"Mouse","price":120},{"name":"Mobail Charger","price":300}]
		puts "========================="
		printf"%-20s %s \n","Product Name","Product Price"
		electronics_items.each do |item|
			printf"%-20s %d \n",item[:name],item[:price].to_i
		end
		puts"----------------------------"
		puts"Enter choice No:"
		item_choice=gets.chomp
		puts"Eneter Quantity:"
		quantity=gets.chomp
		total=electronics_items[(item_choice.to_i)-1][:price]*quantity.to_i

		duplication_check({"Product_Category"=>@@category[0],"Product_Name"=>electronics_items[(item_choice.to_i)-1][:name],"Product_Price"=>electronics_items[(item_choice.to_i)-1][:price],"quantity"=>quantity.to_i,"Total"=>total,"amount"=>(@@amount+=total)})

	end
	def appliance_main
		#item_array=Hash.new
		appliance_items=Array[{"name":"Mixer Grinder","price":10000},{"name":"Water Purifiers","price":20000},{"name":"Induction Cooktops","price":1000},{"name":"Microwaves","price":12000},{"name":"Dishwashers","price":100000}]
		puts"==========================="
		printf"%-20s %s \n","Product Name","Product Price"
		appliance_items.each do |item|
			printf"%-20s %d \n",item[:name],item[:price]
		end
		puts"----------------------------"
		puts"Enter choice No:"
		item_choice=gets.chomp
		puts"Eneter Quantity:"
		quantity=gets.chomp
		total=appliance_items[(item_choice.to_i)-1][:price]*quantity.to_i
	
		duplication_check({"Product_Category"=>@@category[1],"Product_Name"=>appliance_items[(item_choice.to_i)-1][:name],"Product_Price"=>appliance_items[(item_choice.to_i)-1][:price],"quantity"=>quantity.to_i,"Total"=>total,"amount"=>(@@amount+=total)})
	
	end
	def cloth_main
		#item_array=Hash.new
		cloth_items=Array[{"name":"Blue Jeans","price":800},{"name":"Black T-Shirt","price":400},{"name":"Ring Beanie Cap","price":300},{"name":"SkyBlue Shirt","price":600},{"name":"FormalMen's Blazer","price":2000}]
		puts"==========================="
		printf"%-20s %s \n","Product Name","Product Price"
		cloth_items.each do |item|
			printf"%-20s %d \n",item[:name],item[:price]
		end
		puts"----------------------------"
		puts"Enter choice No:"
		item_choice=gets.chomp
		puts"Eneter Quantity:"
		quantity=gets.chomp
		total=cloth_items[(item_choice.to_i)-1][:price]*quantity.to_i
	
		duplication_check({"Product_Category"=>@@category[2],"Product_Name"=>cloth_items[(item_choice.to_i)-1][:name],"Product_Price"=>cloth_items[(item_choice.to_i)-1][:price],"quantity"=>quantity.to_i,"Total"=>total,"amount"=>(@@amount+=total)})
	
	end
	def footwear_main
		#item_array=Hash.new
			footwear_items=Array[{"name":"Sport Shoes","price":2000},{"name":"Formal Shoes","price":1000},{"name":"Casual Shoes","price":1000},{"name":"Sandal","price":700},{"name":"Slipper","price":300}]
		puts"==========================="
		printf"%-20s %s \n","Product Name","Product Price"
		footwear_items.each do |item|
			printf"%-20s %d \n",item[:name],item[:price]
		end
		puts"----------------------------"
		puts"Enter choice No:"
		item_choice=gets.chomp
		puts"Eneter Quantity:"
		quantity=gets.chomp
		total=footwear_items[(item_choice.to_i)-1][:price]*quantity.to_i
		
		duplication_check({"Product_Category"=>@@category[3],"Product_Name"=>footwear_items[(item_choice.to_i)-1][:name],"Product_Price"=>footwear_items[(item_choice.to_i)-1][:price],"quantity"=>quantity.to_i,"Total"=>total,"amount"=>(@@amount+=total)})
	
	end
	def toy_main
		#item_array=Hash.new
		toy_items=Array[{"name":"Racing car","price":4000},{"name":"Flying Helicopter","price":5000},{"name":"Dancing Robot","price":3500},{"name":"Toy-superman","price":1200},{"name":"Rose Teddy Bear","price":1000}]
		puts"==========================="
		printf"%-20s %s \n","Product Name","Product Price"
		toy_items.each do |item|
			printf"%-20s %d \n",item[:name],item[:price]
		end
		puts"----------------------------"
		puts"Enter choice No:"
		item_choice=gets.chomp
		puts"Eneter Quantity:"
		quantity=gets.chomp
		total=toy_items[(item_choice.to_i)-1][:price]*quantity.to_i

		duplication_check({"Product_Category"=>@@category[4],"Product_Name"=>toy_items[(item_choice.to_i)-1][:name],"Product_Price"=>toy_items[(item_choice.to_i)-1][:price],"quantity"=>quantity.to_i,"Total"=>total,"amount"=>(@@amount+=total)})
		
	end
	def display_detail()
		temp_result=duplication_check2(@@result_array)
		puts"==============================================================================="
		puts"Amazon Shop \t\t\t\t\t\t Customer:#{@@user_name.capitalize}\n\n"
		puts"Product Category\tProduct Name\tProduct Price\tQuantity\tTotal"
		puts"----------------\t------------\t-------------\t--------\t-----"
		
		temp_result.each do |result_item|

				printf "%-25s %-18s %-14d %-11d %-11d \n",result_item["Product_Category"],result_item["Product_Name"],result_item["Product_Price"],result_item["quantity"],result_item["Total"]

		end
	
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