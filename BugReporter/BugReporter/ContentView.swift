//
//  ContentView.swift
//  BugReporter
//
//  Created by Juan Williman on 10/8/22.
//

import SwiftUI

// MARK: - Content View

struct ContentView: View {
    
    // MARK: - Variables
    
    @StateObject var settingsViewModel = SettingsViewModel()
    
    // MARK: - Body
    
    var body: some View {
        Button("Report Bug") {
            settingsViewModel.toggleMail()
        }
        .sheet(isPresented: $settingsViewModel.isShowingMailView) {
            MailView(result: $settingsViewModel.result).ignoresSafeArea()
        }
    }
}

// MARK: - Preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
