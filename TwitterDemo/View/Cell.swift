//
//  Cell.swift
//  TwitterDemo
//
//  Created by Danish on 26/09/17.
//  Copyright © 2017 Danish. All rights reserved.
//

import LBTAComponents

let twitterBlue = UIColor(r: 61, g: 167, b: 244)


class UserHeader: DatasourceCell{
    let textLabel: UILabel = {
        let label = UILabel()
        label.text = "Who To Follow"
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()
    override func setupViews() {
        super.setupViews()
        
        addSubview(textLabel)
        textLabel.anchor(topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 0, leftConstant: 12, bottomConstant: 0, rightConstant: 0)
    }
}

class UserFooter: DatasourceCell{
    let textLabel: UILabel = {
        let label = UILabel()
        label.text = "Show Me More"
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = twitterBlue
        return label
    }()
    override func setupViews() {
        super.setupViews()
        addSubview(textLabel)
        textLabel.anchor(topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 0, leftConstant: 12, bottomConstant: 0, rightConstant: 0)
        
    }
}

class UserCell: DatasourceCell{
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Daz"
        label.font = UIFont.boldSystemFont(ofSize: 16)
        return label
    }()
    
    let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = #imageLiteral(resourceName: "android")
        imageView.layer.cornerRadius = 5
        imageView.clipsToBounds = true
        return imageView
    }()
    
    let usernameLabel: UILabel = {
        let label = UILabel()
        label.text = "@daz"
        label.textColor = UIColor(r: 130, g: 130, b:130)
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()
    
    let bioTextView: UITextView = {
        let textView = UITextView()
        textView.text = "ajhhdawj cahwgjawd ahfgjaw fahgafwj wfahgfawhfawjhaff hawfgjawb fhagajhfwb afjhgafhjwfhjw"
        textView.font = UIFont.systemFont(ofSize: 14)
        textView.backgroundColor = .clear
        return textView
    }()
    
    let followButton: UIButton = {
        let button =  UIButton()
        button.layer.cornerRadius = 5
        button.layer.borderColor = twitterBlue.cgColor
        button.layer.borderWidth = 1
        button.setTitle("Follow", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.setTitleColor(twitterBlue, for: .normal)
//        button.setImage(#imageLiteral(resourceName: "user"), for: .normal)
//        button.imageView?.contentMode = .scaleAspectFit
//        button.imageEdgeInsets = UIEdgeInsets(top:0, left: -5, bottom: 0, right: 0)
        return button
    }()
    
    override var datasourceItem: Any?{
        didSet{
            nameLabel.text = datasourceItem as? String
        }
    }
    
    override func setupViews(){
        super.setupViews()
        
        addSubview(profileImageView)
        addSubview(nameLabel)
        addSubview(usernameLabel)
        addSubview(bioTextView)
        addSubview(followButton)
        
        
        profileImageView.anchor(self.topAnchor, left: self.leftAnchor, bottom: nil, right: nil, topConstant: 12, leftConstant: 12, bottomConstant: 0, rightConstant: 0, widthConstant: 50, heightConstant: 50)
        
        nameLabel.anchor(profileImageView.topAnchor, left: profileImageView.rightAnchor, bottom: nil, right: followButton.leftAnchor, topConstant: 0, leftConstant: 8, bottomConstant: 0, rightConstant: 12, widthConstant: 0, heightConstant: 20)
        
        usernameLabel.anchor(nameLabel.bottomAnchor, left: nameLabel.leftAnchor, bottom: nil, right: nameLabel.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 20)
        
        bioTextView.anchor(usernameLabel.bottomAnchor, left: usernameLabel.leftAnchor, bottom: self.bottomAnchor, right: self.rightAnchor, topConstant: -4, leftConstant: -4, bottomConstant: 0, rightConstant: 0, widthConstant:  0, heightConstant: 0)
        
        followButton.anchor(topAnchor, left: nil, bottom: bioTextView.topAnchor, right: self.rightAnchor, topConstant: 12, leftConstant: 0, bottomConstant: 2, rightConstant: 12, widthConstant: 120, heightConstant: 0 )
        
    }
}
