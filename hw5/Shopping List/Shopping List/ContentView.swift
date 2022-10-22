//
//  ContentView.swift
//  Shopping List
//
//  Created by Tony Hong on 3/11/22.
//

import SwiftUI

struct ContentView: View {
    
    var fruits =  [
        Items(imageName: "banana", itemName: "Bananas", quantity: 3),
        Items(imageName: "apple", itemName: "Apple", quantity: 4)
    ]
    
    var proteins =  [
        Items(imageName: "eggs", itemName: "Eggs", quantity: 12),
        Items(imageName: "edamame", itemName: "Edamame", quantity: 1)
    ]
    
    var vegetables =  [
        Items(imageName: "bokchoy", itemName: "Bok Choy", quantity: 5),
        Items(imageName: "broccoli", itemName: "Broccoli", quantity: 2)
    ]
    
    var snacks =  [
        Items(imageName: "calbee", itemName: "Calbee Potato Chips", quantity: 2)
    ]
    
    var body: some View {
        
        NavigationView {
            List {
                Section(header: Text("Fruits")) {
                    ForEach(fruits) { i in
                    CustomCell(imageName: i.imageName, itemName: i.itemName, quantity: i.quantity)
                    }
                }
                Section(header: Text("Vegetables")) {
                    ForEach(vegetables) { i in
                    CustomCell(imageName: i.imageName, itemName: i.itemName, quantity: i.quantity)
                    }
                }
                Section(header: Text("Proteins")) {
                    ForEach(proteins) { i in
                    CustomCell(imageName: i.imageName, itemName: i.itemName, quantity: i.quantity)
                    }
                }
                Section(header: Text("Snacks")) {
                    ForEach(snacks) { i in
                    CustomCell(imageName: i.imageName, itemName: i.itemName, quantity: i.quantity)
                    }
                }
            }.navigationTitle("Shopping List")
        }
    }
}

class Items: Identifiable {
    let imageName: String
    let itemName: String
    let quantity: Int
    init(imageName: String, itemName: String, quantity: Int) {
        self.imageName = imageName
        self.itemName = itemName
        self.quantity = quantity
    }
}
