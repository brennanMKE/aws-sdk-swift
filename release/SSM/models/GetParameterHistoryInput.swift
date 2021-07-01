// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetParameterHistoryInput: Equatable {
    /// <p>The maximum number of items to return for this call. The call also returns a token that you
    ///    can specify in a subsequent call to get the next set of results.</p>
    public let maxResults: Int
    /// <p>The name of the parameter for which you want to review history.</p>
    public let name: String?
    /// <p>The token for the next set of items to return. (You received this token from a previous
    ///    call.)</p>
    public let nextToken: String?
    /// <p>Return decrypted values for secure string parameters. This flag is ignored for String and
    ///    StringList parameter types.</p>
    public let withDecryption: Bool

    public init (
        maxResults: Int = 0,
        name: String? = nil,
        nextToken: String? = nil,
        withDecryption: Bool = false
    )
    {
        self.maxResults = maxResults
        self.name = name
        self.nextToken = nextToken
        self.withDecryption = withDecryption
    }
}

extension GetParameterHistoryInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetParameterHistoryInput(maxResults: \(String(describing: maxResults)), name: \(String(describing: name)), nextToken: \(String(describing: nextToken)), withDecryption: \(String(describing: withDecryption)))"}
}