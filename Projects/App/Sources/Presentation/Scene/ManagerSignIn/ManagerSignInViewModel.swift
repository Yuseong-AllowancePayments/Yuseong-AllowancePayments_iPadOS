import Foundation
import RxSwift
import RxCocoa
import RxFlow

class ManagerSignInViewModel: BaseVM, Stepper {
    let steps = PublishRelay<Step>()
    private var disposeBag = DisposeBag()

    struct Input {
    }
    struct Output {
    }

    func transform(_ input: Input) -> Output {
        return Output()
    }
}
