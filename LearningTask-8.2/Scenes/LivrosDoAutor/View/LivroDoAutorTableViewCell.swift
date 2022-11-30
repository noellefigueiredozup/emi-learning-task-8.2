//
//  LivroDoAutorTableViewCell.swift
//  LearningTask-8.2
//
//  Created by Noelle Figueiredo on 30/11/22.
//

import UIKit

class LivroDoAutorTableViewCell: UITableViewCell {
    @IBOutlet weak var nomeLabel: UILabel!
    @IBOutlet weak var livroImageView: UIImageView!
    
    func setup(para livro: Livro) {
        nomeLabel.text = livro.titulo
        livroImageView.image = .init(livro.imagemDeCapaURI, aspectFillIn: livroImageView.frame)
        
    }

}
