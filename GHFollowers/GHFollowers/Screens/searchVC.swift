//
//  searchVC.swift
//  GHFollowers
//
//  Created by Nima Bahrami on 8/3/22.
//

import UIKit

class searchVC: UIViewController {
    
    let logoImageView = UIImageView()
    let userNameTextFiel = GFTextField()
    let callToActionButton = GFButton(backGroundColor: .systemBlue, title: "Get Followers")
    // guard statement
    var isUserNameEntered: Bool { return !userNameTextFiel.text!.isEmpty}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureLogoImageVIew()
        configureTextField()
        configureCallActionButton()
        createDismissKeyboardTapGesture()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
        
    }
    //to remove keyboard after tapping
    func createDismissKeyboardTapGesture() {
        let  tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing))
        view.addGestureRecognizer(tap)
        
    }
    
    ///objfuction for tapping the  action buttin
    @objc func pushFollowerVC() {
        guard isUserNameEntered else{
            presentGFAlertOnMainThread(title: "Missing UserName", message: "Please EnterUserName", buttonTitle: "ok")
            return
            
        }
        
        let followerListVC = FollowerListVCViewController()
        followerListVC.userName = userNameTextFiel.text
        followerListVC.title = userNameTextFiel.text
        navigationController?.pushViewController(followerListVC, animated: true)
    }
    
    func configureLogoImageVIew() {
        view.addSubview(logoImageView)
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        logoImageView.image = UIImage(named: "gh-logo" )!
        
        NSLayoutConstraint.activate([
        
            logoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 80),
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImageView.heightAnchor.constraint(equalToConstant: 200),
            logoImageView.widthAnchor.constraint(equalToConstant: 200)
        
        
        ])
    }
    
    func configureTextField() {
        view.addSubview(userNameTextFiel)
        //inorder to listen to our deligate
        userNameTextFiel.delegate = self
        NSLayoutConstraint.activate([
            userNameTextFiel.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 48),
            userNameTextFiel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            userNameTextFiel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            userNameTextFiel.heightAnchor.constraint(equalToConstant: 50)
        
        
        ])
    
    }
    
    func configureCallActionButton () {
        view.addSubview(callToActionButton)
        callToActionButton.addTarget(self, action: #selector(pushFollowerVC), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            callToActionButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50),
            callToActionButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            callToActionButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            callToActionButton.heightAnchor.constraint(equalToConstant: 50)
        
        
        ])
    }
    
}


extension searchVC: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        pushFollowerVC()
        return true
    }
}
