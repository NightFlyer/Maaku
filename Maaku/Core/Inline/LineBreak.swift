//
//  LineBreak.swift
//  Maaku
//
//  Created by Kris Baker on 12/20/17.
//  Copyright © 2017 Kristopher Baker. All rights reserved.
//

/// Represents a markdown line break.
public struct LineBreak: Inline {
    
}

public extension LineBreak {
    
    public func attributedText(style: Style) -> NSAttributedString {
        return NSAttributedString(string: "\n")
    }
    
}
