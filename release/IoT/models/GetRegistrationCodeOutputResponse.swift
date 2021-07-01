// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The output from the GetRegistrationCode operation.</p>
public struct GetRegistrationCodeOutputResponse: Equatable {
    /// <p>The CA certificate registration code.</p>
    public let registrationCode: String?

    public init (
        registrationCode: String? = nil
    )
    {
        self.registrationCode = registrationCode
    }
}

extension GetRegistrationCodeOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetRegistrationCodeOutputResponse(registrationCode: \(String(describing: registrationCode)))"}
}