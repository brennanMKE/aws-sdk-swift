// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Requests API Gateway to get information about a <a>Deployments</a> collection.</p>
public struct GetDeploymentsInput: Equatable {
    /// <p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>
    public let limit: Int?
    /// <p>The current pagination position in the paged result set.</p>
    public let position: String?
    /// <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
    public let restApiId: String?

    public init (
        limit: Int? = nil,
        position: String? = nil,
        restApiId: String? = nil
    )
    {
        self.limit = limit
        self.position = position
        self.restApiId = restApiId
    }
}

extension GetDeploymentsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetDeploymentsInput(limit: \(String(describing: limit)), position: \(String(describing: position)), restApiId: \(String(describing: restApiId)))"}
}