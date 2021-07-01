// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeAccountOutputResponse: Equatable {
    /// <p>A structure that contains information about the requested account.</p>
    public let account: Account?

    public init (
        account: Account? = nil
    )
    {
        self.account = account
    }
}

extension DescribeAccountOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeAccountOutputResponse(account: \(String(describing: account)))"}
}