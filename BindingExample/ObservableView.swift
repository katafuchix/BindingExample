//
//  ObservableView.swift
//  BindingExample
//
//  Created by cano on 2023/10/18.
//

import SwiftUI

/*
 // 古い書き方
 class MyModel: ObservableObject {
     @Published var text = "Hello, world!"

     var name = "liaoworking."
 }
 */

// iOS17 以降はこう書ける
@Observable class MyModel {
    var text = "Hello, world!"
    
    // プロパティの観察を無視
    @ObservationIgnored var name = "liaoworking."
}


struct ObservableView: View {
    @State private var model = MyModel()
    
    var body: some View {
        Text(model.text)
        Button("Change Model") {
            model.text = "Hello, SwiftUI!"
        }
    }
}

#Preview {
    ObservableView()
}
