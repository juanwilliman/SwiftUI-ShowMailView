//
//  SettingsViewModel.swift
//  BugReporter
//
//  Created by Juan Williman on 10/8/22.
//

import SwiftUI
import MessageUI

// MARK: - Settings View Model

class SettingsViewModel: ObservableObject {
    
    // MARK: - Mail
    
    @Published var isShowingMailView = false
    @Published var result: Result<MFMailComposeResult, Error>? = nil
    
    func toggleMail() {
        self.isShowingMailView.toggle()
    }
    
}
