//
//  PasswordTextField.swift
//  hackatonrtk2021
//
//  Created by Egor Starichenkov on 17.06.2021.
//

import SwiftUI

//struct PasswordTextField: View {
//    @Binding var string: String
//    @Binding var passwordMode: Bool
//    @Binding var showError: Bool
//    @Binding var isFirstResponder: Bool
//
//    var body: some View {
//        VStack {
//            HStack(alignment: .top) {
//                TextFieldView(
//                    string: $string,
//                    passwordMode: $passwordMode,
//                    showError: $showError,
//                    isFirstResponder: $isFirstResponder,
//                    placeholder: placeholder
//                )
//                Button(action: { passwordMode.toggle() }) {
//                    Image(systemName: $passwordMode.wrappedValue ? "eye.slash.fill" : "eye.fill")
//                        .offset(x: 0, y: -2) // TODO: Add alignment guide
//                        .accentColor(.gray)
//                }
//            }
//        }
//        .frame(height: 50)
//    }
//    var placeholder = ""
//}
//
//// MARK: - Preview
//
//struct PasswordTextField_Previews: PreviewProvider {
//    static var previews: some View {
//        PasswordTextField(
//            string: .constant(""),
//            passwordMode: .constant(true),
//            showError: .constant(true),
//            isFirstResponder: .constant(true),
//            placeholder: "Password"
//        )
//    }
//}
