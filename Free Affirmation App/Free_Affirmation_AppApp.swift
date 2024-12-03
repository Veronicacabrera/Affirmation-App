//
//  Free_Affirmation_AppApp.swift
//  Free Affirmation App
//
//  Created by VLol on 10/25/24.
//

/*
 is the standard file format for the main entry point of the app
 */

import SwiftUI

@main
struct Free_Affirmation_AppApp: App {
    var body: some Scene {
        /*
         A WindowGroup creates a container for the main window of your app. If your app supports multiple windows (such as on macOS or iPadOS), WindowGroup manages them. For a single-window app (like on iOS), it simply manages the main screen.
         */
        //DONT TOUCH WINDOWGROUP
        WindowGroup {
            ContentView()
            
            /*
             ContentView() is the initial view displayed when the app launches. It’s specified here to tell SwiftUI to load ContentView inside the WindowGroup when the app starts.
             */
        }
    }
}
