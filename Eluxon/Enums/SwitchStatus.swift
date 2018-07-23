//
//  SwitchStatus.swift
//  Eluxon
//
//  Created by Akhil Raj Arimbra on 7/23/18.
//  Copyright © 2018 Akhil Raj Arimbra. All rights reserved.
//

import Foundation

enum SwitchStatus: Togglable {
    case on, off
    
    mutating func toggle() {
        switch self {
        case .on:
            self = .off
            break
        case .off:
            self = .on
            break
        }
    }
}
