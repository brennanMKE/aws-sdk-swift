// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Amazon WorkLink is a cloud-based service that provides secure access to internal websites and web apps from iOS and Android phones. In a single step, your users, such as employees, can access internal websites as efficiently as they access any other public website. They enter a URL in their web browser, or choose a link to an internal website in an email. Amazon WorkLink authenticates the user's access and securely renders authorized internal web content in a secure rendering service in the AWS cloud. Amazon WorkLink doesn't download or store any internal web content on mobile devices.
public protocol WorkLinkClientProtocol {
    /// Specifies a domain to be associated to Amazon WorkLink.
    func associateDomain(input: AssociateDomainInput, completion: @escaping (ClientRuntime.SdkResult<AssociateDomainOutputResponse, AssociateDomainOutputError>) -> Void)
    /// Associates a website authorization provider with a specified fleet. This is used to authorize users against associated websites in the company network.
    func associateWebsiteAuthorizationProvider(input: AssociateWebsiteAuthorizationProviderInput, completion: @escaping (ClientRuntime.SdkResult<AssociateWebsiteAuthorizationProviderOutputResponse, AssociateWebsiteAuthorizationProviderOutputError>) -> Void)
    /// Imports the root certificate of a certificate authority (CA) used to obtain TLS certificates used by associated websites within the company network.
    func associateWebsiteCertificateAuthority(input: AssociateWebsiteCertificateAuthorityInput, completion: @escaping (ClientRuntime.SdkResult<AssociateWebsiteCertificateAuthorityOutputResponse, AssociateWebsiteCertificateAuthorityOutputError>) -> Void)
    /// Creates a fleet. A fleet consists of resources and the configuration that delivers associated websites to authorized users who download and set up the Amazon WorkLink app.
    func createFleet(input: CreateFleetInput, completion: @escaping (ClientRuntime.SdkResult<CreateFleetOutputResponse, CreateFleetOutputError>) -> Void)
    /// Deletes a fleet. Prevents users from accessing previously associated websites.
    func deleteFleet(input: DeleteFleetInput, completion: @escaping (ClientRuntime.SdkResult<DeleteFleetOutputResponse, DeleteFleetOutputError>) -> Void)
    /// Describes the configuration for delivering audit streams to the customer account.
    func describeAuditStreamConfiguration(input: DescribeAuditStreamConfigurationInput, completion: @escaping (ClientRuntime.SdkResult<DescribeAuditStreamConfigurationOutputResponse, DescribeAuditStreamConfigurationOutputError>) -> Void)
    /// Describes the networking configuration to access the internal websites associated with the specified fleet.
    func describeCompanyNetworkConfiguration(input: DescribeCompanyNetworkConfigurationInput, completion: @escaping (ClientRuntime.SdkResult<DescribeCompanyNetworkConfigurationOutputResponse, DescribeCompanyNetworkConfigurationOutputError>) -> Void)
    /// Provides information about a user's device.
    func describeDevice(input: DescribeDeviceInput, completion: @escaping (ClientRuntime.SdkResult<DescribeDeviceOutputResponse, DescribeDeviceOutputError>) -> Void)
    /// Describes the device policy configuration for the specified fleet.
    func describeDevicePolicyConfiguration(input: DescribeDevicePolicyConfigurationInput, completion: @escaping (ClientRuntime.SdkResult<DescribeDevicePolicyConfigurationOutputResponse, DescribeDevicePolicyConfigurationOutputError>) -> Void)
    /// Provides information about the domain.
    func describeDomain(input: DescribeDomainInput, completion: @escaping (ClientRuntime.SdkResult<DescribeDomainOutputResponse, DescribeDomainOutputError>) -> Void)
    /// Provides basic information for the specified fleet, excluding identity provider, networking, and device configuration details.
    func describeFleetMetadata(input: DescribeFleetMetadataInput, completion: @escaping (ClientRuntime.SdkResult<DescribeFleetMetadataOutputResponse, DescribeFleetMetadataOutputError>) -> Void)
    /// Describes the identity provider configuration of the specified fleet.
    func describeIdentityProviderConfiguration(input: DescribeIdentityProviderConfigurationInput, completion: @escaping (ClientRuntime.SdkResult<DescribeIdentityProviderConfigurationOutputResponse, DescribeIdentityProviderConfigurationOutputError>) -> Void)
    /// Provides information about the certificate authority.
    func describeWebsiteCertificateAuthority(input: DescribeWebsiteCertificateAuthorityInput, completion: @escaping (ClientRuntime.SdkResult<DescribeWebsiteCertificateAuthorityOutputResponse, DescribeWebsiteCertificateAuthorityOutputError>) -> Void)
    /// Disassociates a domain from Amazon WorkLink. End users lose the ability to access the domain with Amazon WorkLink.
    func disassociateDomain(input: DisassociateDomainInput, completion: @escaping (ClientRuntime.SdkResult<DisassociateDomainOutputResponse, DisassociateDomainOutputError>) -> Void)
    /// Disassociates a website authorization provider from a specified fleet. After the disassociation, users can't load any associated websites that require this authorization provider.
    func disassociateWebsiteAuthorizationProvider(input: DisassociateWebsiteAuthorizationProviderInput, completion: @escaping (ClientRuntime.SdkResult<DisassociateWebsiteAuthorizationProviderOutputResponse, DisassociateWebsiteAuthorizationProviderOutputError>) -> Void)
    /// Removes a certificate authority (CA).
    func disassociateWebsiteCertificateAuthority(input: DisassociateWebsiteCertificateAuthorityInput, completion: @escaping (ClientRuntime.SdkResult<DisassociateWebsiteCertificateAuthorityOutputResponse, DisassociateWebsiteCertificateAuthorityOutputError>) -> Void)
    /// Retrieves a list of devices registered with the specified fleet.
    func listDevices(input: ListDevicesInput, completion: @escaping (ClientRuntime.SdkResult<ListDevicesOutputResponse, ListDevicesOutputError>) -> Void)
    /// Retrieves a list of domains associated to a specified fleet.
    func listDomains(input: ListDomainsInput, completion: @escaping (ClientRuntime.SdkResult<ListDomainsOutputResponse, ListDomainsOutputError>) -> Void)
    /// Retrieves a list of fleets for the current account and Region.
    func listFleets(input: ListFleetsInput, completion: @escaping (ClientRuntime.SdkResult<ListFleetsOutputResponse, ListFleetsOutputError>) -> Void)
    /// Retrieves a list of tags for the specified resource.
    func listTagsForResource(input: ListTagsForResourceInput, completion: @escaping (ClientRuntime.SdkResult<ListTagsForResourceOutputResponse, ListTagsForResourceOutputError>) -> Void)
    /// Retrieves a list of website authorization providers associated with a specified fleet.
    func listWebsiteAuthorizationProviders(input: ListWebsiteAuthorizationProvidersInput, completion: @escaping (ClientRuntime.SdkResult<ListWebsiteAuthorizationProvidersOutputResponse, ListWebsiteAuthorizationProvidersOutputError>) -> Void)
    /// Retrieves a list of certificate authorities added for the current account and Region.
    func listWebsiteCertificateAuthorities(input: ListWebsiteCertificateAuthoritiesInput, completion: @escaping (ClientRuntime.SdkResult<ListWebsiteCertificateAuthoritiesOutputResponse, ListWebsiteCertificateAuthoritiesOutputError>) -> Void)
    /// Moves a domain to ACTIVE status if it was in the INACTIVE status.
    func restoreDomainAccess(input: RestoreDomainAccessInput, completion: @escaping (ClientRuntime.SdkResult<RestoreDomainAccessOutputResponse, RestoreDomainAccessOutputError>) -> Void)
    /// Moves a domain to INACTIVE status if it was in the ACTIVE status.
    func revokeDomainAccess(input: RevokeDomainAccessInput, completion: @escaping (ClientRuntime.SdkResult<RevokeDomainAccessOutputResponse, RevokeDomainAccessOutputError>) -> Void)
    /// Signs the user out from all of their devices. The user can sign in again if they have valid credentials.
    func signOutUser(input: SignOutUserInput, completion: @escaping (ClientRuntime.SdkResult<SignOutUserOutputResponse, SignOutUserOutputError>) -> Void)
    /// Adds or overwrites one or more tags for the specified resource, such as a fleet. Each tag consists of a key and an optional value. If a resource already has a tag with the same key, this operation updates its value.
    func tagResource(input: TagResourceInput, completion: @escaping (ClientRuntime.SdkResult<TagResourceOutputResponse, TagResourceOutputError>) -> Void)
    /// Removes one or more tags from the specified resource.
    func untagResource(input: UntagResourceInput, completion: @escaping (ClientRuntime.SdkResult<UntagResourceOutputResponse, UntagResourceOutputError>) -> Void)
    /// Updates the audit stream configuration for the fleet.
    func updateAuditStreamConfiguration(input: UpdateAuditStreamConfigurationInput, completion: @escaping (ClientRuntime.SdkResult<UpdateAuditStreamConfigurationOutputResponse, UpdateAuditStreamConfigurationOutputError>) -> Void)
    /// Updates the company network configuration for the fleet.
    func updateCompanyNetworkConfiguration(input: UpdateCompanyNetworkConfigurationInput, completion: @escaping (ClientRuntime.SdkResult<UpdateCompanyNetworkConfigurationOutputResponse, UpdateCompanyNetworkConfigurationOutputError>) -> Void)
    /// Updates the device policy configuration for the fleet.
    func updateDevicePolicyConfiguration(input: UpdateDevicePolicyConfigurationInput, completion: @escaping (ClientRuntime.SdkResult<UpdateDevicePolicyConfigurationOutputResponse, UpdateDevicePolicyConfigurationOutputError>) -> Void)
    /// Updates domain metadata, such as DisplayName.
    func updateDomainMetadata(input: UpdateDomainMetadataInput, completion: @escaping (ClientRuntime.SdkResult<UpdateDomainMetadataOutputResponse, UpdateDomainMetadataOutputError>) -> Void)
    /// Updates fleet metadata, such as DisplayName.
    func updateFleetMetadata(input: UpdateFleetMetadataInput, completion: @escaping (ClientRuntime.SdkResult<UpdateFleetMetadataOutputResponse, UpdateFleetMetadataOutputError>) -> Void)
    /// Updates the identity provider configuration for the fleet.
    func updateIdentityProviderConfiguration(input: UpdateIdentityProviderConfigurationInput, completion: @escaping (ClientRuntime.SdkResult<UpdateIdentityProviderConfigurationOutputResponse, UpdateIdentityProviderConfigurationOutputError>) -> Void)
}

public enum WorkLinkClientTypes {}
