//
//  ReadingControlValuesView.swift
//  AccessibilityApp
//
//  Created by Dave Spina on 1/24/21.
//

import SwiftUI

struct ReadingControlValuesView: View {
    @State private var estimateValue = 25.0

    var body: some View {
        VStack {
            Slider(value: $estimateValue, in: 0...50)
            .padding()
            .accessibilityValue(Text("\(Int(estimateValue))"))
        
            Text("\(estimateValue)")
                .accessibility(hidden: true)
        }
    }
}

struct ReadingControlValuesView_Previews: PreviewProvider {
    static var previews: some View {
        ReadingControlValuesView()
    }
}
