//
//  ContentView.swift
//  TrotMoa
//
//  Created by COBY_PRO on 2023/02/24.
//

import SwiftUI

import SlidingTabView

struct ContentView: View {
    @State private var selectedTabIndex = 0
    
    var body: some View {
        VStack(alignment: .leading) {
            SlidingTabView(selection: self.$selectedTabIndex,
                           tabs: ["가수", "인기", "보관함"],
                           animation: .easeInOut,
                           activeAccentColor: .green,
                           selectionBarColor: .green)
            Spacer()
            if selectedTabIndex == 0 {
                SingerView()
                    .navigationBarHidden(true)
            } else if selectedTabIndex == 1 {
                PopularView()
            } else if selectedTabIndex == 2 {
                StoreView()
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
