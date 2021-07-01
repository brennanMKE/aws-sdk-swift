// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Represents a request to create an open and click tracking option object in a
///             configuration set. </p>
public struct CreateConfigurationSetTrackingOptionsInput: Equatable {
    /// <p>The name of the configuration set that the tracking options should be associated
    ///             with.</p>
    public let configurationSetName: String?
    /// <p>A domain that is used to redirect email recipients to an Amazon SES-operated domain. This
    ///             domain captures open and click events generated by Amazon SES emails.</p>
    ///         <p>For more information, see <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/configure-custom-open-click-domains.html">Configuring
    ///                 Custom Domains to Handle Open and Click Tracking</a> in the <i>Amazon SES
    ///                 Developer Guide</i>.</p>
    public let trackingOptions: TrackingOptions?

    public init (
        configurationSetName: String? = nil,
        trackingOptions: TrackingOptions? = nil
    )
    {
        self.configurationSetName = configurationSetName
        self.trackingOptions = trackingOptions
    }
}

extension CreateConfigurationSetTrackingOptionsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateConfigurationSetTrackingOptionsInput(configurationSetName: \(String(describing: configurationSetName)), trackingOptions: \(String(describing: trackingOptions)))"}
}