

import SwiftUI

struct NewCounter: View {
    @Binding var name: String
    @State private var counter = 0
    @StateObject private var charCounter = CharCounter()
    
    var color: Color {
        charCounter.changeColor(with: name)
    }

    
    var body: some View {
        Text("\(counter)")
            .onChange(of: name) { newValue in
                counter = name.count
            }
            .foregroundColor(color)
    }
    
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        NewCounter(name: .constant(""))
    }
}
