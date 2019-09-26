import UIKit


class TeachersViewController :  UIViewController {

    //MARK: - IBOUTLET
    
    @IBOutlet weak var tableView: UITableView!
    
    
    //MARK: - Livecycle Methods
    override func viewDidLoad() {
           super.viewDidLoad()
        
        configureTableView()
        
    }
}


extension TeachersViewController: UITableViewDataSource, UITableViewDelegate {
    
    func configureTableView() {
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return defaultTeachers.count
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TeacherViewCell", for: indexPath) as? TeacherViewCell else {
            return UITableViewCell()
        }

        if(indexPath.row < defaultTeachers.count){
            cell.configureCell(teacher: defaultTeachers[indexPath.row])
        }

        return cell
        
    }
}
