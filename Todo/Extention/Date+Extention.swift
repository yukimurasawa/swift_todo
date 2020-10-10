//
//  Date+Extenntion.swift
//  Todo
//
//  Created by 村澤祐樹 on 2020/10/10.
//  Copyright © 2020 niki. All rights reserved.
//

import Foundation

extension Date {
    /// 「時分秒」を切り落とした今日の日付を作成
    static var today : Date {
        let calendar = Calendar(identifier: .gregorian)
        let time = Date()
        let today = calendar.startOfDay(for: time)
        return today
    }
    /// 「時分秒」を切り落とした明日の日付を作成
    static var tomorrow : Date {
        let calendar = Calendar(identifier: .gregorian)
        let tomorrow = calendar.date(byAdding: DateComponents(day: 1), to: Date.today)!
        return tomorrow
    }
}
