// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Error info for scram secret associate/disassociate failure.</p>
public struct UnprocessedScramSecret: Equatable {
    /// <p>Error code for associate/disassociate failure.</p>
    public let errorCode: String?
    /// <p>Error message for associate/disassociate failure.</p>
    public let errorMessage: String?
    /// <p>AWS Secrets Manager secret ARN.</p>
    public let secretArn: String?

    public init (
        errorCode: String? = nil,
        errorMessage: String? = nil,
        secretArn: String? = nil
    )
    {
        self.errorCode = errorCode
        self.errorMessage = errorMessage
        self.secretArn = secretArn
    }
}

extension UnprocessedScramSecret: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UnprocessedScramSecret(errorCode: \(String(describing: errorCode)), errorMessage: \(String(describing: errorMessage)), secretArn: \(String(describing: secretArn)))"}
}