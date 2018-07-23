//
//  String+Ext.swift
//  InseraHealth
//
//  Created by Aztre on 4/4/18.
//  Copyright © 2018 YellowMe. All rights reserved.
//

import Foundation

extension TimeInterval {
    func timeString() -> String? {
        let ti = Int(self)
        let seconds: Int = ti % 60
        let minutes: Int = (ti / 60) % 60
        let hours: Int = ti / 3600
        
        return String(format: "%02li:%02li:%02li", hours, minutes, seconds)
    }
}
