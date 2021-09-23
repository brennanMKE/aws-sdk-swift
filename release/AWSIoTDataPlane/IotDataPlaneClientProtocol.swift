// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <fullname>AWS IoT</fullname>
///          AWS IoT-Data enables secure, bi-directional communication between Internet-connected things (such as sensors,
///       actuators, embedded devices, or smart appliances) and the AWS cloud. It implements a broker for applications and
///       things to publish messages over HTTP (Publish) and retrieve, update, and delete shadows. A shadow is a
///       persistent representation of your things and their state in the AWS cloud.
///          Find the endpoint address for actions in the AWS IoT data plane by running this CLI command:
///
///             aws iot describe-endpoint --endpoint-type iot:Data-ATS
///
///          The service name used by <a href="https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">AWS Signature Version 4
///       to sign requests is: iotdevicegateway.
public protocol IotDataPlaneClientProtocol {
    /// Deletes the shadow for the specified thing.
    ///          For more information, see <a href="http://docs.aws.amazon.com/iot/latest/developerguide/API_DeleteThingShadow.html">DeleteThingShadow in the AWS IoT Developer Guide.
    func deleteThingShadow(input: DeleteThingShadowInput, completion: @escaping (ClientRuntime.SdkResult<DeleteThingShadowOutputResponse, DeleteThingShadowOutputError>) -> Void)
    /// Gets the shadow for the specified thing.
    ///          For more information, see <a href="http://docs.aws.amazon.com/iot/latest/developerguide/API_GetThingShadow.html">GetThingShadow in the
    ///         AWS IoT Developer Guide.
    func getThingShadow(input: GetThingShadowInput, completion: @escaping (ClientRuntime.SdkResult<GetThingShadowOutputResponse, GetThingShadowOutputError>) -> Void)
    /// Lists the shadows for the specified thing.
    func listNamedShadowsForThing(input: ListNamedShadowsForThingInput, completion: @escaping (ClientRuntime.SdkResult<ListNamedShadowsForThingOutputResponse, ListNamedShadowsForThingOutputError>) -> Void)
    /// Publishes state information.
    ///          For more information, see <a href="http://docs.aws.amazon.com/iot/latest/developerguide/protocols.html#http">HTTP Protocol in the
    ///        AWS IoT Developer Guide.
    func publish(input: PublishInput, completion: @escaping (ClientRuntime.SdkResult<PublishOutputResponse, PublishOutputError>) -> Void)
    /// Updates the shadow for the specified thing.
    ///          For more information, see <a href="http://docs.aws.amazon.com/iot/latest/developerguide/API_UpdateThingShadow.html">UpdateThingShadow in the
    ///         AWS IoT Developer Guide.
    func updateThingShadow(input: UpdateThingShadowInput, completion: @escaping (ClientRuntime.SdkResult<UpdateThingShadowOutputResponse, UpdateThingShadowOutputError>) -> Void)
}

public enum IotDataPlaneClientTypes {}
