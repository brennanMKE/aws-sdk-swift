// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension DescribeBackupOutput: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {

        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DescribeBackupOutputBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.backupDescription = output.backupDescription
        } else {
            self.backupDescription = nil
        }
    }
}
