// ignore_for_file: directives_ordering
// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:build_runner_core/build_runner_core.dart' as _i1;
import 'package:freezed/builder.dart' as _i2;
import 'package:json_serializable/builder.dart' as _i3;
import 'package:source_gen/builder.dart' as _i4;
import 'package:jaspr_builder/builder.dart' as _i5;
import 'package:build_web_compilers/builders.dart' as _i6;
import 'package:build_modules/builders.dart' as _i7;
import 'package:build_config/build_config.dart' as _i8;
import 'package:build/build.dart' as _i9;
import 'package:build_resolvers/builder.dart' as _i10;
import 'dart:isolate' as _i11;
import 'package:build_runner/build_runner.dart' as _i12;
import 'dart:io' as _i13;

final _builders = <_i1.BuilderApplication>[
  _i1.apply(
    r'freezed:freezed',
    [_i2.freezed],
    _i1.toDependentsOf(r'freezed'),
    hideOutput: false,
  ),
  _i1.apply(
    r'json_serializable:json_serializable',
    [_i3.jsonSerializable],
    _i1.toDependentsOf(r'json_serializable'),
    hideOutput: true,
    appliesBuilders: const [r'source_gen:combining_builder'],
  ),
  _i1.apply(
    r'source_gen:combining_builder',
    [_i4.combiningBuilder],
    _i1.toNoneByDefault(),
    hideOutput: false,
    appliesBuilders: const [r'source_gen:part_cleanup'],
  ),
  _i1.apply(
    r'jaspr_builder:codec_module',
    [_i5.buildCodecModule],
    _i1.toAllPackages(),
    hideOutput: true,
  ),
  _i1.apply(
    r'jaspr_builder:codec_bundle',
    [_i5.buildCodecBundle],
    _i1.toAllPackages(),
    hideOutput: true,
  ),
  _i1.apply(
    r'jaspr_builder:sync_mixins_module',
    [_i5.buildSyncMixins],
    _i1.toDependentsOf(r'jaspr_builder'),
    hideOutput: false,
  ),
  _i1.apply(
    r'jaspr_builder:styles_module',
    [_i5.buildStylesModule],
    _i1.toAllPackages(),
    hideOutput: true,
  ),
  _i1.apply(
    r'jaspr_builder:styles_bundle',
    [_i5.buildStylesBundle],
    _i1.toAllPackages(),
    hideOutput: true,
  ),
  _i1.apply(
    r'jaspr_builder:imports_module',
    [_i5.buildImportsModule],
    _i1.toDependentsOf(r'jaspr_builder'),
    hideOutput: true,
  ),
  _i1.apply(
    r'jaspr_builder:stub',
    [_i5.buildPlatformStubs],
    _i1.toDependentsOf(r'jaspr_builder'),
    hideOutput: false,
  ),
  _i1.apply(
    r'jaspr_builder:client_module',
    [_i5.buildClientModule],
    _i1.toRoot(),
    hideOutput: true,
  ),
  _i1.apply(
    r'jaspr_builder:jaspr_options',
    [_i5.buildJasprOptions],
    _i1.toRoot(),
    hideOutput: false,
  ),
  _i1.apply(
    r'jaspr_builder:import_output',
    [_i5.buildImportsOutput],
    _i1.toDependentsOf(r'jaspr_builder'),
    hideOutput: false,
  ),
  _i1.apply(
    r'jaspr_builder:client_registry',
    [_i5.buildClientRegistry],
    _i1.toRoot(),
    hideOutput: true,
  ),
  _i1.apply(
    r'build_web_compilers:sdk_js',
    [
      _i6.sdkJsCompile,
      _i6.sdkJsCopyRequirejs,
    ],
    _i1.toNoneByDefault(),
    isOptional: true,
    hideOutput: true,
  ),
  _i1.apply(
    r'build_modules:module_library',
    [_i7.moduleLibraryBuilder],
    _i1.toAllPackages(),
    isOptional: true,
    hideOutput: true,
    appliesBuilders: const [r'build_modules:module_cleanup'],
  ),
  _i1.apply(
    r'build_web_compilers:ddc_modules',
    [
      _i6.ddcMetaModuleBuilder,
      _i6.ddcMetaModuleCleanBuilder,
      _i6.ddcModuleBuilder,
    ],
    _i1.toNoneByDefault(),
    isOptional: true,
    hideOutput: true,
    appliesBuilders: const [r'build_modules:module_cleanup'],
  ),
  _i1.apply(
    r'build_web_compilers:ddc',
    [
      _i6.ddcKernelBuilder,
      _i6.ddcBuilder,
    ],
    _i1.toAllPackages(),
    isOptional: true,
    hideOutput: true,
    appliesBuilders: const [
      r'build_web_compilers:ddc_modules',
      r'build_web_compilers:dart2js_modules',
      r'build_web_compilers:dart2wasm_modules',
      r'build_web_compilers:dart_source_cleanup',
    ],
  ),
  _i1.apply(
    r'build_web_compilers:dart2wasm_modules',
    [
      _i6.dart2wasmMetaModuleBuilder,
      _i6.dart2wasmMetaModuleCleanBuilder,
      _i6.dart2wasmModuleBuilder,
    ],
    _i1.toNoneByDefault(),
    isOptional: true,
    hideOutput: true,
    appliesBuilders: const [r'build_modules:module_cleanup'],
  ),
  _i1.apply(
    r'build_web_compilers:dart2js_modules',
    [
      _i6.dart2jsMetaModuleBuilder,
      _i6.dart2jsMetaModuleCleanBuilder,
      _i6.dart2jsModuleBuilder,
    ],
    _i1.toNoneByDefault(),
    isOptional: true,
    hideOutput: true,
    appliesBuilders: const [r'build_modules:module_cleanup'],
  ),
  _i1.apply(
    r'build_web_compilers:entrypoint',
    [_i6.webEntrypointBuilder],
    _i1.toRoot(),
    hideOutput: true,
    defaultGenerateFor: const _i8.InputSet(
      include: [
        r'web/**',
        r'test/**.dart.browser_test.dart',
        r'example/**',
        r'benchmark/**',
      ],
      exclude: [
        r'test/**.node_test.dart',
        r'test/**.vm_test.dart',
      ],
    ),
    defaultOptions: const _i9.BuilderOptions(<String, dynamic>{
      r'dart2js_args': <dynamic>[r'--minify']
    }),
    defaultDevOptions: const _i9.BuilderOptions(<String, dynamic>{
      r'dart2wasm_args': <dynamic>[r'--enable-asserts'],
      r'dart2js_args': <dynamic>[r'--enable-asserts'],
    }),
    defaultReleaseOptions:
        const _i9.BuilderOptions(<String, dynamic>{r'compiler': r'dart2js'}),
    appliesBuilders: const [r'build_web_compilers:dart2js_archive_extractor'],
  ),
  _i1.apply(
    r'build_resolvers:transitive_digests',
    [_i10.transitiveDigestsBuilder],
    _i1.toAllPackages(),
    isOptional: true,
    hideOutput: true,
    appliesBuilders: const [r'build_resolvers:transitive_digest_cleanup'],
  ),
  _i1.applyPostProcess(
    r'build_resolvers:transitive_digest_cleanup',
    _i10.transitiveDigestCleanup,
  ),
  _i1.applyPostProcess(
    r'build_modules:module_cleanup',
    _i7.moduleCleanup,
  ),
  _i1.applyPostProcess(
    r'build_web_compilers:dart2js_archive_extractor',
    _i6.dart2jsArchiveExtractor,
    defaultReleaseOptions:
        const _i9.BuilderOptions(<String, dynamic>{r'filter_outputs': true}),
  ),
  _i1.applyPostProcess(
    r'build_web_compilers:dart_source_cleanup',
    _i6.dartSourceCleanup,
    defaultReleaseOptions:
        const _i9.BuilderOptions(<String, dynamic>{r'enabled': true}),
  ),
  _i1.applyPostProcess(
    r'source_gen:part_cleanup',
    _i4.partCleanup,
  ),
];
void main(
  List<String> args, [
  _i11.SendPort? sendPort,
]) async {
  var result = await _i12.run(
    args,
    _builders,
  );
  sendPort?.send(result);
  _i13.exitCode = result;
}
