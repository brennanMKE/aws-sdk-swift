// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>A configuration object that specifies the destination of an event after Lambda processes it.</p>
public struct DestinationConfig: Equatable {
    /// <p>The destination configuration for failed invocations.</p>
    public let onFailure: OnFailure?
    /// <p>The destination configuration for successful invocations.</p>
    public let onSuccess: OnSuccess?

    public init (
        onFailure: OnFailure? = nil,
        onSuccess: OnSuccess? = nil
    )
    {
        self.onFailure = onFailure
        self.onSuccess = onSuccess
    }
}