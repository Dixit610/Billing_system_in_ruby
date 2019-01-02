class Amazon_shop
		@@user_name
		@@amount=0
		#@@category=Array["Electronics","Appliance","Clothing","Footwear","Toys"]
		@@category_keys=[]
		@@category=
			{
				"Electronics"=>[{"name":"Mobile","price":10000},{"name":"Laptop","price":30000},{"name":"Mouse","price":120},{"name":"Mobail Charger","price":300}],
				"Appliance"=>[{"name":"Mixer Grinder","price":10000},{"name":"Water Purifiers","price":20000},{"name":"Induction Cooktops","price":1000},{"name":"Microwaves","price":12000},{"name":"Dishwashers","price":100000}],
				"Clothing"=>[{"name":"Blue Jeans","price":800},{"name":"Black T-Shirt","price":400},{"name":"Ring Beanie Cap","price":300},{"name":"SkyBlue Shirt","price":600},{"name":"FormalMen's Blazer","price":2000}],
				"Footwear"=>[{"name":"Sport Shoes","price":2000},{"name":"Formal Shoes","price":1000},{"name":"Casual Shoes","price":1000},{"name":"Sandal","price":700},{"name":"Slipper","price":300}],
				"Toys"=>[{"name":"Racing car","price":4000},{"name":"Flying Helicopter","price":5000},{"name":"Dancing Robot","price":3500},{"name":"Toy-superman","price":1200},{"name":"Rose Teddy Bear","price":1000}]
			}
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
		temp_result=[]
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
		#electronics_items=[{"name":"Mobile","price":10000},{"name":"Laptop","price":30000},{"name":"Mouse","price":120},{"name":"Mobail Charger","price":300}]
		puts "========================="
		printf"%-20s %s \n","Product Name","Product Price"
		@@category["Electronics"].each.with_index do |item,index|
			#item.each do |key,value|
			printf"%d %s %-20s %d \n",index+1,".",item[:name],item[:price]	
			#puts "#{}"
		end
		puts"----------------------------"
		puts"Enter choice No:"
		item_choice=gets.chomp
		puts"Eneter Quantity:"
		quantity=gets.chomp
		total=@@category["Electronics"][(item_choice.to_i)-1][:price]*quantity.to_i

		duplication_check({"Product_Category"=>@@category_keys[0],"Product_Name"=>@@category["Electronics"][(item_choice.to_i)-1][:name],"Product_Price"=>@@category["Electronics"][(item_choice.to_i)-1][:price],"quantity"=>quantity.to_i,"Total"=>total,"amount"=>(@@amount+=total)})

	end
	def appliance_main
		#item_array=Hash.new
		#appliance_items=[{"name":"Mixer Grinder","price":10000},{"name":"Water Purifiers","price":20000},{"name":"Induction Cooktops","price":1000},{"name":"Microwaves","price":12000},{"name":"Dishwashers","price":100000}]
		puts"==========================="
		printf"%-20s %s \n","Product Name","Product Price"
		@@category["Appliance"].each.with_index do |item,index|
			printf"%d %s %-20s %d \n",index+1,".",item[:name],item[:price]
		end
		puts"----------------------------"
		puts"Enter choice No:"
		item_choice=gets.chomp
		puts"Eneter Quantity:"
		quantity=gets.chomp
		total=@@category["Appliance"][(item_choice.to_i)-1][:price]*quantity.to_i
	
		#duplication_check({"Product_Category"=>@@category[1],"Product_Name"=>appliance_items[(item_choice.to_i)-1][:name],"Product_Price"=>appliance_items[(item_choice.to_i)-1][:price],"quantity"=>quantity.to_i,"Total"=>total,"amount"=>(@@amount+=total)})
		duplication_check({"Product_Category"=>@@category_keys[1],"Product_Name"=>@@category["Appliance"][(item_choice.to_i)-1][:name],"Product_Price"=>@@category["Appliance"][(item_choice.to_i)-1][:price],"quantity"=>quantity.to_i,"Total"=>total,"amount"=>(@@amount+=total)})
	end
	def cloth_main
		#item_array=Hash.new
		#cloth_items=[{"name":"Blue Jeans","price":800},{"name":"Black T-Shirt","price":400},{"name":"Ring Beanie Cap","price":300},{"name":"SkyBlue Shirt","price":600},{"name":"FormalMen's Blazer","price":2000}]
		puts"==========================="
		printf"%-20s %s \n","Product Name","Product Price"
		@@category["Clothing"].each.with_index do |item,index|
			printf"%d %s %-20s %d \n",index+1,".",item[:name],item[:price]
		end
		puts"----------------------------"
		puts"Enter choice No:"
		item_choice=gets.chomp
		puts"Eneter Quantity:"
		quantity=gets.chomp
		total=@@category["Clothing"][(item_choice.to_i)-1][:price]*quantity.to_i
	
		#duplication_check({"Product_Category"=>@@category[2],"Product_Name"=>cloth_items[(item_choice.to_i)-1][:name],"Product_Price"=>cloth_items[(item_choice.to_i)-1][:price],"quantity"=>quantity.to_i,"Total"=>total,"amount"=>(@@amount+=total)})
		duplication_check({"Product_Category"=>@@category_keys[2],"Product_Name"=>@@category["Clothing"][(item_choice.to_i)-1][:name],"Product_Price"=>@@category["Clothing"][(item_choice.to_i)-1][:price],"quantity"=>quantity.to_i,"Total"=>total,"amount"=>(@@amount+=total)})
	end
	def footwear_main
		#item_array=Hash.new
			#footwear_items=[{"name":"Sport Shoes","price":2000},{"name":"Formal Shoes","price":1000},{"name":"Casual Shoes","price":1000},{"name":"Sandal","price":700},{"name":"Slipper","price":300}]
		puts"==========================="
		printf"%-20s %s \n","Product Name","Product Price"
		@@category["Footwear"].each do |item|
			printf"%-20s %d \n",item[:name],item[:price]
		end
		puts"----------------------------"
		puts"Enter choice No:"
		item_choice=gets.chomp
		puts"Eneter Quantity:"
		quantity=gets.chomp
		total=@@category["Footwear"][(item_choice.to_i)-1][:price]*quantity.to_i
		
		#duplication_check({"Product_Category"=>@@category[3],"Product_Name"=>footwear_items[(item_choice.to_i)-1][:name],"Product_Price"=>footwear_items[(item_choice.to_i)-1][:price],"quantity"=>quantity.to_i,"Total"=>total,"amount"=>(@@amount+=total)})
		duplication_check({"Product_Category"=>@@category_keys[3],"Product_Name"=>@@category["Footwear"][(item_choice.to_i)-1][:name],"Product_Price"=>@@category["Footwear"][(item_choice.to_i)-1][:price],"quantity"=>quantity.to_i,"Total"=>total,"amount"=>(@@amount+=total)})
	end
	def toy_main
		#item_array=Hash.new
		#toy_items=[{"name":"Racing car","price":4000},{"name":"Flying Helicopter","price":5000},{"name":"Dancing Robot","price":3500},{"name":"Toy-superman","price":1200},{"name":"Rose Teddy Bear","price":1000}]
		puts"==========================="
		printf"%-20s %s \n","Product Name","Product Price"
		@@category["Toys"].each.with_index do |item,index|
			printf"%d %s %-20s %d \n",index+1,".",item[:name],item[:price]
		end
		puts"----------------------------"
		puts"Enter choice No:"
		item_choice=gets.chomp
		puts"Eneter Quantity:"
		quantity=gets.chomp
		total=@@category["Toys"][(item_choice.to_i)-1][:price]*quantity.to_i

		#duplication_check({"Product_Category"=>@@category[4],"Product_Name"=>toy_items[(item_choice.to_i)-1][:name],"Product_Price"=>toy_items[(item_choice.to_i)-1][:price],"quantity"=>quantity.to_i,"Total"=>total,"amount"=>(@@amount+=total)})
		duplication_check({"Product_Category"=>@@category_keys[4],"Product_Name"=>@@category["Toys"][(item_choice.to_i)-1][:name],"Product_Price"=>@@category["Toys"][(item_choice.to_i)-1][:price],"quantity"=>quantity.to_i,"Total"=>total,"amount"=>(@@amount+=total)})
	end
	def display_detail()
		temp_result=duplication_check2(@@result_array)
		puts"==============================================================================="
		puts"Amazon Shop \t\t\t\t\t\t Customer:#{@@user_name.capitalize}\n\n"
		puts"Product Category\tProduct Name\tProduct Price\tQuantity\tTotal"
		puts"----------------\t------------\t-------------\t--------\t-----"
		
		temp_result.each.with_index do |result_item,index|
			flag=0
				printf "%d %s %-20s %-18s %-14d %-11d %-11d \n",index+1,".",result_item["Product_Category"],result_item["Product_Name"],result_item["Product_Price"],result_item["quantity"],result_item["Total"]

		end
	
		puts"\n\t\t\tYour Total Bill:#{@@amount}"
		puts"================================================================================"
	end
	def select_category
		@category_no=0
	while 1
		
	
		puts "==============="
		
		@@category_keys=@@category.keys
		@@category_keys.each.with_index do |item, index|
			puts "#{index+1}.#{item}"
		end

=begin
		for i in 0...@@category.length
		puts "#{i+1}.#{@@category[i]}"
		end
=end	
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