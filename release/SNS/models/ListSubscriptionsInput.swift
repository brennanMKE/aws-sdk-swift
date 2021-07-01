// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Input for ListSubscriptions action.</p>
public struct ListSubscriptionsInput: Equatable {
    /// <p>Token returned by the previous <code>ListSubscriptions</code> request.</p>
    public let nextToken: String?

    public init (
        nextToken: String? = nil
    )
    {
        self.nextToken = nextToken
    }
}

extension ListSubscriptionsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListSubscriptionsInput(nextToken: \(String(describing: nextToken)))"}
}