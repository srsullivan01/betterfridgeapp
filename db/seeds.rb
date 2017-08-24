Fridge.destroy_all

icebox = Fridge.create(location: "kitchen", brand: "Ikea", size: 12, has_food: true, has_drink: true)

icebox.food  = [
    Food.create(fridge_id: icebox.id, name: "apple", weight_in_pounds: 1 , vegan: true),
    Food.create(fridge_id: icebox.id , name: "pineapple", weight_in_pounds: 3 , vegan: true),
    Food.create(fridge_id: icebox.id, name: "cold pizza", weight_in_pounds: 5, vegan: false),
    Food.create(fridge_id: icebox.id, name: "seaweed", weight_in_pounds: 1 , vegan: true),
    Food.create(fridge_id: icebox.id, name: "hot dog", weight_in_pounds: 1 , vegan: false)
  ]
icebox.drink = [
    Drink.create(fridge_id: icebox.id, name: "soy milk", size_in_ounces: 12, alcoholic: false),
    Drink.create(fridge_id: icebox.id, name: "mai tais", size_in_ounces: 10, alcoholic: true)
  ]
