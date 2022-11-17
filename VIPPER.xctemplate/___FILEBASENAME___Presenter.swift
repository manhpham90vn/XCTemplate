//___FILEHEADER___

import RxSwift
import RxCocoa
import MPInjector
import NSObject_Rx

protocol ___FILEBASENAMEASIDENTIFIER___Interface {
    var view: ___VARIABLE_productName___ViewInterface? { get }
    var router: ___VARIABLE_productName___RouterInterface { get }
    var interactor: ___VARIABLE_productName___InteractorInterface { get }
    var screenType: ScreenType! { get }
    func inject(view: ___VARIABLE_productName___ViewInterface, screenType: ScreenType)
}

final class ___FILEBASENAMEASIDENTIFIER___: ___FILEBASENAMEASIDENTIFIER___Interface, HasDisposeBag, HasTrigger {

    // MARK: Dependency
    weak var view: ___VARIABLE_productName___ViewInterface?
    @Inject var router: ___VARIABLE_productName___RouterInterface
    @Inject var interactor: ___VARIABLE_productName___InteractorInterface

    // MARK: Local variable
    var screenType: ScreenType!

    // MARK: input
    let trigger = PublishRelay<Void>()

    func inject(view: ___VARIABLE_productName___ViewInterface, screenType: ScreenType) {
        self.view = view
        self.screenType = screenType
        self.router.inject(view: view)
    }

    deinit {
        if Configs.shared.loggingDeinitEnabled {
            LogInfo("\(Swift.type(of: self)) Deinit")
        }
        LeakDetector.instance.expectDeallocate(object: router as AnyObject)
        LeakDetector.instance.expectDeallocate(object: interactor as AnyObject)
    }

}
