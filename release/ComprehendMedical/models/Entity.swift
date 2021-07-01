// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p> Provides information about an extracted medical entity.</p>
public struct Entity: Equatable {
    /// <p> The extracted attributes that relate to this entity.</p>
    public let attributes: [Attribute]?
    /// <p> The 0-based character offset in the input text that shows where the entity begins. The
    ///       offset returns the UTF-8 code point in the string. </p>
    public let beginOffset: Int?
    /// <p> The category of the entity.</p>
    public let category: EntityType?
    /// <p> The 0-based character offset in the input text that shows where the entity ends. The
    ///       offset returns the UTF-8 code point in the string. </p>
    public let endOffset: Int?
    /// <p> The numeric identifier for the entity. This is a monotonically increasing id unique
    ///       within this response rather than a global unique identifier. </p>
    public let id: Int?
    /// <p>The level of confidence that Amazon Comprehend Medical has in the accuracy of the detection.</p>
    public let score: Float?
    /// <p> The segment of input text extracted as this entity.</p>
    public let text: String?
    /// <p>Contextual information for the entity.</p>
    public let traits: [Trait]?
    /// <p> Describes the specific type of entity with category of entities.</p>
    public let type: EntitySubType?

    public init (
        attributes: [Attribute]? = nil,
        beginOffset: Int? = nil,
        category: EntityType? = nil,
        endOffset: Int? = nil,
        id: Int? = nil,
        score: Float? = nil,
        text: String? = nil,
        traits: [Trait]? = nil,
        type: EntitySubType? = nil
    )
    {
        self.attributes = attributes
        self.beginOffset = beginOffset
        self.category = category
        self.endOffset = endOffset
        self.id = id
        self.score = score
        self.text = text
        self.traits = traits
        self.type = type
    }
}

extension Entity: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Entity(attributes: \(String(describing: attributes)), beginOffset: \(String(describing: beginOffset)), category: \(String(describing: category)), endOffset: \(String(describing: endOffset)), id: \(String(describing: id)), score: \(String(describing: score)), text: \(String(describing: text)), traits: \(String(describing: traits)), type: \(String(describing: type)))"}
}