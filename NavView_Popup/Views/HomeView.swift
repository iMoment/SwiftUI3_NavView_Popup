//
//  HomeView.swift
//  NavView_Popup
//
//  Created by Stanley Pan on 2022/01/17.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        
        NavigationView {
            Button(action: { }, label: {
                Text("Show Popup")
            })
            .navigationTitle("Custom Popup")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
