// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension GetLaunchProfileOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: GetLaunchProfileOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.launchProfile = output.launchProfile
        } else {
            self.launchProfile = nil
        }
    }
}