//
//  CustomCell.swift
//  Shopping List
//
//  Created by Tony Hong on 3/12/22.
//

import SwiftUI

struct CustomCell: View {
    var imageName: String
    var itemName: String
    var quantity: Int
    var body: some View {
        HStack {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 50.0, height: 50.0)
            Text(itemName)
            Spacer()
            HStack {
                Text(String(quantity))
            }
        }
    }
}

