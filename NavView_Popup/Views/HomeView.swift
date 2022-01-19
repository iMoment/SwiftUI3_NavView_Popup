//
//  HomeView.swift
//  NavView_Popup
//
//  Created by Stanley Pan on 2022/01/17.
//

import SwiftUI

struct HomeView: View {
    @State var showPopup: Bool = false
    
    var body: some View {
        
        NavigationView {
            Button(action: {
                withAnimation {
                    showPopup.toggle()
                }
            }, label: {
                Text("Show Popup")
            })
            .navigationTitle("Custom Popup")
            .popupNavigationView(show: $showPopup) {
                List {
                    ForEach(tasks) { task in
                        NavigationLink(task.taskTitle) {
                            Text(task.taskDescription)
                                .navigationTitle("Destination")
                        }
                    }
                }
                .navigationTitle("Popup Navigation")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "plus")
                        })
                    }
                    
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button(action: {
                            withAnimation {
                                showPopup.toggle()
                            }
                        }, label: {
                            Text("Close")
                        })
                    }
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
