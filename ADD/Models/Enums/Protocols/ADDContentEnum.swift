//
//  ADDContentEnum.swift
//  ADD
//
//  Created by Ignas Sireikis on 5/14/21.
//

import Foundation
import SwiftUI


protocol ADDContentEnum: Identifiable {
    var image: String { get }
    var imgForeground: Color { get }
    var description: String { get }
    var id: String { get }
}
