def pet_shop_name(name)
  return name[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop,cash_amount)
  return pet_shop[:admin][:total_cash] += cash_amount
end

def pets_sold(number_of_pets_sold)
  return number_of_pets_sold[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop,pet_amount)
  return pet_shop[:admin][:pets_sold] += pet_amount
end

#Counts the number of pets in shop array
def stock_count(pet_shop_pet_count)
  return pet_shop_pet_count[:pets].length
end

# Needs refining
def pets_by_breed(pets,breed_of_pet)
  pet_breed = []
  for pet in pets[:pets]
    if pet[:breed] == breed_of_pet
      pet_breed << pet
    end
  end
  return pet_breed
end

# Find pet by name or return nil
def find_pet_by_name(pets, pet_name)
  for pet in pets[:pets]
    if pet[:name] == pet_name
      return pet
    end
  end
  return nil
end

#Function remove pet by name
# def remove_pet_by_name(pet_shop,pet_name)
#   pet[pets:].delete_if{ |key, value| value == [:name]}
# end

#fetching the customer cash
def customer_cash(get_customer_cash)
  return get_customer_cash[:cash]
end

#remove customer cash
def remove_customer_cash(customer_cash, cash_to_remove)
  customer_cash = customer_cash[:cash] - cash_to_remove
  return customer_cash
end
