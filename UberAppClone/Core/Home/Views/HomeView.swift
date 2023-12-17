//
//  HomeView.swift
//  UberAppClone
//
//  Created by Yağız Hitit on 6.12.2023.
//

import SwiftUI

struct HomeView: View {
    @State private var mapState = MapViewState.noInput
    
    var body: some View {
        ZStack(alignment: .bottom) {
            ZStack(alignment: .top) {
                UberMapViewRepresentable(mapState: $mapState)
                    .ignoresSafeArea()
                
                if mapState == .searchingForLocation{
                    LocationSearchView(mapState: $mapState)
                } else if mapState == .noInput{
                    LocationSearchActivationView()
                        .padding(.top, 72)
                        .onTapGesture(perform: {
                            withAnimation(.spring()){
                                mapState = .searchingForLocation
                            }
                        })
                }
                
                MapViewActionButton(mapState: $mapState)
                    .padding(.leading)
                    .padding(.top, 4)
            }
            
            if mapState == .locationSelected{
                RideRequestView()
                    .transition(.move(edge: .bottom))
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

#Preview {
    HomeView()
}
