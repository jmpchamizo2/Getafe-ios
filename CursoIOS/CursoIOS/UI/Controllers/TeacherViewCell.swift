import UIKit


class TeacherViewCell: UITableViewCell {
    
    //MARK: - IBOUTLET
    @IBOutlet weak var tLabelName: UILabel!
    @IBOutlet weak var tLabelMail: UILabel!
    @IBOutlet weak var tImage: UIImageView!
    @IBOutlet weak var tView: UIView!
    
    
    override func prepareForReuse() {
        tImage.image = nil
        tLabelMail.text = nil
        tLabelName.text = nil
    }
    
    
    
    func configureCell(teacher: Teacher) {
        tImage.image = UIImage(named: teacher.avatar ?? "")
        tLabelName.text = teacher.name
        tLabelMail.text = teacher.email
    }
    
}
