//
//  LivrosDoAutorViewController.swift
//  LearningTask-8.2
//
//  Created by Noelle Figueiredo on 30/11/22.
//

import UIKit

class LivrosDoAutorViewController: UIViewController {
    @IBOutlet weak var tableview: UITableView!
    var autor : Autor?
    var livrosApi : LivrosAPI?
    private var livros : [Livro]?
    
    override func viewDidLoad() {
        tableview.register(TableSectionHeaderView.self, forHeaderFooterViewReuseIdentifier: TableSectionHeaderView.reuseId)
        
        guard let autor = autor else { return }
        tableview.tableHeaderView = AutorTableHeaderView.constroi(para: autor)
        
        guard let livrosApi = livrosApi else { return }
        livros = livrosApi.carregaLivros(por: autor)

    }
}

extension LivrosDoAutorViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return livros?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableview.dequeueReusableCell(withIdentifier: "LivroDoAutorViewCell") as? LivroDoAutorTableViewCell else {
            fatalError("Não foi possivel criar celula com identifier LivroDoAutorViewCell como LivroDoAutorTableViewCell")
        }
        guard let livro = livros?[indexPath.row] else { return cell }
        cell.setup(para: livro)
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        guard let cell = tableview.dequeueReusableHeaderFooterView(withIdentifier: TableSectionHeaderView.reuseId) as? TableSectionHeaderView else {
            fatalError("Não foi possivel criar SectionHeader com identifier \(TableSectionHeaderView.reuseId) como TableSectionHeaderView")
        }
        cell.titulo = "Livros Publicados"
        return cell
    }
}

extension LivrosDoAutorViewController: UITableViewDelegate {
    
}
