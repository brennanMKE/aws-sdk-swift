// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// The output for the GetBulkPublishDetails operation.
public struct GetBulkPublishDetailsOutputResponse: Equatable {
    /// If BulkPublishStatus is SUCCEEDED, the time the last bulk publish operation completed.
    public let bulkPublishCompleteTime: Date?
    /// The date/time at which the last bulk publish was initiated.
    public let bulkPublishStartTime: Date?
    /// Status of the last bulk publish operation, valid values are:
    ///       <p>NOT_STARTED - No bulk publish has been requested for this identity pool</p>
    ///       <p>IN_PROGRESS - Data is being published to the configured stream</p>
    ///       <p>SUCCEEDED - All data for the identity pool has been published to the configured stream</p>
    ///       <p>FAILED - Some portion of the data has failed to publish, check FailureMessage for the cause.</p>
    public let bulkPublishStatus: BulkPublishStatus?
    /// If BulkPublishStatus is FAILED this field will contain the error message that caused the bulk publish to fail.
    public let failureMessage: String?
    /// A name-spaced GUID (for example,
    ///       us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
    ///       unique within a region.
    public let identityPoolId: String?

    public init (
        bulkPublishCompleteTime: Date? = nil,
        bulkPublishStartTime: Date? = nil,
        bulkPublishStatus: BulkPublishStatus? = nil,
        failureMessage: String? = nil,
        identityPoolId: String? = nil
    )
    {
        self.bulkPublishCompleteTime = bulkPublishCompleteTime
        self.bulkPublishStartTime = bulkPublishStartTime
        self.bulkPublishStatus = bulkPublishStatus
        self.failureMessage = failureMessage
        self.identityPoolId = identityPoolId
    }
}

extension GetBulkPublishDetailsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetBulkPublishDetailsOutputResponse(bulkPublishCompleteTime: \(String(describing: bulkPublishCompleteTime)), bulkPublishStartTime: \(String(describing: bulkPublishStartTime)), bulkPublishStatus: \(String(describing: bulkPublishStatus)), failureMessage: \(String(describing: failureMessage)), identityPoolId: \(String(describing: identityPoolId)))"}
}