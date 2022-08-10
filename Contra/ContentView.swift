//
//  ContentView.swift
//  Contra
//
//  Created by Lucas Gaudet on 2022-07-20.
//

import SwiftUI

struct ContentView: View {
    @State var currTab = 0
    var body: some View {
        TabView() {
            FeaturedPageView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Featured")
                }
                .tag(0)
            MenuPageView()
                .tabItem {
                    Image(systemName: "menucard")
                    Text("Menu")
                }
                .tag(1)
            Text("Order Content")
                .tabItem {
                    Image(systemName: "cart")
                    Text("Order")
                }
                .tag(2)
        }
    }
}

// preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}

//struct CardView: View {
//    var body: some View {
//        VStack{
//            Image("kuyalatte2")
////                .cornerRadius(10)
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//            HStack{
////                Spacer()
//                VStack(alignment: .leading){
//                    Text("Drink Of The Day")
//                        .font(.headline)
//                        .foregroundColor(.secondary)
//                    Text("Kuya Latte")
//                        .font(.title)
//                        .fontWeight(.regular)
//                        .foregroundColor(.primary)
//                        .lineLimit(3)
//                }
//                .layoutPriority(100)
//                Spacer()
//                Button("Order here".uppercased()) {}
//                .padding([.top, .horizontal], 0.5)
//            }
//            .padding()
//        }
//        .cornerRadius(10)
//        .overlay(RoundedRectangle(cornerRadius: 10)
//                    .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.5), lineWidth: 1)
//                )
//        .padding([.top, .horizontal])
//    }
//}
