// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Describes the status of logging for a cluster.</p>
public struct DisableLoggingOutputResponse: Equatable {
    /// <p>The name of the S3 bucket where the log files are stored.</p>
    public let bucketName: String?
    /// <p>The message indicating that logs failed to be delivered.</p>
    public let lastFailureMessage: String?
    /// <p>The last time when logs failed to be delivered.</p>
    public let lastFailureTime: Date?
    /// <p>The last time that logs were delivered.</p>
    public let lastSuccessfulDeliveryTime: Date?
    /// <p>
    ///             <code>true</code> if logging is on, <code>false</code> if logging is off.</p>
    public let loggingEnabled: Bool
    /// <p>The prefix applied to the log file names.</p>
    public let s3KeyPrefix: String?

    public init (
        bucketName: String? = nil,
        lastFailureMessage: String? = nil,
        lastFailureTime: Date? = nil,
        lastSuccessfulDeliveryTime: Date? = nil,
        loggingEnabled: Bool = false,
        s3KeyPrefix: String? = nil
    )
    {
        self.bucketName = bucketName
        self.lastFailureMessage = lastFailureMessage
        self.lastFailureTime = lastFailureTime
        self.lastSuccessfulDeliveryTime = lastSuccessfulDeliveryTime
        self.loggingEnabled = loggingEnabled
        self.s3KeyPrefix = s3KeyPrefix
    }
}

extension DisableLoggingOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DisableLoggingOutputResponse(bucketName: \(String(describing: bucketName)), lastFailureMessage: \(String(describing: lastFailureMessage)), lastFailureTime: \(String(describing: lastFailureTime)), lastSuccessfulDeliveryTime: \(String(describing: lastSuccessfulDeliveryTime)), loggingEnabled: \(String(describing: loggingEnabled)), s3KeyPrefix: \(String(describing: s3KeyPrefix)))"}
}