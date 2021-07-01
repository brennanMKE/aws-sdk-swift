// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ContainsPiiEntitiesOutputResponse: Equatable {
    /// <p>The labels used in the document being analyzed. Individual labels represent personally
    ///       identifiable information (PII) entity types.</p>
    public let labels: [EntityLabel]?

    public init (
        labels: [EntityLabel]? = nil
    )
    {
        self.labels = labels
    }
}

extension ContainsPiiEntitiesOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ContainsPiiEntitiesOutputResponse(labels: \(String(describing: labels)))"}
}