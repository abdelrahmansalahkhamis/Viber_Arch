//
//  UsersRouter.swift
//  Viber_Arch
//
//  Created by abdrahman on 06/11/2022.
//

import UIKit

class UsersRouter: UsersRouterProtocol{
    weak var viewController: UIViewController?
    
    static func createModule() -> UIViewController{
        let view = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "\(UsersViewController.self)") as! UsersViewController
        let interactor = UsersInteractor()
        let router = UsersRouter()
        let presenter = UsersPresenter(view: view, interactor: interactor, router: router)
        view.presenter = presenter
        interactor.presenter = presenter
        router.viewController = view
        return view
    }
}
