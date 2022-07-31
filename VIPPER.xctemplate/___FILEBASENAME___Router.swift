//___FILEHEADER___

import UIKit
import Resolver

protocol ___FILEBASENAMEASIDENTIFIER___Interface {
    var view: ___VARIABLE_productName___ViewInterface? { get }
    func inject(view: ___VARIABLE_productName___ViewInterface)
}

final class ___FILEBASENAMEASIDENTIFIER___: ___FILEBASENAMEASIDENTIFIER___Interface {

    weak var view: ___VARIABLE_productName___ViewInterface?

    func inject(view: ___VARIABLE_productName___ViewInterface) {
        self.view = view
    }

    deinit {
        if Configs.shared.loggingDeinitEnabled {
            LogInfo("\(Swift.type(of: self)) Deinit")
        }
    }

}

extension ___FILEBASENAMEASIDENTIFIER___: ResolverRegistering {
    static func registerAllServices() {
        Resolver.register { ___VARIABLE_productName___Interactor() as ___VARIABLE_productName___InteractorInterface }
        Resolver.register { ___VARIABLE_productName___Router() as ___VARIABLE_productName___RouterInterface }
        Resolver.register { ___VARIABLE_productName___Presenter() as ___VARIABLE_productName___PresenterInterface }
    }
}
