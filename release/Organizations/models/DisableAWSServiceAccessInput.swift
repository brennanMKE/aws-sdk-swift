// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DisableAWSServiceAccessInput: Equatable {
    /// <p>The service principal name of the AWS service for which you want to disable
    ///             integration with your organization. This is typically in the form of a URL, such as
    ///                     <code>
    ///                <i>service-abbreviation</i>.amazonaws.com</code>.</p>
    public let servicePrincipal: String?

    public init (
        servicePrincipal: String? = nil
    )
    {
        self.servicePrincipal = servicePrincipal
    }
}

extension DisableAWSServiceAccessInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DisableAWSServiceAccessInput(servicePrincipal: \(String(describing: servicePrincipal)))"}
}