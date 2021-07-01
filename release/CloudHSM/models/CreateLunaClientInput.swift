// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Contains the inputs for the <a>CreateLunaClient</a> action.</p>
public struct CreateLunaClientInput: Equatable {
    /// <p>The contents of a Base64-Encoded X.509 v3 certificate to be installed on the HSMs used
    ///       by this client.</p>
    public let certificate: String?
    /// <p>The label for the client.</p>
    public let label: String?

    public init (
        certificate: String? = nil,
        label: String? = nil
    )
    {
        self.certificate = certificate
        self.label = label
    }
}

extension CreateLunaClientInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateLunaClientInput(certificate: \(String(describing: certificate)), label: \(String(describing: label)))"}
}