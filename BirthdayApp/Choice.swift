//
//  Choice.swift
//  BirthdayApp
//
//  Created by Rafael Videira on 12/10/2023.
//

import SwiftUI

struct Choice: View {
    var body: some View {
        
        let gradientSpiderman = Gradient(colors: [.blue, .red])
        let gradientBarbie = Gradient(colors: [.barbie, .white])
        let angularGradient = AngularGradient(gradient: gradientSpiderman, center: .bottomTrailing, angle: .degrees(0))
        
        VStack (spacing: 0) {
            ZStack{
                    Rectangle()
                    .fill(gradientSpiderman)
                NavigationLink(destination: NolanBT(age: "3")) {
                    Text("Nolan")
                            .bold()
                            .foregroundStyle(.white)
                        .font(.title)
                }
            }
            .onTapGesture {
                print("NOLANN")
            }
            ZStack{
                    Rectangle()
                    .fill(gradientBarbie)
                    Text("Léna")
                        .bold()
                        .foregroundStyle(.white)
                        .font(.title)
            }
            .onTapGesture {
                print("LENAA")
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    Choice()
}
