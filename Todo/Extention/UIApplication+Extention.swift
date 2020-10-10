//
//  UIApplication+Extention.swift
//  Todo
//
//  Created by 村澤祐樹 on 2020/10/10.
//  Copyright © 2020 niki. All rights reserved.
//

import SwiftUI

extension UIApplication  {
    func  closeKeyboard() {
        sendAction(#selector(UIResponder.resignFirstResponder),
                   to: nil,
                   from: nil,
                   for: nil)
    }
}
