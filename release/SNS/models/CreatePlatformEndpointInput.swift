// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Input for CreatePlatformEndpoint action.</p>
public struct CreatePlatformEndpointInput: Equatable {
    /// <p>For a list of attributes, see <a href="https://docs.aws.amazon.com/sns/latest/api/API_SetEndpointAttributes.html">SetEndpointAttributes</a>.</p>
    public let attributes: [String:String]?
    /// <p>Arbitrary user data to associate with the endpoint. Amazon SNS does not use this data. The
    ///             data must be in UTF-8 format and less than 2KB.</p>
    public let customUserData: String?
    /// <p>PlatformApplicationArn returned from CreatePlatformApplication is used to create a an
    ///             endpoint.</p>
    public let platformApplicationArn: String?
    /// <p>Unique identifier created by the notification service for an app on a device. The
    ///             specific name for Token will vary, depending on which notification service is being
    ///             used. For example, when using APNS as the notification service, you need the device
    ///             token. Alternatively, when using GCM (Firebase Cloud Messaging) or ADM, the device token
    ///             equivalent is called the registration ID.</p>
    public let token: String?

    public init (
        attributes: [String:String]? = nil,
        customUserData: String? = nil,
        platformApplicationArn: String? = nil,
        token: String? = nil
    )
    {
        self.attributes = attributes
        self.customUserData = customUserData
        self.platformApplicationArn = platformApplicationArn
        self.token = token
    }
}

extension CreatePlatformEndpointInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreatePlatformEndpointInput(attributes: \(String(describing: attributes)), customUserData: \(String(describing: customUserData)), platformApplicationArn: \(String(describing: platformApplicationArn)), token: \(String(describing: token)))"}
}