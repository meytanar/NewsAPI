//
//  ViewController.swift
//  NewsAPI
//
//  Created by BSH_MRM on 6.12.2018.
//  Copyright © 2018 BSH_MRM. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource  {
    
    var titleArray:Array = [String]()
    var newsImageArray:Array = [String]()
    var descriptionArray:Array = [String]()
    var linkArray:Array = [String]()
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = "https://newsapi.org/v2/top-headlines?country=tr&apiKey=bf73715b948b44e88898e9676f33b197"
        
        if let url = URL(string: url){
            let request = URLRequest(url: url)
            
            URLSession.shared.dataTask(with: request){ (data, response, err) in
                
                do {
                    let newJson = try JSONDecoder().decode(news.self, from: data!)
                    for post in newJson.article {
                        DispatchQueue.main.sync {
                            self.titleArray.append(post.title)
                            self.descriptionArray.append(post.description)
                            self.newsImageArray.append(post.urlToImage)
                            self.linkArray.append(post.url)
                            
                        }
                        self.tableView.reloadData()
                    }
                } catch {
                }
                }.resume()
        }
    }
    
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titleArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! NewsCell
        cell.title.text = titleArray[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
    
    }



