// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>A UsageRecord indicates a quantity of usage for a given product, customer,
///             dimension and time.</p>
///         <p>Multiple requests with the same UsageRecords as input will be deduplicated to
///             prevent double charges.</p>
public struct UsageRecord: Equatable {
    /// <p>The CustomerIdentifier is obtained through the ResolveCustomer operation and
    ///             represents an individual buyer in your application.</p>
    public let customerIdentifier: String?
    /// <p>During the process of registering a product on AWS Marketplace, up to eight
    ///             dimensions are specified. These represent different units of value in your
    ///             application.</p>
    public let dimension: String?
    /// <p>The quantity of usage consumed by the customer for the given dimension and time.
    ///             Defaults to <code>0</code> if not specified.</p>
    public let quantity: Int?
    /// <p>Timestamp, in UTC, for which the usage is being reported.</p>
    ///         <p>Your application can meter usage for up to one hour in the past. Make sure the
    ///             timestamp value is not before the start of the software usage.</p>
    public let timestamp: Date?
    /// <p>The set of UsageAllocations to submit. The sum of all UsageAllocation quantities
    ///             must equal the Quantity of the UsageRecord.</p>
    public let usageAllocations: [UsageAllocation]?

    public init (
        customerIdentifier: String? = nil,
        dimension: String? = nil,
        quantity: Int? = nil,
        timestamp: Date? = nil,
        usageAllocations: [UsageAllocation]? = nil
    )
    {
        self.customerIdentifier = customerIdentifier
        self.dimension = dimension
        self.quantity = quantity
        self.timestamp = timestamp
        self.usageAllocations = usageAllocations
    }
}

extension UsageRecord: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UsageRecord(customerIdentifier: \(String(describing: customerIdentifier)), dimension: \(String(describing: dimension)), quantity: \(String(describing: quantity)), timestamp: \(String(describing: timestamp)), usageAllocations: \(String(describing: usageAllocations)))"}
}