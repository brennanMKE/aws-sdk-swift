// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DescribeTransitGatewayVpcAttachmentsOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DescribeTransitGatewayVpcAttachmentsOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.nextToken = output.nextToken
            self.transitGatewayVpcAttachments = output.transitGatewayVpcAttachments
        } else {
            self.nextToken = nil
            self.transitGatewayVpcAttachments = nil
        }
    }
}