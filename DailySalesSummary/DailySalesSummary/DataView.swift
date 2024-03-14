//
//  DataView.swift
//  DailySalesSummary
//
//  Created by Samar Assi on 14/03/2024.
//

import SwiftUI

struct DataView: View {
    @State var icon: Image
    @State var title: Text
    @State var sales: Text
    @State var color: Color
    
    var body: some View {
        HStack {
            icon.foregroundStyle(color)
            
            VStack(alignment: .leading) {
                title
                    .foregroundStyle(Color.gray)
                    .font(.system(size: 15))
                sales
                    .lineLimit(1)
                    .truncationMode(.tail)
                    .foregroundStyle(Color("tungsten"))
            }
        }
    }
}

#Preview {
    DataView(
        icon: Image(systemName: "checkmark.circle"),
        title: Text("Total Sales"),
        sales: Text("$1,688.4"),
        color: Color.green
    )
}
