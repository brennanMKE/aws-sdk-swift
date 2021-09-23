// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Use the AWS Elemental MediaTailor SDKs and CLI to configure scalable ad insertion and linear channels. With MediaTailor, you can assemble existing content into a linear stream and serve targeted ads to viewers while maintaining broadcast quality in over-the-top (OTT) video applications. For information about using the service, including detailed information about the settings covered in this guide, see the <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/">AWS Elemental MediaTailor User Guide. Through the SDKs and the CLI you manage AWS Elemental MediaTailor configurations and channels the same as you do through the console. For example, you specify ad insertion behavior and mapping information for the origin server and the ad decision server (ADS).
public protocol MediaTailorClientProtocol {
    /// Creates a channel.
    func createChannel(input: CreateChannelInput, completion: @escaping (ClientRuntime.SdkResult<CreateChannelOutputResponse, CreateChannelOutputError>) -> Void)
    /// Creates a program.
    func createProgram(input: CreateProgramInput, completion: @escaping (ClientRuntime.SdkResult<CreateProgramOutputResponse, CreateProgramOutputError>) -> Void)
    /// Creates a source location on a specific channel.
    func createSourceLocation(input: CreateSourceLocationInput, completion: @escaping (ClientRuntime.SdkResult<CreateSourceLocationOutputResponse, CreateSourceLocationOutputError>) -> Void)
    /// Creates name for a specific VOD source in a source location.
    func createVodSource(input: CreateVodSourceInput, completion: @escaping (ClientRuntime.SdkResult<CreateVodSourceOutputResponse, CreateVodSourceOutputError>) -> Void)
    /// Deletes a channel. You must stop the channel before it can be deleted.
    func deleteChannel(input: DeleteChannelInput, completion: @escaping (ClientRuntime.SdkResult<DeleteChannelOutputResponse, DeleteChannelOutputError>) -> Void)
    /// Deletes a channel's IAM policy.
    func deleteChannelPolicy(input: DeleteChannelPolicyInput, completion: @escaping (ClientRuntime.SdkResult<DeleteChannelPolicyOutputResponse, DeleteChannelPolicyOutputError>) -> Void)
    /// Deletes the playback configuration for the specified name.
    func deletePlaybackConfiguration(input: DeletePlaybackConfigurationInput, completion: @escaping (ClientRuntime.SdkResult<DeletePlaybackConfigurationOutputResponse, DeletePlaybackConfigurationOutputError>) -> Void)
    /// Deletes a specific program on a specific channel.
    func deleteProgram(input: DeleteProgramInput, completion: @escaping (ClientRuntime.SdkResult<DeleteProgramOutputResponse, DeleteProgramOutputError>) -> Void)
    /// Deletes a source location on a specific channel.
    func deleteSourceLocation(input: DeleteSourceLocationInput, completion: @escaping (ClientRuntime.SdkResult<DeleteSourceLocationOutputResponse, DeleteSourceLocationOutputError>) -> Void)
    /// Deletes a specific VOD source in a specific source location.
    func deleteVodSource(input: DeleteVodSourceInput, completion: @escaping (ClientRuntime.SdkResult<DeleteVodSourceOutputResponse, DeleteVodSourceOutputError>) -> Void)
    /// Describes the properties of a specific channel.
    func describeChannel(input: DescribeChannelInput, completion: @escaping (ClientRuntime.SdkResult<DescribeChannelOutputResponse, DescribeChannelOutputError>) -> Void)
    /// Retrieves the properties of the requested program.
    func describeProgram(input: DescribeProgramInput, completion: @escaping (ClientRuntime.SdkResult<DescribeProgramOutputResponse, DescribeProgramOutputError>) -> Void)
    /// Retrieves the properties of the requested source location.
    func describeSourceLocation(input: DescribeSourceLocationInput, completion: @escaping (ClientRuntime.SdkResult<DescribeSourceLocationOutputResponse, DescribeSourceLocationOutputError>) -> Void)
    /// Provides details about a specific VOD source in a specific source location.
    func describeVodSource(input: DescribeVodSourceInput, completion: @escaping (ClientRuntime.SdkResult<DescribeVodSourceOutputResponse, DescribeVodSourceOutputError>) -> Void)
    /// Retrieves information about a channel's IAM policy.
    func getChannelPolicy(input: GetChannelPolicyInput, completion: @escaping (ClientRuntime.SdkResult<GetChannelPolicyOutputResponse, GetChannelPolicyOutputError>) -> Void)
    /// Retrieves information about your channel's schedule.
    func getChannelSchedule(input: GetChannelScheduleInput, completion: @escaping (ClientRuntime.SdkResult<GetChannelScheduleOutputResponse, GetChannelScheduleOutputError>) -> Void)
    /// Returns the playback configuration for the specified name.
    func getPlaybackConfiguration(input: GetPlaybackConfigurationInput, completion: @escaping (ClientRuntime.SdkResult<GetPlaybackConfigurationOutputResponse, GetPlaybackConfigurationOutputError>) -> Void)
    /// Returns a list of alerts for the given resource.
    func listAlerts(input: ListAlertsInput, completion: @escaping (ClientRuntime.SdkResult<ListAlertsOutputResponse, ListAlertsOutputError>) -> Void)
    /// Retrieves a list of channels that are associated with this account.
    func listChannels(input: ListChannelsInput, completion: @escaping (ClientRuntime.SdkResult<ListChannelsOutputResponse, ListChannelsOutputError>) -> Void)
    /// Returns a list of the playback configurations defined in AWS Elemental MediaTailor. You can specify a maximum number of configurations to return at a time. The default maximum is 50. Results are returned in pagefuls. If MediaTailor has more configurations than the specified maximum, it provides parameters in the response that you can use to retrieve the next pageful.
    func listPlaybackConfigurations(input: ListPlaybackConfigurationsInput, completion: @escaping (ClientRuntime.SdkResult<ListPlaybackConfigurationsOutputResponse, ListPlaybackConfigurationsOutputError>) -> Void)
    /// Retrieves a list of source locations.
    func listSourceLocations(input: ListSourceLocationsInput, completion: @escaping (ClientRuntime.SdkResult<ListSourceLocationsOutputResponse, ListSourceLocationsOutputError>) -> Void)
    /// Returns a list of the tags assigned to the specified playback configuration resource.
    func listTagsForResource(input: ListTagsForResourceInput, completion: @escaping (ClientRuntime.SdkResult<ListTagsForResourceOutputResponse, ListTagsForResourceOutputError>) -> Void)
    /// Lists all the VOD sources in a source location.
    func listVodSources(input: ListVodSourcesInput, completion: @escaping (ClientRuntime.SdkResult<ListVodSourcesOutputResponse, ListVodSourcesOutputError>) -> Void)
    /// Creates an IAM policy for the channel.
    func putChannelPolicy(input: PutChannelPolicyInput, completion: @escaping (ClientRuntime.SdkResult<PutChannelPolicyOutputResponse, PutChannelPolicyOutputError>) -> Void)
    /// Adds a new playback configuration to AWS Elemental MediaTailor.
    func putPlaybackConfiguration(input: PutPlaybackConfigurationInput, completion: @escaping (ClientRuntime.SdkResult<PutPlaybackConfigurationOutputResponse, PutPlaybackConfigurationOutputError>) -> Void)
    /// Starts a specific channel.
    func startChannel(input: StartChannelInput, completion: @escaping (ClientRuntime.SdkResult<StartChannelOutputResponse, StartChannelOutputError>) -> Void)
    /// Stops a specific channel.
    func stopChannel(input: StopChannelInput, completion: @escaping (ClientRuntime.SdkResult<StopChannelOutputResponse, StopChannelOutputError>) -> Void)
    /// Adds tags to the specified playback configuration resource. You can specify one or more tags to add.
    func tagResource(input: TagResourceInput, completion: @escaping (ClientRuntime.SdkResult<TagResourceOutputResponse, TagResourceOutputError>) -> Void)
    /// Removes tags from the specified playback configuration resource. You can specify one or more tags to remove.
    func untagResource(input: UntagResourceInput, completion: @escaping (ClientRuntime.SdkResult<UntagResourceOutputResponse, UntagResourceOutputError>) -> Void)
    /// Updates an existing channel.
    func updateChannel(input: UpdateChannelInput, completion: @escaping (ClientRuntime.SdkResult<UpdateChannelOutputResponse, UpdateChannelOutputError>) -> Void)
    /// Updates a source location on a specific channel.
    func updateSourceLocation(input: UpdateSourceLocationInput, completion: @escaping (ClientRuntime.SdkResult<UpdateSourceLocationOutputResponse, UpdateSourceLocationOutputError>) -> Void)
    /// Updates a specific VOD source in a specific source location.
    func updateVodSource(input: UpdateVodSourceInput, completion: @escaping (ClientRuntime.SdkResult<UpdateVodSourceOutputResponse, UpdateVodSourceOutputError>) -> Void)
}

public enum MediaTailorClientTypes {}
