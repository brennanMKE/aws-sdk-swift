// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateServiceSpecificCredentialInput: Equatable {
    /// <p>The name of the AWS service that is to be associated with the credentials. The
    ///             service you specify here is the only service that can be accessed using these
    ///             credentials.</p>
    public let serviceName: String?
    /// <p>The name of the IAM user that is to be associated with the credentials. The new
    ///             service-specific credentials have the same permissions as the associated user except
    ///             that they can be used only to access the specified service.</p>
    ///         <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    ///     characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    public let userName: String?

    public init (
        serviceName: String? = nil,
        userName: String? = nil
    )
    {
        self.serviceName = serviceName
        self.userName = userName
    }
}

extension CreateServiceSpecificCredentialInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateServiceSpecificCredentialInput(serviceName: \(String(describing: serviceName)), userName: \(String(describing: userName)))"}
}