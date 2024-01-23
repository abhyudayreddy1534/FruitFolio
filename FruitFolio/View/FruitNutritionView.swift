//
//  FruitNutritionView.swift
//  FruitFolio
//
//  Created by Sravanthi Chinthireddy on 22/01/24.
//

import SwiftUI

struct FruitNutritionView: View {
    var fruit: Fruit
    
    let nutrients: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    
    var body: some View {
        GroupBox {
            DisclosureGroup(
                content: {
                    ForEach(0..<nutrients.count, id: \.self) { item in
                        Divider().padding(.vertical, 2)
                        
                        HStack {
                            Group {
                                Image(systemName: "info.circle")
                                Text(nutrients[item])
                            }
                            .foregroundStyle(fruit.gradientColors[1])
                            .font(.system(.body).bold())
                            
                            Spacer(minLength: 25)
                            Text(fruit.nutrition[item])
                                .multilineTextAlignment(.trailing)
                        }
                    }
                },
                label: { 
                    Text("Nutritional value for 100 g")
                    
                }
            )
        }//: Box
    }
}

#Preview {
    FruitNutritionView(fruit: fruitsData[0])
        .padding()
}
