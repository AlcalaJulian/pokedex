// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_detail_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonDetailDto _$PokemonDetailDtoFromJson(Map<String, dynamic> json) {
  return _PokemonDetailDto.fromJson(json);
}

/// @nodoc
mixin _$PokemonDetailDto {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  int get weight => throw _privateConstructorUsedError;
  Sprites get sprites => throw _privateConstructorUsedError;
  List<TypeSlot> get types => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonDetailDtoCopyWith<PokemonDetailDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonDetailDtoCopyWith<$Res> {
  factory $PokemonDetailDtoCopyWith(
          PokemonDetailDto value, $Res Function(PokemonDetailDto) then) =
      _$PokemonDetailDtoCopyWithImpl<$Res, PokemonDetailDto>;
  @useResult
  $Res call(
      {int id,
      String name,
      int height,
      int weight,
      Sprites sprites,
      List<TypeSlot> types});

  $SpritesCopyWith<$Res> get sprites;
}

/// @nodoc
class _$PokemonDetailDtoCopyWithImpl<$Res, $Val extends PokemonDetailDto>
    implements $PokemonDetailDtoCopyWith<$Res> {
  _$PokemonDetailDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? height = null,
    Object? weight = null,
    Object? sprites = null,
    Object? types = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      sprites: null == sprites
          ? _value.sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as Sprites,
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<TypeSlot>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SpritesCopyWith<$Res> get sprites {
    return $SpritesCopyWith<$Res>(_value.sprites, (value) {
      return _then(_value.copyWith(sprites: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonDetailDtoImplCopyWith<$Res>
    implements $PokemonDetailDtoCopyWith<$Res> {
  factory _$$PokemonDetailDtoImplCopyWith(_$PokemonDetailDtoImpl value,
          $Res Function(_$PokemonDetailDtoImpl) then) =
      __$$PokemonDetailDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      int height,
      int weight,
      Sprites sprites,
      List<TypeSlot> types});

  @override
  $SpritesCopyWith<$Res> get sprites;
}

/// @nodoc
class __$$PokemonDetailDtoImplCopyWithImpl<$Res>
    extends _$PokemonDetailDtoCopyWithImpl<$Res, _$PokemonDetailDtoImpl>
    implements _$$PokemonDetailDtoImplCopyWith<$Res> {
  __$$PokemonDetailDtoImplCopyWithImpl(_$PokemonDetailDtoImpl _value,
      $Res Function(_$PokemonDetailDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? height = null,
    Object? weight = null,
    Object? sprites = null,
    Object? types = null,
  }) {
    return _then(_$PokemonDetailDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      sprites: null == sprites
          ? _value.sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as Sprites,
      types: null == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<TypeSlot>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonDetailDtoImpl implements _PokemonDetailDto {
  const _$PokemonDetailDtoImpl(
      {required this.id,
      required this.name,
      required this.height,
      required this.weight,
      required this.sprites,
      required final List<TypeSlot> types})
      : _types = types;

  factory _$PokemonDetailDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonDetailDtoImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int height;
  @override
  final int weight;
  @override
  final Sprites sprites;
  final List<TypeSlot> _types;
  @override
  List<TypeSlot> get types {
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_types);
  }

  @override
  String toString() {
    return 'PokemonDetailDto(id: $id, name: $name, height: $height, weight: $weight, sprites: $sprites, types: $types)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonDetailDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.sprites, sprites) || other.sprites == sprites) &&
            const DeepCollectionEquality().equals(other._types, _types));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, height, weight,
      sprites, const DeepCollectionEquality().hash(_types));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonDetailDtoImplCopyWith<_$PokemonDetailDtoImpl> get copyWith =>
      __$$PokemonDetailDtoImplCopyWithImpl<_$PokemonDetailDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonDetailDtoImplToJson(
      this,
    );
  }
}

abstract class _PokemonDetailDto implements PokemonDetailDto {
  const factory _PokemonDetailDto(
      {required final int id,
      required final String name,
      required final int height,
      required final int weight,
      required final Sprites sprites,
      required final List<TypeSlot> types}) = _$PokemonDetailDtoImpl;

  factory _PokemonDetailDto.fromJson(Map<String, dynamic> json) =
      _$PokemonDetailDtoImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get height;
  @override
  int get weight;
  @override
  Sprites get sprites;
  @override
  List<TypeSlot> get types;
  @override
  @JsonKey(ignore: true)
  _$$PokemonDetailDtoImplCopyWith<_$PokemonDetailDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Sprites _$SpritesFromJson(Map<String, dynamic> json) {
  return _Sprites.fromJson(json);
}

/// @nodoc
mixin _$Sprites {
  @JsonKey(name: 'other')
  OtherSprites get other => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpritesCopyWith<Sprites> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpritesCopyWith<$Res> {
  factory $SpritesCopyWith(Sprites value, $Res Function(Sprites) then) =
      _$SpritesCopyWithImpl<$Res, Sprites>;
  @useResult
  $Res call({@JsonKey(name: 'other') OtherSprites other});

  $OtherSpritesCopyWith<$Res> get other;
}

/// @nodoc
class _$SpritesCopyWithImpl<$Res, $Val extends Sprites>
    implements $SpritesCopyWith<$Res> {
  _$SpritesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? other = null,
  }) {
    return _then(_value.copyWith(
      other: null == other
          ? _value.other
          : other // ignore: cast_nullable_to_non_nullable
              as OtherSprites,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OtherSpritesCopyWith<$Res> get other {
    return $OtherSpritesCopyWith<$Res>(_value.other, (value) {
      return _then(_value.copyWith(other: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SpritesImplCopyWith<$Res> implements $SpritesCopyWith<$Res> {
  factory _$$SpritesImplCopyWith(
          _$SpritesImpl value, $Res Function(_$SpritesImpl) then) =
      __$$SpritesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'other') OtherSprites other});

  @override
  $OtherSpritesCopyWith<$Res> get other;
}

/// @nodoc
class __$$SpritesImplCopyWithImpl<$Res>
    extends _$SpritesCopyWithImpl<$Res, _$SpritesImpl>
    implements _$$SpritesImplCopyWith<$Res> {
  __$$SpritesImplCopyWithImpl(
      _$SpritesImpl _value, $Res Function(_$SpritesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? other = null,
  }) {
    return _then(_$SpritesImpl(
      other: null == other
          ? _value.other
          : other // ignore: cast_nullable_to_non_nullable
              as OtherSprites,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpritesImpl implements _Sprites {
  const _$SpritesImpl({@JsonKey(name: 'other') required this.other});

  factory _$SpritesImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpritesImplFromJson(json);

  @override
  @JsonKey(name: 'other')
  final OtherSprites other;

  @override
  String toString() {
    return 'Sprites(other: $other)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpritesImpl &&
            (identical(other.other, this.other) || other.other == this.other));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, other);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpritesImplCopyWith<_$SpritesImpl> get copyWith =>
      __$$SpritesImplCopyWithImpl<_$SpritesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpritesImplToJson(
      this,
    );
  }
}

abstract class _Sprites implements Sprites {
  const factory _Sprites(
          {@JsonKey(name: 'other') required final OtherSprites other}) =
      _$SpritesImpl;

  factory _Sprites.fromJson(Map<String, dynamic> json) = _$SpritesImpl.fromJson;

  @override
  @JsonKey(name: 'other')
  OtherSprites get other;
  @override
  @JsonKey(ignore: true)
  _$$SpritesImplCopyWith<_$SpritesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OtherSprites _$OtherSpritesFromJson(Map<String, dynamic> json) {
  return _OtherSprites.fromJson(json);
}

/// @nodoc
mixin _$OtherSprites {
  @JsonKey(name: 'official-artwork')
  OfficialArtwork get officialArtwork => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OtherSpritesCopyWith<OtherSprites> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtherSpritesCopyWith<$Res> {
  factory $OtherSpritesCopyWith(
          OtherSprites value, $Res Function(OtherSprites) then) =
      _$OtherSpritesCopyWithImpl<$Res, OtherSprites>;
  @useResult
  $Res call(
      {@JsonKey(name: 'official-artwork') OfficialArtwork officialArtwork});

  $OfficialArtworkCopyWith<$Res> get officialArtwork;
}

/// @nodoc
class _$OtherSpritesCopyWithImpl<$Res, $Val extends OtherSprites>
    implements $OtherSpritesCopyWith<$Res> {
  _$OtherSpritesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? officialArtwork = null,
  }) {
    return _then(_value.copyWith(
      officialArtwork: null == officialArtwork
          ? _value.officialArtwork
          : officialArtwork // ignore: cast_nullable_to_non_nullable
              as OfficialArtwork,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OfficialArtworkCopyWith<$Res> get officialArtwork {
    return $OfficialArtworkCopyWith<$Res>(_value.officialArtwork, (value) {
      return _then(_value.copyWith(officialArtwork: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OtherSpritesImplCopyWith<$Res>
    implements $OtherSpritesCopyWith<$Res> {
  factory _$$OtherSpritesImplCopyWith(
          _$OtherSpritesImpl value, $Res Function(_$OtherSpritesImpl) then) =
      __$$OtherSpritesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'official-artwork') OfficialArtwork officialArtwork});

  @override
  $OfficialArtworkCopyWith<$Res> get officialArtwork;
}

/// @nodoc
class __$$OtherSpritesImplCopyWithImpl<$Res>
    extends _$OtherSpritesCopyWithImpl<$Res, _$OtherSpritesImpl>
    implements _$$OtherSpritesImplCopyWith<$Res> {
  __$$OtherSpritesImplCopyWithImpl(
      _$OtherSpritesImpl _value, $Res Function(_$OtherSpritesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? officialArtwork = null,
  }) {
    return _then(_$OtherSpritesImpl(
      officialArtwork: null == officialArtwork
          ? _value.officialArtwork
          : officialArtwork // ignore: cast_nullable_to_non_nullable
              as OfficialArtwork,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OtherSpritesImpl implements _OtherSprites {
  const _$OtherSpritesImpl(
      {@JsonKey(name: 'official-artwork') required this.officialArtwork});

  factory _$OtherSpritesImpl.fromJson(Map<String, dynamic> json) =>
      _$$OtherSpritesImplFromJson(json);

  @override
  @JsonKey(name: 'official-artwork')
  final OfficialArtwork officialArtwork;

  @override
  String toString() {
    return 'OtherSprites(officialArtwork: $officialArtwork)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtherSpritesImpl &&
            (identical(other.officialArtwork, officialArtwork) ||
                other.officialArtwork == officialArtwork));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, officialArtwork);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtherSpritesImplCopyWith<_$OtherSpritesImpl> get copyWith =>
      __$$OtherSpritesImplCopyWithImpl<_$OtherSpritesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OtherSpritesImplToJson(
      this,
    );
  }
}

abstract class _OtherSprites implements OtherSprites {
  const factory _OtherSprites(
      {@JsonKey(name: 'official-artwork')
      required final OfficialArtwork officialArtwork}) = _$OtherSpritesImpl;

  factory _OtherSprites.fromJson(Map<String, dynamic> json) =
      _$OtherSpritesImpl.fromJson;

  @override
  @JsonKey(name: 'official-artwork')
  OfficialArtwork get officialArtwork;
  @override
  @JsonKey(ignore: true)
  _$$OtherSpritesImplCopyWith<_$OtherSpritesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OfficialArtwork _$OfficialArtworkFromJson(Map<String, dynamic> json) {
  return _OfficialArtwork.fromJson(json);
}

/// @nodoc
mixin _$OfficialArtwork {
  @JsonKey(name: 'front_default')
  String get frontDefault => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OfficialArtworkCopyWith<OfficialArtwork> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfficialArtworkCopyWith<$Res> {
  factory $OfficialArtworkCopyWith(
          OfficialArtwork value, $Res Function(OfficialArtwork) then) =
      _$OfficialArtworkCopyWithImpl<$Res, OfficialArtwork>;
  @useResult
  $Res call({@JsonKey(name: 'front_default') String frontDefault});
}

/// @nodoc
class _$OfficialArtworkCopyWithImpl<$Res, $Val extends OfficialArtwork>
    implements $OfficialArtworkCopyWith<$Res> {
  _$OfficialArtworkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frontDefault = null,
  }) {
    return _then(_value.copyWith(
      frontDefault: null == frontDefault
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OfficialArtworkImplCopyWith<$Res>
    implements $OfficialArtworkCopyWith<$Res> {
  factory _$$OfficialArtworkImplCopyWith(_$OfficialArtworkImpl value,
          $Res Function(_$OfficialArtworkImpl) then) =
      __$$OfficialArtworkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'front_default') String frontDefault});
}

/// @nodoc
class __$$OfficialArtworkImplCopyWithImpl<$Res>
    extends _$OfficialArtworkCopyWithImpl<$Res, _$OfficialArtworkImpl>
    implements _$$OfficialArtworkImplCopyWith<$Res> {
  __$$OfficialArtworkImplCopyWithImpl(
      _$OfficialArtworkImpl _value, $Res Function(_$OfficialArtworkImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frontDefault = null,
  }) {
    return _then(_$OfficialArtworkImpl(
      frontDefault: null == frontDefault
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OfficialArtworkImpl implements _OfficialArtwork {
  const _$OfficialArtworkImpl(
      {@JsonKey(name: 'front_default') required this.frontDefault});

  factory _$OfficialArtworkImpl.fromJson(Map<String, dynamic> json) =>
      _$$OfficialArtworkImplFromJson(json);

  @override
  @JsonKey(name: 'front_default')
  final String frontDefault;

  @override
  String toString() {
    return 'OfficialArtwork(frontDefault: $frontDefault)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OfficialArtworkImpl &&
            (identical(other.frontDefault, frontDefault) ||
                other.frontDefault == frontDefault));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, frontDefault);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OfficialArtworkImplCopyWith<_$OfficialArtworkImpl> get copyWith =>
      __$$OfficialArtworkImplCopyWithImpl<_$OfficialArtworkImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OfficialArtworkImplToJson(
      this,
    );
  }
}

abstract class _OfficialArtwork implements OfficialArtwork {
  const factory _OfficialArtwork(
      {@JsonKey(name: 'front_default')
      required final String frontDefault}) = _$OfficialArtworkImpl;

  factory _OfficialArtwork.fromJson(Map<String, dynamic> json) =
      _$OfficialArtworkImpl.fromJson;

  @override
  @JsonKey(name: 'front_default')
  String get frontDefault;
  @override
  @JsonKey(ignore: true)
  _$$OfficialArtworkImplCopyWith<_$OfficialArtworkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TypeSlot _$TypeSlotFromJson(Map<String, dynamic> json) {
  return _TypeSlot.fromJson(json);
}

/// @nodoc
mixin _$TypeSlot {
  int get slot => throw _privateConstructorUsedError;
  TypeInfo get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TypeSlotCopyWith<TypeSlot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypeSlotCopyWith<$Res> {
  factory $TypeSlotCopyWith(TypeSlot value, $Res Function(TypeSlot) then) =
      _$TypeSlotCopyWithImpl<$Res, TypeSlot>;
  @useResult
  $Res call({int slot, TypeInfo type});

  $TypeInfoCopyWith<$Res> get type;
}

/// @nodoc
class _$TypeSlotCopyWithImpl<$Res, $Val extends TypeSlot>
    implements $TypeSlotCopyWith<$Res> {
  _$TypeSlotCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slot = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      slot: null == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TypeInfo,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TypeInfoCopyWith<$Res> get type {
    return $TypeInfoCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TypeSlotImplCopyWith<$Res>
    implements $TypeSlotCopyWith<$Res> {
  factory _$$TypeSlotImplCopyWith(
          _$TypeSlotImpl value, $Res Function(_$TypeSlotImpl) then) =
      __$$TypeSlotImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int slot, TypeInfo type});

  @override
  $TypeInfoCopyWith<$Res> get type;
}

/// @nodoc
class __$$TypeSlotImplCopyWithImpl<$Res>
    extends _$TypeSlotCopyWithImpl<$Res, _$TypeSlotImpl>
    implements _$$TypeSlotImplCopyWith<$Res> {
  __$$TypeSlotImplCopyWithImpl(
      _$TypeSlotImpl _value, $Res Function(_$TypeSlotImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slot = null,
    Object? type = null,
  }) {
    return _then(_$TypeSlotImpl(
      slot: null == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TypeInfo,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TypeSlotImpl implements _TypeSlot {
  const _$TypeSlotImpl({required this.slot, required this.type});

  factory _$TypeSlotImpl.fromJson(Map<String, dynamic> json) =>
      _$$TypeSlotImplFromJson(json);

  @override
  final int slot;
  @override
  final TypeInfo type;

  @override
  String toString() {
    return 'TypeSlot(slot: $slot, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TypeSlotImpl &&
            (identical(other.slot, slot) || other.slot == slot) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, slot, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TypeSlotImplCopyWith<_$TypeSlotImpl> get copyWith =>
      __$$TypeSlotImplCopyWithImpl<_$TypeSlotImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TypeSlotImplToJson(
      this,
    );
  }
}

abstract class _TypeSlot implements TypeSlot {
  const factory _TypeSlot(
      {required final int slot, required final TypeInfo type}) = _$TypeSlotImpl;

  factory _TypeSlot.fromJson(Map<String, dynamic> json) =
      _$TypeSlotImpl.fromJson;

  @override
  int get slot;
  @override
  TypeInfo get type;
  @override
  @JsonKey(ignore: true)
  _$$TypeSlotImplCopyWith<_$TypeSlotImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TypeInfo _$TypeInfoFromJson(Map<String, dynamic> json) {
  return _TypeInfo.fromJson(json);
}

/// @nodoc
mixin _$TypeInfo {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TypeInfoCopyWith<TypeInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypeInfoCopyWith<$Res> {
  factory $TypeInfoCopyWith(TypeInfo value, $Res Function(TypeInfo) then) =
      _$TypeInfoCopyWithImpl<$Res, TypeInfo>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$TypeInfoCopyWithImpl<$Res, $Val extends TypeInfo>
    implements $TypeInfoCopyWith<$Res> {
  _$TypeInfoCopyWithImpl(this._value, this._then);

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
abstract class _$$TypeInfoImplCopyWith<$Res>
    implements $TypeInfoCopyWith<$Res> {
  factory _$$TypeInfoImplCopyWith(
          _$TypeInfoImpl value, $Res Function(_$TypeInfoImpl) then) =
      __$$TypeInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$TypeInfoImplCopyWithImpl<$Res>
    extends _$TypeInfoCopyWithImpl<$Res, _$TypeInfoImpl>
    implements _$$TypeInfoImplCopyWith<$Res> {
  __$$TypeInfoImplCopyWithImpl(
      _$TypeInfoImpl _value, $Res Function(_$TypeInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$TypeInfoImpl(
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
class _$TypeInfoImpl implements _TypeInfo {
  const _$TypeInfoImpl({required this.name, required this.url});

  factory _$TypeInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TypeInfoImplFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'TypeInfo(name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TypeInfoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TypeInfoImplCopyWith<_$TypeInfoImpl> get copyWith =>
      __$$TypeInfoImplCopyWithImpl<_$TypeInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TypeInfoImplToJson(
      this,
    );
  }
}

abstract class _TypeInfo implements TypeInfo {
  const factory _TypeInfo(
      {required final String name, required final String url}) = _$TypeInfoImpl;

  factory _TypeInfo.fromJson(Map<String, dynamic> json) =
      _$TypeInfoImpl.fromJson;

  @override
  String get name;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$TypeInfoImplCopyWith<_$TypeInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
