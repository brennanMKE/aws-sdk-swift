// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Information about the suppressed email address.</p>
public struct GetSuppressedDestinationOutputResponse: Equatable {
    /// <p>An object containing information about the suppressed email address.</p>
    public let suppressedDestination: SuppressedDestination?

    public init (
        suppressedDestination: SuppressedDestination? = nil
    )
    {
        self.suppressedDestination = suppressedDestination
    }
}

extension GetSuppressedDestinationOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetSuppressedDestinationOutputResponse(suppressedDestination: \(String(describing: suppressedDestination)))"}
}