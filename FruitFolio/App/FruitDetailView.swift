//
//  FruitDetailView.swift
//  FruitFolio
//
//  Created by Sravanthi Chinthireddy on 22/01/24.
//

import SwiftUI

struct FruitDetailView: View {
//MARK: LayoutProperties
    
    var fruit: Fruit
    var width = UIScreen.main.bounds.width
    
//    MARK: BOdy
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20, content: {
                    FruitHeaderView(fruit: fruit)
                    
                    VStack (alignment: .leading, spacing: 20, content: {
//                        Title
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundStyle(fruit.gradientColors[1])
//                        Headline
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
//                        Nutitions
                        FruitNutritionView(fruit: fruit)
                        
//                        Subheadline
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundStyle(fruit.gradientColors[1])
                        
//                        Description
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
//                        Link
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                    })
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                }) //: VStack
                .navigationBarTitle(fruit.title,
                                    displayMode: .inline)
                .navigationBarHidden(true)
            }
            .edgesIgnoringSafeArea(.top)
        }//: NavigationView
    }
}

#Preview {
    FruitDetailView(fruit: fruitsData[0])
}
