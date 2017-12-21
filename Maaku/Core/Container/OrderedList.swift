//
//  OrderedList.swift
//  Maaku
//
//  Created by Kris Baker on 12/20/17.
//  Copyright © 2017 Kristopher Baker. All rights reserved.
//

/// Represents a markdown ordered list.
public struct OrderedList: List {
    
    /// The list items.
    public let items: [Block]
    
    /// Creates an OrderedList.
    ///
    /// - Returns:
    ///     The initialized OrderedList.
    public init() {
        items = []
    }
    
    /// Creates an OrderedList with the specified items.
    ///
    /// - Parameters:
    ///     - items: The block items.
    /// - Returns:
    ///     The initialized OrderedList.
    public init(items: [Block]) {
        self.items = items
    }
    
}

public extension OrderedList {
    
    public func attributedText(style: Style) -> NSAttributedString {
        let attributed = NSMutableAttributedString()
        
        for (index, item) in items.enumerated() {
            let listNumber = NSAttributedString(
                string: "\(index + 1). ",
                attributes: [.font: style.currentFont, .foregroundColor: style.currentForegroundColor]
            )
            attributed.append(listNumber)
            attributed.append(item.attributedText(style: style))
        }
        
        return attributed
    }
    
}
