//
//  PhotoCollectionCell.swift
//  ingredients_for_pizza
//
//  Created by Sergey Smorokov on 05.04.2024.
//

import UIKit

class PhotoCollectionCell: UICollectionViewCell {
    
    static let reuseId = "PhotoCollectionCell"
    
    var photoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = .white
        imageView.image = UIImage(named: "6")
        imageView.contentMode = .scaleAspectFill // сохранение сторон
        imageView.clipsToBounds = true
        
        
        return imageView
    }()
    
    var textLable: UILabel = {
        var text = UILabel()
        text.text = "Сырный бортик"
        text.numberOfLines = 0
        text.font = .systemFont(ofSize: 13)
        text.textColor = .black
        text.textAlignment = .center
        
        return text
    }()
    
    var priceButton: UIButton = {
        var button = UIButton()
        button = UIButton()
        button.setTitle(" 59 руб", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.contentEdgeInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        
        return button
    }()
    
    var roundedView: UIView = {
        let image = UIView()
        image.backgroundColor = .white
        image.layer.cornerRadius = 10
        
        return image
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupShadows()
        setupViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupShadows() {
        layer.cornerRadius = 10
        layer.masksToBounds = false
        
        // Apply a shadow
        layer.shadowRadius = 8.0
        layer.shadowOpacity = 0.10
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 0, height: 5)
    }
    
    func setupViews() {
        
        contentView.addSubview(roundedView)
        contentView.addSubview(photoImageView)
        contentView.addSubview(textLable)
        contentView.addSubview(priceButton)
    }
    
    func setupConstraints() {
        
        roundedView.snp.makeConstraints { make in
            make.edges.equalTo(contentView)
        }
        
        photoImageView.snp.makeConstraints { make in
            make.top.equalTo(contentView).inset(10)
            make.left.right.equalTo(contentView).inset(10)
        }
        
        textLable.snp.makeConstraints { make in
            make.top.equalTo(photoImageView.snp.bottom).offset(10)
            make.left.right.equalTo(contentView)
        }
        
        priceButton.snp.makeConstraints { make in
            make.top.equalTo(photoImageView.snp.bottom).offset(40)
            make.left.right.equalTo(contentView)
        }
    }
    
    func update(_ product: Ingredients ) {
        textLable.text = product.name
        //detailLabel.text = product.detail
        priceButton.setTitle("\(product.price) р", for: .normal)
        photoImageView.image = UIImage(named: product.image)
    }
}

