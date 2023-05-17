//
//  VisitIntro.swift
//  Welcome to Vietnam
//
//  Created by Thao Nguyen on 4/17/23.
//

import SwiftUI
struct VisitIntro: View {
    var body: some View {
        ZStack{
            Color("background_color")
                .edgesIgnoringSafeArea(.all)
            VStack{
                Group{
                    Text("The first thing that attracts many tourists when they first come to a country is the landscapes. The more magnificent the attractions, the more tourists come each year. Vietnam is not an exception. I'll take you through numerous prominent cities in Vietnam and what's great about them so you know where to go when you visit my country 😊😄.")
                        .padding(.bottom, 20)
                        .font(.system(size: 25))
                }
                Group{
                    Text("After you click the button below, you will see the Vietnam map image. There are many city buttons on top of the image. Select any of the buttons. Surprisingly, the beauty of these locations will captivate you. Scroll through the photos and read the descriptions for each location. To learn more about other cities, simply click on their names. You will be visiting that city right immediately.")
                        .padding(.bottom, 50)
                        .font(.system(size: 25))
                }
                NavigationLink(destination: VisitView()) {
                    Text("Travel Time")
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


struct VisitIntro_Previews: PreviewProvider {
   static var previews: some View {
       VisitIntro()
   }
}

