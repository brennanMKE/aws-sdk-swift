// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>A container for specifying S3 Intelligent-Tiering filters. The filters determine the
///          subset of objects to which the rule applies.</p>
public struct IntelligentTieringAndOperator: Equatable {
    /// <p>An object key name prefix that identifies the subset of objects to which the
    ///          configuration applies.</p>
    public let prefix: String?
    /// <p>All of these tags must exist in the object's tag set in order for the configuration to
    ///          apply.</p>
    public let tags: [Tag]?

    public init (
        prefix: String? = nil,
        tags: [Tag]? = nil
    )
    {
        self.prefix = prefix
        self.tags = tags
    }
}

extension IntelligentTieringAndOperator: CustomDebugStringConvertible {
    public var debugDescription: String {
        "IntelligentTieringAndOperator(prefix: \(String(describing: prefix)), tags: \(String(describing: tags)))"}
}