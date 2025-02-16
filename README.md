# PHTextEditor

![Swift](https://img.shields.io/badge/SwiftUI-6.0-orange.svg)
[![Swift Package Manager](https://img.shields.io/badge/SPM-Compatible-brightgreen.svg)](https://swift.org/package-manager/)


✨ A SwiftUI `TextEditor` with `placeholder` and more customization options.

## At a Glance

Easily add a placeholder to `TextEditor` in SwiftUI while customizing its appearance.

```swift
import SwiftUI
import PHTextEditor

struct ContentView: View {
    @State private var text: String = ""
    
    var body: some View {
        PHTextEditor(placeholder: "Enter your text...", text: $text)
            .configure(
                maxLength: 250,
                placeholderColor: .gray,
                border: .blue,
                borderWidth: 2,
                borderRadius: 8,
                textPadding: EdgeInsets(top: 12, leading: 16, bottom: 12, trailing: 16)
            )
            .frame(height: 150)
    }
}
```

This provides a seamless way to enhance `TextEditor` by displaying a placeholder when the text is empty and customizing styles.

## Features

- ✅ Supports SwiftUI `TextEditor`
- ✅ Customizable placeholder text and color
- ✅ Supports maximum text length
- ✅ Customizable border and padding
- ✅ Lightweight and easy to integrate
- ✅ Works with Swift Package Manager (SPM)

## Installation

### **Using Swift Package Manager (SPM)**
1. Open Xcode and go to **File > Add Packages**.
2. Enter the repository URL:

```
https://github.com/OneTen19/PHTextEditor.git
```

3. Choose **Add Package** and start using `PHTextEditor`!

## Real World Example

Here's an example usage in a SwiftUI app:

```swift
import SwiftUI
import PHTextEditor

struct NoteView: View {
    @State private var note: String = ""
    
    var body: some View {
        VStack {
            PHTextEditor(placeholder: "Write your notes here...", text: $note)
                .configure(
                    maxLength: 200,
                    placeholderColor: .gray,
                    border: .red,
                    borderWidth: 2,
                    borderRadius: 10,
                    textPadding: EdgeInsets(top: 10, leading: 12, bottom: 10, trailing: 12)
                )
                .frame(height: 200)
                .padding()
        }
        .padding()
    }
}
```

## License

**PHTextEditor** is under the MIT license. See the [LICENSE](LICENSE) file for more details.

