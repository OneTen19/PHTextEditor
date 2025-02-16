// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI

public struct PHTextEditor: View {
    @Binding private var text: String
    
    private var maxLength: Int? = nil
    
    private var placeholder: String
    private var placeholderColor: Color = .gray.opacity(0.6)
    
    private var border: Color = .clear
    private var borderWidth: CGFloat = 1
    private var borderRadius: CGFloat = 0
    
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
                    .foregroundStyle(placeholderColor)
                    .padding(.horizontal, 5)
                    .padding(.vertical, 8)
            }
        }
        .overlay {
            border == .clear ? nil
            : RoundedRectangle(cornerRadius: borderRadius)
                .stroke(border, lineWidth: borderWidth)
        }
    }
    
}

extension PHTextEditor {
    func configure(
        maxLength: Int? = nil,
        placeholderColor: Color? = nil,
        border: Color? = nil,
        borderWidth: CGFloat? = nil,
        borderRadius: CGFloat? = nil
    ) -> some View {
        var modifiedView = self
        
        if let maxLength = maxLength {
            modifiedView.maxLength = maxLength
        }
        
        if let placeholderColor = placeholderColor {
            modifiedView.placeholderColor = placeholderColor
        }
        
        if let border = border {
            modifiedView.border = border
        }
        
        if let borderWidth = borderWidth {
            modifiedView.borderWidth = borderWidth
        }
        
        if let borderRadius = borderRadius {
            modifiedView.borderRadius = borderRadius
        }
        
        return modifiedView
    }
}
