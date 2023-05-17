//
//  FlashCardView.swift
//  Welcome to Vietnam
//
//  Created by Thao Nguyen on 4/14/23.
//


import SwiftUI

struct FlashCardView: View {
    // Define an array of food cards
    let foodCards = [
        ["imageName": "pho", "name": "Phở", "description": "Phở (or Pho) is a popular noodle soup dish made with beef or chicken broth, rice noodles, and a variety of herbs and spices. The dish often includes thinly sliced beef or chicken, as well as bean sprouts, lime wedges, cilantro, and chili peppers. Pho is frequently served with condiments such hoisin sauce, siracha sauce, and fish sauce, which can be adjusted to taste. Because it is tasty and delectable, Vietnamese people enjoy eating it at any time of day."],
        ["imageName": "banh_mi", "name": "Bánh Mì", "description": "Bánh Mì (or Banh Mi) is a type of  sandwich made with a crispy baguette sliced lengthwise and filled with a combination of meat, pickled vegetables, cilantro, and chili peppers. Meat options include pork belly, pork sausage, pork BBQ, or grilled chicken. Soy sauce, butter, and paté are common seasonings for banh mi. Almost every street in Vietnam has people selling Banh Mi from vendor carts."],
        ["imageName": "mi_quang", "name": "Mì Quảng", "description": "Mì Quảng (or Mi Quang) is a popular noodle dish from the Central Vietnamese region of Quang Nam. It is made up of thick rice noodles that are yellow due to the usage of turmeric powder, as well as a variety of toppings such pork, shrimp, chicken, quail eggs, peanuts, and herbs. Traditionally, the dish is served with a tiny amount of broth and topped with chopped scallions, cilantro, and crispy rice crackers. The noodles are slightly chewy, and the dish is recognized for its rich flavors, which include sweet, salty, spicy, and sour. Mi Quang is a famous street food in Vietnam that is typically eaten for breakfast, lunch, or even dinner. "],
        ["imageName": "bun_cha", "name": "Bún Chả", "description": "Bún Chả (or Bun Cha) is a cuisine made up of grilled or roasted pork patties served with rice vermicelli noodles, fresh herbs, veggies, and dipping sauce. Pork patties are often cooked with ground pork, garlic, and fish sauce then grilled or roasted until the outside is slightly browned and crispy. Rice vermicelli noodles are normally cooked until tender before being eaten cold or at room temperature, often with thinly sliced vegetables such as cucumber, carrot, and lettuce on top. The dish is frequently served with a dipping sauce composed of fish sauce, sugar, lime juice, chili, and garlic, which gives it a tangy and slightly sweet flavor."],
        ["imageName": "com_tam", "name": "Cơm Tấm", "description": "Cơm Tấm (or Com Tam) is a dish made out of broken rice, grilled pork chops (or other meats like shredded pork, pork skin, or steamed egg meatloaf), and a variety of vegetables such as pickled vegetables, sliced cucumber, and tomato. The dish is frequently accompanied by a small bowl of fish sauce or soy sauce and garnished with green onions, peanuts, and fried shallots. It is a popular street food in Vietnam and can be found in many restaurants. Cơm tấm is well-known for its distinct texture and flavor, as well as its pleasant blend of savory and sweet elements."],
        ["imageName": "banh_xeo", "name": "Bánh Xèo", "description": "Bánh xèo (or Vietnamese crispy pancake) is a cuisine that consists of a crispy crepe composed of rice flour, coconut milk, and turmeric powder that is then filled with a variety of items such as pork, shrimp, bean sprouts, and green onions. It is typically accompanied by fresh herbs such as lettuce, mint, and basil, as well as a sweet and sour dipping sauce comprised of fish sauce, vinegar, sugar, and chili pepper. Banh Xeo is a popular Vietnamese street cuisine that can be consumed as a snack or as a main course. The meal is popular among both locals and tourists for its crispy texture and fragrant flavor."],
        ["imageName": "nem_chua", "name": "Nem Chua", "description": "Nem Chua is a sort of fermented pork roll that is typically served as an appetizer in Vietnam. The dish is made by combining ground pork, garlic, chili peppers, sugar, salt, and fish sauce, then wrapping it in banana leaves and fermenting it for several days. As a result, the flavor is acidic and slightly sour, with a chewy texture. Fresh herbs, chopped garlic, and chili peppers are common accompaniments to nem chua, as are rice crackers or toasted baguette. It is a popular street food in Vietnam, as well as in Vietnamese markets and restaurants."],
        ["imageName": "goi_cuon", "name": "Gỏi Cuốn", "description": "Gỏi Cuốn, also known as spring rolls or summer rolls, is a type of fresh Vietnamese cuisine made up of rice paper wrapped around a mixture of rice noodles, sliced vegetables (such as lettuce, cucumber, and carrot), herbs (such as basil and mint), and a protein source (such as shrimp or pork). They are typically served cold with peanut butter sauce. Goi cuon are a famous Vietnamese appetizer and snack recognized for their light and refreshing flavor."],
        ["imageName": "che", "name": "Chè", "description": "Chè (sweet rice dessert) is a Vietnamese dessert beverage made with beans, fruits, jellies, and tapioca pearls that are boiled in a sweet and fragrant syrup and served hot or cold. The ingredients and methods of preparation for che might differ based on the location of Vietnam, and the precise ingredients used can also vary depending on personal preference or availability. Che is a popular Vietnamese delicacy that can be found in Vietnamese restaurants or from street vendors. It is frequently enjoyed as a refreshing and sweet dessert following a meal or during hot weather."],
        ["imageName": "com_chay", "name": "Cơm Cháy", "description": "Cơm Cháy, or Burnt Rice, is a popular appetizer or snack among Vietnamese people. It's made of crispy rice, and you can top it with whatever toppings you choose. It is only served with green onion to vegans. Non-vegetarians can top it with shredded pork, which has both a sweet and salty flavor. It's also available with crispy pork skin. It is an excellent after-school option for students. "],
        
    ]

    //A state variable to keep track of the index of the current flashcard
    @State var currentIndex = 0
    
    // To keep track of the flipped state of the card
    @State var isFlipped = false
    
    var body: some View {
            VStack {
                
                ZStack {
                    //Front card displays the image
                    FrontCardView(imageName: foodCards[currentIndex]["imageName"]!)
                        .opacity(isFlipped ? 0 : 1)
                        .rotation3DEffect(.degrees(isFlipped ? 180 : 0), axis: (x: 0, y : 1, z : 0))
                    
                    // Back card displays the name and description
                    BackCardView(name: foodCards[currentIndex]["name"]!, description: foodCards[currentIndex]["description"]!)
                        .opacity(isFlipped ? 1 : 0)
                        .rotation3DEffect(.degrees(isFlipped ? 0 : 180), axis: (x: 0, y : 1, z : 0))
                }
                .onTapGesture {
                    withAnimation(.easeInOut(duration: 0.5)) {
                        isFlipped.toggle()
                    }
                }
            }
            
            HStack {
                Button(action: {
                    if currentIndex > 0 {
                        currentIndex -= 1
                        isFlipped = false //the card go back to original state when the users go to next card
                    }
                }) {
                    Text("< Previous")
                        .font(.system(size: 30))
                        .background(.red)
                        .foregroundColor(.white)
                        .padding(20)
                    
                }
                .disabled(currentIndex == 0)
                
                Spacer()
                
                Button(action:  {
                    if currentIndex < foodCards.count - 1 {
                        currentIndex += 1
                        isFlipped = false
                    }
                }) {
                    Text("Next >")
                        .font(.system(size: 30))
                        .background(.red)
                        .foregroundColor(.white)
                        .padding(20)
                }
                .disabled(currentIndex == foodCards.count - 1)
            }
            .padding()
    }
}

struct FlashCardView_Previews: PreviewProvider {
    static var previews: some View {
        FlashCardView()
    }
}




