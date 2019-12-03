//
//  RecipeDetailViewController.swift
//  Recipes
//
//  Created by Patrick Millet on 12/2/19.
//  Copyright © 2019 Lambda Inc. All rights reserved.
//

import UIKit

class RecipeDetailViewController: UIViewController {

    // MARK: - Outlets
    
    @IBOutlet weak var labelOutlet: UILabel!
    
    @IBOutlet weak var textViewOutlet: UITextView!
    
    
    // MARK: - Properties
    
    var recipe: Recipe? {
        didSet{
            updateViews()
        }
    }
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    

    
    // MARK: - Private
    
    private func updateViews() {
        guard let recipe = recipe, self.isViewLoaded else { return }
        labelOutlet.text = recipe.name
        textViewOutlet.text = recipe.instructions
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
