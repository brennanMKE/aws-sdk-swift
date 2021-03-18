// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetSigningCertificateInputHeadersMiddleware: Middleware {
    public let id: String = "GetSigningCertificateInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetSigningCertificateInput>,
                  next: H) -> Result<OperationOutput<GetSigningCertificateOutput, GetSigningCertificateError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetSigningCertificateInput>
    public typealias MOutput = OperationOutput<GetSigningCertificateOutput, GetSigningCertificateError>
    public typealias Context = HttpContext
}
