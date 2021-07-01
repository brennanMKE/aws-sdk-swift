// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Contains information about an email template.</p>
public struct TemplateMetadata: Equatable {
    /// <p>The time and date the template was created.</p>
    public let createdTimestamp: Date?
    /// <p>The name of the template.</p>
    public let name: String?

    public init (
        createdTimestamp: Date? = nil,
        name: String? = nil
    )
    {
        self.createdTimestamp = createdTimestamp
        self.name = name
    }
}

extension TemplateMetadata: CustomDebugStringConvertible {
    public var debugDescription: String {
        "TemplateMetadata(createdTimestamp: \(String(describing: createdTimestamp)), name: \(String(describing: name)))"}
}