// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Requests API Gateway to change information about a <a>Stage</a> resource.</p>
public struct UpdateStageInput: Equatable {
    /// <p>A list of update operations to be applied to the specified resource and in the order specified in this list.</p>
    public let patchOperations: [PatchOperation]?
    /// <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
    public let restApiId: String?
    /// <p>[Required] The name of the <a>Stage</a> resource to change information about.</p>
    public let stageName: String?

    public init (
        patchOperations: [PatchOperation]? = nil,
        restApiId: String? = nil,
        stageName: String? = nil
    )
    {
        self.patchOperations = patchOperations
        self.restApiId = restApiId
        self.stageName = stageName
    }
}

extension UpdateStageInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateStageInput(patchOperations: \(String(describing: patchOperations)), restApiId: \(String(describing: restApiId)), stageName: \(String(describing: stageName)))"}
}