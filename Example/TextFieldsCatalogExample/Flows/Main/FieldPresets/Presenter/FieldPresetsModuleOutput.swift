//
//  FieldPresetsModuleOutput.swift
//  TextFieldsCatalog
//
//  Created by Alexander Chausov on 24/01/2019.
//  Copyright © 2019 Surf. All rights reserved.
//

protocol FieldPresetsModuleOutput: class {
    var onClose: EmptyClosure? { get set }
    var onSelectPreset: FieldPresetClosure? { get set }
}
