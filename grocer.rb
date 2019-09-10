def consolidate_cart(cart)
new_hash = {}
cart.each do |items|
  items.each do |groceryName, groceryV|
    if new_hash[groceryName]
    new_hash[groceryName][:count] += 1
    else
    new_hash[groceryName] = groceryV
    new_hash[groceryName][:count] = 1
  end
end
end
new_hash
end


def apply_coupons(cart, coupons = nil)
  if coupons.length == 0 || coupons == nil
  return cart
  elsif cart.size == 0
     return cart
  end
new_hash = {}
coupons.each do |coupon|
cart.each do |itemName, itemValue|
 if coupon[:item] == itemName && cart[itemName][:count] >= coupon[:num]
if new_hash["#{itemName} W/COUPON"]
new_hash["#{itemName} W/COUPON"][:count] += 2
else
new_hash["#{itemName} W/COUPON"] = {:price => coupon[:cost] / coupon[:num], :clearance => cart[itemName][:clearance], :count => coupon[:num] }
end
cart[itemName][:count] = cart[itemName][:count] - coupon[:num]

end
new_hash[itemName] = cart[itemName]
end

end

new_hash
  end



def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
