//
//  DecimalFormatter.swift
//  HosPerf
//
//  Created by jk on 2020/12/26.
//

import Foundation

public func decimalFormatter() -> NumberFormatter {
    let f = NumberFormatter()
    f.numberStyle = .decimal
    return f
}
