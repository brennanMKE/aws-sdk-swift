// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ListDominantLanguageDetectionJobsOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ListDominantLanguageDetectionJobsOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.dominantLanguageDetectionJobPropertiesList = output.dominantLanguageDetectionJobPropertiesList
            self.nextToken = output.nextToken
        } else {
            self.dominantLanguageDetectionJobPropertiesList = nil
            self.nextToken = nil
        }
    }
}