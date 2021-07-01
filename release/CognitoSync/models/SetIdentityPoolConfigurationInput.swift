// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The input for the SetIdentityPoolConfiguration operation.</p>
public struct SetIdentityPoolConfigurationInput: Equatable {
    /// Options to apply to this identity pool for Amazon Cognito streams.
    public let cognitoStreams: CognitoStreams?
    /// <p>A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by
    ///          Amazon Cognito. This is the ID of the pool to modify.</p>
    public let identityPoolId: String?
    /// <p>Options to apply to this identity pool for push synchronization.</p>
    public let pushSync: PushSync?

    public init (
        cognitoStreams: CognitoStreams? = nil,
        identityPoolId: String? = nil,
        pushSync: PushSync? = nil
    )
    {
        self.cognitoStreams = cognitoStreams
        self.identityPoolId = identityPoolId
        self.pushSync = pushSync
    }
}

extension SetIdentityPoolConfigurationInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "SetIdentityPoolConfigurationInput(cognitoStreams: \(String(describing: cognitoStreams)), identityPoolId: \(String(describing: identityPoolId)), pushSync: \(String(describing: pushSync)))"}
}