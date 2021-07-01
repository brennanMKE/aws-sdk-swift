// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeTypeRegistrationInput: Equatable {
    /// <p>The identifier for this registration request.</p>
    ///          <p>This registration token is generated by CloudFormation when you initiate a registration request using <code>
    ///                <a>RegisterType</a>
    ///             </code>.</p>
    public let registrationToken: String?

    public init (
        registrationToken: String? = nil
    )
    {
        self.registrationToken = registrationToken
    }
}

extension DescribeTypeRegistrationInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeTypeRegistrationInput(registrationToken: \(String(describing: registrationToken)))"}
}