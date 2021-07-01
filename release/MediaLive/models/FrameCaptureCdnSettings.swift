// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// Frame Capture Cdn Settings
public struct FrameCaptureCdnSettings: Equatable {
    /// Frame Capture S3 Settings
    public let frameCaptureS3Settings: FrameCaptureS3Settings?

    public init (
        frameCaptureS3Settings: FrameCaptureS3Settings? = nil
    )
    {
        self.frameCaptureS3Settings = frameCaptureS3Settings
    }
}

extension FrameCaptureCdnSettings: CustomDebugStringConvertible {
    public var debugDescription: String {
        "FrameCaptureCdnSettings(frameCaptureS3Settings: \(String(describing: frameCaptureS3Settings)))"}
}