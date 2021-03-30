//
//  ViewController.swift
//  Daily Calculator
//
//  Created by Ibrohim Dasuqi on 15/02/21.
//

import UIKit
import SideMenu

class ViewController: UIViewController, NavigationMenuDelegate {
    @IBOutlet weak var viewContent: UIView!
    var menu: UISideMenuNavigationController?
    var menuLst = MenuListTableViewController()
    override func viewDidLoad() {
        super.viewDidLoad()
        menu = UISideMenuNavigationController(rootViewController: menuLst)
        menu?.leftSide = true
        SideMenuManager.default.menuLeftNavigationController = menu
        SideMenuManager.default.menuAddPanGestureToPresent(toView: view)
        menuLst.delegate = self
        viewContent.addSubview(subs("Standard"))
        navigationItem.title = "Standard"
    }

    //MARK: - Side Menu Click
    @IBAction func sideMenuClick(_ sender: UIBarButtonItem) {
        present(menu!, animated: true)
    }
    
    //MARK: - Navigation Menu Delegate
    func navigated(identifier: String) {
        for view in viewContent.subviews {
            view.removeFromSuperview()
        }
        navigationItem.title = identifier
        viewContent.addSubview(subs(identifier))
    }
    
    //MARK: - Add Subview
    func subs(_ identifier: String) -> UIView {
        let controller = storyboard!.instantiateViewController(withIdentifier: identifier)
        addChild(controller)
        controller.view.frame = viewContent.bounds
        return controller.view
    }
}

//MARK: - Class Menu List
class MenuListTableViewController: UITableViewController {
    var delegate: NavigationMenuDelegate?
    var items = ["Standard", "Scientific", "Date Calculation", "Curency", "Weight & Mass", "Temperature", "Area", "Time", "Power", "Data"]
    let bgColors = UIColor(red: 89/255,
                           green: 89/255,
                           blue: 89/255,
                           alpha: 1)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.setNavigationBarHidden(true, animated: true)
        tableView.backgroundColor = bgColors
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "\(items[indexPath.row])"
        cell.textLabel?.textColor = .white
        cell.backgroundColor = bgColors
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        dismiss(animated: true, completion: nil)
        delegate?.navigated(identifier: items[indexPath.row])
    }
}

//MARK: - Protocol Delegate
protocol NavigationMenuDelegate {
    func navigated(identifier: String)
}
