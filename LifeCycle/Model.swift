//
//  Model.swift
//  LifeCycle
//
//  Created by 柿崎逸 on 2023/03/22.
//

import Foundation
import SimpleToast

class ToastModel: ObservableObject {
    @Published var showToast = false
    @Published var textToast = ""
    @Published var toastOptions = SimpleToastOptions(
        alignment: .bottom,
        hideAfter: 5
    )
}
