// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Represents a request to list the receipt rule sets that exist under your AWS account.
///             You use receipt rule sets to receive email with Amazon SES. For more information, see the
///                 <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer
///                 Guide</a>.</p>
public struct ListReceiptRuleSetsInput: Equatable {
    /// <p>A token returned from a previous call to <code>ListReceiptRuleSets</code> to indicate
    ///             the position in the receipt rule set list.</p>
    public let nextToken: String?

    public init (
        nextToken: String? = nil
    )
    {
        self.nextToken = nextToken
    }
}

extension ListReceiptRuleSetsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListReceiptRuleSetsInput(nextToken: \(String(describing: nextToken)))"}
}