//
//  UsersPresenter.swift
//  Viber_Arch
//
//  Created by abdrahman on 06/11/2022.
//

import Foundation

class UsersPresenter: UsersPresenterProtocol, UsersInteractorOutputProtocol {
    
    func viewDidLoad() {
        print("view did load should get data")
        view?.showLoadingIndictor()
        interactor.getUsers()
    }
    
    var numberOfRows: Int{
        return users.count
    }
    
    weak var view: UsersViewProtocol?
    private let interactor: UsersInteractorInputProtocol
    private let router: UsersRouterProtocol
    private var users = [User]()
    
    init(view: UsersViewProtocol, interactor: UsersInteractorInputProtocol, router: UsersRouterProtocol) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }
    
    func usersFetchedSuccessfully(users: [User]) {
        view?.hideLoadingIndictor()
        self.users.append(contentsOf: users)
        view?.reloadData()
    }
    
    func usersFetchingFailedWithError(error: Error) {
        view?.hideLoadingIndictor()
        
    }
    func configure(cell: UsersCellView, indexPath: IndexPath) {
        let user = users[indexPath.row]
        let viewModel = UserViewModel(user: user)
        cell.configure(viewModel: viewModel)
    }
}
