// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// Settings for quality-defined variable bitrate encoding with the AV1 codec. Required when you set Rate control mode to QVBR. Not valid when you set Rate control mode to a value other than QVBR, or when you don't define Rate control mode.
public struct Av1QvbrSettings: Equatable {
    /// Required when you use QVBR rate control mode. That is, when you specify qvbrSettings within av1Settings. Specify the general target quality level for this output, from 1 to 10. Use higher numbers for greater quality. Level 10 results in nearly lossless compression. The quality level for most broadcast-quality transcodes is between 6 and 9. Optionally, to specify a value between whole numbers, also provide a value for the setting qvbrQualityLevelFineTune. For example, if you want your QVBR quality level to be 7.33, set qvbrQualityLevel to 7 and set qvbrQualityLevelFineTune to .33.
    public let qvbrQualityLevel: Int
    /// Optional. Specify a value here to set the QVBR quality to a level that is between whole numbers. For example, if you want your QVBR quality level to be 7.33, set qvbrQualityLevel to 7 and set qvbrQualityLevelFineTune to .33. MediaConvert rounds your QVBR quality level to the nearest third of a whole number. For example, if you set qvbrQualityLevel to 7 and you set qvbrQualityLevelFineTune to .25, your actual QVBR quality level is 7.33.
    public let qvbrQualityLevelFineTune: Double

    public init (
        qvbrQualityLevel: Int = 0,
        qvbrQualityLevelFineTune: Double = 0.0
    )
    {
        self.qvbrQualityLevel = qvbrQualityLevel
        self.qvbrQualityLevelFineTune = qvbrQualityLevelFineTune
    }
}

extension Av1QvbrSettings: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Av1QvbrSettings(qvbrQualityLevel: \(String(describing: qvbrQualityLevel)), qvbrQualityLevelFineTune: \(String(describing: qvbrQualityLevelFineTune)))"}
}