// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>A complex type that contains list information for the resource record set.</p>
public struct ListResourceRecordSetsOutputResponse: Equatable {
    /// <p>A flag that indicates whether more resource record sets remain to be listed. If your results were truncated, you can make a
    /// 			follow-up pagination request by using the <code>NextRecordName</code> element.</p>
    public let isTruncated: Bool
    /// <p>The maximum number of records you requested.</p>
    public let maxItems: Int?
    /// <p>
    ///             <i>Resource record sets that have a routing policy other than simple:</i> If results were truncated for a given
    /// 			DNS name and type, the value of <code>SetIdentifier</code> for the next resource record set that has the current DNS name and type.</p>
    /// 		       <p>For information about routing policies, see
    /// 			<a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/routing-policy.html">Choosing a Routing Policy</a>
    /// 			in the <i>Amazon Route 53 Developer Guide</i>.</p>
    public let nextRecordIdentifier: String?
    /// <p>If the results were truncated, the name of the next record in the list.</p>
    /// 		       <p>This element is present only if <code>IsTruncated</code> is true. </p>
    public let nextRecordName: String?
    /// <p>If the results were truncated, the type of the next record in the list.</p>
    /// 		       <p>This element is present only if <code>IsTruncated</code> is true. </p>
    public let nextRecordType: RRType?
    /// <p>Information about multiple resource record sets.</p>
    public let resourceRecordSets: [ResourceRecordSet]?

    public init (
        isTruncated: Bool = false,
        maxItems: Int? = nil,
        nextRecordIdentifier: String? = nil,
        nextRecordName: String? = nil,
        nextRecordType: RRType? = nil,
        resourceRecordSets: [ResourceRecordSet]? = nil
    )
    {
        self.isTruncated = isTruncated
        self.maxItems = maxItems
        self.nextRecordIdentifier = nextRecordIdentifier
        self.nextRecordName = nextRecordName
        self.nextRecordType = nextRecordType
        self.resourceRecordSets = resourceRecordSets
    }
}

extension ListResourceRecordSetsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListResourceRecordSetsOutputResponse(isTruncated: \(String(describing: isTruncated)), maxItems: \(String(describing: maxItems)), nextRecordIdentifier: \(String(describing: nextRecordIdentifier)), nextRecordName: \(String(describing: nextRecordName)), nextRecordType: \(String(describing: nextRecordType)), resourceRecordSets: \(String(describing: resourceRecordSets)))"}
}