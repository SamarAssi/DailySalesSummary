//
//  CardView.swift
//  DailySalesSummary
//
//  Created by Samar Assi on 14/03/2024.
//

import SwiftUI

struct CardView: View {
    
    var body: some View {
        VStack(spacing: 15) {
            headerView
            summaryData
        }
    }
}

extension CardView {
    var lineView: some View {
        Rectangle()
            .frame(width: 50,height: 2)
            .foregroundStyle(Color.secondary)
    }
    
    var headerView: some View {
        VStack(spacing: 15) {
            HStack {
                lineView
                Text("DAILY SALES SUMMARY")
                    .fontWeight(.bold)
                    .foregroundStyle(Color("tungsten"))
                    .font(.system(size: 20))
                lineView
            }
            Text("A Look at Yesterday")
                .foregroundStyle(Color.gray)
                .fontWeight(.bold)
                .font(.system(size: 15))
        }
    }
    
    var summaryData: some View {
        HStack {
            VStack(alignment: .leading, spacing: 20) {
                DataView(
                    icon: Image(systemName: "checkmark.circle"),
                    title: Text("Total Sales"),
                    sales:  Text("$1,688.4"),
                    color: Color.green
                )
                
                DataView(
                    icon: Image(systemName: "x.circle"),
                    title: Text("Labor"),
                    sales:  Text("73.00%"),
                    color: Color.red
                )
            }
            
            Spacer()
            
            VStack(alignment: .leading, spacing: 20) {
                DataView(
                    icon: Image(systemName: "checkmark.circle"),
                    title: Text("Over / short"),
                    sales:  Text("$0"),
                    color: Color.green
                )
                
                DataView(
                    icon: Image(systemName: "checkmark.circle"),
                    title: Text("SPLH"),
                    sales:  Text("$20.1"),
                    color: Color.green
                )
            }
        }
        .padding(.horizontal, 45)
    }
}

#Preview {
    CardView()
}
