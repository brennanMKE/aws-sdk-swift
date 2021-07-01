// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DeletePhoneNumberInput: Equatable {
    /// <p>The phone number ID.</p>
    public let phoneNumberId: String?

    public init (
        phoneNumberId: String? = nil
    )
    {
        self.phoneNumberId = phoneNumberId
    }
}

extension DeletePhoneNumberInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeletePhoneNumberInput(phoneNumberId: \(String(describing: phoneNumberId)))"}
}