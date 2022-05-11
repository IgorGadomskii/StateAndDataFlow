

import SwiftUI

struct RegisterView: View {
    @EnvironmentObject var user: UserManager
    @State private var name = ""
    @StateObject private var charCounter = CharCounter()
    
    var body: some View {
        VStack {
            TextField("Enter your name...", text: $name)
                .multilineTextAlignment(.center)
            HStack{
                button
                NewCounter(name: $name)
            }
        }
    }
    
    private var button: some View {
        Button(action: registerUser) {
            HStack {
                Image(systemName: "checkmark.circle")
                Text("Ok")
            }
            .disabled(charCounter.activeButton(with: name))
        }
    }
}

extension RegisterView {
    private func registerUser() {
        if !name.isEmpty {
            user.name = name
            user.isRegister.toggle()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
