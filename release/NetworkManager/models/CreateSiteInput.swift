// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateSiteInput: Equatable {
    /// <p>A description of your site.</p>
    ///         <p>Length Constraints: Maximum length of 256 characters.</p>
    public let description: String?
    /// <p>The ID of the global network.</p>
    public let globalNetworkId: String?
    /// <p>The site location. This information is used for visualization in the Network Manager console. If you specify the address, the latitude and longitude are automatically calculated.</p>
    ///         <ul>
    ///             <li>
    ///                <p>
    ///                   <code>Address</code>: The physical address of the site.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>Latitude</code>: The latitude of the site. </p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>Longitude</code>: The longitude of the site.</p>
    ///             </li>
    ///          </ul>
    public let location: Location?
    /// <p>The tags to apply to the resource during creation.</p>
    public let tags: [Tag]?

    public init (
        description: String? = nil,
        globalNetworkId: String? = nil,
        location: Location? = nil,
        tags: [Tag]? = nil
    )
    {
        self.description = description
        self.globalNetworkId = globalNetworkId
        self.location = location
        self.tags = tags
    }
}

extension CreateSiteInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateSiteInput(description: \(String(describing: description)), globalNetworkId: \(String(describing: globalNetworkId)), location: \(String(describing: location)), tags: \(String(describing: tags)))"}
}