//
//  VoiceOverExample.swift
//  AccessibilityApp
//
//  Created by Dave Spina on 1/24/21.
//

import SwiftUI

struct VoiceOverExample: View {
    let pictures = [
            "ales-krivec-15949",
            "galina-n-189483",
            "kevin-horstmann-141705",
            "nicolas-tissot-335096"
        ]
    
    let labels = [ "Tulips",
                   "Frozen tree buds",
                   "Sunflowers",
                   "Fireworks"
    ]
    
    @State private var selectedPicture = Int.random(in: 0...3)
    
    var body: some View {
        Image(pictures[selectedPicture])
            .resizable()
            .scaledToFit()
            .accessibility(label: Text(labels[selectedPicture]))
            .accessibilityAddTraits(.isButton)
            .accessibilityRemoveTraits(.isImage)
            .onTapGesture {
                self.selectedPicture = Int.random(in: 0...3)
            }
    }
}

struct VoiceOverExample_Previews: PreviewProvider {
    static var previews: some View {
        VoiceOverExample()
    }
}
