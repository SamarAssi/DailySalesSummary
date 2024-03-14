//
//  IndicatorsView.swift
//  DailySalesSummary
//
//  Created by Samar Assi on 14/03/2024.
//

import SwiftUI

struct IndicatorsView: View {
    @Binding var currentPage: Int
    
    var body: some View {
        HStack(spacing: 10) {
            ForEach(0..<2, id: \.self) { index in
                Circle()
                    .fill(index == currentPage ? Color("tungsten") : Color.gray)
                    .frame(width: 8, height: 8)
            }
        }
        .padding(.horizontal, 20)
    }
}

#Preview {
    IndicatorsView(currentPage: .constant(0))
}
