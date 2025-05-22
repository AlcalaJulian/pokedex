// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_summary_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonSummaryDto _$PokemonSummaryDtoFromJson(Map<String, dynamic> json) {
  return _PokemonSummaryDto.fromJson(json);
}

/// @nodoc
mixin _$PokemonSummaryDto {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonSummaryDtoCopyWith<PokemonSummaryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonSummaryDtoCopyWith<$Res> {
  factory $PokemonSummaryDtoCopyWith(
          PokemonSummaryDto value, $Res Function(PokemonSummaryDto) then) =
      _$PokemonSummaryDtoCopyWithImpl<$Res, PokemonSummaryDto>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$PokemonSummaryDtoCopyWithImpl<$Res, $Val extends PokemonSummaryDto>
    implements $PokemonSummaryDtoCopyWith<$Res> {
  _$PokemonSummaryDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonSummaryDtoImplCopyWith<$Res>
    implements $PokemonSummaryDtoCopyWith<$Res> {
  factory _$$PokemonSummaryDtoImplCopyWith(_$PokemonSummaryDtoImpl value,
          $Res Function(_$PokemonSummaryDtoImpl) then) =
      __$$PokemonSummaryDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$PokemonSummaryDtoImplCopyWithImpl<$Res>
    extends _$PokemonSummaryDtoCopyWithImpl<$Res, _$PokemonSummaryDtoImpl>
    implements _$$PokemonSummaryDtoImplCopyWith<$Res> {
  __$$PokemonSummaryDtoImplCopyWithImpl(_$PokemonSummaryDtoImpl _value,
      $Res Function(_$PokemonSummaryDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$PokemonSummaryDtoImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonSummaryDtoImpl implements _PokemonSummaryDto {
  const _$PokemonSummaryDtoImpl({required this.name, required this.url});

  factory _$PokemonSummaryDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonSummaryDtoImplFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'PokemonSummaryDto(name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonSummaryDtoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonSummaryDtoImplCopyWith<_$PokemonSummaryDtoImpl> get copyWith =>
      __$$PokemonSummaryDtoImplCopyWithImpl<_$PokemonSummaryDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonSummaryDtoImplToJson(
      this,
    );
  }
}

abstract class _PokemonSummaryDto implements PokemonSummaryDto {
  const factory _PokemonSummaryDto(
      {required final String name,
      required final String url}) = _$PokemonSummaryDtoImpl;

  factory _PokemonSummaryDto.fromJson(Map<String, dynamic> json) =
      _$PokemonSummaryDtoImpl.fromJson;

  @override
  String get name;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$PokemonSummaryDtoImplCopyWith<_$PokemonSummaryDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
