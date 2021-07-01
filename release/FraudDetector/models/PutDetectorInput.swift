// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct PutDetectorInput: Equatable {
    /// <p>The description of the detector.</p>
    public let description: String?
    /// <p>The detector ID. </p>
    public let detectorId: String?
    /// <p>The name of the event type.</p>
    public let eventTypeName: String?
    /// <p>A collection of key and value pairs.</p>
    public let tags: [Tag]?

    public init (
        description: String? = nil,
        detectorId: String? = nil,
        eventTypeName: String? = nil,
        tags: [Tag]? = nil
    )
    {
        self.description = description
        self.detectorId = detectorId
        self.eventTypeName = eventTypeName
        self.tags = tags
    }
}

extension PutDetectorInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "PutDetectorInput(description: \(String(describing: description)), detectorId: \(String(describing: detectorId)), eventTypeName: \(String(describing: eventTypeName)), tags: \(String(describing: tags)))"}
}