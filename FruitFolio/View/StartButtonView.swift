//
//  StartButtonView.swift
//  FruitFolio
//
//  Created by Sravanthi Chinthireddy on 22/01/24.
//

import SwiftUI

struct StartButtonView: View {
//    MARK: Properties
    @AppStorage("isOnboarding") var isOnboarding : Bool?
//    MARK: Body
    var body: some View {
        Button {
            isOnboarding = false
            print("Action here fro start")
        } label: {
            HStack(spacing: 8) {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)

            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(Color.white, lineWidth: 1.25)
            )
            
        }//: BUTTON
        .accentColor(.white)

    }
}

#Preview {
    StartButtonView()
        .preferredColorScheme(.dark)
        .previewLayout(.sizeThatFits)
}
