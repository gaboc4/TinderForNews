//
//  SourceTableViewController.swift
//  Tinder for News
//
//  Created by Gabriel Centeno on 3/25/17.
//  Copyright © 2017 Gabriel Centeno. All rights reserved.
//

import UIKit

class SourceTableViewController: UITableViewController {
    
    //MARK: Properties
    
    var sources = [Source]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Load the sample data.
        loadSourceNames()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sources.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "SourcesTableViewCell"
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? SourcesTableViewCell  else {
            fatalError("The dequeued cell is not an instance of MealTableViewCell.")
        }
        
        let source = sources[indexPath.row]
        
        cell.sourceLabel.text = source.name
        cell.switchSource.isOn = source.selected
        
        
        return cell
    }
    
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
    //MARK: Private Methods
    let apiKey = "661565c788e540cabe76172780fc477f"
    public func loadSourceNames() {
        
        guard let source1 = Source(name: "CNN", selected: true, description: "General News Source",
                                    apiSource: "https://newsapi.org/v1/articles?source=cnn&sortBy=top&apiKey=" + apiKey) else {
                                        fatalError("you fucked ur own mother")
        }
        guard let source2 = Source(name: "Google News", selected: true, description: "General News Source",
                                   apiSource: "https://newsapi.org/v1/articles?source=google-news&sortBy=top&apiKey=" + apiKey) else {
                                    fatalError("you fucked ur own mother")
        }
        guard let source3 = Source(name: "The New York Times", selected: true, description: "General News Source",
                                   apiSource: "https://newsapi.org/v1/articles?source=the-new-york-times&sortBy=top&apiKey=" + apiKey) else {
                                    fatalError("you fucked ur own mother")
        }
        guard let source4 = Source(name: "Buzzfeed", selected: true, description: "General News Source",
                                   apiSource: "https://newsapi.org/v1/articles?source=buzzfeed&sortBy=top&apiKey=" + apiKey) else {
                                    fatalError("you fucked ur own mother")
        }
        guard let source5 = Source(name: "The Economist", selected: true, description: "General News Source",
                                   apiSource: "https://newsapi.org/v1/articles?source=the-economist&sortBy=top&apiKey=" + apiKey) else {
                                    fatalError("you fucked ur own mother")
        }
        
        sources += [source1, source2, source3, source4, source5]
    }
}
