// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>A complex type that contains information about the traffic policy that you want to create a new version for.</p>
public struct CreateTrafficPolicyVersionInput: Equatable {
    /// <p>The comment that you specified in the <code>CreateTrafficPolicyVersion</code> request, if any.</p>
    public let comment: String?
    /// <p>The definition of this version of the traffic policy, in JSON format. You specified the JSON in the <code>CreateTrafficPolicyVersion</code>
    /// 			request. For more information about the JSON format, see
    /// 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_CreateTrafficPolicy.html">CreateTrafficPolicy</a>.</p>
    public let document: String?
    /// <p>The ID of the traffic policy for which you want to create a new version.</p>
    public let id: String?

    public init (
        comment: String? = nil,
        document: String? = nil,
        id: String? = nil
    )
    {
        self.comment = comment
        self.document = document
        self.id = id
    }
}

extension CreateTrafficPolicyVersionInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateTrafficPolicyVersionInput(comment: \(String(describing: comment)), document: \(String(describing: document)), id: \(String(describing: id)))"}
}