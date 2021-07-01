// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Details for an Amazon EMR Studio, including ID, Name, VPC, and Description. The details
///          do not include subnets, IAM roles, security groups, or tags associated with the
///          Studio.</p>
public struct StudioSummary: Equatable {
    /// <p>The time when the Amazon EMR Studio was created.</p>
    public let creationTime: Date?
    /// <p>The detailed description of the Amazon EMR Studio.</p>
    public let description: String?
    /// <p>The name of the Amazon EMR Studio.</p>
    public let name: String?
    /// <p>The ID of the Amazon EMR Studio.</p>
    public let studioId: String?
    /// <p>The unique access URL of the Amazon EMR Studio.</p>
    public let url: String?
    /// <p>The ID of the Virtual Private Cloud (Amazon VPC) associated with the Amazon EMR
    ///          Studio.</p>
    public let vpcId: String?

    public init (
        creationTime: Date? = nil,
        description: String? = nil,
        name: String? = nil,
        studioId: String? = nil,
        url: String? = nil,
        vpcId: String? = nil
    )
    {
        self.creationTime = creationTime
        self.description = description
        self.name = name
        self.studioId = studioId
        self.url = url
        self.vpcId = vpcId
    }
}

extension StudioSummary: CustomDebugStringConvertible {
    public var debugDescription: String {
        "StudioSummary(creationTime: \(String(describing: creationTime)), description: \(String(describing: description)), name: \(String(describing: name)), studioId: \(String(describing: studioId)), url: \(String(describing: url)), vpcId: \(String(describing: vpcId)))"}
}