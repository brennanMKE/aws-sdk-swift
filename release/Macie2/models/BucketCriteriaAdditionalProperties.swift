// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Specifies the operator to use in a property-based condition that filters the results of a query for information about S3 buckets.</p>
public struct BucketCriteriaAdditionalProperties: Equatable {
    /// <p>The value for the property matches (equals) the specified value. If you specify multiple values, Macie uses OR logic to join the values.</p>
    public let eq: [String]?
    /// <p>The value for the property is greater than the specified value.</p>
    public let gt: Int
    /// <p>The value for the property is greater than or equal to the specified value.</p>
    public let gte: Int
    /// <p>The value for the property is less than the specified value.</p>
    public let lt: Int
    /// <p>The value for the property is less than or equal to the specified value.</p>
    public let lte: Int
    /// <p>The value for the property doesn't match (doesn't equal) the specified value. If you specify multiple values, Amazon Macie uses OR logic to join the values.</p>
    public let neq: [String]?
    /// <p>The name of the bucket begins with the specified value.</p>
    public let prefix: String?

    public init (
        eq: [String]? = nil,
        gt: Int = 0,
        gte: Int = 0,
        lt: Int = 0,
        lte: Int = 0,
        neq: [String]? = nil,
        prefix: String? = nil
    )
    {
        self.eq = eq
        self.gt = gt
        self.gte = gte
        self.lt = lt
        self.lte = lte
        self.neq = neq
        self.prefix = prefix
    }
}

extension BucketCriteriaAdditionalProperties: CustomDebugStringConvertible {
    public var debugDescription: String {
        "BucketCriteriaAdditionalProperties(eq: \(String(describing: eq)), gt: \(String(describing: gt)), gte: \(String(describing: gte)), lt: \(String(describing: lt)), lte: \(String(describing: lte)), neq: \(String(describing: neq)), prefix: \(String(describing: prefix)))"}
}