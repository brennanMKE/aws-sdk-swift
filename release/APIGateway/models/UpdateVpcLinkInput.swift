// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Updates an existing <a>VpcLink</a> of a specified identifier.</p>
public struct UpdateVpcLinkInput: Equatable {
    /// <p>A list of update operations to be applied to the specified resource and in the order specified in this list.</p>
    public let patchOperations: [PatchOperation]?
    /// <p>[Required] The identifier of the  <a>VpcLink</a>. It is used in an <a>Integration</a> to reference this <a>VpcLink</a>.</p>
    public let vpcLinkId: String?

    public init (
        patchOperations: [PatchOperation]? = nil,
        vpcLinkId: String? = nil
    )
    {
        self.patchOperations = patchOperations
        self.vpcLinkId = vpcLinkId
    }
}

extension UpdateVpcLinkInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateVpcLinkInput(patchOperations: \(String(describing: patchOperations)), vpcLinkId: \(String(describing: vpcLinkId)))"}
}