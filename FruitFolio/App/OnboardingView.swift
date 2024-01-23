//
//  OnboardingView.swift
//  FruitFolio
//
//  Created by Sravanthi Chinthireddy on 22/01/24.
//

import SwiftUI

struct OnboardingView: View {
//    MARK: Properties
    
    var fruits: [Fruit] = fruitsData
//    MARK: Body
    var body: some View {
        TabView {
            ForEach(fruits[0...5]) { item in
                CardView(fruit: item)
            }//: Foreach Loop
        }//: Tab
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
        
    }
}

#Preview {
    OnboardingView(fruits: fruitsData)
}
