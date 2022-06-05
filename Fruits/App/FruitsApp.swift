//
//  FruitsApp.swift
//  Fruits
//
//  Created by Zach Cervi on 6/5/22.
//

import SwiftUI

@main
struct FruitsApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding{
                OnboardingView()
            } else {
                ContentView()
            }
            
        }
    }
}
