// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Where channel data is stored. You may choose one of <code>serviceManagedS3</code> or
///         <code>customerManagedS3</code> storage. If not specified, the default is
///         <code>serviceManagedS3</code>. This cannot be changed after creation of the channel.</p>
public struct ChannelStorage: Equatable {
    /// <p>Use this to store channel data in an S3 bucket that you manage. If customer managed
    ///       storage is selected, the <code>retentionPeriod</code> parameter is ignored. You cannot change
    ///       the choice of service-managed or customer-managed S3 storage after the channel is
    ///       created.</p>
    public let customerManagedS3: CustomerManagedChannelS3Storage?
    /// <p>Use this to store channel data in an S3 bucket managed by AWS IoT Analytics. You cannot
    ///       change the choice of service-managed or customer-managed S3 storage after the channel is
    ///       created.</p>
    public let serviceManagedS3: ServiceManagedChannelS3Storage?

    public init (
        customerManagedS3: CustomerManagedChannelS3Storage? = nil,
        serviceManagedS3: ServiceManagedChannelS3Storage? = nil
    )
    {
        self.customerManagedS3 = customerManagedS3
        self.serviceManagedS3 = serviceManagedS3
    }
}

extension ChannelStorage: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ChannelStorage(customerManagedS3: \(String(describing: customerManagedS3)), serviceManagedS3: \(String(describing: serviceManagedS3)))"}
}