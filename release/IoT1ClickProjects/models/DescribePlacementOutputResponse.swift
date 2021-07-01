// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribePlacementOutputResponse: Equatable {
    /// <p>An object describing the placement.</p>
    public let placement: PlacementDescription?

    public init (
        placement: PlacementDescription? = nil
    )
    {
        self.placement = placement
    }
}

extension DescribePlacementOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribePlacementOutputResponse(placement: \(String(describing: placement)))"}
}