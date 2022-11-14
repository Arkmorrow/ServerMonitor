//
//  ContentView.swift
//  ServerMonitor
//
//  Created by Xiangwen Zheng on 15/11/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            Group{
                SideBarView()
            }
            
            Text("Dashboard")
        }.listStyle(SidebarListStyle()).navigationTitle("test")
            .toolbar {
                ToolbarItem(placement: .navigation) {
                    Button(action: toggleSidebar, label: { // 1
                        Image(systemName: "sidebar.leading")
                    })
                }
            }
    }
}

private func toggleSidebar() { // 2
        #if os(iOS)
        #else
        NSApp.keyWindow?.firstResponder?.tryToPerform(#selector(NSSplitViewController.toggleSidebar(_:)), with: nil)
        #endif
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
