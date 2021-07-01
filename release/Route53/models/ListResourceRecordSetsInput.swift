// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>A request for the resource record sets that are associated with a specified hosted zone.</p>
public struct ListResourceRecordSetsInput: Equatable {
    /// <p>The ID of the hosted zone that contains the resource record sets that you want to list.</p>
    public let hostedZoneId: String?
    /// <p>(Optional) The maximum number of resource records sets to include in the response body for this request. If the response includes
    /// 			more than <code>maxitems</code> resource record sets, the value of the <code>IsTruncated</code> element in the response is <code>true</code>,
    /// 			and the values of the <code>NextRecordName</code> and <code>NextRecordType</code> elements in the response identify the first
    /// 			resource record set in the next group of <code>maxitems</code> resource record sets.</p>
    public let maxItems: Int?
    /// <p>
    ///             <i>Resource record sets that have a routing policy other than simple:</i> If results were truncated for a given DNS name and type,
    /// 			specify the value of <code>NextRecordIdentifier</code> from the previous response to get the next resource record set that has the current
    /// 			DNS name and type.</p>
    public let startRecordIdentifier: String?
    /// <p>The first name in the lexicographic ordering of resource record sets that you want to list.
    /// 			If the specified record name doesn't exist, the results begin with the first resource record set that has a name
    /// 			greater than the value of <code>name</code>.</p>
    public let startRecordName: String?
    /// <p>The type of resource record set to begin the record listing from.</p>
    /// 		       <p>Valid values for basic resource record sets: <code>A</code> | <code>AAAA</code> | <code>CAA</code> | <code>CNAME</code> | <code>MX</code> |
    /// 			<code>NAPTR</code> | <code>NS</code> | <code>PTR</code> | <code>SOA</code> | <code>SPF</code> | <code>SRV</code> | <code>TXT</code>
    ///          </p>
    /// 		       <p>Values for weighted, latency, geolocation, and failover resource record sets: <code>A</code> | <code>AAAA</code> | <code>CAA</code> | <code>CNAME</code> |
    /// 			<code>MX</code> | <code>NAPTR</code> | <code>PTR</code> | <code>SPF</code> | <code>SRV</code> | <code>TXT</code>
    ///          </p>
    /// 		       <p>Values for alias resource record sets: </p>
    /// 		       <ul>
    ///             <li>
    ///                <p>
    ///                   <b>API Gateway custom regional API or edge-optimized API</b>: A</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <b>CloudFront distribution</b>: A or AAAA</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <b>Elastic Beanstalk environment that has a regionalized subdomain</b>: A</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <b>Elastic Load Balancing load balancer</b>: A | AAAA</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <b>S3 bucket</b>: A</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <b>VPC interface VPC endpoint</b>: A</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <b>Another resource record set in this hosted zone:</b> The type of the resource record set
    /// 				that the alias references.</p>
    ///             </li>
    ///          </ul>
    /// 		       <p>Constraint: Specifying <code>type</code> without specifying <code>name</code> returns an <code>InvalidInput</code> error.</p>
    public let startRecordType: RRType?

    public init (
        hostedZoneId: String? = nil,
        maxItems: Int? = nil,
        startRecordIdentifier: String? = nil,
        startRecordName: String? = nil,
        startRecordType: RRType? = nil
    )
    {
        self.hostedZoneId = hostedZoneId
        self.maxItems = maxItems
        self.startRecordIdentifier = startRecordIdentifier
        self.startRecordName = startRecordName
        self.startRecordType = startRecordType
    }
}

extension ListResourceRecordSetsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListResourceRecordSetsInput(hostedZoneId: \(String(describing: hostedZoneId)), maxItems: \(String(describing: maxItems)), startRecordIdentifier: \(String(describing: startRecordIdentifier)), startRecordName: \(String(describing: startRecordName)), startRecordType: \(String(describing: startRecordType)))"}
}