// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI

public struct PHTextEditor: View {
    @Binding private var text: String
    private var placeholder: String
    private var maxLength: Int? = nil
    
    public init(placeholder: String, text: Binding<String>) {
        self._text = text
        self.placeholder = placeholder
    }
    
    public var body: some View {
        ZStack(alignment: .topLeading){
            TextEditor(text: $text)
                .onChange(of: text) { newValue in
                    if let maxLength, newValue.count > maxLength {
                        text = String(newValue.prefix(maxLength))
                    }
                }
            
            if text.isEmpty {
                Text(placeholder)
                    .padding(.horizontal, 5)
                    .padding(.vertical, 8)
            }
        }
    }
    
}

extension PHTextEditor {
    func maxLength(_ length: Int) -> some View {
        var modifiedView = self
        modifiedView.maxLength = length
        return modifiedView
    }
}
