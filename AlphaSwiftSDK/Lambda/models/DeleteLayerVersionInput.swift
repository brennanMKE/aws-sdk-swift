// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DeleteLayerVersionInput: Equatable {
    /// <p>The name or Amazon Resource Name (ARN) of the layer.</p>
    public let layerName: String?
    /// <p>The version number.</p>
    public let versionNumber: Int

    public init (
        layerName: String? = nil,
        versionNumber: Int = 0
    )
    {
        self.layerName = layerName
        self.versionNumber = versionNumber
    }
}
