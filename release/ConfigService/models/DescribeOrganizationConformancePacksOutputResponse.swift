// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeOrganizationConformancePacksOutputResponse: Equatable {
    /// <p>The nextToken string returned on a previous page that you use to get the next page of results in a
    /// 			paginated response.</p>
    public let nextToken: String?
    /// <p>Returns a list of OrganizationConformancePacks objects.</p>
    public let organizationConformancePacks: [OrganizationConformancePack]?

    public init (
        nextToken: String? = nil,
        organizationConformancePacks: [OrganizationConformancePack]? = nil
    )
    {
        self.nextToken = nextToken
        self.organizationConformancePacks = organizationConformancePacks
    }
}

extension DescribeOrganizationConformancePacksOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeOrganizationConformancePacksOutputResponse(nextToken: \(String(describing: nextToken)), organizationConformancePacks: \(String(describing: organizationConformancePacks)))"}
}