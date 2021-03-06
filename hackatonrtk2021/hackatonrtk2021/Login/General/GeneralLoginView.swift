//
//  GeneralLoginView.swift
//  hackatonrtk2021
//
//  Created by Egor Starichenkov on 16.06.2021.
//

import SwiftUI

struct GeneralLoginView: View {
//    @State private var email: String = ""
//    @State private var password: String = ""
    
    var body: some View {
        content
    }
    
    @ObservedObject var viewModel: GeneralViewModel
}

private extension GeneralLoginView {
    var content: some View {
        VStack {
            logo
                .padding(.bottom, 112)
            input
                .padding([.leading, .trailing], 16)
                .padding(.bottom, 77)
            button
                .padding([.leading, .trailing], 16)
        }
    }
    
    var logo: some View {
        HStack(spacing: 10) {
            Image("logo")
                .frame(width: 69, height: 60)
            Text("Здоровье")
                .font(Font.custom("Gotham Pro", size: 40))
        }
    }
    
    var input: some View {
        VStack(spacing: 45) {
            VStack(spacing: 4) {
                TextField("Email", text: $viewModel.email)
                    .font(.body)
                Divider()
            }
            VStack(spacing: 4) {
                SecureField("Пароль", text: $viewModel.password)
                    .font(.body)
                Divider()
            }
        }
        .font(Font.custom("Gotham Pro", size: 17))
    }
    
    var button: some View {
        PrimaryButton(isEnabled: .constant(true), title: "Войти") {
            viewModel.action()
        }
    }
}

struct GeneralLoginView_Previews: PreviewProvider {
    static var previews: some View {
        GeneralLoginView(viewModel: .init())
    }
}
