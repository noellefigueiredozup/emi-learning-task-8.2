//
//  LivrosDoAutorViewController.swift
//  LearningTask-8.2
//
//  Created by Noelle Figueiredo on 30/11/22.
//

import UIKit

class LivrosDoAutorViewController: UIViewController {
    @IBOutlet weak var tableview: UITableView!
    
}

extension LivrosDoAutorViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableview.dequeueReusableCell(withIdentifier: "LivroDoAutorViewCell") as? LivroDoAutorTableViewCell else {
            fatalError("Não foi possivel criar celula com identifier LivroDoAutorViewCell como LivroDoAutorTableViewCell")
        }
        
        return cell
    }
}

extension LivrosDoAutorViewController: UITableViewDelegate {
    
}
