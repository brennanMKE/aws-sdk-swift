// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension UpdateMissionProfileOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: UpdateMissionProfileOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.missionProfileId = output.missionProfileId
        } else {
            self.missionProfileId = nil
        }
    }
}