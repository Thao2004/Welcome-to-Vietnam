//
//  HomeView.swift
//  Welcome to Vietnam
//
//  Created by Thao Nguyen on 4/12/23.
//

import SwiftUI
import AVFoundation

struct HomeView: View {
    
    var body: some View {
        ZStack {
            Color("background_color")
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Welcome to")
                    .font(.system(size: 100, weight: .semibold))
                    .italic()
                    .padding()
                Text("Vietnam 🇻🇳")
                    .font(.system(size: 75))
                    .font(.headline).bold()
                    .padding()
                HStack(spacing: 40) {
                    NavigationLink(destination: VisitIntro()) {
                        Text("Let's Visit")
                            .padding(15)
                            .font(.system(size:30, weight: .semibold))
                            .background(.red)
                            .foregroundColor(.white)
                    }
                    NavigationLink(destination: FoodIntro()) {
                        Text("Food Tour")
                            .padding(15)
                            .font(.system(size: 30, weight: .semibold))
                            .background(.red)
                            .foregroundColor(.white)
                    }
                }
                .padding(70)
                Image("aodai_cartoon")
                    .resizable()
                    .frame(width: 300, height: 350)
            }
        }
    }
}


struct HomeView_Previews: PreviewProvider {
   static var previews: some View {
       HomeView()
   }
}
