//
//  UsersProtocol.swift
//  Viber_Arch
//
//  Created by abdrahman on 06/11/2022.
//

import Foundation

protocol UsersViewProtocol: class{
    var presenter: UsersPresenterProtocol? {get set}
    func showLoadingIndictor()
    func hideLoadingIndictor()
    func reloadData()
}

protocol UsersPresenterProtocol{
    var view: UsersViewProtocol? {get set}
    func viewDidLoad()
    var numberOfRows: Int {get}
    func configure(cell: UsersCellView, indexPath: IndexPath)
}

protocol UsersRouterProtocol{
    
}

protocol UsersInteractorInputProtocol{
    var presenter: UsersInteractorOutputProtocol? {get set}
    func getUsers()
}

protocol UsersInteractorOutputProtocol: class{
    func usersFetchedSuccessfully(users: [User])
    func usersFetchingFailedWithError(error: Error)
}

protocol UsersCellView{
    func configure(viewModel: UserViewModel)
}
