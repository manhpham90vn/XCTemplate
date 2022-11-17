//___FILEHEADER___

import UIKit
import MPInjector

final class ___FILEBASENAMEASIDENTIFIER___: BaseViewController {
    
    @Inject var presenter: ___VARIABLE_productName___PresenterInterface

    override var screenType: ScreenType {
        .none
    }

    deinit {
        if Configs.shared.loggingDeinitEnabled {
            LogInfo("\(Swift.type(of: self)) Deinit")
        }
        LeakDetector.instance.expectDeallocate(object: presenter as AnyObject)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.inject(view: self, screenType: screenType)
    }

    override func setupUI() {
        super.setupUI()
    }    

    override func bindDatas() {
        super.bindDatas()
    }
    
}

extension ___FILEBASENAMEASIDENTIFIER___: ___VARIABLE_productName___ViewInterface {}
