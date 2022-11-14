//
//  SwiftUIView.swift
//  ServerMonitor
//
//  Created by Xiangwen Zheng on 15/11/2022.
//

import SwiftUI

struct SideBarView: View {
    var body: some View {
        Group {
            sidebar
        }
    }
    
    var sidebar: some View {
        List{
            Group {
                Label("Dashboard",systemImage: "square.stack.3d.down.right.fill")
            }
        }}
}

struct SideBarView_Previews: PreviewProvider {
    static var previews: some View {
        SideBarView()
            .previewLayout(.fixed(width: 1024, height: 768))
    }
}
