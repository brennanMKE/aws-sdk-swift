// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Error messages for environment variables that couldn't be applied.</p>
public struct EnvironmentError: Equatable {
    /// <p>The error code.</p>
    public let errorCode: String?
    /// <p>The error message.</p>
    public let message: String?

    public init (
        errorCode: String? = nil,
        message: String? = nil
    )
    {
        self.errorCode = errorCode
        self.message = message
    }
}
