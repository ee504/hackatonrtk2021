//
//  QuestionsViewModel.swift
//  hackatonrtk2021
//
//  Created by Egor Starichenkov on 17.06.2021.
//

import Foundation

class QuestionsViewModel: ObservableObject {
    @Published var currentQuestion: Question = Question.sex
    @Published var answered = true
    @Published var isLastQuestion = false
    
    func nextQuestion() {
        let all = Question.allCases
        let indx = all.firstIndex(of: currentQuestion)!
        let nextIndx = all.index(after: indx)
        currentQuestion = Question(rawValue: nextIndx)!
        print("currentQuestion:", currentQuestion.title)
//        answered = false
        isLastQuestion = isLastQuestion(question: currentQuestion)
        print("isLastItem:", isLastQuestion)
//        return (currentQuestion, isLastQuestion(question: currentQuestion))
    }
    
    func setUserInfo(question: Question, answer: String) {
//        answered = true
        userInfo.append((question, answer))
    }
    
    func isLastQuestion(question: Question) -> Bool {
        print("question.rawValue:", question.rawValue)
        print("Question.allCases.endIndex:", Question.allCases.endIndex)
//        print("last title:", Question(rawValue: Question.allCases.endIndex)!.title)
        return question.rawValue == Question.allCases.endIndex - 1
    }
    
    private var userInfo: [(Question, String)] = []
}

private extension QuestionsViewModel {
    
}

enum Question: Int, CaseIterable {
    case sex = 0
    case age
    
    var title: String {
        switch self {
        case .sex:
            return "Ваш пол"
        case .age:
            return "Ваш возраст"
        }
    }
}
