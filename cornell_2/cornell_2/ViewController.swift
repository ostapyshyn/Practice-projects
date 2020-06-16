//
//  ViewController.swift
//  cornell_2
//
//  Created by Volodymyr Ostapyshyn on 15.06.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var nameLabel: UILabel!
    var imageView: UIImageView!
    var followButton: UIButton!
    var textView: UITextView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        setupViews()
        setupConstraints()
    }
    
    func setupViews() {
        nameLabel = UILabel()
        nameLabel.text = "Bill Gates"
        nameLabel.textColor = .black
        nameLabel.textAlignment = .center
        nameLabel.font = UIFont.systemFont(ofSize: 20.0, weight: .bold)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(nameLabel)

        imageView = UIImageView()
        imageView.image = UIImage(named: "billgates")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(imageView)

        followButton = UIButton()
        followButton.setTitle("Follow", for: .normal)
        followButton.setTitleColor(.systemBlue, for: .normal)
        followButton.layer.borderWidth = 1
        followButton.layer.borderColor = UIColor.systemBlue.cgColor
        followButton.addTarget(self, action: #selector(followButtonTapped), for: .touchUpInside)
        followButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(followButton)

        textView = UITextView()
        textView.text = "Biography: William Henry Gates III (born October 28, 1955) is an American business magnate, software developer, investor, and philanthropist. He is best known as the co-founder of Microsoft Corporation.[2][3] During his career at Microsoft, Gates held the positions of chairman, chief executive officer (CEO), president and chief software architect, while also being the largest individual shareholder until May 2014. He is one of the best-known entrepreneurs and pioneers of the microcomputer revolution of the 1970s and 1980s. Born and raised in Seattle, Washington, Gates co-founded Microsoft with childhood friend Paul Allen in 1975 in Albuquerque, New Mexico; it went on to become the world's largest personal computer software company.[4][a] Gates led the company as chairman and CEO until stepping down as CEO in January 2000, but he remained chairman and became chief software architect.[7] During the late 1990s, Gates had been criticized for his business tactics, which have been considered anti-competitive. This opinion has been upheld by numerous court rulings.[8] In June 2006, Gates announced that he would be transitioning to a part-time role at Microsoft and full-time work at the Bill & Melinda Gates Foundation, the private charitable foundation that he and his wife, Melinda Gates, established in 2000.[9] He gradually transferred his duties to Ray Ozzie and Craig Mundie.[10] He stepped down as chairman of Microsoft in February 2014 and assumed a new post as technology adviser to support the newly appointed CEO Satya Nadella.[11]"
        textView.isEditable = false
        textView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(textView)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])

        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 15),
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.heightAnchor.constraint(equalToConstant: 200),
            imageView.widthAnchor.constraint(equalToConstant: 200)
        ])

        NSLayoutConstraint.activate([
            followButton.widthAnchor.constraint(equalToConstant: 85),
            followButton.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 15),
            followButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])

        NSLayoutConstraint.activate([
            textView.topAnchor.constraint(equalTo: followButton.bottomAnchor, constant: 15),
            textView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            textView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            textView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            textView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
    
    @objc func followButtonTapped() {
        // In lecture we did: if followButton.titleLabel?.text == "Follow", but a UIButton also has a currentTitle property that we can access!
        if followButton.currentTitle == "Follow" {
            followButton.setTitle("Following", for: .normal)
            followButton.setTitleColor(.white, for: .normal)
            followButton.backgroundColor = .systemBlue
        } else {
            followButton.setTitle("Follow", for: .normal)
            followButton.setTitleColor(.systemBlue, for: .normal)
            followButton.backgroundColor = .white
        }
    }


}

