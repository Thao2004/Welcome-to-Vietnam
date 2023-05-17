//
//  FoodCard.swift
//  Welcome to Vietnam
//
//  Created by Thao Nguyen on 4/12/23.
//

import SwiftUI

//Front Card View
struct FrontCardView: View {
    var imageName: String

    var body: some View {
        ZStack {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(10)
                .padding(.horizontal, 10)
        }
        .frame(width: 600, height: 800)
        .background(Color("background_color"))
        .cornerRadius(20)
        .shadow(radius: 10)
    }
}

//Back Card View
struct BackCardView: View {
    var name: String
    var description: String

    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color("background_color"))
                .cornerRadius(10)
                .shadow(radius: 5)
            VStack {
                Text(name)
                    .fontWeight(.bold)
                    .font(.system(size: 50))
                Text(description)
                    .font(.system(size: 25))
                    .multilineTextAlignment(.center)
                    .padding()
            }
        }
        .frame(width: 600, height: 800)
    }
}

