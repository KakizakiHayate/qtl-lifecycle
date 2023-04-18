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
    
    // toastを宣言
    private let const = Const.init()
    
    
    var body: some View {
        VStack {
            Text("画面遷移")
        }
        // toast表示
        .simpleToast(isPresented: $showToast, options: const.toastOptions) {
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
// MARK: - ここからPreview
struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(showToast: .constant(false), textToast: .constant(""))
    }
}
// MARK: ここまでPreview -
