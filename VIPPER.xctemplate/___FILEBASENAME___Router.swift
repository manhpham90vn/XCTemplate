//___FILEHEADER___

import UIKit

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
