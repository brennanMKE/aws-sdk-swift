// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>A structure returned by the <a>ListGroupResources</a> operation that
///             contains identity and group membership status information for one of the resources in
///             the group.</p>
public struct ListGroupResourcesItem: Equatable {
    /// <p>A structure that contains the ARN of a resource and its resource type.</p>
    public let identifier: ResourceIdentifier?
    /// <p>A structure that contains the status of this resource's membership in the
    ///             group.</p>
    ///         <note>
    ///             <p>This field is present in the response only if the group is of type
    ///                     <code>AWS::EC2::HostManagement</code>.</p>
    ///         </note>
    public let status: ResourceStatus?

    public init (
        identifier: ResourceIdentifier? = nil,
        status: ResourceStatus? = nil
    )
    {
        self.identifier = identifier
        self.status = status
    }
}

extension ListGroupResourcesItem: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListGroupResourcesItem(identifier: \(String(describing: identifier)), status: \(String(describing: status)))"}
}