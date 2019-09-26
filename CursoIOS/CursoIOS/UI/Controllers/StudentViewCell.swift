//
//  File.swift
//  CursoIOS
//
//  Created by Dev2 on 25/09/2019.
//  Copyright © 2019 on. All rights reserved.
//

import UIKit

//A todas las celdas hay que poner un identifier es recomendable poner el mismo que la clase, en este caso: StudentViewCell

class StudentViewCell: UITableViewCell {
    
    //MARK: - IBOUTLET
    @IBOutlet weak var mLabelName: UILabel!
    @IBOutlet weak var mLabelMail: UILabel!
    @IBOutlet weak var mImage: UIImageView!
    @IBOutlet weak var mView: UIView!
    
    //Si tenemos que mostrar 100 datos el sistema no carga todas, carga solo las vistas que caben en la pantalla + 2. Cuando hacemos scroll y sale la celda 0 de la pantalla la coloca en la última posición con los datos del último. De esta manera sólo tendremos x + 2 celdas cargadas en pantalla.
    //Si por lo que sea tenemos un campo vacio, por ejemplo el nombre, en al nueva posición debemos nosotros debemos vaciarlo porque sino podremos mostrar una foto correcta y el nombre con el dato de la antigua vista ya que en la nueva vista no tiene nombre. Así que debemos que limiarlo nosotros, con la función prepareForReuse(), aqui la limpiaremos para volverla a utilizar(si se desea)
    override func prepareForReuse() {
        mImage.image = nil
        mLabelMail.text = nil
        mLabelName.text = nil
    }
    
    
    
    func configureCell(student: Student) {
        mImage.image = UIImage(named: student.avatar ?? "")
        mLabelName.text = student.name
        mLabelMail.text = student.email
    }
    
}
