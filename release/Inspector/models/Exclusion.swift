// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Contains information about what was excluded from an assessment run.</p>
public struct Exclusion: Equatable {
    /// <p>The ARN that specifies the exclusion.</p>
    public let arn: String?
    /// <p>The system-defined attributes for the exclusion.</p>
    public let attributes: [Attribute]?
    /// <p>The description of the exclusion.</p>
    public let description: String?
    /// <p>The recommendation for the exclusion.</p>
    public let recommendation: String?
    /// <p>The AWS resources for which the exclusion pertains.</p>
    public let scopes: [Scope]?
    /// <p>The name of the exclusion.</p>
    public let title: String?

    public init (
        arn: String? = nil,
        attributes: [Attribute]? = nil,
        description: String? = nil,
        recommendation: String? = nil,
        scopes: [Scope]? = nil,
        title: String? = nil
    )
    {
        self.arn = arn
        self.attributes = attributes
        self.description = description
        self.recommendation = recommendation
        self.scopes = scopes
        self.title = title
    }
}

extension Exclusion: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Exclusion(arn: \(String(describing: arn)), attributes: \(String(describing: attributes)), description: \(String(describing: description)), recommendation: \(String(describing: recommendation)), scopes: \(String(describing: scopes)), title: \(String(describing: title)))"}
}