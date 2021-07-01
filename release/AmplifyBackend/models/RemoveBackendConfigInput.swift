// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct RemoveBackendConfigInput: Equatable {
    /// <p>The app ID.</p>
    public let appId: String?

    public init (
        appId: String? = nil
    )
    {
        self.appId = appId
    }
}

extension RemoveBackendConfigInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "RemoveBackendConfigInput(appId: \(String(describing: appId)))"}
}