//
//  ViewController.swift
//  RandomColors
//
//  Created by Administrator on 20/12/23.
//

import UIKit

class ViewController: UIViewController {
    var colors : [UIColor] = []
    
    func addRandomColor() {
        for _ in 0..<50{
            colors.append(.createRandomColor())
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addRandomColor()
        // Do any additional setup after loading the view.
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! ColorDetailVC
        destVC.color = sender as? UIColor
    }
    
    
}
    
extension ViewController: UITableViewDelegate, UITableViewDataSource {
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return colors.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell") else{
                return UITableViewCell()

            }
            cell.backgroundColor = colors[indexPath.row]
            return cell
        }
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            let color = colors[indexPath.row]
            performSegue(withIdentifier: "ToColorDetailVC", sender: color)
        }

    
}

