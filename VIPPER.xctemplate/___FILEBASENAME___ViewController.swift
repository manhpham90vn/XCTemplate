//___FILEHEADER___

import UIKit

final class ___FILEBASENAMEASIDENTIFIER___: BaseViewController {
    
    @Injected var presenter: ___VARIABLE_productName___PresenterInterface

    deinit {
        if Configs.shared.loggingDeinitEnabled {
            LogInfo("\(Swift.type(of: self)) Deinit")
        }
        LeakDetector.instance.expectDeallocate(object: presenter as AnyObject)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewDidLoad(view: self)
    }

    override func setupUI() {
        super.setupUI()
    }    

    override func bindDatas() {
        super.bindDatas()
    }
    
}

extension ___FILEBASENAMEASIDENTIFIER___: ___VARIABLE_productName___ViewInterface {}
