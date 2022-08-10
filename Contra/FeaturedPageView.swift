//
//  FeaturedPage.swift
//  Contra
//
//  Created by Lucas Gaudet on 2022-08-01.
//

import SwiftUI

struct FeaturedPageView: View {
    var body: some View {
        ScrollView {
            VStack() {
                HStack{
                    Text("Featured")
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
                DotDCardView()
                    
                Spacer()
            }
        }
    }
}

struct FeaturedPage_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedPageView()
    }
}
