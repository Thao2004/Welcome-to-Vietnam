//
//  FoodIntro.swift
//  Welcome to Vietnam
//
//  Created by Thao Nguyen on 4/12/23.
//

import SwiftUI

struct FoodIntro: View {
    var body: some View {
        ZStack{
            Color("background_color")
                .edgesIgnoringSafeArea(.all)
            VStack{
                Group{
                    Text("After visiting numerous locations in Vietnam. You're probably hungry and want to try all of the wonderful dishes here, right? If you have traveled to Vietnam and have not experienced the food here, it is a missed opportunity and an incomplete experience. How is this possible? I'm hoping it's not you. In case you do not know which food you should try when traveling to Vietnam, I will give you some recommendations in just a second.")
                        .padding(.bottom, 20)
                        .font(.system(size: 25))
                }
                Group{
                    Text("Allow me to introduce you to some of Vietnam's most popular meals. These are the foods that many Vietnamese people enjoy and eat regularly. I believe that using flashcards makes it easier for people to recall traditional foods. Therefore, I prepare ten flashcards for you to learn about Vietnamese traditional cuisines.")
                        .padding(.bottom, 50)
                        .font(.system(size: 25))
                }
                NavigationLink(destination: FlashCardView()) {
                    Text("Food Explore")
                        .foregroundColor(.white)
                        .font(.system(size: 30))
                        .padding(30)
                        .background(.yellow)
                }
            }
            .padding(50)
        }
    }
}


struct FoodIntro_Previews: PreviewProvider {
   static var previews: some View {
       FoodIntro()
   }
}
