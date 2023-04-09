//
//  ContentView.swift
//  Flashzilla
//
//  Created by artembolotov on 08.04.2023.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.scenePhase) var scenePhase
    
    var body: some View {
        Text("Hello world")
            .onChange(of: scenePhase) { newPhase in
                switch newPhase {
                case .active:
                    print("Active")
                case .inactive:
                    print("Inactive")
                case.background:
                    print("Background")
                @unknown default:
                    fatalError()
                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
