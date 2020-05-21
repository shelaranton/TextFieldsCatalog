//
//  NativeField.swift
//  TextFieldsCatalog
//
//  Created by Александр Чаусов on 21/05/2020.
//  Copyright © 2020 Александр Чаусов. All rights reserved.
//

public final class NativeFieldComponent {
    fileprivate var field: (UIControl & UITextInputTraits)

    init(field: (UIControl & UITextInputTraits)) {
        self.field = field
    }
}

public final class NativeTextFieldComponent {
    fileprivate var textField: InnerTextField?
}

public final class NativeTextViewComponent {
    fileprivate var textView: UITextView?
}

public protocol NativeField {
    var root: NativeFieldComponent { get }

    var autocapitalizationType: UITextAutocapitalizationType? { get set }
    var autocorrectionType: UITextAutocorrectionType? { get set }
    var keyboardType: UIKeyboardType? { get set }
    var keyboardAppearance: UIKeyboardAppearance? { get set }
    var returnKeyType: UIReturnKeyType? { get set }
    var enablesReturnKeyAutomatically: Bool? { get set }
    var isSecureTextEntry: Bool? { get set }
    var textContentType: UITextContentType? { get set }

    var contentVerticalAlignment: UIControl.ContentVerticalAlignment { get set }
}

public protocol NativeTextField: NativeField {
    var component: NativeTextFieldComponent { get }

    var text: String? { get }

    var textAlignment: NSTextAlignment { get set }
    var defaultTextAttributes: [NSAttributedString.Key : Any] { get set }
    var clearsOnBeginEditing: Bool { get set }
    var adjustsFontSizeToFitWidth: Bool { get set }
    var minimumFontSize: CGFloat { get set }
    var clearButtonMode: UITextField.ViewMode { get set }
    var leftView: UIView? { get set }
    var leftViewMode: UITextField.ViewMode { get set }
    var rightView: UIView? { get set }
    var inputView: UIView? { get set }
    var inputAccessoryView: UIView? { get set }
    var clearsOnInsertion: Bool { get set }

    var hideOnReturn: Bool? { get set }

    func disablePasteAction()
    func hideKeyboard()
}

public protocol NativeTextView: NativeField {
    var component: NativeTextViewComponent { get }

    var text: String { get }
}

extension NativeField {

    var autocapitalizationType: UITextAutocapitalizationType? {
        get {
            return root.field.autocapitalizationType
        }
        set {
            root.field.autocapitalizationType = newValue
        }
    }
    var autocorrectionType: UITextAutocorrectionType? {
        get {

        }
        set {

        }
    }
    var keyboardType: UIKeyboardType? {
        get {

        }
        set {

        }
    }
    var keyboardAppearance: UIKeyboardAppearance? {
        get {

        }
        set {

        }
    }
    var returnKeyType: UIReturnKeyType? {
        get {

        }
        set {

        }
    }
    var enablesReturnKeyAutomatically: Bool? {
        get {

        }
        set {

        }
    }
    var isSecureTextEntry: Bool? {
        get {

        }
        set {

        }
    }
    var textContentType: UITextContentType? {
        get {

        }
        set {

        }
    }

    var contentVerticalAlignment: UIControl.ContentVerticalAlignment {
        get {

        }
        set {

        }
    }

}
