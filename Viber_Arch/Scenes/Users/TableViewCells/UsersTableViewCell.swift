//
//  UsersTableViewCell.swift
//  Viber_Arch
//
//  Created by abdrahman on 06/11/2022.
//

import Foundation
import UIKit
import Kingfisher

class UsersTableViewCell: UITableViewCell, UsersCellView{
    
    @IBOutlet weak var userImageView: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var registrationDate: UILabel!
    
    override class func awakeFromNib() {
        super.awakeFromNib()
//        selectionStyle = .none
//        setupImageView()
//        userImageView.backgroundColor = .black
    }
    
    func setupImageView(){
        userImageView.layer.cornerRadius = userImageView.frame.height / 2
    }
    
    func configure(viewModel: UserViewModel) {
        //userImageView.kf.setimage(with: viewModel.avatar)
        userImageView.kf.setImage(with: viewModel.avatar)
        userName.text = viewModel.fullname
        registrationDate.text = viewModel.registrationDate
    }
}
