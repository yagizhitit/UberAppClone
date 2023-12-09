//
//  MapViewActionButton.swift
//  UberAppClone
//
//  Created by Yağız Hitit on 9.12.2023.
//

import SwiftUI

struct MapViewActionButton: View {
    var body: some View {
        Button{
            
        } label: {
            Image(systemName: "line.3.horizontal")
                .font(.title2)
                .foregroundColor(.black)
                .padding()
                .background(.white)
                .clipShape(Circle())
                .shadow(color: .black, radius: 6)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    MapViewActionButton()
}
