// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListResolverQueryLogConfigAssociationsInput: Equatable {
    /// <p>An optional specification to return a subset of query logging associations.</p>
    /// 		       <note>
    /// 			         <p>If you submit a second or subsequent <code>ListResolverQueryLogConfigAssociations</code> request and specify the <code>NextToken</code> parameter,
    /// 				you must use the same values for <code>Filters</code>, if any, as in the previous request.</p>
    /// 		       </note>
    public let filters: [Filter]?
    /// <p>The maximum number of query logging associations that you want to return in the response to a <code>ListResolverQueryLogConfigAssociations</code> request.
    /// 			If you don't specify a value for <code>MaxResults</code>, Resolver returns up to 100 query logging associations. </p>
    public let maxResults: Int?
    /// <p>For the first <code>ListResolverQueryLogConfigAssociations</code> request, omit this value.</p>
    /// 		       <p>If there are more than <code>MaxResults</code> query logging associations that match the values that you specify for <code>Filters</code>,
    /// 			you can submit another <code>ListResolverQueryLogConfigAssociations</code> request to get the next group of associations. In the next request, specify the value of
    /// 			<code>NextToken</code> from the previous response. </p>
    public let nextToken: String?
    /// <p>The element that you want Resolver to sort query logging associations by. </p>
    /// 		       <note>
    /// 			         <p>If you submit a second or subsequent <code>ListResolverQueryLogConfigAssociations</code> request and specify the <code>NextToken</code> parameter,
    /// 				you must use the same value for <code>SortBy</code>, if any, as in the previous request.</p>
    /// 		       </note>
    /// 		
    /// 		       <p>Valid values include the following elements:</p>
    /// 		       <ul>
    ///             <li>
    ///                <p>
    ///                   <code>CreationTime</code>: The ID of the query logging association.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>Error</code>: If the value of <code>Status</code> is <code>FAILED</code>, the value of <code>Error</code>
    /// 				indicates the cause: </p>
    /// 				           <ul>
    ///                   <li>
    ///                      <p>
    ///                         <code>DESTINATION_NOT_FOUND</code>: The specified destination (for example, an Amazon S3 bucket) was deleted.</p>
    ///                   </li>
    ///                   <li>
    ///                      <p>
    ///                         <code>ACCESS_DENIED</code>: Permissions don't allow sending logs to the destination.</p>
    ///                   </li>
    ///                </ul>
    /// 				           <p>If <code>Status</code> is a value other than <code>FAILED</code>, <code>ERROR</code> is null.</p>
    /// 			         </li>
    ///             <li>
    ///                <p>
    ///                   <code>Id</code>: The ID of the query logging association</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>ResolverQueryLogConfigId</code>: The ID of the query logging configuration</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>ResourceId</code>: The ID of the VPC that is associated with the query logging configuration</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>Status</code>: The current status of the configuration. Valid values include the following:</p>
    /// 				
    /// 				           <ul>
    ///                   <li>
    ///                      <p>
    ///                         <code>CREATING</code>: Resolver is creating an association between an Amazon VPC and a query logging configuration.</p>
    ///                   </li>
    ///                   <li>
    ///                      <p>
    ///                         <code>CREATED</code>: The association between an Amazon VPC and a query logging configuration
    /// 						was successfully created. Resolver is logging queries that originate in the specified VPC.</p>
    ///                   </li>
    ///                   <li>
    ///                      <p>
    ///                         <code>DELETING</code>: Resolver is deleting this query logging association.</p>
    ///                   </li>
    ///                   <li>
    ///                      <p>
    ///                         <code>FAILED</code>: Resolver either couldn't create or couldn't delete the query logging association.
    /// 						Here are two common causes:</p>
    /// 						               <ul>
    ///                         <li>
    ///                            <p>The specified destination (for example, an Amazon S3 bucket) was deleted.</p>
    ///                         </li>
    ///                         <li>
    ///                            <p>Permissions don't allow sending logs to the destination.</p>
    ///                         </li>
    ///                      </ul>
    /// 					             </li>
    ///                </ul>
    /// 			         </li>
    ///          </ul>
    public let sortBy: String?
    /// <p>If you specified a value for <code>SortBy</code>, the order that you want query logging associations to be listed in,
    /// 			<code>ASCENDING</code> or <code>DESCENDING</code>.</p>
    /// 		       <note>
    /// 			         <p>If you submit a second or subsequent <code>ListResolverQueryLogConfigAssociations</code> request and specify the <code>NextToken</code> parameter,
    /// 				you must use the same value for <code>SortOrder</code>, if any, as in the previous request.</p>
    /// 		       </note>
    public let sortOrder: SortOrder?

    public init (
        filters: [Filter]? = nil,
        maxResults: Int? = nil,
        nextToken: String? = nil,
        sortBy: String? = nil,
        sortOrder: SortOrder? = nil
    )
    {
        self.filters = filters
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.sortBy = sortBy
        self.sortOrder = sortOrder
    }
}

extension ListResolverQueryLogConfigAssociationsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListResolverQueryLogConfigAssociationsInput(filters: \(String(describing: filters)), maxResults: \(String(describing: maxResults)), nextToken: \(String(describing: nextToken)), sortBy: \(String(describing: sortBy)), sortOrder: \(String(describing: sortOrder)))"}
}