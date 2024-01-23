//
//  SourceLinkView.swift
//  FruitFolio
//
//  Created by Sravanthi Chinthireddy on 22/01/24.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox {
            HStack {
                Text("Content Source")
                Spacer()
                Link(destination: URL(string: "https://wikipedia.com")!,
                     label: {
                    Text("Wikipedia")
                    Image(systemName: "arrow.up.right.square")
                })
                .font(.footnote)
            }
        }
    }
}

#Preview {
    SourceLinkView()
        .previewLayout(.sizeThatFits)
        .padding()
}
