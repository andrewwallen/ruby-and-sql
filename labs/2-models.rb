# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Salesperson.destroy_all
# **************************

# Lab 2: Models
# - We've added data into the companies table.  Next, we'll add data
#   into the salespeople table.  Follow the steps below to insert and
#   read rows of salesperson data.  Update a row.  Afterwards, display
#   how many rows have been inserted into the salespeople table.
#   Lastly, if you want a challenge, try writing code to display the
#   full name of each salesperson.

# 1a. check out the schema file
# 1b. check out the model file

# 2. insert 1-2 rows in salespeople table.
new_salesperson = Salesperson.new
new_salesperson["first_name"] = "Ben"
new_salesperson["last_name"] = "Block"
new_salesperson["email"] = "ben.block@gmail.com"
new_salesperson.save

new_salesperson2 = Salesperson.new
new_salesperson2["first_name"] = "Brian"
new_salesperson2["last_name"] = "Eng"
new_salesperson2["email"] = "brian.eng@gmail.com"
new_salesperson2.save

# 3. write code to display how many salespeople rows are in the database

# ---------------------------------
# Salespeople: 2
puts "There are #{Salesperson.all.count} salespeople"

# 4. modify/update column data for a row in the salespeople table.
ben_block = Salesperson.find_by({"first_name" => "Ben"})
ben_block ["email"] = "ben.block@kellogg.northwestern.edu"
ben_block.save
puts ben_block.inspect

# CHALLENGE:
# 5. write code to display each salesperson's full name

# ---------------------------------
# Salespeople: 2
salespeople = Salesperson.all

for salesperson in salespeople
# Ben Block
first_name = salesperson["first name"]
last_name = salesperson["last name"]
full_name = "#{first_name} #{last_name}"
# Brian Eng
puts full_name

end
