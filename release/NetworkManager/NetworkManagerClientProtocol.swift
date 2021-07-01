// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Transit Gateway Network Manager (Network Manager) enables you to create a global network, in which you can monitor your
///             AWS and on-premises networks that are built around transit gateways.</p>
///         <p>The Network Manager APIs are supported in the US West (Oregon) Region only. You must specify the <code>us-west-2</code> Region in all requests made to Network Manager.</p>
public protocol NetworkManagerClientProtocol {
    /// <p>Associates a customer gateway with a device and optionally, with a link. If you
    ///             specify a link, it must be associated with the specified device. </p>
    ///         <p>You can only associate customer gateways that are connected to a VPN attachment on a
    ///             transit gateway. The transit gateway must be registered in your global network. When
    ///             you register a transit gateway, customer gateways that are connected to the transit
    ///             gateway are automatically included in the global network. To list customer gateways
    ///             that are connected to a transit gateway, use the <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeVpnConnections.html">DescribeVpnConnections</a> EC2 API and filter by
    ///                 <code>transit-gateway-id</code>.</p>
    ///         <p>You cannot associate a customer gateway with more than one device and link. </p>
    func associateCustomerGateway(input: AssociateCustomerGatewayInput, completion: @escaping (SdkResult<AssociateCustomerGatewayOutputResponse, AssociateCustomerGatewayOutputError>) -> Void)
    /// <p>Associates a link to a device. A device can be associated to multiple links and a link can be associated to multiple devices. The device and link must be in the same global network and the same site.</p>
    func associateLink(input: AssociateLinkInput, completion: @escaping (SdkResult<AssociateLinkOutputResponse, AssociateLinkOutputError>) -> Void)
    /// <p>Associates a transit gateway Connect peer with a device, and optionally, with a link. If you
    ///             specify a link, it must be associated with the specified device. </p>
    ///         <p>You can only associate transit gateway Connect peers that have been created on a
    ///             transit gateway that's registered in your global network.</p>
    ///         <p>You cannot associate a transit gateway Connect peer with more than one device and link. </p>
    func associateTransitGatewayConnectPeer(input: AssociateTransitGatewayConnectPeerInput, completion: @escaping (SdkResult<AssociateTransitGatewayConnectPeerOutputResponse, AssociateTransitGatewayConnectPeerOutputError>) -> Void)
    /// <p>Creates a connection between two devices. The devices can be a physical or virtual appliance that connects to a third-party appliance in a VPC, or a physical appliance that connects to another physical appliance in an on-premises network.</p>
    func createConnection(input: CreateConnectionInput, completion: @escaping (SdkResult<CreateConnectionOutputResponse, CreateConnectionOutputError>) -> Void)
    /// <p>Creates a new device in a global network. If you specify both a site ID and a
    ///             location, the location of the site is used for visualization in the Network Manager console.</p>
    func createDevice(input: CreateDeviceInput, completion: @escaping (SdkResult<CreateDeviceOutputResponse, CreateDeviceOutputError>) -> Void)
    /// <p>Creates a new, empty global network.</p>
    func createGlobalNetwork(input: CreateGlobalNetworkInput, completion: @escaping (SdkResult<CreateGlobalNetworkOutputResponse, CreateGlobalNetworkOutputError>) -> Void)
    /// <p>Creates a new link for a specified site.</p>
    func createLink(input: CreateLinkInput, completion: @escaping (SdkResult<CreateLinkOutputResponse, CreateLinkOutputError>) -> Void)
    /// <p>Creates a new site in a global network.</p>
    func createSite(input: CreateSiteInput, completion: @escaping (SdkResult<CreateSiteOutputResponse, CreateSiteOutputError>) -> Void)
    /// <p>Deletes the specified connection in your global network.</p>
    func deleteConnection(input: DeleteConnectionInput, completion: @escaping (SdkResult<DeleteConnectionOutputResponse, DeleteConnectionOutputError>) -> Void)
    /// <p>Deletes an existing device. You must first disassociate the device from any links and
    ///             customer gateways.</p>
    func deleteDevice(input: DeleteDeviceInput, completion: @escaping (SdkResult<DeleteDeviceOutputResponse, DeleteDeviceOutputError>) -> Void)
    /// <p>Deletes an existing global network. You must first delete all global network objects
    ///             (devices, links, and sites) and deregister all transit gateways.</p>
    func deleteGlobalNetwork(input: DeleteGlobalNetworkInput, completion: @escaping (SdkResult<DeleteGlobalNetworkOutputResponse, DeleteGlobalNetworkOutputError>) -> Void)
    /// <p>Deletes an existing link. You must first disassociate the link from any devices and
    ///             customer gateways.</p>
    func deleteLink(input: DeleteLinkInput, completion: @escaping (SdkResult<DeleteLinkOutputResponse, DeleteLinkOutputError>) -> Void)
    /// <p>Deletes an existing site. The site cannot be associated with any device or link.</p>
    func deleteSite(input: DeleteSiteInput, completion: @escaping (SdkResult<DeleteSiteOutputResponse, DeleteSiteOutputError>) -> Void)
    /// <p>Deregisters a transit gateway from your global network. This action does not delete
    ///             your transit gateway, or modify any of its attachments. This action removes any customer gateway associations.</p>
    func deregisterTransitGateway(input: DeregisterTransitGatewayInput, completion: @escaping (SdkResult<DeregisterTransitGatewayOutputResponse, DeregisterTransitGatewayOutputError>) -> Void)
    /// <p>Describes one or more global networks. By default, all global networks are
    ///             described. To describe the objects in your global network, you must use the appropriate
    ///                 <code>Get*</code> action. For example, to list the transit gateways in your global
    ///             network, use <a>GetTransitGatewayRegistrations</a>.</p>
    func describeGlobalNetworks(input: DescribeGlobalNetworksInput, completion: @escaping (SdkResult<DescribeGlobalNetworksOutputResponse, DescribeGlobalNetworksOutputError>) -> Void)
    /// <p>Disassociates a customer gateway from a device and a link.</p>
    func disassociateCustomerGateway(input: DisassociateCustomerGatewayInput, completion: @escaping (SdkResult<DisassociateCustomerGatewayOutputResponse, DisassociateCustomerGatewayOutputError>) -> Void)
    /// <p>Disassociates an existing device from a link. You must first disassociate any customer
    ///             gateways that are associated with the link.</p>
    func disassociateLink(input: DisassociateLinkInput, completion: @escaping (SdkResult<DisassociateLinkOutputResponse, DisassociateLinkOutputError>) -> Void)
    /// <p>Disassociates a transit gateway Connect peer from a device and link.</p>
    func disassociateTransitGatewayConnectPeer(input: DisassociateTransitGatewayConnectPeerInput, completion: @escaping (SdkResult<DisassociateTransitGatewayConnectPeerOutputResponse, DisassociateTransitGatewayConnectPeerOutputError>) -> Void)
    /// <p>Gets information about one or more of your connections in a global network.</p>
    func getConnections(input: GetConnectionsInput, completion: @escaping (SdkResult<GetConnectionsOutputResponse, GetConnectionsOutputError>) -> Void)
    /// <p>Gets the association information for customer gateways that are associated with
    ///             devices and links in your global network.</p>
    func getCustomerGatewayAssociations(input: GetCustomerGatewayAssociationsInput, completion: @escaping (SdkResult<GetCustomerGatewayAssociationsOutputResponse, GetCustomerGatewayAssociationsOutputError>) -> Void)
    /// <p>Gets information about one or more of your devices in a global network.</p>
    func getDevices(input: GetDevicesInput, completion: @escaping (SdkResult<GetDevicesOutputResponse, GetDevicesOutputError>) -> Void)
    /// <p>Gets the link associations for a device or a link. Either the device ID or the link ID
    ///             must be specified.</p>
    func getLinkAssociations(input: GetLinkAssociationsInput, completion: @escaping (SdkResult<GetLinkAssociationsOutputResponse, GetLinkAssociationsOutputError>) -> Void)
    /// <p>Gets information about one or more links in a specified global network.</p>
    ///         <p>If you specify the site ID, you cannot specify the type or provider in the same request. You can specify the type and provider in the same request.</p>
    func getLinks(input: GetLinksInput, completion: @escaping (SdkResult<GetLinksOutputResponse, GetLinksOutputError>) -> Void)
    /// <p>Gets information about one or more of your sites in a global network.</p>
    func getSites(input: GetSitesInput, completion: @escaping (SdkResult<GetSitesOutputResponse, GetSitesOutputError>) -> Void)
    /// <p>Gets information about one or more of your transit gateway Connect peer associations in a global network.</p>
    func getTransitGatewayConnectPeerAssociations(input: GetTransitGatewayConnectPeerAssociationsInput, completion: @escaping (SdkResult<GetTransitGatewayConnectPeerAssociationsOutputResponse, GetTransitGatewayConnectPeerAssociationsOutputError>) -> Void)
    /// <p>Gets information about the transit gateway registrations in a specified
    ///             global network.</p>
    func getTransitGatewayRegistrations(input: GetTransitGatewayRegistrationsInput, completion: @escaping (SdkResult<GetTransitGatewayRegistrationsOutputResponse, GetTransitGatewayRegistrationsOutputError>) -> Void)
    /// <p>Lists the tags for a specified resource.</p>
    func listTagsForResource(input: ListTagsForResourceInput, completion: @escaping (SdkResult<ListTagsForResourceOutputResponse, ListTagsForResourceOutputError>) -> Void)
    /// <p>Registers a transit gateway in your global network. The transit gateway can be in any
    ///             AWS Region, but it must be owned by the same AWS account that owns the global network.
    ///             You cannot register a transit gateway in more than one global network.</p>
    func registerTransitGateway(input: RegisterTransitGatewayInput, completion: @escaping (SdkResult<RegisterTransitGatewayOutputResponse, RegisterTransitGatewayOutputError>) -> Void)
    /// <p>Tags a specified resource.</p>
    func tagResource(input: TagResourceInput, completion: @escaping (SdkResult<TagResourceOutputResponse, TagResourceOutputError>) -> Void)
    /// <p>Removes tags from a specified resource.</p>
    func untagResource(input: UntagResourceInput, completion: @escaping (SdkResult<UntagResourceOutputResponse, UntagResourceOutputError>) -> Void)
    /// <p>Updates the information for an existing connection. To remove information for any of the parameters,
    ///             specify an empty string.</p>
    func updateConnection(input: UpdateConnectionInput, completion: @escaping (SdkResult<UpdateConnectionOutputResponse, UpdateConnectionOutputError>) -> Void)
    /// <p>Updates the details for an existing device. To remove information for any of the
    ///             parameters, specify an empty string.</p>
    func updateDevice(input: UpdateDeviceInput, completion: @escaping (SdkResult<UpdateDeviceOutputResponse, UpdateDeviceOutputError>) -> Void)
    /// <p>Updates an existing global network. To remove information for any of the parameters,
    ///             specify an empty string.</p>
    func updateGlobalNetwork(input: UpdateGlobalNetworkInput, completion: @escaping (SdkResult<UpdateGlobalNetworkOutputResponse, UpdateGlobalNetworkOutputError>) -> Void)
    /// <p>Updates the details for an existing link. To remove information for any of the
    ///             parameters, specify an empty string.</p>
    func updateLink(input: UpdateLinkInput, completion: @escaping (SdkResult<UpdateLinkOutputResponse, UpdateLinkOutputError>) -> Void)
    /// <p>Updates the information for an existing site. To remove information for any of the
    ///             parameters, specify an empty string.</p>
    func updateSite(input: UpdateSiteInput, completion: @escaping (SdkResult<UpdateSiteOutputResponse, UpdateSiteOutputError>) -> Void)
}