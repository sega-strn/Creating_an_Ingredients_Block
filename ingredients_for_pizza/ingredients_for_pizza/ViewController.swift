//
//  ViewController.swift
//  ingredients_for_pizza
//
//  Created by Sergey Smorokov on 05.04.2024.
//

import UIKit
import SnapKit

struct Ingredients {
    var name: String
    var price: UInt
    var image: String
}

class ViewController: UIViewController {
    
    let products: [Any] = [
        Ingredients(name: "Сырный бортик", price: 89, image: "1"),
        Ingredients(name: "Моцарелла", price: 79, image: "2"),
        Ingredients(name: "Чеддер и пармезан", price: 79, image: "3"),
        Ingredients(name: "Острый хлапеньо", price: 59, image: "4"),
        Ingredients(name: "Цыпленок", price: 79, image: "5"),
        Ingredients(name: "Ветчина", price: 79, image: "6"),
        Ingredients(name: "Шампиньоны", price: 59, image: "7"),
        Ingredients(name: "Маринованные огурчики", price: 59, image: "8"),
        Ingredients(name: "Томаты", price: 59, image: "9"),
        Ingredients(name: "Острая чоризо", price: 79, image: "10"),
        Ingredients(name: "Брынза", price: 79, image: "11"),
        Ingredients(name: "Блю чиз", price: 79, image: "12"),
        Ingredients(name: "Красный лук", price: 59, image: "13"),
        Ingredients(name: "Итальянские травы", price: 59, image: "14"),
        Ingredients(name: "Ананас", price: 69, image: "15"),
        Ingredients(name: "Сладкий перец", price: 59, image: "16"),
        Ingredients(name: "Маслины", price: 69, image: "17"),
        Ingredients(name: "Митболы", price: 79, image: "18"),
        Ingredients(name: "Пастрами из индейки", price: 79, image: "19"),
        Ingredients(name: "Острый цыпленок", price: 79, image: "20")
    ]
    
    
    var imageView: UIImageView = {
        var imageView = UIImageView()
        imageView.image = UIImage(named: "barbecue sausages")
        imageView.widthAnchor.constraint(equalToConstant: 170).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 170).isActive = true
        
        return imageView
    }()
    
    var titleLabel: UILabel  = {
        let label = UILabel()
        label.numberOfLines = 0
        label.text = "Колбаски барбекю"
        label.textAlignment = .center
        label.textColor = UIColor.black
        label.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        
        return label
    }()
    
    var titleLabel2: UILabel  = {
        let label = UILabel()
        label.numberOfLines = 0
        label.text = "35 см, традиционное тесто, 650 г"
        label.numberOfLines = 0
        label.textAlignment = .left
        label.textColor = .systemGray
        label.font = UIFont.systemFont(ofSize: 11)
        
        return label
    }()
    
    var descriptionLabel: UILabel  = {
        var label = UILabel()
        label.numberOfLines = 7
        label.text = "Острая чоризо, соус барбекю, томаты, красный лук, моцарелла, фирменный томатный соус"
        label.numberOfLines = 0
        label.textAlignment = .left
        label.textColor = .systemGray
        label.font = UIFont.systemFont(ofSize: 14)
        
        return label
    }()
    
    var addIngredientsLabel: UILabel  = {
        var label = UILabel()
        label.numberOfLines = 1
        label.text = "Добавить по вкусу"
        label.numberOfLines = 0
        //label.textAlignment = .left
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 13)
        
        return label
    }()
    
    var tableViewUp: UIStackView = {
        var view = UIStackView()
        view.backgroundColor = .white
        
        return view
    }()
    
    var tableView: UIStackView = {
        var view = UIStackView()
        view.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 8, leading: 15, bottom: 12, trailing: 0)
        view.backgroundColor = .clear
        return view
    }()
    
    var sumOfPriceButton: UIButton = {
        var button = UIButton()
        button.setTitle("В корзину за 719 руб", for: .normal)
        button.backgroundColor = .orange//.withAlphaComponent(0.2)
        button.layer.cornerRadius = 20
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        //button.contentEdgeInsets = UIEdgeInsets(top: 7, left: 60, bottom: 7, right: 60)
        button.heightAnchor.constraint(equalToConstant: 40).isActive = true
        button.widthAnchor.constraint(equalToConstant: 366).isActive = true

        return button
    }()
    
    var sizeOfPizzaBackButton: UIButton = {
        var button  = UIButton()
        button.layer.cornerRadius = 6
        button.backgroundColor = .lightGray.withAlphaComponent(0.3)
        button.widthAnchor.constraint(equalToConstant: 366).isActive = true
        button.heightAnchor.constraint(equalToConstant: 40).isActive = true
        //button.contentEdgeInsets =  UIEdgeInsets(top: 9, left: 182, bottom: 9, right: 182)
        
        return button
    }()
    
    var sizeOfPizzaSmallButton: UIButton = {
        var button  = UIButton()
        button.setTitleColor(.black, for: .normal)
        button.setTitle("Маленькая", for: .normal)
        //button.backgroundColor = .white
        button.backgroundColor = .clear
        button.layer.cornerRadius = 6
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        button.widthAnchor.constraint(equalToConstant: 120).isActive = true
        button.heightAnchor.constraint(equalToConstant: 32).isActive = true
        //button.backgroundColor = UIColor(hue: 0.1333, saturation: 0.36, brightness: 1, alpha: 1.0)

        return button
    }()
    
    var sizeOfPizzaAverageButton: UIButton = {
        var button  = UIButton()
        button.setTitleColor(.black, for: .normal)
        button.setTitle("Средняя", for: .normal)
        //button.backgroundColor = .white
        button.backgroundColor = .clear
        button.layer.cornerRadius = 6
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        button.widthAnchor.constraint(equalToConstant: 120).isActive = true
        button.heightAnchor.constraint(equalToConstant: 32).isActive = true
        
        return button
    }()
    
    var sizeOfPizzaBigButton: UIButton = {
        var button  = UIButton()
        button.setTitleColor(.black, for: .normal)
        button.setTitle("Большая", for: .normal)
        button.backgroundColor = .white
        button.layer.cornerRadius = 6
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        button.widthAnchor.constraint(equalToConstant: 120).isActive = true
        button.heightAnchor.constraint(equalToConstant: 32).isActive = true
        
        return button
    }()
    
    var thicknessOfDoughBackButton: UIButton = {
        var button  = UIButton()

        button.layer.cornerRadius = 6
        button.backgroundColor = .lightGray.withAlphaComponent(0.3)
        button.widthAnchor.constraint(equalToConstant: 366).isActive = true
        button.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        return button
    }()
    
    var thicknessOfDoughSmallButton: UIButton = {
        var button  = UIButton()
        button.setTitleColor(.black, for: .normal)
        button.setTitle("Тонкое", for: .normal)
        button.backgroundColor = .white
        button.layer.cornerRadius = 6
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        button.widthAnchor.constraint(equalToConstant: 181).isActive = true
        button.heightAnchor.constraint(equalToConstant: 32).isActive = true

        return button
    }()
    
    
    
    var thicknessOfDoughBigButton: UIButton = {
        var button  = UIButton()
        button.setTitleColor(.black, for: .normal)
        button.setTitle("Толстое", for: .normal)
        //button.backgroundColor = .white
        button.backgroundColor = .clear
        button.layer.cornerRadius = 6
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        button.widthAnchor.constraint(equalToConstant: 181).isActive = true
        button.heightAnchor.constraint(equalToConstant: 32).isActive = true
        
        return button
    }()

            

//        if thicknessOfDoughBigButton {
//            self.sw.subviews.first?.subviews.first?.backgroundColor = .green
//        } else if thicknessOfDoughBigButton {
//            self.sw.subviews.first?.subviews.first?.subviews.first?.backgroundColor = .green
//        }
        
//        switch button {
//        case button.isSelected = UIColor(named: red)
//        default: break
//        }
        
        
    
    lazy var collectionView: UICollectionView = {
        
        let itemsCount: CGFloat = 3
        let padding: CGFloat = 10
        let paddingCount: CGFloat = itemsCount + 1
        
        let layout = UICollectionViewFlowLayout()
        
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = padding
        layout.minimumInteritemSpacing = padding
        
        let paddingSize = paddingCount * padding // формула отступов ячеек
        
        let cellSize = (UIScreen.main.bounds.width - paddingSize) / itemsCount
        layout.sectionInset = UIEdgeInsets(top: padding, left: padding, bottom: padding, right: padding)
        
        layout.itemSize = CGSize(width: cellSize, height: 190)
        
        let collectionView = UICollectionView.init(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .white
        
        collectionView.dataSource = self
        collectionView.delegate = self
        
        collectionView.register(PhotoCollectionCell.self, forCellWithReuseIdentifier: PhotoCollectionCell.reuseId)
        
        return collectionView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupConstraints()
    }
    
    func setupViews() {
        
        view.addSubview(tableViewUp)
        tableViewUp.addSubview(imageView)
        tableViewUp.addSubview(titleLabel)
        tableViewUp.addSubview(titleLabel2)
        tableViewUp.addSubview(descriptionLabel)
        tableViewUp.addSubview(sizeOfPizzaBackButton)
        tableViewUp.addSubview(sizeOfPizzaSmallButton)
        tableViewUp.addSubview(sizeOfPizzaAverageButton)
        tableViewUp.addSubview(sizeOfPizzaBigButton)
        tableViewUp.addSubview(thicknessOfDoughBackButton)
        tableViewUp.addSubview(thicknessOfDoughSmallButton)
        tableViewUp.addSubview(thicknessOfDoughBigButton)
        tableViewUp.addSubview(addIngredientsLabel)
        tableView.addSubview(sumOfPriceButton)
        view.addSubview(collectionView)
        view.addSubview(tableView)
        
        
    }
    
    func setupConstraints() {
        
        tableViewUp.snp.makeConstraints { make in
            make.top.left.right.equalTo(view)
            make.bottom.equalTo(collectionView.snp.top).offset(0)
            make.height.equalTo(350)
        }
        
        imageView.snp.makeConstraints { make in
            make.left.equalTo(view).inset(10)
            make.top.equalTo(tableViewUp.snp.top).offset(60)
        }
        
        titleLabel.snp.makeConstraints { make in
            make.left.equalTo(imageView.snp.right).offset(5)
            make.top.equalTo(view).offset(70)
        }
        
        titleLabel2.snp.makeConstraints { make in
            make.left.equalTo(imageView.snp.right).offset(5)
            make.top.equalTo(view).offset(95)
            make.right.equalTo(view.snp.right).inset(10)
        }
        
        descriptionLabel.snp.makeConstraints { make in
            make.left.equalTo(imageView.snp.right).offset(5)
            make.top.equalTo(view).offset(120)
            make.right.equalTo(view.snp.right).inset(10)
        }
        
        addIngredientsLabel.snp.makeConstraints { make in
            make.top.equalTo(thicknessOfDoughBackButton.snp.bottom).offset(10)
            make.left.equalTo(tableViewUp).inset(20)
        }
        
        sizeOfPizzaBackButton.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.top.equalTo(imageView.snp.bottom).offset(3)
        }
        
        sizeOfPizzaAverageButton.snp.makeConstraints { make in
            make.centerX.equalTo(sizeOfPizzaBackButton)
            make.centerY.equalTo(sizeOfPizzaBackButton)
        }
        
        sizeOfPizzaSmallButton.snp.makeConstraints { make in
            make.right.equalTo(sizeOfPizzaAverageButton.snp.left).offset(0)
            make.centerY.equalTo(sizeOfPizzaBackButton)
        }
        
        sizeOfPizzaBigButton.snp.makeConstraints { make in
            make.left.equalTo(sizeOfPizzaAverageButton.snp.right).inset(0)
            make.centerY.equalTo(sizeOfPizzaBackButton)
        }
        
        thicknessOfDoughBackButton.snp.makeConstraints { make in
            make.centerX.equalTo(sizeOfPizzaBackButton)
            make.top.equalTo(sizeOfPizzaBackButton.snp.bottom).offset(8)
        }
        
        thicknessOfDoughSmallButton.snp.makeConstraints { make in
            make.centerY.equalTo(thicknessOfDoughBackButton)
            make.left.equalTo(thicknessOfDoughBackButton.snp.left).inset(2)
        }
        
        thicknessOfDoughBigButton.snp.makeConstraints { make in
            make.centerY.equalTo(thicknessOfDoughBackButton)
            make.right.equalTo(thicknessOfDoughBackButton.snp.right).inset(2)
        }
        
        
        
        collectionView.snp.makeConstraints { make in
            make.left.right.equalTo(view) //top
            make.bottom.equalTo(tableView.snp.top).offset(0)
            make.top.equalTo(tableViewUp.snp.bottom).offset(300) // view tableViewUp
        }
        
        
        
        tableView.snp.makeConstraints { make in
            make.bottom.right.left.equalTo(view).inset(0)
            make.height.equalTo(80)
        }
        
        sumOfPriceButton.snp.makeConstraints { make in
            make.top.equalTo(tableView).offset(10)
            make.centerX.equalTo(view)
        }
    }
}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        addToList.append(products[indexPath.row])
//        let cell = collectionView.cellForItem(at: indexPath)
//        cell?.layer.borderWidth = 2.0
//        cell?.layer.borderColor = UIColor.gray.cgColor
//    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let product = products[indexPath.row]
        
        switch product {
        case let product as Ingredients:
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PhotoCollectionCell.reuseId, for: indexPath) as! PhotoCollectionCell
            cell.update(product)
            return cell
            
        default:
            break
        }
        
        return UICollectionViewCell()
    }
}


