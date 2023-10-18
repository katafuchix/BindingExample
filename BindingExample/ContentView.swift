//
//  ContentView.swift
//  BindingExample
//
//  Created by cano on 2023/10/18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            NavigationStack {
                List {
                    Section(header: Text("Example")) {
                        Group {
                            NavigationLink("State", destination: StateView())
                            NavigationLink("Binding", destination: BindingView())
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
