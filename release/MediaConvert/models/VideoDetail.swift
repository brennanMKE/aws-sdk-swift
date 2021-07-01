// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// Contains details about the output's video stream
public struct VideoDetail: Equatable {
    /// Height in pixels for the output
    public let heightInPx: Int
    /// Width in pixels for the output
    public let widthInPx: Int

    public init (
        heightInPx: Int = 0,
        widthInPx: Int = 0
    )
    {
        self.heightInPx = heightInPx
        self.widthInPx = widthInPx
    }
}

extension VideoDetail: CustomDebugStringConvertible {
    public var debugDescription: String {
        "VideoDetail(heightInPx: \(String(describing: heightInPx)), widthInPx: \(String(describing: widthInPx)))"}
}