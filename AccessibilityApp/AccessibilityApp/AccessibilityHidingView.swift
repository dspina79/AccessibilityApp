//
//  AccessibilityHidingView.swift
//  AccessibilityApp
//
//  Created by Dave Spina on 1/24/21.
//

import SwiftUI

struct AccessibilityHidingView: View {
    var body: some View {
        VStack {
            Image(decorative: "nicolas-tissot-335096")
                .padding()
                .scaledToFit()
                .accessibility(hidden: true)
            
            VStack {
                Text("Your score is")
                Text("1000")
                    .font(.title)
            }
            //.accessibilityElement(children: .combine) - this will read the children as one but will have a pause the better method is:
            .accessibilityElement(children: /*@START_MENU_TOKEN@*/.ignore/*@END_MENU_TOKEN@*/)
            .accessibility(label: Text("Your score is 1000."))
        }
    }
}

struct AccessibilityHidingView_Previews: PreviewProvider {
    static var previews: some View {
        AccessibilityHidingView()
    }
}
