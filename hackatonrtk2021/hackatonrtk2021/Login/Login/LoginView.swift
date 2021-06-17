//
//  LoginView.swift
//  hackatonrtk2021
//
//  Created by Egor Starichenkov on 17.06.2021.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        content
    }
    
    @ObservedObject var viewModel: LoginViewModel
}

private extension LoginView {
    var content: some View {
        VStack(spacing: 71) {
            GeneralLoginView(viewModel: viewModel)
//                .padding(.top, 149)
            VStack(spacing: 38) {
                Text("Регистрация")
                    .onTapGesture {
                        print("Регистрация")
                    }
                Text("Забыли пароль?")
                    .onTapGesture {
                        print("Забыли пароль?")
                    }
            }
            .font(Font.custom("Gotham Pro", size: 17))
            .foregroundColor(Color("Orange"))
            
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(viewModel: .init())
    }
}
