//
//  PrimaryButton.swift
//  hackatonrtk2021
//
//  Created by Egor Starichenkov on 17.06.2021.
//

import SwiftUI

struct PrimaryButton: View {
    @Binding var isEnabled: Bool

    var body: some View {
        content
            .frame(height: 50)
            .disabled(!isEnabled)
    }

    private(set) var imageName: String?
    private(set) var title: String
    private(set) var action = {}
}

// MARK: - Content

private extension PrimaryButton {
    var content: some View {
        Button(action: { action() }) {
            HStack(alignment: .center, spacing: 8) {
                Text(title)
                    .font(.headline)
                if let imageName = imageName {
                    Image(systemName: imageName)
                }
            }
            .padding()
            .frame(minWidth: 0, maxWidth: .infinity)
            .background(isEnabled ?
                            LinearGradient(gradient: Gradient(colors: [Color("OrangeStart"), Color("OrangeEnd")]), startPoint: .leading, endPoint: .trailing) :
                            LinearGradient(gradient: Gradient(colors: [Color("Gray")]), startPoint: .leading, endPoint: .trailing)
                            )
            .foregroundColor(.white)
            .cornerRadius(8)
        }
    }
}

// MARK: - Previews

struct PrimaryButton_Previews: PreviewProvider {
    static var previews: some View {
        PrimaryButton(isEnabled: .constant(true), imageName: "arrow.right" ,title: "Next")
    }
}
