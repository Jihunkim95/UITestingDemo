//
//  UITestingDemoApp.swift
//  UITestingDemo
//
//  Created by 김지훈 on 2023/12/18.
//

import SwiftUI

@main
struct UITestingDemoApp: App {
    var userVM = UserViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(userVM)
        }
    }
}
