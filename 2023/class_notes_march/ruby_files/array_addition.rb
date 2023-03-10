grocery_list = [ "milk", "eggs", "bread"]
grocery_list << "carrots"
grocery_list.push("potatoes")
grocery_list.unshift("celery")
grocery_list += ["ice cream", "pie"]
grocery_list << 245
grocery_list << "45 batches of eggs"

puts grocery_list.inspect