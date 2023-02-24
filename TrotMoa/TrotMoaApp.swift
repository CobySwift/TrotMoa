//
//  TrotMoaApp.swift
//  TrotMoa
//
//  Created by COBY_PRO on 2023/02/24.
//

import SwiftUI

@main
struct TrotMoaApp: App {
    @StateObject private var vm = MusicViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(vm)
        }
    }
}
