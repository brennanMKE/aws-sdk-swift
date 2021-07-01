// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>A request to update an existing <a>MethodResponse</a> resource.</p>
public struct UpdateMethodResponseInput: Equatable {
    /// <p>[Required] The HTTP verb of the <a>Method</a> resource.</p>
    public let httpMethod: String?
    /// <p>A list of update operations to be applied to the specified resource and in the order specified in this list.</p>
    public let patchOperations: [PatchOperation]?
    /// <p>[Required] The <a>Resource</a> identifier for the <a>MethodResponse</a> resource.</p>
    public let resourceId: String?
    /// <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
    public let restApiId: String?
    /// <p>[Required] The status code for the <a>MethodResponse</a> resource.</p>
    public let statusCode: String?

    public init (
        httpMethod: String? = nil,
        patchOperations: [PatchOperation]? = nil,
        resourceId: String? = nil,
        restApiId: String? = nil,
        statusCode: String? = nil
    )
    {
        self.httpMethod = httpMethod
        self.patchOperations = patchOperations
        self.resourceId = resourceId
        self.restApiId = restApiId
        self.statusCode = statusCode
    }
}

extension UpdateMethodResponseInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateMethodResponseInput(httpMethod: \(String(describing: httpMethod)), patchOperations: \(String(describing: patchOperations)), resourceId: \(String(describing: resourceId)), restApiId: \(String(describing: restApiId)), statusCode: \(String(describing: statusCode)))"}
}