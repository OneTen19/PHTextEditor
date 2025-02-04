// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI

public struct PHTextEditor: View {
    @Binding private var text: String
    private var placeholder: String
    
    public init(placeholder: String, text: Binding<String>) {
        self._text = text
        self.placeholder = placeholder
    }
    
    public var body: some View {
        ZStack(alignment: .topLeading){
            TextEditor(text: $text)
            
            if text.isEmpty {
                Text(placeholder)
                    .padding(.horizontal, 5)
                    .padding(.vertical, 8)
            }
        }
    }
}
