//
//  SecondView.swift
//  LifeCycle
//
//  Created by 柿崎逸 on 2023/03/22.
//

import SwiftUI
import SimpleToast
struct LifeCycleFinishView: View {
    // toastを表示/非表示
    @Binding var showToast: Bool
    // toastに表示する文字を格納
    @Binding var textToast: String
    // toastを宣言
    private let const = Const.init()
    // MARK: - ここからbody
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
    }// body
    // MARK: - ここまでbody
}// view

// MARK: - ここからPreview
struct LifeCycleFinishView_Previews: PreviewProvider {
    static var previews: some View {
        LifeCycleFinishView(showToast: .constant(false), textToast: .constant(""))
    }
}
// MARK: ここまでPreview -
