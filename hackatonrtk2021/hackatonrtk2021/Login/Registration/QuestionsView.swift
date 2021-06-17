//
//  QuestionsView.swift
//  hackatonrtk2021
//
//  Created by Egor Starichenkov on 17.06.2021.
//

import SwiftUI

struct QuestionsView: View {
    var body: some View {
        content
    }
    
    @ObservedObject var viewModel: QuestionsViewModel
}

private extension QuestionsView {
    var content: some View {
        VStack {
            title
                .padding([.leading, .trailing], 51)
                .padding(.bottom, 80)
            VStack(spacing: 50) {
                question
            }
            button
        }
    }
    
    var title: some View {
        Text("Ответьте на несколько вопросов, это важно")
            .font(.title3)
            .multilineTextAlignment(.center)
            .foregroundColor(Color("Gray"))
            .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
    }
    
    var question: some View {
        Text(viewModel.currentQuestion.title)
            .font(.headline)
    }
    
    @ViewBuilder var button: some View {
        if $viewModel.isLastQuestion.wrappedValue {
//        switch $viewModel.isLastQuestion {
//        case true:
            PrimaryButton(
                isEnabled: $viewModel.answered,
                title: "Готово"
            ) {
                print("Готово")
            }
        } else {
//        case false:
            PrimaryButton(
                isEnabled: $viewModel.answered,
                imageName: "arrow.right" ,
                title: "Далее"
            ) {
                viewModel.nextQuestion()
            }
        }
    }
}

struct QuestionsView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionsView(viewModel: .init())
    }
}
