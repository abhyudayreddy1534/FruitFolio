//
//  FruitRowView.swift
//  FruitFolio
//
//  Created by Sravanthi Chinthireddy on 22/01/24.
//

import SwiftUI

struct FruitRowView: View {
//    MARK: Properties
    var fruit: Fruit
    
//    MARK: Body
    
    var body: some View {
        HStack(spacing: 8) {
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: .black.opacity(0.2), radius: 3, x: 2, y: 2)
                .background(LinearGradient(colors: fruit.gradientColors,
                                           startPoint: .top,
                                           endPoint: .bottom))
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            VStack(alignment: .leading, spacing: 5, content: {
                Text(fruit.title)
                    .font(.title2)
                    .fontWeight(.bold)
                
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundStyle(.secondary)
            })
            
            
            
        }
        .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}

#Preview {
    FruitRowView(fruit: fruitsData[0])
        .previewLayout(.sizeThatFits)
        .padding(/*@START_MENU_TOKEN@*/EdgeInsets()/*@END_MENU_TOKEN@*/)
}
