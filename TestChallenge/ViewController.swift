//
//  ViewController.swift
//  TestChallenge
//
//  Created by Augusto Henrique de Almeida Silva on 17/10/17.
//  Copyright © 2017 Augusto Henrique de Almeida Silva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var fruitsArray = [[String : Any]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        fruitsArray = Utils.loadFruits(Bundle.main)
        _ = Utils.buscaNomeFrutinhas(frutinhas: fruitsArray, nomeFrutinha: "Apple")
        fruitsArray = Utils.deletaFrutinha(frutinhas: fruitsArray, nomeFrutinha: "Apple")
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension ViewController : UITableViewDelegate,  UITableViewDataSource {
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruitsArray.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as? CellTableViewCell
        cell!.nomeLabel.text = fruitsArray[indexPath.row]["name"] as? String
        cell!.grupoLabel.text = fruitsArray[indexPath.row]["group"] as? String
        
        return cell!
    }

}
