//
//  TitleCollectionViewCell.swift
//  Netflix-Clone
//
//  Created by Sagar Das on 02/04/23.
//

import UIKit
import SDWebImage

class TitleCollectionViewCell: UICollectionViewCell {
    
    static let identifier  =  "TitleCollectionViewCell"
    
    private let posterimageView: UIImageView = {
      let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        return iv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(posterimageView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        posterimageView.frame = contentView.bounds
    }
    
    func configure(with model: String){
        guard let url = URL(string: "https://image.tmdb.org/t/p/w500/\(model)") else {
            return
        }
        print(url)
        posterimageView.sd_setImage(with: url, completed: nil)
    }
}
