// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Represents the name and version of a DataBrew recipe.</p>
public struct RecipeReference: Equatable {
    /// <p>The name of the recipe.</p>
    public let name: String?
    /// <p>The identifier for the version for the recipe. </p>
    public let recipeVersion: String?

    public init (
        name: String? = nil,
        recipeVersion: String? = nil
    )
    {
        self.name = name
        self.recipeVersion = recipeVersion
    }
}

extension RecipeReference: CustomDebugStringConvertible {
    public var debugDescription: String {
        "RecipeReference(name: \(String(describing: name)), recipeVersion: \(String(describing: recipeVersion)))"}
}