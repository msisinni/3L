//
//  MasterViewController.swift
//  3L
//
//  Created by Diego Ardila on 7/5/15.
//  Copyright (c) 2015 Common Sensing. All rights reserved.
//

import UIKit
import CoreData

//Handles displaying the titles of the songs in cells, and passing song objects to detail views

class TableViewController: UITableViewController {


    // MARK: - Segues
    //Pass the proper song object to the detailview
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showDetail" {
            if let indexPath = self.tableView.indexPathForSelectedRow() {
                let song = Album().songs[indexPath.row]
                (segue.destinationViewController as! DetailViewController).song = song
            }
        }
    }

    // MARK: - Table View

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let album = Album()
        return album.numberOfSongs
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! UITableViewCell
        cell.textLabel?.text = Album().songs[indexPath.row].title!
        return cell
    }

    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return false
    }

    


}

