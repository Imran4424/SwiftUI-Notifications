//
//  BackgroundNotificationView.swift
//  Notifications
//
//  Created by Shah Md Imran Hossain on 5/11/23.
//

import SwiftUI

struct BackgroundNotificationView: View {
    @Environment(\.scenePhase) var scenePhase
    
    var body: some View {
        Text("Hello, World!")
            .padding()
            .onChange(of: scenePhase) { oldValue, newValue in
                if newValue == .active {
                    print("active")
                } else if newValue == .inactive {
                    print("inactive")
                } else if newValue == .background {
                    print("Background")
                }
            }
    }
}

#Preview {
    BackgroundNotificationView()
}
