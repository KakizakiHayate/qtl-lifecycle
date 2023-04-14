//
//  SecondView.swift
//  LifeCycle
//
//  Created by 柿崎逸 on 2023/03/22.
//

import SwiftUI
import SimpleToast
struct SecondView: View {
    @Binding var showToast: Bool
    @Binding var textToast: String
    
    var toastOptions = SimpleToastOptions(
        alignment: .bottom,
        hideAfter: 5
    )
    
    
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }.onAppear {
            
//            showToast = true
        }
        .onDisappear {
//            showToast.toggle()
        }
        .simpleToast(isPresented: $showToast, options: toastOptions) {
            HStack {
                Image(systemName: "exclamationmark.triangle")
                Text(textToast)

            }
            .padding()
            .background(Color.red.opacity(0.8))
            .foregroundColor(Color.white)
            .cornerRadius(10)
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(showToast: .constant(false), textToast: .constant(""))
    }
}
