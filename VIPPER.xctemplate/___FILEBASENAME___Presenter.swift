//___FILEHEADER___

protocol ___FILEBASENAMEASIDENTIFIER___Interface {
    var view: ___VARIABLE_productName___ViewInterface? { get }
    var router: ___VARIABLE_productName___RouterInterface { get }
    var interactor: ___VARIABLE_productName___InteractorInterface { get }

    func inject(view: ___VARIABLE_productName___ViewInterface)
}

final class ___FILEBASENAMEASIDENTIFIER___: ___FILEBASENAMEASIDENTIFIER___Interface, HasActivityIndicator, HasDisposeBag {

    weak var view: ___VARIABLE_productName___ViewInterface?
    @Injected var router: ___VARIABLE_productName___RouterInterface
    @Injected var interactor: ___VARIABLE_productName___InteractorInterface

    let activityIndicator = ActivityIndicator.shared
    let trigger = PublishRelay<Void>()

    func inject(view: ___VARIABLE_productName___ViewInterface) {
        self.view = view
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
