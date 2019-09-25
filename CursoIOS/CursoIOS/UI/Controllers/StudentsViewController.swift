//
//  StudentsViewController.swift
//  CursoIOS
//
//  Created by Dev2 on 25/09/2019.
//  Copyright © 2019 on. All rights reserved.
//

import UIKit


class StudentsViewController :  UIViewController {
    
    //Vamos a poner marcas para encontrar más fácil el código tanto en la previsualización de la derecha y en breathcrumb de arriba.
    //podemos no poner guiones, delante o detrás. Es para que cree un separador delante o detrás.
    //MARK: - IBOUTLET
    
    @IBOutlet weak var tableView: UITableView!
    
    
    //MARK: - Livecycle Methods
    override func viewDidLoad() {
           super.viewDidLoad()
        
        configureTableView()
        
    }
}



//Vamos a extender la funcionalidad para que nuestro StudentsViewController sea un proveedor de datos y le lleguen los eventos para un tableView.
extension StudentsViewController: UITableViewDataSource, UITableViewDelegate {
    
    
    
    //Podemos vincular el datasource (fuente de datos) y el delegate (el elemento del que estaremos escuchando los eventos) como hemos hecho con los iboutlet, pero lo vamos a hacer por código.
    //Para vincularlos con el viewController basta con arrastrarlo hasta el boton del viewControlller encima del móvil en el storyboard, o igualandolo a self en el código
    func configureTableView() {
        tableView.dataSource = self
        tableView.delegate = self
        //Esto daría error en la clase anterior, lo definimos que ya que implementamos los protocolos para que esto funcione, haremos una extensión en vez de implementarlo en la clase anterior porque si en un futuro queremos que sea un proveedor de datos para otro componente solo deberemos cambiar esta funcionalidad.
    }
    
    //Podemos tener varias secciones en un tableView y estas secciones tendrán filas dentro y empezarán siempre por 0
    //Nuestra app tendrá tantas filas como estudiantes.
    //Este método devuelve el número de filas de cada sección, como solo tenemos una sección en nuestra app devolveremos el número de estudiantes.
    //Si tuviesemos otra secciones tendríamos que ir devolviendo el número de filas para cada sección.
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return defaultStudents.count
    }
    
    //Aqui tenemos que devolver la vista para cada celda.
    //EL indexpath es un clase que nos proporciona un sección y una fila
    //Debemos crearnos un tableViewCell en el storyBoard para devolverlo para la celda que deseemos.
    //En nuestro caso todas las celdas tienen el mismo diseño.
    
    
    //Esta función se ejecutará cuando se necesite una celda hasta un máximo que es el valor que devuelve la función anterior.
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //Nos aseguramos que tenemos un StudentViewCell y sino devolvemos una celda vacia.
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "StudentViewCell", for: indexPath) as? StudentViewCell else {
            return UITableViewCell()
        }
        //Comprobamos que no nos pasemos del indice por si desde que se ejecuto la función anterior ha cambiado el count.
        if(indexPath.row < defaultStudents.count){
            cell.configureCell(student: defaultStudents[indexPath.row])
        }

        return cell
        
    }
}
