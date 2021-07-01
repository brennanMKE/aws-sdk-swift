// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DescribeCustomDomainsOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DescribeCustomDomainsOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.customDomains = output.customDomains
            self.dNSTarget = output.dNSTarget
            self.nextToken = output.nextToken
            self.serviceArn = output.serviceArn
        } else {
            self.customDomains = nil
            self.dNSTarget = nil
            self.nextToken = nil
            self.serviceArn = nil
        }
    }
}