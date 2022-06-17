//
//  OnboardingView.swift
//  Fruits
//
//  Created by user on 7.06.2022.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - PROPERTIES
    var fruits: [Fruit] = fruitsData
    
    // MARK: - BODY
    var body: some View {
        TabView {
            ForEach(fruits[0...5]) { item in
                FruitCardView(fruit: item)
            } // Loop
        } // Tab
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20.0)
    }
}

// MARK: - PREVIEW
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
    }
}
