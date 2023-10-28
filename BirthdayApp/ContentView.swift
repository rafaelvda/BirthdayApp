//
//  ContentView.swift
//  BirthdayApp
//
//  Created by Rafael Videira on 10/10/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var age: String = ""
    
    var body: some View {
        NavigationView {
            VStack (alignment: .center, spacing: 20) {
                Text("HAPPY BIRTHDAY 🎂")
                    .font(.title)
                    .bold()
                    .shadow(radius: 10)
                
                Spacer()
                                
                Text("Combien cette année ?")
                    .font(.title)
                
                HStack {
                    Image(systemName: "person")
                    TextField("Entrez son age", text: $age)
                }
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.numberPad)
                    .padding()
                
                HStack(spacing: 30) {
                    NavigationLink(destination: LenaBT(age: age)) {
                        Text("Léna")
                            .padding()
                            .foregroundStyle(.white)
                            .bold()
                            .background(RoundedRectangle(cornerRadius: 16)
                                .shadow(radius: 10))
                    }
                    .tint(.barbie)
                    NavigationLink(destination: NolanBT(age: age)) {
                        Text("Nolan")
                            .padding()
                            .foregroundStyle(.white)
                            .bold()
                            .background(RoundedRectangle(cornerRadius: 16)
                                .shadow(radius: 10))
                    }
                    .tint(.blue)
                }
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView(age: "")
}
