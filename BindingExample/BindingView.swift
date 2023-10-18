//
//  BindingView.swift
//  BindingExample
//
//  Created by cano on 2023/10/18.
//
/*
 このサンプルは、@State はビュー内でのみ有効であり、@Binding はビュー間でデータを共有および更新できるという違いを示しています。
 */
import SwiftUI

struct BindingView: View {
    @State private var name = "John"
    
    var body: some View {
        Text("Name: \(name)")
        ChildView(name: $name)
    }
}

struct ChildView: View {
    @Binding var name: String
    
    var body: some View {
        Button("Change Name") {
            name = "Alice"
        }
    }
}

#Preview {
    BindingView()
}
