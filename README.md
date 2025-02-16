# PHTextEditor

![Swift](https://img.shields.io/badge/SwiftUI-6.0-orange.svg)
[![Swift Package Manager](https://img.shields.io/badge/SPM-Compatible-brightgreen.svg)](https://swift.org/package-manager/)


✨ A SwiftUI `TextEditor` with `placeholder` support and additional customization options.

## At a Glance

Easily add a placeholder to `TextEditor` in SwiftUI with additional styling options.

```swift
import SwiftUI
import PHTextEditor

struct ContentView: View {
    @State private var text: String = ""
    
    var body: some View {
        PHTextEditor(placeholder: "Enter your text...", text: $text)
            .configure(maxLength: 250, placeholderColor: .gray, border: .blue, borderWidth: 2, borderRadius: 10)
            .frame(height: 150)
    }
}
```

This provides a seamless way to enhance `TextEditor` by displaying a placeholder when the text is empty and allowing additional customization.

## Features

- ✅ Supports SwiftUI `TextEditor`
- ✅ Customizable placeholder text and color
- ✅ Supports text length limitation
- ✅ Customizable border color, width, and corner radius
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
                .configure(maxLength: 300, placeholderColor: .gray, border: .black, borderWidth: 1.5, borderRadius: 8)
                .frame(height: 200)
                .padding()
        }
        .padding()
    }
}
```

## License

**PHTextEditor** is under the MIT license. See the [LICENSE](LICENSE) file for more details.

