//
//  CreateCategoryViewController.swift
//  Tracker
//
//  Created by Александр Гегешидзе on 07.04.2024.
//

import UIKit

// MARK: - Protocol

protocol CreateCategoryViewControllerDelegate: AnyObject {
    func createCategoryViewController(
        _ viewController: CreateCategoryViewController,
        didFilledCategory category: TrackerCategory
    )
}

// MARK: - Class

final class CreateCategoryViewController: UIViewController {
    // MARK: - Private  UI properties
    private var titleLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.text = Resources.Labels.newCategory
        titleLabel.font = Resources.Fonts.titleUsual
        titleLabel.textAlignment = .center
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        return titleLabel
    }()
    
    private var textField: TextField = {
        let textField = TextField()
        textField.backgroundColor = .ypBackground
        textField.layer.cornerRadius = Resources.Dimensions.cornerRadius
        textField.layer.masksToBounds = true
        textField.placeholder = Resources.Labels.categoryNamePlaceholder
        textField.clearButtonMode = .whileEditing
        textField.textColor = .ypBlack
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    private let addButton: ActionButton = {
        let addButton = ActionButton()
        addButton.setTitle(Resources.Labels.addCategory, for: .normal)
        addButton.setTitleColor(.ypLightGray, for: .disabled)
        addButton.isEnabled = false
        addButton.translatesAutoresizingMaskIntoConstraints = false
        return addButton
    }()
    
    // MARK: - Private properties
    
    private let cellID = "CategoryCell"
    private var userInput = "" {
        didSet {
            formIsFulfilled = !userInput.isEmpty
        }
    }
    
    private var formIsFulfilled = false {
        didSet {
            if formIsFulfilled {
                updateAddButtonState()
            }
        }
    }
    
    // MARK: - Public properties
    
    weak var delegate: CreateCategoryViewControllerDelegate?
    
    // MARK: - Life circle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
        view.backgroundColor = .ypWhite
        
        configureUI()
        
        addButton.addTarget(self, action: #selector(addButtonClicked), for: .touchUpInside)
        updateAddButtonState()
        
        textField.delegate = self
        textField.becomeFirstResponder()
    }
}

// MARK: - Private methods

private extension CreateCategoryViewController {
    @objc func addButtonClicked() {
        let newCategory = TrackerCategory(id: UUID(), name: userInput, items: [])
        delegate?.createCategoryViewController(self, didFilledCategory: newCategory)
    }
    
    func updateAddButtonState() {
        addButton.backgroundColor = formIsFulfilled ? .ypBlack : .ypGray
        addButton.isEnabled = formIsFulfilled
    }
}

// MARK: - UITextFieldDelegate

extension CreateCategoryViewController: UITextFieldDelegate {
    func textField(
        _ textField: UITextField,
        shouldChangeCharactersIn range: NSRange,
        replacementString string: String
    ) -> Bool {
        userInput = textField.text ?? ""
        return true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        userInput = textField.text ?? ""
        return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        true
    }
}

// MARK: - Private methods to configure UI section

private extension CreateCategoryViewController {
    func configureUI() {
        view.addSubview(titleLabel)
        view.addSubview(textField)
        view.addSubview(addButton)
        
        let safeArea = view.safeAreaLayoutGuide
        let vSpacing = Resources.Layouts.vSpacingElement
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: Resources.Layouts.vSpacingTitle),
            titleLabel.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor),
            titleLabel.heightAnchor.constraint(equalToConstant: Resources.Dimensions.titleHeight),
            
            textField.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: vSpacing),
            textField.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: vSpacing),
            textField.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -vSpacing),
            textField.heightAnchor.constraint(equalToConstant: Resources.Dimensions.fieldHeight),
            
            addButton.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: vSpacing),
            addButton.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -vSpacing),
            addButton.heightAnchor.constraint(equalToConstant: Resources.Dimensions.buttonHeight),
            addButton.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor, constant: -vSpacing)
        ])
    }
}
