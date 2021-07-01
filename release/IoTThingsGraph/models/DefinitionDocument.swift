// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>A document that defines an entity. </p>
public struct DefinitionDocument: Equatable {
    /// <p>The language used to define the entity. <code>GRAPHQL</code> is the only valid value.</p>
    public let language: DefinitionLanguage?
    /// <p>The GraphQL text that defines the entity.</p>
    public let text: String?

    public init (
        language: DefinitionLanguage? = nil,
        text: String? = nil
    )
    {
        self.language = language
        self.text = text
    }
}

extension DefinitionDocument: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DefinitionDocument(language: \(String(describing: language)), text: \(String(describing: text)))"}
}