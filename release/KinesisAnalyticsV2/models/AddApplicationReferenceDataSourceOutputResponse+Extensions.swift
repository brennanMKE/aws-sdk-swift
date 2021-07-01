// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension AddApplicationReferenceDataSourceOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: AddApplicationReferenceDataSourceOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.applicationARN = output.applicationARN
            self.applicationVersionId = output.applicationVersionId
            self.referenceDataSourceDescriptions = output.referenceDataSourceDescriptions
        } else {
            self.applicationARN = nil
            self.applicationVersionId = nil
            self.referenceDataSourceDescriptions = nil
        }
    }
}