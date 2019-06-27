//
//  ViewController.swift
//  urlRequest
//
//  Created by Nico on 27/06/2019.
//  Copyright © 2019 Nico. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let FLICKR_URL = "https://www.flickr.com/services/rest/?method=flickr.test.echo&format=json&api_key=e9de0663dda402e79dd975bcc9994463"
    
    let ERROR_404_URL = "https://www.flickr.com/unknonw_dir/rest"
    
    let NO_SERVER_URL = "https://crosarts.com"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func sendRequest(toUrl requestUrl: String) {
        // 1. Il nous faut créer une session
        // URLSession.shared est une session déjà créé qui ne nécessite pas de configuration
        let session = URLSession.shared
        
        // 2. Création d'une instance d'URL
        let url = URL(string: requestUrl)!
        
        // 3. Création d'une task utilisant cette session pour appeler l'URL demandée
        let task = session.dataTask(with: url,
                                    completionHandler: { data, response, error in
            // Cette fonction sera appelée lorsque la requête aura été effectuée
            // NOTE: la fonction sera appelée quelque soit le résultat de la requête:
            // Erreur server, timeout, 404, succès, etc...
            // Les paramètres sont les suivants:
            // data: contiendra les données renvoyées par la requête (s'il y en a)
            // response: objet décrivant la réponse: code de retour, headers, encoding,..
            // error: contient l'erreur rencontrée lors de la requête ou nil si pas d'erreur
            if error != nil {
                print("Error during request: \n(error)")
                return
            }
            
            // check the response status code: return if server returned an error
            guard let httpResponse = response as? HTTPURLResponse,
                (200...299).contains(httpResponse.statusCode) else {
                    if let httpResponse = response as? HTTPURLResponse {
                        print("Error calling \(self.FLICKR_URL), error code: \(httpResponse.statusCode)")
                    } else {
                        print("Error calling \(self.FLICKR_URL), no error code")
                    }
                    
                    return
            }
            
            // check mime type
            guard let mime = response?.mimeType, mime == "application/json" else {
                print("Wrong MIME type!")
                return
            }
            
            // finally: do something with the data: decode it etc...
            print(data!)
        })
        
        // Ici la requête a juste était préparée, mais pas envoyée
        // Cet appel permet de lancer la tâche
        task.resume()

    }

    @IBAction func makeRequest(_ sender: Any) {
        self.sendRequest(toUrl: FLICKR_URL)
    }
    
    @IBAction func make404Request(_ sender: Any) {
        self.sendRequest(toUrl: ERROR_404_URL)
    }
    
    @IBAction func makeNotReachableRequest(_ sender: Any) {
        self.sendRequest(toUrl: NO_SERVER_URL)
    }
}

