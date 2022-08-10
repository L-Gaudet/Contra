//
//  MenuPage.swift
//  Contra
//
//  Created by Lucas Gaudet on 2022-08-01.
//

import SwiftUI

struct MenuPageView: View {
    var body: some View {
        ScrollView {
            VStack() {
                HStack{
                    Text("Menu")
                        .font(.system(.largeTitle, design: .default))
                        .fontWeight(.semibold)
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.leading)
                        .frame(maxWidth: 350, maxHeight: 5.0, alignment: .leading)
                        .padding()
//                    Spacer()
                    Image("contralogo")
                        .resizable()
                        .frame(width: 150, height: 150, alignment: .leading)
//                        .aspectRatio(contentMode: .fit)
                }
                .frame(maxWidth: .infinity, maxHeight: 5.0, alignment: .leading)
                .padding([.top, .bottom])
                VStack {
                    Text("Specials")
    //                        .font(.headline)
                        .font(.system(.title, design: .default))
                        .fontWeight(.semibold)
                        .foregroundColor(Color.black)
                        .frame(maxWidth: 350, maxHeight: 5.0, alignment: .leading)
                        .padding()
                    MenuCardView()
                    MenuCardView()
                    MenuCardView()
                }
                VStack {
                    Text("Coffee")
    //                        .font(.headline)
                        .font(.system(.title, design: .default))
                        .fontWeight(.semibold)
                        .foregroundColor(Color.black)
                        .frame(maxWidth: 350, maxHeight: 5.0, alignment: .leading)
                        .padding()
                    MenuCardView()
                    MenuCardView()
                    MenuCardView()
                }
//                Spacer()
            }
        }
    }
}

struct MenuPage_Previews: PreviewProvider {
    static var previews: some View {
        MenuPageView()
    }
}
