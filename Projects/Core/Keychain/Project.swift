import ProjectDescription
import ProjectDescriptionHelpers
import DependencyPlugin

let project = Project.makeModule(
    name: ModulePaths.Core.Keychain.rawValue,
    product: .staticLibrary,
    targets: [.unitTest],
    internalDependencies: []
)
