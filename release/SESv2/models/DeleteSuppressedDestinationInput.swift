// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>A request to remove an email address from the suppression list for your
///             account.</p>
public struct DeleteSuppressedDestinationInput: Equatable {
    /// <p>The suppressed email destination to remove from the account suppression list.</p>
    public let emailAddress: String?

    public init (
        emailAddress: String? = nil
    )
    {
        self.emailAddress = emailAddress
    }
}

extension DeleteSuppressedDestinationInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteSuppressedDestinationInput(emailAddress: \(String(describing: emailAddress)))"}
}