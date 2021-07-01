// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <fullname>AWS IoT Secure Tunneling</fullname>
/// 		       <p>AWS IoT Secure Tunnling enables you to create remote connections to devices
/// 			deployed in the field.</p>
/// 		
/// 		       <p>For more information about how AWS IoT Secure Tunneling works, see <a href="https://docs.aws.amazon.com/iot/latest/developerguide/secure-tunneling.html">AWS IoT Secure Tunneling</a>.</p>
public protocol IoTSecureTunnelingClientProtocol {
    /// <p>Closes a tunnel identified by the unique tunnel id. When a <code>CloseTunnel</code>
    /// 			request is received, we close the WebSocket connections between the client and proxy
    /// 			server so no data can be transmitted.</p>
    func closeTunnel(input: CloseTunnelInput, completion: @escaping (SdkResult<CloseTunnelOutputResponse, CloseTunnelOutputError>) -> Void)
    /// <p>Gets information about a tunnel identified by the unique tunnel id.</p>
    func describeTunnel(input: DescribeTunnelInput, completion: @escaping (SdkResult<DescribeTunnelOutputResponse, DescribeTunnelOutputError>) -> Void)
    /// <p>Lists the tags for the specified resource.</p>
    func listTagsForResource(input: ListTagsForResourceInput, completion: @escaping (SdkResult<ListTagsForResourceOutputResponse, ListTagsForResourceOutputError>) -> Void)
    /// <p>List all tunnels for an AWS account. Tunnels are listed by creation time in
    /// 			descending order, newer tunnels will be listed before older tunnels.</p>
    func listTunnels(input: ListTunnelsInput, completion: @escaping (SdkResult<ListTunnelsOutputResponse, ListTunnelsOutputError>) -> Void)
    /// <p>Creates a new tunnel, and returns two client access tokens for clients to use to
    /// 			connect to the AWS IoT Secure Tunneling proxy server.</p>
    func openTunnel(input: OpenTunnelInput, completion: @escaping (SdkResult<OpenTunnelOutputResponse, OpenTunnelOutputError>) -> Void)
    /// <p>A resource tag.</p>
    func tagResource(input: TagResourceInput, completion: @escaping (SdkResult<TagResourceOutputResponse, TagResourceOutputError>) -> Void)
    /// <p>Removes a tag from a resource.</p>
    func untagResource(input: UntagResourceInput, completion: @escaping (SdkResult<UntagResourceOutputResponse, UntagResourceOutputError>) -> Void)
}