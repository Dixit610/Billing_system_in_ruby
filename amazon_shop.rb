class Amazon_shop
		@@user_name
		@@amount=0

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
	def display_sub_item(category)
		@@category[category].each.with_index do |item,index|
		printf"%d %s %-20s %d \n",index+1,".",item[:name],item[:price]
		end
	end
	def display_item(choice)
			puts "========================="
			printf"%-20s %s \n","Product Name","Product Price"
				display_sub_item(@@category_keys[choice-1])
			puts"----------------------------"
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

			return temp_result
	end
	def order(choice)
		display_item(choice)

		puts"Enter choice No:"
		item_choice=gets.chomp
		puts"Eneter Quantity:"
		quantity=gets.chomp
		total=@@category[@@category_keys[choice-1]][(item_choice.to_i)-1][:price]*quantity.to_i

		duplication_check({"Product_Category"=>@@category_keys[0],"Product_Name"=>@@category[@@category_keys[choice-1]][(item_choice.to_i)-1][:name],"Product_Price"=>@@category[@@category_keys[choice-1]][(item_choice.to_i)-1][:price],"quantity"=>quantity.to_i,"Total"=>total,"amount"=>(@@amount+=total)})

	end
	def display_detail()
		bill_date=Time.new
		temp_result=duplication_check2(@@result_array)
		puts"=============================================================================="
		puts"Amazon Shop \tCustomer:#{@@user_name.capitalize}\t\tDate:#{bill_date.strftime("%Y-%m-%d \tTime:%H:%M:%S")}\n\n"
		puts"Product Category\tProduct Name\tProduct Price\tQuantity\tTotal"
		puts"----------------\t------------\t-------------\t--------\t-----"
		
		temp_result.each.with_index do |result_item,index|
			flag=0
				printf "%d %s %-20s %-18s %-14d %-11d %-11d \n",index+1,".",result_item["Product_Category"],result_item["Product_Name"],result_item["Product_Price"],result_item["quantity"],result_item["Total"]

		end
	
		puts"\n\t\t\tYour Total Bill:#{@@amount}"
		puts"=============================================================================="
	end
	def select_category
		category_no=0
		while 1
			
		
			puts "==============="
			
			@@category_keys=@@category.keys
			length=@@category_keys.length
			@@category_keys.each.with_index do |item, index|
				puts "#{index+1}.#{item}"
			end
		
			puts "#{length+1}.Exit!!!!\n\n"

		
			puts "Enter Choice No:"
			category_no=gets.chomp

			if category_no.to_i<= length && category_no.to_i >0
				order(category_no.to_i)
			elsif category_no.to_i == length+1
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