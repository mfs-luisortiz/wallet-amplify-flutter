// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.operation.allocate_address_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i9;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/common/endpoint_resolver.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/ec2/common/serializers.dart' as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/allocate_address_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/allocate_address_result.dart'
    as _i3;

/// Allocates an Elastic IP address to your Amazon Web Services account. After you allocate the Elastic IP address you can associate it with an instance or network interface. After you release an Elastic IP address, it is released to the IP address pool and can be allocated to a different Amazon Web Services account.
///
/// You can allocate an Elastic IP address from an address pool owned by Amazon Web Services or from an address pool created from a public IPv4 address range that you have brought to Amazon Web Services for use with your Amazon Web Services resources using bring your own IP addresses (BYOIP). For more information, see [Bring Your Own IP Addresses (BYOIP)](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-byoip.html) in the _Amazon Elastic Compute Cloud User Guide_.
///
/// \[EC2-VPC\] If you release an Elastic IP address, you might be able to recover it. You cannot recover an Elastic IP address that you released after it is allocated to another Amazon Web Services account. You cannot recover an Elastic IP address for EC2-Classic. To attempt to recover an Elastic IP address that you released, specify it in this operation.
///
/// An Elastic IP address is for use either in the EC2-Classic platform or in a VPC. By default, you can allocate 5 Elastic IP addresses for EC2-Classic per Region and 5 Elastic IP addresses for EC2-VPC per Region.
///
/// For more information, see [Elastic IP Addresses](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html) in the _Amazon Elastic Compute Cloud User Guide_.
///
/// You can allocate a carrier IP address which is a public IP address from a telecommunication carrier, to a network interface which resides in a subnet in a Wavelength Zone (for example an EC2 instance).
///
/// We are retiring EC2-Classic. We recommend that you migrate from EC2-Classic to a VPC. For more information, see [Migrate from EC2-Classic to a VPC](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-migrate.html) in the _Amazon Elastic Compute Cloud User Guide_.
class AllocateAddressOperation extends _i1.HttpOperation<
    _i2.AllocateAddressRequest,
    _i2.AllocateAddressRequest,
    _i3.AllocateAddressResult,
    _i3.AllocateAddressResult> {
  /// Allocates an Elastic IP address to your Amazon Web Services account. After you allocate the Elastic IP address you can associate it with an instance or network interface. After you release an Elastic IP address, it is released to the IP address pool and can be allocated to a different Amazon Web Services account.
  ///
  /// You can allocate an Elastic IP address from an address pool owned by Amazon Web Services or from an address pool created from a public IPv4 address range that you have brought to Amazon Web Services for use with your Amazon Web Services resources using bring your own IP addresses (BYOIP). For more information, see [Bring Your Own IP Addresses (BYOIP)](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-byoip.html) in the _Amazon Elastic Compute Cloud User Guide_.
  ///
  /// \[EC2-VPC\] If you release an Elastic IP address, you might be able to recover it. You cannot recover an Elastic IP address that you released after it is allocated to another Amazon Web Services account. You cannot recover an Elastic IP address for EC2-Classic. To attempt to recover an Elastic IP address that you released, specify it in this operation.
  ///
  /// An Elastic IP address is for use either in the EC2-Classic platform or in a VPC. By default, you can allocate 5 Elastic IP addresses for EC2-Classic per Region and 5 Elastic IP addresses for EC2-VPC per Region.
  ///
  /// For more information, see [Elastic IP Addresses](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html) in the _Amazon Elastic Compute Cloud User Guide_.
  ///
  /// You can allocate a carrier IP address which is a public IP address from a telecommunication carrier, to a network interface which resides in a subnet in a Wavelength Zone (for example an EC2 instance).
  ///
  /// We are retiring EC2-Classic. We recommend that you migrate from EC2-Classic to a VPC. For more information, see [Migrate from EC2-Classic to a VPC](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-migrate.html) in the _Amazon Elastic Compute Cloud User Guide_.
  AllocateAddressOperation({
    required String region,
    Uri? baseUri,
    _i4.AWSCredentialsProvider credentialsProvider =
        const _i4.AWSCredentialsProvider.environment(),
    List<_i1.HttpRequestInterceptor> requestInterceptors = const [],
    List<_i1.HttpResponseInterceptor> responseInterceptors = const [],
  })  : _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider,
        _requestInterceptors = requestInterceptors,
        _responseInterceptors = responseInterceptors;

  @override
  late final List<
      _i1.HttpProtocol<_i2.AllocateAddressRequest, _i2.AllocateAddressRequest,
          _i3.AllocateAddressResult, _i3.AllocateAddressResult>> protocols = [
    _i5.Ec2QueryProtocol(
      serializers: _i6.serializers,
      builderFactories: _i6.builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            _i5.WithSigV4(
              region: _region,
              service: _i7.AWSService.ec2,
              credentialsProvider: _credentialsProvider,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i5.WithSdkInvocationId(),
            const _i5.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
      action: 'AllocateAddress',
      version: '2016-11-15',
    )
  ];

  late final _i5.AWSEndpoint _awsEndpoint = _i8.endpointResolver.resolve(
    _i8.sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final _i4.AWSCredentialsProvider _credentialsProvider;

  final List<_i1.HttpRequestInterceptor> _requestInterceptors;

  final List<_i1.HttpResponseInterceptor> _responseInterceptors;

  @override
  _i1.HttpRequest buildRequest(_i2.AllocateAddressRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.AllocateAddressResult? output]) => 200;
  @override
  _i3.AllocateAddressResult buildOutput(
    _i3.AllocateAddressResult payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.AllocateAddressResult.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  String get runtimeTypeName => 'AllocateAddress';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.AllocateAddressResult> run(
    _i2.AllocateAddressRequest input, {
    _i7.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i9.runZoned(
      () => super.run(
        input,
        client: client,
        useProtocol: useProtocol,
      ),
      zoneValues: {
        ...?_awsEndpoint.credentialScope?.zoneValues,
        ...{_i7.AWSHeaders.sdkInvocationId: _i7.uuid(secure: true)},
      },
    );
  }
}
