//
//  RSFirstRowSelection.swift
//
//  Copyright (c) 2017 Rushi Sangani
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

import Foundation

/// FirstRowType
public enum FirstRowType: String {
    
    case  Empty
    case  None
    case  All
    
    // display
    var value: String {
        if self == .Empty { return "" }
        return self.rawValue
    }
}

/// RSFirstRowSelection
public class RSFirstRowSelection {
    
    // selection state
    var selected: Bool = false
    
    // row type
    var rowType: FirstRowType?
    
    // selection delegate
    var delegate: FirstRowSelection?
    
    // init
    init(selected: Bool, rowType: FirstRowType?, delegate: FirstRowSelection?) {
        
        self.selected = selected
        self.rowType = rowType
        self.delegate = delegate
    }
}
