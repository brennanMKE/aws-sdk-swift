// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListTagsInput: Equatable {
    /// <p>The Amazon Resource Name (ARN) that was returned when you called the <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html">CreateCertificateAuthority</a> action. This must be of the form: </p>
    /// 		       <p>
    /// 			         <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i>
    ///             </code>
    /// 		       </p>
    public let certificateAuthorityArn: String?
    /// <p>Use this parameter when paginating results to specify the maximum number of items to
    /// 			return in the response. If additional items exist beyond the number you specify, the
    /// 				<b>NextToken</b> element is sent in the response. Use this
    /// 				<b>NextToken</b> value in a subsequent request to retrieve
    /// 			additional items.</p>
    public let maxResults: Int?
    /// <p>Use this parameter when paginating results in a subsequent request after you receive a
    /// 			response with truncated results. Set it to the value of <b>NextToken</b> from the response you just received.</p>
    public let nextToken: String?

    public init (
        certificateAuthorityArn: String? = nil,
        maxResults: Int? = nil,
        nextToken: String? = nil
    )
    {
        self.certificateAuthorityArn = certificateAuthorityArn
        self.maxResults = maxResults
        self.nextToken = nextToken
    }
}

extension ListTagsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListTagsInput(certificateAuthorityArn: \(String(describing: certificateAuthorityArn)), maxResults: \(String(describing: maxResults)), nextToken: \(String(describing: nextToken)))"}
}