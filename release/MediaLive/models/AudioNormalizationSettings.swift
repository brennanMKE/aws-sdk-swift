// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// Audio Normalization Settings
public struct AudioNormalizationSettings: Equatable {
    /// Audio normalization algorithm to use. itu17701 conforms to the CALM Act specification, itu17702 conforms to the EBU R-128 specification.
    public let algorithm: AudioNormalizationAlgorithm?
    /// When set to correctAudio the output audio is corrected using the chosen algorithm. If set to measureOnly, the audio will be measured but not adjusted.
    public let algorithmControl: AudioNormalizationAlgorithmControl?
    /// Target LKFS(loudness) to adjust volume to. If no value is entered, a default value will be used according to the chosen algorithm.  The CALM Act (1770-1) recommends a target of -24 LKFS. The EBU R-128 specification (1770-2) recommends a target of -23 LKFS.
    public let targetLkfs: Double

    public init (
        algorithm: AudioNormalizationAlgorithm? = nil,
        algorithmControl: AudioNormalizationAlgorithmControl? = nil,
        targetLkfs: Double = 0.0
    )
    {
        self.algorithm = algorithm
        self.algorithmControl = algorithmControl
        self.targetLkfs = targetLkfs
    }
}

extension AudioNormalizationSettings: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AudioNormalizationSettings(algorithm: \(String(describing: algorithm)), algorithmControl: \(String(describing: algorithmControl)), targetLkfs: \(String(describing: targetLkfs)))"}
}