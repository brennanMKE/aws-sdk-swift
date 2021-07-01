// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Describes a site.</p>
public struct Site: Equatable {
    /// <p>The date and time that the site was created.</p>
    public let createdAt: Date?
    /// <p>The description of the site.</p>
    public let description: String?
    /// <p>The ID of the global network.</p>
    public let globalNetworkId: String?
    /// <p>The location of the site.</p>
    public let location: Location?
    /// <p>The Amazon Resource Name (ARN) of the site.</p>
    public let siteArn: String?
    /// <p>The ID of the site.</p>
    public let siteId: String?
    /// <p>The state of the site.</p>
    public let state: SiteState?
    /// <p>The tags for the site.</p>
    public let tags: [Tag]?

    public init (
        createdAt: Date? = nil,
        description: String? = nil,
        globalNetworkId: String? = nil,
        location: Location? = nil,
        siteArn: String? = nil,
        siteId: String? = nil,
        state: SiteState? = nil,
        tags: [Tag]? = nil
    )
    {
        self.createdAt = createdAt
        self.description = description
        self.globalNetworkId = globalNetworkId
        self.location = location
        self.siteArn = siteArn
        self.siteId = siteId
        self.state = state
        self.tags = tags
    }
}

extension Site: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Site(createdAt: \(String(describing: createdAt)), description: \(String(describing: description)), globalNetworkId: \(String(describing: globalNetworkId)), location: \(String(describing: location)), siteArn: \(String(describing: siteArn)), siteId: \(String(describing: siteId)), state: \(String(describing: state)), tags: \(String(describing: tags)))"}
}