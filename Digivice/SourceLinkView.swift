//
//  SourceLinkView.swift
//  Digivice
//
//  Created by Deraldo Alves de Almeida Neto on 11/02/22.
//

import SwiftUI

struct SourceLinkView: View {
    //MARK: PROPERTIES
    
    //MARK: BODY
    var body: some View {
        GroupBox() {
            HStack {
                Text("Fonte")
                Spacer()
                Link("Wikimon", destination: URL(string:"https://google.com")!)
                Image(systemName: "arrow.up.right.square")
            }
        }
    }
}

//MARK: PREVIEW
struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
