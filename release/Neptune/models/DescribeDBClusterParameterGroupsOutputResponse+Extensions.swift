// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DescribeDBClusterParameterGroupsOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DescribeDBClusterParameterGroupsOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.dBClusterParameterGroups = output.dBClusterParameterGroups
            self.marker = output.marker
        } else {
            self.dBClusterParameterGroups = nil
            self.marker = nil
        }
    }
}