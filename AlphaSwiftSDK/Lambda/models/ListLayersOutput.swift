// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListLayersOutput: Equatable {
    /// <p>A list of function layers.</p>
    public let layers: [LayersListItem]?
    /// <p>A pagination token returned when the response doesn't contain all layers.</p>
    public let nextMarker: String?

    public init (
        layers: [LayersListItem]? = nil,
        nextMarker: String? = nil
    )
    {
        self.layers = layers
        self.nextMarker = nextMarker
    }
}
