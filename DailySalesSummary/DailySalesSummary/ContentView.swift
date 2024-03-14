//
//  ContentView.swift
//  DailySalesSummary
//
//  Created by Samar Assi on 14/03/2024.
//

import SwiftUI

struct ContentView: View {
    @State var selectedView: Int = 0
    var body: some View {
        TabView(selection: $selectedView) {
            CardView()
                .tag(0)
            EmptyView()
                .tag(1)
        }
        .frame(height: 250)
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        .overlay(IndicatorsView(currentPage: $selectedView), alignment: .bottom)
    }
}


#Preview {
    ContentView()
}
