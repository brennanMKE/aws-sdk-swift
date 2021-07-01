// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The details of the streaming configuration of an <code>AppInstance</code>.</p>
public struct AppInstanceStreamingConfiguration: Equatable {
    /// <p>The type of data to be streamed.</p>
    public let appInstanceDataType: AppInstanceDataType?
    /// <p>The resource ARN.</p>
    public let resourceArn: String?

    public init (
        appInstanceDataType: AppInstanceDataType? = nil,
        resourceArn: String? = nil
    )
    {
        self.appInstanceDataType = appInstanceDataType
        self.resourceArn = resourceArn
    }
}

extension AppInstanceStreamingConfiguration: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AppInstanceStreamingConfiguration(appInstanceDataType: \(String(describing: appInstanceDataType)), resourceArn: \(String(describing: resourceArn)))"}
}