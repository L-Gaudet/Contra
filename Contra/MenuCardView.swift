//
//  MenuCardView.swift
//  Contra
//
//  Created by Lucas Gaudet on 2022-08-02.
//

import SwiftUI

struct MenuCardView: View {
    
    @State var isPressed = false
    
    var body: some View {
        VStack{
            HStack{
                Image("kuyalatte3")
//                    .cornerRadius(10)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 115,  alignment: .leading)
    //                Spacer()
                VStack(alignment: .leading){
                    Text("Kuya Latte")
                        .font(.title)
                        .fontWeight(.regular)
                        .foregroundColor(.primary)
                        .lineLimit(3)
                    Text("Ube coconut\noat milk latte")
                        .foregroundColor(.secondary)
                }
                .layoutPriority(100)
                Spacer()
                    .frame(width: nil)
                Button(action: {isPressed=true}, label: {
                    Image(systemName: "plus.app")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                })
                    .sheet(isPresented: $isPressed) {
                        AddToOrderView()
                }
                    .padding(.horizontal, 10)
            }
        }
        .cornerRadius(10)
        .overlay(RoundedRectangle(cornerRadius: 10)
                    .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.5), lineWidth: 1)
                )
        .padding(.horizontal)
    }
}

// preview
struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
            MenuCardView()
    }
}
