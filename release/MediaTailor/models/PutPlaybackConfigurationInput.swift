// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct PutPlaybackConfigurationInput: Equatable {
    /// <p>The URL for the ad decision server (ADS). This includes the specification of static parameters and placeholders for dynamic parameters. AWS Elemental MediaTailor substitutes player-specific and session-specific parameters as needed when calling the ADS. Alternately, for testing you can provide a static VAST URL. The maximum length is 25,000 characters.</p>
    public let adDecisionServerUrl: String?
    /// <p>The configuration for avail suppression, also known as ad suppression. For more information about ad suppression, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/ad-behavior.html">Ad Suppression</a>.</p>
    public let availSuppression: AvailSuppression?
    /// <p>The configuration for bumpers. Bumpers are short audio or video clips that play at the start or before the end of an ad break. To learn more about bumpers, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/bumpers.html">Bumpers</a>.</p>
    public let bumper: Bumper?
    /// <p>The configuration for using a content delivery network (CDN), like Amazon CloudFront, for content and ad segment management.</p>
    public let cdnConfiguration: CdnConfiguration?
    /// <p>The player parameters and aliases used as dynamic variables during session initialization. For more information, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/variables-domain.html">Domain Variables</a>.</p>
    public let configurationAliases: [String:[String:String]]?
    /// <p>The configuration for DASH content.</p>
    public let dashConfiguration: DashConfigurationForPut?
    /// <p>The configuration for pre-roll ad insertion.</p>
    public let livePreRollConfiguration: LivePreRollConfiguration?
    /// <p>The configuration for manifest processing rules. Manifest processing rules enable customization of the personalized manifests created by MediaTailor.</p>
    public let manifestProcessingRules: ManifestProcessingRules?
    /// <p>The identifier for the playback configuration.</p>
    public let name: String?
    /// <p>Defines the maximum duration of underfilled ad time (in seconds) allowed in an ad break. If the duration of underfilled ad time exceeds the personalization threshold, then the personalization of the ad break is abandoned and the underlying content is shown. This feature applies to <i>ad replacement</i> in live and VOD streams, rather than ad insertion, because it relies on an underlying content stream. For more information about ad break behavior, including ad replacement and insertion, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/ad-behavior.html">Ad Behavior in AWS Elemental MediaTailor</a>.</p>
    public let personalizationThresholdSeconds: Int
    /// <p>The URL for a high-quality video asset to transcode and use to fill in time that's not used by ads. AWS Elemental MediaTailor shows the slate to fill in gaps in media content. Configuring the slate is optional for non-VPAID configurations. For VPAID, the slate is required because MediaTailor provides it in the slots that are designated for dynamic ad content. The slate must be a high-quality asset that contains both audio and video.</p>
    public let slateAdUrl: String?
    /// <p>The tags to assign to the playback configuration.</p>
    public let tags: [String:String]?
    /// <p>The name that is used to associate this playback configuration with a custom transcode profile. This overrides the dynamic transcoding defaults of MediaTailor. Use this only if you have already set up custom profiles with the help of AWS Support.</p>
    public let transcodeProfileName: String?
    /// <p>The URL prefix for the parent manifest for the stream, minus the asset ID. The maximum length is 512 characters.</p>
    public let videoContentSourceUrl: String?

    public init (
        adDecisionServerUrl: String? = nil,
        availSuppression: AvailSuppression? = nil,
        bumper: Bumper? = nil,
        cdnConfiguration: CdnConfiguration? = nil,
        configurationAliases: [String:[String:String]]? = nil,
        dashConfiguration: DashConfigurationForPut? = nil,
        livePreRollConfiguration: LivePreRollConfiguration? = nil,
        manifestProcessingRules: ManifestProcessingRules? = nil,
        name: String? = nil,
        personalizationThresholdSeconds: Int = 0,
        slateAdUrl: String? = nil,
        tags: [String:String]? = nil,
        transcodeProfileName: String? = nil,
        videoContentSourceUrl: String? = nil
    )
    {
        self.adDecisionServerUrl = adDecisionServerUrl
        self.availSuppression = availSuppression
        self.bumper = bumper
        self.cdnConfiguration = cdnConfiguration
        self.configurationAliases = configurationAliases
        self.dashConfiguration = dashConfiguration
        self.livePreRollConfiguration = livePreRollConfiguration
        self.manifestProcessingRules = manifestProcessingRules
        self.name = name
        self.personalizationThresholdSeconds = personalizationThresholdSeconds
        self.slateAdUrl = slateAdUrl
        self.tags = tags
        self.transcodeProfileName = transcodeProfileName
        self.videoContentSourceUrl = videoContentSourceUrl
    }
}

extension PutPlaybackConfigurationInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "PutPlaybackConfigurationInput(adDecisionServerUrl: \(String(describing: adDecisionServerUrl)), availSuppression: \(String(describing: availSuppression)), bumper: \(String(describing: bumper)), cdnConfiguration: \(String(describing: cdnConfiguration)), configurationAliases: \(String(describing: configurationAliases)), dashConfiguration: \(String(describing: dashConfiguration)), livePreRollConfiguration: \(String(describing: livePreRollConfiguration)), manifestProcessingRules: \(String(describing: manifestProcessingRules)), name: \(String(describing: name)), personalizationThresholdSeconds: \(String(describing: personalizationThresholdSeconds)), slateAdUrl: \(String(describing: slateAdUrl)), tags: \(String(describing: tags)), transcodeProfileName: \(String(describing: transcodeProfileName)), videoContentSourceUrl: \(String(describing: videoContentSourceUrl)))"}
}