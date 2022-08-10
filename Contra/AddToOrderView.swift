//
//  AddToOrder.swift
//  Contra
//
//  Created by Lucas Gaudet on 2022-08-01.
//

import SwiftUI

struct AddToOrderView: View {
    
    @State var quantity = 1
    @State var maxQuantity = [0, 10]
    
    var body: some View {
        VStack {
            Image("kuyalatte")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 350, alignment: .leading)
                .cornerRadius(10)
            Text("Kuya Latte")
                .font(.system(.largeTitle, design: .default))
                .fontWeight(.semibold)
                .foregroundColor(Color.black)
                .multilineTextAlignment(.leading)
                .frame(maxWidth: 350, maxHeight: 10.0, alignment: .leading)
                .padding()
            Text("Ube coconut oat milk latte")
                .foregroundColor(.secondary)
                .frame(maxWidth: 350, maxHeight: 10.0, alignment: .leading)
            Stepper(value: $quantity, in: 0...10) {
                Text("Quantity: " + String(quantity))
                    .padding(8)
//                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.5), lineWidth: 1))
            }
                .frame(maxWidth: 350, maxHeight: 10.0, alignment: .leading)
                .padding([.top, .bottom], 30)
//            Text("bruh")
//                .font(.system(.largeTitle, design: .default))
//                .fontWeight(.semibold)
//                .foregroundColor(Color.black)
//                .multilineTextAlignment(.leading)
//                .padding()
//                .overlay(RoundedRectangle(cornerRadius: 10, color: Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.5)))
            TextField("notes", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                .padding()
                .frame(width: 350, height: 80, alignment: .leading)
                    .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.5), lineWidth: 1))
                    .padding(.bottom, 15)
            Button("Add to order".uppercased(), role: .cancel) {
                
            }
            .frame(width: 350, height: 40)
                .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.5), lineWidth: 1))

        }
        
    }
}

struct AddToOrder_Previews: PreviewProvider {
    static var previews: some View {
        AddToOrderView()
    }
}
