// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeInstanceInformationInput: Equatable {
    /// <p>One or more filters. Use a filter to return a more specific list of instances. You can
    ///    filter based on tags applied to EC2 instances. Use this <code>Filters</code> data type instead of
    ///     <code>InstanceInformationFilterList</code>, which is deprecated.</p>
    public let filters: [InstanceInformationStringFilter]?
    /// <p>This is a legacy method. We recommend that you don't use this method. Instead, use the
    ///     <code>Filters</code> data type. <code>Filters</code> enables you to return instance information
    ///    by filtering based on tags applied to managed instances.</p>
    ///          <note>
    ///             <p>Attempting to use <code>InstanceInformationFilterList</code> and <code>Filters</code> leads
    ///     to an exception error. </p>
    ///          </note>
    public let instanceInformationFilterList: [InstanceInformationFilter]?
    /// <p>The maximum number of items to return for this call. The call also returns a token that you
    ///    can specify in a subsequent call to get the next set of results. </p>
    public let maxResults: Int
    /// <p>The token for the next set of items to return. (You received this token from a previous
    ///    call.)</p>
    public let nextToken: String?

    public init (
        filters: [InstanceInformationStringFilter]? = nil,
        instanceInformationFilterList: [InstanceInformationFilter]? = nil,
        maxResults: Int = 0,
        nextToken: String? = nil
    )
    {
        self.filters = filters
        self.instanceInformationFilterList = instanceInformationFilterList
        self.maxResults = maxResults
        self.nextToken = nextToken
    }
}

extension DescribeInstanceInformationInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeInstanceInformationInput(filters: \(String(describing: filters)), instanceInformationFilterList: \(String(describing: instanceInformationFilterList)), maxResults: \(String(describing: maxResults)), nextToken: \(String(describing: nextToken)))"}
}