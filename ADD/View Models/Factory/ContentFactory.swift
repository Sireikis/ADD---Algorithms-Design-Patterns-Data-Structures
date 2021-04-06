//
//  ContentFactory.swift
//  ADD
//
//  Created by Ignas Sireikis on 4/6/21.
//

import Foundation


class ContentFactory {
    func getContent(_ contentType: ContentType) -> ContentImplementor {
        switch contentType {
        case .insertionSort:
            return ContentImplementor(InsertionSort())
        }
    }
}
