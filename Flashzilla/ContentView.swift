//
//  ContentView.swift
//  Flashzilla
//
//  Created by artembolotov on 08.04.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var count = 0
    
    let timer = Timer.publish(every: 1.0, on: .main, in: .common).autoconnect()
    
    var body: some View {
        Text("Hello world")
            .onReceive(timer) { time in
                if count == 5 {
                    timer.upstream.connect().cancel()
                } else {
                    print("The time is now: \(time)")
                }
                count += 1
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
