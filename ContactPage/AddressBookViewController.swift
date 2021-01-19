//
//  AddressBookViewController.swift
//  SENG
//
//  Created by MAC on 19/01/21.
//

import UIKit
struct StructureOfTableData {
    let section:String?
    let name:[String]?
    let second:[String]?
    let per:[String]?
    
}
class AddressBookViewController: UIViewController {
    
    @IBOutlet weak var searchView: UIView!
    @IBOutlet weak var SearchContentView: UIView!
    @IBOutlet weak var contactTable: UITableView!
    let contactData:[StructureOfTableData]? = [StructureOfTableData(section: "A", name: ["Abishek Sonani","Abhay Sangani","Astha Sethu"], second:[ "Surat","Ahemdabad",""], per: ["10%","","50%"]),
                                              StructureOfTableData(section: "B", name: ["Bhimo Sonani","Bhargav Sangani","Bhavin Sethu","Bharat"], second:[ "Surat","Ahemdabad","","Vadodara"], per: ["80%","","10%","15%"]),
                                              StructureOfTableData(section: "C", name: ["Chand","Chirag Mabvani"], second:[ "Valsad","Amreli",""], per: ["85%","92%"]),
                                              StructureOfTableData(section: "D", name: ["Darshit Savaliya","Dhiru","Dhaval Ukani","Dharmik"], second:[ "Valsad","Amreli","","Surat"], per: ["85%","92%","60%","95%"]),
                                              StructureOfTableData(section: "#", name: ["1.Meet","5.Heer","0.D Ukani","3.Kruti","0.Etc","5.KT","6.Someone"], second:[ "Valsad","Amreli","","Surat","","","Rajkot"], per: ["45%","75%","12%","75%","90%","86%","30%"])]
    override func viewDidLoad() {
        super.viewDidLoad()
        searchView.layer.masksToBounds = true
        searchView.layer.cornerRadius = searchView.frame.height/2
        LineSetup()
        tableSetup()
    }
    func LineSetup(){
        let userLine = CALayer()
        userLine.frame = CGRect(x: SearchContentView.frame.minX - 15, y: SearchContentView.frame.height - 1, width: SearchContentView.frame.width + 40, height: 1.0)
        userLine.backgroundColor = UIColor.gray.cgColor
        SearchContentView.layer.addSublayer(userLine)
        
    }
    func tableSetup(){
        contactTable.delegate = self
        contactTable.dataSource = self
        contactTable.register(UINib(nibName: "Address", bundle: nil), forCellReuseIdentifier: "Address")
    }
    @IBAction func addButton(_ sender: UIButton) {

    }
    @IBAction func Alphabet(_ sender: UIButton) {
        switch sender.titleLabel?.text {
        case contactTable.headerView(forSection: 0)?.textLabel?.text:
                contactTable.scrollToRow(at: [0,0], at: .top, animated: true)
        case contactTable.headerView(forSection: 1)?.textLabel?.text:
                contactTable.scrollToRow(at: [1,0], at: .top, animated: true)
        case contactTable.headerView(forSection: 2)?.textLabel?.text:
                contactTable.scrollToRow(at: [2,0], at: .top, animated: true)
        case contactTable.headerView(forSection: 3)?.textLabel?.text:
                contactTable.scrollToRow(at: [3,0], at: .top, animated: true)
        case contactTable.headerView(forSection: 4)?.textLabel?.text:
                contactTable.scrollToRow(at: [4,0], at: .top, animated: true)
        case contactTable.headerView(forSection: 5)?.textLabel?.text:
                contactTable.scrollToRow(at: [5,0], at: .top, animated: true)
        case contactTable.headerView(forSection: 6)?.textLabel?.text:
                contactTable.scrollToRow(at: [6,0], at: .top, animated: true)
        case contactTable.headerView(forSection: 7)?.textLabel?.text:
                contactTable.scrollToRow(at: [7,0], at: .top, animated: true)
        case contactTable.headerView(forSection: 8)?.textLabel?.text:
                contactTable.scrollToRow(at: [8,0], at: .top, animated: true)
        case contactTable.headerView(forSection: 9)?.textLabel?.text:
                contactTable.scrollToRow(at: [9,0], at: .top, animated: true)
        case contactTable.headerView(forSection: 10)?.textLabel?.text:
                contactTable.scrollToRow(at: [10,0], at: .top, animated: true)
        case contactTable.headerView(forSection: 11)?.textLabel?.text:
                contactTable.scrollToRow(at: [11,0], at: .top, animated: true)
        case contactTable.headerView(forSection: 12)?.textLabel?.text:
                contactTable.scrollToRow(at: [12,0], at: .top, animated: true)
        case contactTable.headerView(forSection: 13)?.textLabel?.text:
                contactTable.scrollToRow(at: [13,0], at: .top, animated: true)
        case contactTable.headerView(forSection: 14)?.textLabel?.text:
                contactTable.scrollToRow(at: [14,0], at: .top, animated: true)
        case contactTable.headerView(forSection: 15)?.textLabel?.text:
                contactTable.scrollToRow(at: [15,0], at: .top, animated: true)
        case contactTable.headerView(forSection: 16)?.textLabel?.text:
                contactTable.scrollToRow(at: [16,0], at: .top, animated: true)
        case contactTable.headerView(forSection: 17)?.textLabel?.text:
                contactTable.scrollToRow(at: [17,0], at: .top, animated: true)
        case contactTable.headerView(forSection: 18)?.textLabel?.text:
                contactTable.scrollToRow(at: [18,0], at: .top, animated: true)
        case contactTable.headerView(forSection: 19)?.textLabel?.text:
                contactTable.scrollToRow(at: [19,0], at: .top, animated: true)
        case contactTable.headerView(forSection: 20)?.textLabel?.text:
                contactTable.scrollToRow(at: [20,0], at: .top, animated: true)
        case contactTable.headerView(forSection: 21)?.textLabel?.text:
                contactTable.scrollToRow(at: [21,0], at: .top, animated: true)
        case contactTable.headerView(forSection: 22)?.textLabel?.text:
                contactTable.scrollToRow(at: [22,0], at: .top, animated: true)
        case contactTable.headerView(forSection: 23)?.textLabel?.text:
                contactTable.scrollToRow(at: [23,0], at: .top, animated: true)
        case contactTable.headerView(forSection: 24)?.textLabel?.text:
                contactTable.scrollToRow(at: [24,0], at: .top, animated: true)
        case contactTable.headerView(forSection: 25)?.textLabel?.text:
                contactTable.scrollToRow(at: [25,0], at: .top, animated: true)
        default:
            contactTable.scrollToRow(at: [0,0], at: .top, animated: true)
        }
        
    }
}
extension AddressBookViewController:UITableViewDelegate,UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return contactData?.count ?? 0
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return contactData?[section].section
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactData?[section].name?.count ?? 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = contactTable.dequeueReusableCell(withIdentifier: "Address", for: indexPath) as! Address
        cell.nameLBL.text = contactData?[indexPath.section].name?[indexPath.row]
        cell.secondLBL.text = contactData?[indexPath.section].second?[indexPath.row]
        cell.scorePercentange.text = contactData?[indexPath.section].per?[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}
