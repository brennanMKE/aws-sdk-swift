// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DeleteResourcePolicyStatementInput: Equatable {
    /// <p>The identifier of the revision of the policy to delete the statement
    ///          from. If this revision ID doesn't match the current revision ID, Amazon Lex
    ///          throws an exception.</p>
    ///          <p>If you don't specify a revision, Amazon Lex removes the current contents
    ///          of the statement. </p>
    public let expectedRevisionId: String?
    /// <p>The Amazon Resource Name (ARN) of the bot or bot alias that the
    ///          resource policy is attached to.</p>
    public let resourceArn: String?
    /// <p>The name of the statement (SID) to delete from the policy.</p>
    public let statementId: String?

    public init (
        expectedRevisionId: String? = nil,
        resourceArn: String? = nil,
        statementId: String? = nil
    )
    {
        self.expectedRevisionId = expectedRevisionId
        self.resourceArn = resourceArn
        self.statementId = statementId
    }
}

extension DeleteResourcePolicyStatementInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteResourcePolicyStatementInput(expectedRevisionId: \(String(describing: expectedRevisionId)), resourceArn: \(String(describing: resourceArn)), statementId: \(String(describing: statementId)))"}
}