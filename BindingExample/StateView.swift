//
//  StateView.swift
//  BindingExample
//
//  Created by cano on 2023/10/18.
//

import SwiftUI

struct StateView: View {
    @State private var name = "John"
    
    var body: some View {
        Text("Name: \(name)")
        Button("Change Name") {
            name = "Alice"
        }
    }
}

#Preview {
    StateView()
}
