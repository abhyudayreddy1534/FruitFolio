//
//  ContentView.swift
//  FruitFolio
//
//  Created by Sravanthi Chinthireddy on 22/01/24.
//

import SwiftUI

struct ContentView: View {
//    MARK: Properties
    var fruits: [Fruit] = fruitsData
    
//    MARK: Body
    var body: some View {
        NavigationView(content: {
            List {
                ForEach(fruits.shuffled()) { fruit in
                    NavigationLink(destination: FruitDetailView(fruit: fruit)) {
                        FruitRowView(fruit: fruit)
                            .padding(.vertical, 4)
                    }
                    
                }
            }
            .navigationTitle("FruitFolio")
        })
    }
}

#Preview {
    ContentView(fruits: fruitsData)
    
}
