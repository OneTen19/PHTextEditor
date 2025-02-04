# PHTextEditor

![Swift](https://img.shields.io/badge/SwiftUI-6.0-orange.svg)
[![Swift Package Manager](https://img.shields.io/badge/SPM-Compatible-brightgreen.svg)](https://swift.org/package-manager/)


✨ A SwiftUI `TextEditor` with `placeholder` support.

## At a Glance

Easily add a placeholder to `TextEditor` in SwiftUI.

```swift
import SwiftUI
import PHTextEditor

struct ContentView: View {
    @State private var text: String = ""
    
    var body: some View {
        PHTextEditor(placeholder: "Enter your text...", text: $text)
            .frame(height: 150)
            .border(Color.gray, width: 1)
    }
}
```

This provides a seamless way to enhance `TextEditor` by displaying a placeholder when the text is empty.

## Features

- ✅ Supports SwiftUI `TextEditor`
- ✅ Customizable placeholder text
- ✅ Lightweight and easy to integrate
- ✅ Works with Swift Package Manager (SPM)

## Installation

### **Using Swift Package Manager (SPM)**
1. Open Xcode and go to **File > Add Packages**.
2. Enter the repository URL:

```
https://github.com/OneTen19/PHTextEditor.git
```

4. Choose **Add Package** and start using `PHTextEditor`!

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
                .frame(height: 200)
                .padding()
                .border(Color.blue, width: 1)
        }
        .padding()
    }
}
```

## License

**PHTextEditor** is under the MIT license. See the [LICENSE](LICENSE) file for more details.

