// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// Audio Language Selection
public struct AudioLanguageSelection: Equatable {
    /// Selects a specific three-letter language code from within an audio source.
    public let languageCode: String?
    /// When set to "strict", the transport stream demux strictly identifies audio streams by their language descriptor. If a PMT update occurs such that an audio stream matching the initially selected language is no longer present then mute will be encoded until the language returns. If "loose", then on a PMT update the demux will choose another audio stream in the program with the same stream type if it can't find one with the same language.
    public let languageSelectionPolicy: AudioLanguageSelectionPolicy?

    public init (
        languageCode: String? = nil,
        languageSelectionPolicy: AudioLanguageSelectionPolicy? = nil
    )
    {
        self.languageCode = languageCode
        self.languageSelectionPolicy = languageSelectionPolicy
    }
}

extension AudioLanguageSelection: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AudioLanguageSelection(languageCode: \(String(describing: languageCode)), languageSelectionPolicy: \(String(describing: languageSelectionPolicy)))"}
}