//
//  NolanBT.swift
//  BirthdayApp
//
//  Created by Rafael Videira on 11/10/2023.
//

import SwiftUI

struct NolanBT: View {
    @State var age: String = ""
    
    var body: some View {
        let gradientColors = Gradient(colors: [Color.blue, Color.red])
        
        return ZStack {
            LinearGradient(gradient: gradientColors, startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack {
                Image("spiderman")
                    .resizable()
                    .scaledToFit()
                Text("Joyeux anniversaire")
                    .font(.system(size: 30, design: .rounded))
                    .fontWeight(.black)
                    .foregroundStyle(.white)
                    .shadow(color: .black, radius: 6)
                Text("Nolan")
                    .fontWeight(.black)
                    .font(.system(size: 80, design: .rounded))
                    .foregroundStyle(.white)
                    .shadow(color: .black, radius: 6)
                Spacer()
                Text(age + " ANS")
                    .font(.system(size: 60, design: .rounded))
                    .fontWeight(.black)
                    .foregroundStyle(.white)
                    .shadow(color: .black, radius: 6)
                Spacer()            }
        }
    }
}

#Preview {
    NolanBT()
}
