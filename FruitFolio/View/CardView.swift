//
//  CardView.swift
//  FruitFolio
//
//  Created by Sravanthi Chinthireddy on 22/01/24.
//

import SwiftUI

struct CardView: View {
//    MARK: Properties
    @State private var isAnimating: Bool = false
    
    var fruit: Fruit
    
//    MARK: Body
    
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
    //            Fruit image
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: .black.opacity(0.15), radius: 8, x: 5, y:5)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
    //            Fruit card title
                Text(fruit.title)
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity((0.15)), radius: 2, x: 2, y: 2)
                
    //            Fruit headline
                Text(fruit.headline)
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                
    //            Fruit custom buttom
                StartButtonView()
            }//: VStack
        }//: ZStackfru
        .onAppear(perform: {
            withAnimation(.easeInOut(duration: 0.5)) {
                isAnimating = true
            }
        })
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(.linearGradient(colors: fruit.gradientColors,
                                    startPoint: .top,
                                    endPoint: .bottom))
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .padding(.horizontal, 20)
        
    }
}
//    MARK: Preview

#Preview {
    CardView(fruit: fruitsData[1])
        .previewLayout(.fixed(width: 320, height: 640))
}
