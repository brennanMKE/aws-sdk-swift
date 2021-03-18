// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct PublishVersionInput: Equatable {
    /**
     <p>Only publish a version if the hash value matches the value that's specified. Use this option to avoid
           publishing a version if the function code has changed since you last updated it. You can get the hash for the
           version that you uploaded from the output of <a>UpdateFunctionCode</a>.</p>
     */
    public let codeSha256: String?
    /// <p>A description for the version to override the description in the function configuration.</p>
    public let description: String?
    /**
     <p>The name of the Lambda function.</p>
              <p class="title">
                 <b>Name formats</b>
              </p>
              <ul>
                 <li>
                    <p>
                       <b>Function name</b> - <code>MyFunction</code>.</p>
                 </li>
                 <li>
                    <p>
                       <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p>
                 </li>
                 <li>
                    <p>
                       <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p>
                 </li>
              </ul>
              <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
           characters in length.</p>
     */
    public let functionName: String?
    /**
     <p>Only update the function if the revision ID matches the ID that's specified. Use this option to avoid
           publishing a version if the function configuration has changed since you last updated it.</p>
     */
    public let revisionId: String?

    public init (
        codeSha256: String? = nil,
        description: String? = nil,
        functionName: String? = nil,
        revisionId: String? = nil
    )
    {
        self.codeSha256 = codeSha256
        self.description = description
        self.functionName = functionName
        self.revisionId = revisionId
    }
}
