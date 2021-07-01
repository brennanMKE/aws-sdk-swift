// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DescribeComplianceByResourceOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DescribeComplianceByResourceOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.complianceByResources = output.complianceByResources
            self.nextToken = output.nextToken
        } else {
            self.complianceByResources = nil
            self.nextToken = nil
        }
    }
}