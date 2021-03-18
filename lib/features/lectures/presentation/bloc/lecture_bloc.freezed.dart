// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'lecture_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LectureEventTearOff {
  const _$LectureEventTearOff();

// ignore: unused_element
  _Started started() {
    return const _Started();
  }

// ignore: unused_element
  _DownloadLecture downloadLecture({@required String fileUrl}) {
    return _DownloadLecture(
      fileUrl: fileUrl,
    );
  }

// ignore: unused_element
  _UploadLecture uploadLecture(
      {@required UserModel user,
      @required String title,
      @required String courseTitle,
      String description}) {
    return _UploadLecture(
      user: user,
      title: title,
      courseTitle: courseTitle,
      description: description,
    );
  }

// ignore: unused_element
  _GetAllLectures getAllLectures() {
    return const _GetAllLectures();
  }

// ignore: unused_element
  _GetAllLecturesByUserId getAllLecturesByCourse(
      {@required String courseTitle}) {
    return _GetAllLecturesByUserId(
      courseTitle: courseTitle,
    );
  }

// ignore: unused_element
  _GetAllCoursesByUserId getAllCoursesByUserId({@required String userId}) {
    return _GetAllCoursesByUserId(
      userId: userId,
    );
  }

// ignore: unused_element
  _CreateCourse createCourse({@required String courseTitle}) {
    return _CreateCourse(
      courseTitle: courseTitle,
    );
  }

// ignore: unused_element
  _SubmitUser submitUser(
      {@required String userId,
      @required String courseTitle,
      @required String lectureTitle}) {
    return _SubmitUser(
      userId: userId,
      courseTitle: courseTitle,
      lectureTitle: lectureTitle,
    );
  }

// ignore: unused_element
  _GetAllSubmittedUsers getAllSubmittedUsers(
      {@required String userId,
      @required String courseTitle,
      @required String lectureTitle}) {
    return _GetAllSubmittedUsers(
      userId: userId,
      courseTitle: courseTitle,
      lectureTitle: lectureTitle,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LectureEvent = _$LectureEventTearOff();

/// @nodoc
mixin _$LectureEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult downloadLecture(String fileUrl),
    @required
        TResult uploadLecture(UserModel user, String title, String courseTitle,
            String description),
    @required TResult getAllLectures(),
    @required TResult getAllLecturesByCourse(String courseTitle),
    @required TResult getAllCoursesByUserId(String userId),
    @required TResult createCourse(String courseTitle),
    @required
        TResult submitUser(
            String userId, String courseTitle, String lectureTitle),
    @required
        TResult getAllSubmittedUsers(
            String userId, String courseTitle, String lectureTitle),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult downloadLecture(String fileUrl),
    TResult uploadLecture(
        UserModel user, String title, String courseTitle, String description),
    TResult getAllLectures(),
    TResult getAllLecturesByCourse(String courseTitle),
    TResult getAllCoursesByUserId(String userId),
    TResult createCourse(String courseTitle),
    TResult submitUser(String userId, String courseTitle, String lectureTitle),
    TResult getAllSubmittedUsers(
        String userId, String courseTitle, String lectureTitle),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult downloadLecture(_DownloadLecture value),
    @required TResult uploadLecture(_UploadLecture value),
    @required TResult getAllLectures(_GetAllLectures value),
    @required TResult getAllLecturesByCourse(_GetAllLecturesByUserId value),
    @required TResult getAllCoursesByUserId(_GetAllCoursesByUserId value),
    @required TResult createCourse(_CreateCourse value),
    @required TResult submitUser(_SubmitUser value),
    @required TResult getAllSubmittedUsers(_GetAllSubmittedUsers value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult downloadLecture(_DownloadLecture value),
    TResult uploadLecture(_UploadLecture value),
    TResult getAllLectures(_GetAllLectures value),
    TResult getAllLecturesByCourse(_GetAllLecturesByUserId value),
    TResult getAllCoursesByUserId(_GetAllCoursesByUserId value),
    TResult createCourse(_CreateCourse value),
    TResult submitUser(_SubmitUser value),
    TResult getAllSubmittedUsers(_GetAllSubmittedUsers value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $LectureEventCopyWith<$Res> {
  factory $LectureEventCopyWith(
          LectureEvent value, $Res Function(LectureEvent) then) =
      _$LectureEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LectureEventCopyWithImpl<$Res> implements $LectureEventCopyWith<$Res> {
  _$LectureEventCopyWithImpl(this._value, this._then);

  final LectureEvent _value;
  // ignore: unused_field
  final $Res Function(LectureEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$LectureEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc
class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'LectureEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult downloadLecture(String fileUrl),
    @required
        TResult uploadLecture(UserModel user, String title, String courseTitle,
            String description),
    @required TResult getAllLectures(),
    @required TResult getAllLecturesByCourse(String courseTitle),
    @required TResult getAllCoursesByUserId(String userId),
    @required TResult createCourse(String courseTitle),
    @required
        TResult submitUser(
            String userId, String courseTitle, String lectureTitle),
    @required
        TResult getAllSubmittedUsers(
            String userId, String courseTitle, String lectureTitle),
  }) {
    assert(started != null);
    assert(downloadLecture != null);
    assert(uploadLecture != null);
    assert(getAllLectures != null);
    assert(getAllLecturesByCourse != null);
    assert(getAllCoursesByUserId != null);
    assert(createCourse != null);
    assert(submitUser != null);
    assert(getAllSubmittedUsers != null);
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult downloadLecture(String fileUrl),
    TResult uploadLecture(
        UserModel user, String title, String courseTitle, String description),
    TResult getAllLectures(),
    TResult getAllLecturesByCourse(String courseTitle),
    TResult getAllCoursesByUserId(String userId),
    TResult createCourse(String courseTitle),
    TResult submitUser(String userId, String courseTitle, String lectureTitle),
    TResult getAllSubmittedUsers(
        String userId, String courseTitle, String lectureTitle),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult downloadLecture(_DownloadLecture value),
    @required TResult uploadLecture(_UploadLecture value),
    @required TResult getAllLectures(_GetAllLectures value),
    @required TResult getAllLecturesByCourse(_GetAllLecturesByUserId value),
    @required TResult getAllCoursesByUserId(_GetAllCoursesByUserId value),
    @required TResult createCourse(_CreateCourse value),
    @required TResult submitUser(_SubmitUser value),
    @required TResult getAllSubmittedUsers(_GetAllSubmittedUsers value),
  }) {
    assert(started != null);
    assert(downloadLecture != null);
    assert(uploadLecture != null);
    assert(getAllLectures != null);
    assert(getAllLecturesByCourse != null);
    assert(getAllCoursesByUserId != null);
    assert(createCourse != null);
    assert(submitUser != null);
    assert(getAllSubmittedUsers != null);
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult downloadLecture(_DownloadLecture value),
    TResult uploadLecture(_UploadLecture value),
    TResult getAllLectures(_GetAllLectures value),
    TResult getAllLecturesByCourse(_GetAllLecturesByUserId value),
    TResult getAllCoursesByUserId(_GetAllCoursesByUserId value),
    TResult createCourse(_CreateCourse value),
    TResult submitUser(_SubmitUser value),
    TResult getAllSubmittedUsers(_GetAllSubmittedUsers value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements LectureEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$DownloadLectureCopyWith<$Res> {
  factory _$DownloadLectureCopyWith(
          _DownloadLecture value, $Res Function(_DownloadLecture) then) =
      __$DownloadLectureCopyWithImpl<$Res>;
  $Res call({String fileUrl});
}

/// @nodoc
class __$DownloadLectureCopyWithImpl<$Res>
    extends _$LectureEventCopyWithImpl<$Res>
    implements _$DownloadLectureCopyWith<$Res> {
  __$DownloadLectureCopyWithImpl(
      _DownloadLecture _value, $Res Function(_DownloadLecture) _then)
      : super(_value, (v) => _then(v as _DownloadLecture));

  @override
  _DownloadLecture get _value => super._value as _DownloadLecture;

  @override
  $Res call({
    Object fileUrl = freezed,
  }) {
    return _then(_DownloadLecture(
      fileUrl: fileUrl == freezed ? _value.fileUrl : fileUrl as String,
    ));
  }
}

/// @nodoc
class _$_DownloadLecture implements _DownloadLecture {
  const _$_DownloadLecture({@required this.fileUrl}) : assert(fileUrl != null);

  @override
  final String fileUrl;

  @override
  String toString() {
    return 'LectureEvent.downloadLecture(fileUrl: $fileUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DownloadLecture &&
            (identical(other.fileUrl, fileUrl) ||
                const DeepCollectionEquality().equals(other.fileUrl, fileUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(fileUrl);

  @JsonKey(ignore: true)
  @override
  _$DownloadLectureCopyWith<_DownloadLecture> get copyWith =>
      __$DownloadLectureCopyWithImpl<_DownloadLecture>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult downloadLecture(String fileUrl),
    @required
        TResult uploadLecture(UserModel user, String title, String courseTitle,
            String description),
    @required TResult getAllLectures(),
    @required TResult getAllLecturesByCourse(String courseTitle),
    @required TResult getAllCoursesByUserId(String userId),
    @required TResult createCourse(String courseTitle),
    @required
        TResult submitUser(
            String userId, String courseTitle, String lectureTitle),
    @required
        TResult getAllSubmittedUsers(
            String userId, String courseTitle, String lectureTitle),
  }) {
    assert(started != null);
    assert(downloadLecture != null);
    assert(uploadLecture != null);
    assert(getAllLectures != null);
    assert(getAllLecturesByCourse != null);
    assert(getAllCoursesByUserId != null);
    assert(createCourse != null);
    assert(submitUser != null);
    assert(getAllSubmittedUsers != null);
    return downloadLecture(fileUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult downloadLecture(String fileUrl),
    TResult uploadLecture(
        UserModel user, String title, String courseTitle, String description),
    TResult getAllLectures(),
    TResult getAllLecturesByCourse(String courseTitle),
    TResult getAllCoursesByUserId(String userId),
    TResult createCourse(String courseTitle),
    TResult submitUser(String userId, String courseTitle, String lectureTitle),
    TResult getAllSubmittedUsers(
        String userId, String courseTitle, String lectureTitle),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (downloadLecture != null) {
      return downloadLecture(fileUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult downloadLecture(_DownloadLecture value),
    @required TResult uploadLecture(_UploadLecture value),
    @required TResult getAllLectures(_GetAllLectures value),
    @required TResult getAllLecturesByCourse(_GetAllLecturesByUserId value),
    @required TResult getAllCoursesByUserId(_GetAllCoursesByUserId value),
    @required TResult createCourse(_CreateCourse value),
    @required TResult submitUser(_SubmitUser value),
    @required TResult getAllSubmittedUsers(_GetAllSubmittedUsers value),
  }) {
    assert(started != null);
    assert(downloadLecture != null);
    assert(uploadLecture != null);
    assert(getAllLectures != null);
    assert(getAllLecturesByCourse != null);
    assert(getAllCoursesByUserId != null);
    assert(createCourse != null);
    assert(submitUser != null);
    assert(getAllSubmittedUsers != null);
    return downloadLecture(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult downloadLecture(_DownloadLecture value),
    TResult uploadLecture(_UploadLecture value),
    TResult getAllLectures(_GetAllLectures value),
    TResult getAllLecturesByCourse(_GetAllLecturesByUserId value),
    TResult getAllCoursesByUserId(_GetAllCoursesByUserId value),
    TResult createCourse(_CreateCourse value),
    TResult submitUser(_SubmitUser value),
    TResult getAllSubmittedUsers(_GetAllSubmittedUsers value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (downloadLecture != null) {
      return downloadLecture(this);
    }
    return orElse();
  }
}

abstract class _DownloadLecture implements LectureEvent {
  const factory _DownloadLecture({@required String fileUrl}) =
      _$_DownloadLecture;

  String get fileUrl;
  @JsonKey(ignore: true)
  _$DownloadLectureCopyWith<_DownloadLecture> get copyWith;
}

/// @nodoc
abstract class _$UploadLectureCopyWith<$Res> {
  factory _$UploadLectureCopyWith(
          _UploadLecture value, $Res Function(_UploadLecture) then) =
      __$UploadLectureCopyWithImpl<$Res>;
  $Res call(
      {UserModel user, String title, String courseTitle, String description});
}

/// @nodoc
class __$UploadLectureCopyWithImpl<$Res>
    extends _$LectureEventCopyWithImpl<$Res>
    implements _$UploadLectureCopyWith<$Res> {
  __$UploadLectureCopyWithImpl(
      _UploadLecture _value, $Res Function(_UploadLecture) _then)
      : super(_value, (v) => _then(v as _UploadLecture));

  @override
  _UploadLecture get _value => super._value as _UploadLecture;

  @override
  $Res call({
    Object user = freezed,
    Object title = freezed,
    Object courseTitle = freezed,
    Object description = freezed,
  }) {
    return _then(_UploadLecture(
      user: user == freezed ? _value.user : user as UserModel,
      title: title == freezed ? _value.title : title as String,
      courseTitle:
          courseTitle == freezed ? _value.courseTitle : courseTitle as String,
      description:
          description == freezed ? _value.description : description as String,
    ));
  }
}

/// @nodoc
class _$_UploadLecture implements _UploadLecture {
  const _$_UploadLecture(
      {@required this.user,
      @required this.title,
      @required this.courseTitle,
      this.description})
      : assert(user != null),
        assert(title != null),
        assert(courseTitle != null);

  @override
  final UserModel user;
  @override
  final String title;
  @override
  final String courseTitle;
  @override
  final String description;

  @override
  String toString() {
    return 'LectureEvent.uploadLecture(user: $user, title: $title, courseTitle: $courseTitle, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UploadLecture &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.courseTitle, courseTitle) ||
                const DeepCollectionEquality()
                    .equals(other.courseTitle, courseTitle)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(courseTitle) ^
      const DeepCollectionEquality().hash(description);

  @JsonKey(ignore: true)
  @override
  _$UploadLectureCopyWith<_UploadLecture> get copyWith =>
      __$UploadLectureCopyWithImpl<_UploadLecture>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult downloadLecture(String fileUrl),
    @required
        TResult uploadLecture(UserModel user, String title, String courseTitle,
            String description),
    @required TResult getAllLectures(),
    @required TResult getAllLecturesByCourse(String courseTitle),
    @required TResult getAllCoursesByUserId(String userId),
    @required TResult createCourse(String courseTitle),
    @required
        TResult submitUser(
            String userId, String courseTitle, String lectureTitle),
    @required
        TResult getAllSubmittedUsers(
            String userId, String courseTitle, String lectureTitle),
  }) {
    assert(started != null);
    assert(downloadLecture != null);
    assert(uploadLecture != null);
    assert(getAllLectures != null);
    assert(getAllLecturesByCourse != null);
    assert(getAllCoursesByUserId != null);
    assert(createCourse != null);
    assert(submitUser != null);
    assert(getAllSubmittedUsers != null);
    return uploadLecture(user, title, courseTitle, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult downloadLecture(String fileUrl),
    TResult uploadLecture(
        UserModel user, String title, String courseTitle, String description),
    TResult getAllLectures(),
    TResult getAllLecturesByCourse(String courseTitle),
    TResult getAllCoursesByUserId(String userId),
    TResult createCourse(String courseTitle),
    TResult submitUser(String userId, String courseTitle, String lectureTitle),
    TResult getAllSubmittedUsers(
        String userId, String courseTitle, String lectureTitle),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (uploadLecture != null) {
      return uploadLecture(user, title, courseTitle, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult downloadLecture(_DownloadLecture value),
    @required TResult uploadLecture(_UploadLecture value),
    @required TResult getAllLectures(_GetAllLectures value),
    @required TResult getAllLecturesByCourse(_GetAllLecturesByUserId value),
    @required TResult getAllCoursesByUserId(_GetAllCoursesByUserId value),
    @required TResult createCourse(_CreateCourse value),
    @required TResult submitUser(_SubmitUser value),
    @required TResult getAllSubmittedUsers(_GetAllSubmittedUsers value),
  }) {
    assert(started != null);
    assert(downloadLecture != null);
    assert(uploadLecture != null);
    assert(getAllLectures != null);
    assert(getAllLecturesByCourse != null);
    assert(getAllCoursesByUserId != null);
    assert(createCourse != null);
    assert(submitUser != null);
    assert(getAllSubmittedUsers != null);
    return uploadLecture(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult downloadLecture(_DownloadLecture value),
    TResult uploadLecture(_UploadLecture value),
    TResult getAllLectures(_GetAllLectures value),
    TResult getAllLecturesByCourse(_GetAllLecturesByUserId value),
    TResult getAllCoursesByUserId(_GetAllCoursesByUserId value),
    TResult createCourse(_CreateCourse value),
    TResult submitUser(_SubmitUser value),
    TResult getAllSubmittedUsers(_GetAllSubmittedUsers value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (uploadLecture != null) {
      return uploadLecture(this);
    }
    return orElse();
  }
}

abstract class _UploadLecture implements LectureEvent {
  const factory _UploadLecture(
      {@required UserModel user,
      @required String title,
      @required String courseTitle,
      String description}) = _$_UploadLecture;

  UserModel get user;
  String get title;
  String get courseTitle;
  String get description;
  @JsonKey(ignore: true)
  _$UploadLectureCopyWith<_UploadLecture> get copyWith;
}

/// @nodoc
abstract class _$GetAllLecturesCopyWith<$Res> {
  factory _$GetAllLecturesCopyWith(
          _GetAllLectures value, $Res Function(_GetAllLectures) then) =
      __$GetAllLecturesCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetAllLecturesCopyWithImpl<$Res>
    extends _$LectureEventCopyWithImpl<$Res>
    implements _$GetAllLecturesCopyWith<$Res> {
  __$GetAllLecturesCopyWithImpl(
      _GetAllLectures _value, $Res Function(_GetAllLectures) _then)
      : super(_value, (v) => _then(v as _GetAllLectures));

  @override
  _GetAllLectures get _value => super._value as _GetAllLectures;
}

/// @nodoc
class _$_GetAllLectures implements _GetAllLectures {
  const _$_GetAllLectures();

  @override
  String toString() {
    return 'LectureEvent.getAllLectures()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetAllLectures);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult downloadLecture(String fileUrl),
    @required
        TResult uploadLecture(UserModel user, String title, String courseTitle,
            String description),
    @required TResult getAllLectures(),
    @required TResult getAllLecturesByCourse(String courseTitle),
    @required TResult getAllCoursesByUserId(String userId),
    @required TResult createCourse(String courseTitle),
    @required
        TResult submitUser(
            String userId, String courseTitle, String lectureTitle),
    @required
        TResult getAllSubmittedUsers(
            String userId, String courseTitle, String lectureTitle),
  }) {
    assert(started != null);
    assert(downloadLecture != null);
    assert(uploadLecture != null);
    assert(getAllLectures != null);
    assert(getAllLecturesByCourse != null);
    assert(getAllCoursesByUserId != null);
    assert(createCourse != null);
    assert(submitUser != null);
    assert(getAllSubmittedUsers != null);
    return getAllLectures();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult downloadLecture(String fileUrl),
    TResult uploadLecture(
        UserModel user, String title, String courseTitle, String description),
    TResult getAllLectures(),
    TResult getAllLecturesByCourse(String courseTitle),
    TResult getAllCoursesByUserId(String userId),
    TResult createCourse(String courseTitle),
    TResult submitUser(String userId, String courseTitle, String lectureTitle),
    TResult getAllSubmittedUsers(
        String userId, String courseTitle, String lectureTitle),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getAllLectures != null) {
      return getAllLectures();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult downloadLecture(_DownloadLecture value),
    @required TResult uploadLecture(_UploadLecture value),
    @required TResult getAllLectures(_GetAllLectures value),
    @required TResult getAllLecturesByCourse(_GetAllLecturesByUserId value),
    @required TResult getAllCoursesByUserId(_GetAllCoursesByUserId value),
    @required TResult createCourse(_CreateCourse value),
    @required TResult submitUser(_SubmitUser value),
    @required TResult getAllSubmittedUsers(_GetAllSubmittedUsers value),
  }) {
    assert(started != null);
    assert(downloadLecture != null);
    assert(uploadLecture != null);
    assert(getAllLectures != null);
    assert(getAllLecturesByCourse != null);
    assert(getAllCoursesByUserId != null);
    assert(createCourse != null);
    assert(submitUser != null);
    assert(getAllSubmittedUsers != null);
    return getAllLectures(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult downloadLecture(_DownloadLecture value),
    TResult uploadLecture(_UploadLecture value),
    TResult getAllLectures(_GetAllLectures value),
    TResult getAllLecturesByCourse(_GetAllLecturesByUserId value),
    TResult getAllCoursesByUserId(_GetAllCoursesByUserId value),
    TResult createCourse(_CreateCourse value),
    TResult submitUser(_SubmitUser value),
    TResult getAllSubmittedUsers(_GetAllSubmittedUsers value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getAllLectures != null) {
      return getAllLectures(this);
    }
    return orElse();
  }
}

abstract class _GetAllLectures implements LectureEvent {
  const factory _GetAllLectures() = _$_GetAllLectures;
}

/// @nodoc
abstract class _$GetAllLecturesByUserIdCopyWith<$Res> {
  factory _$GetAllLecturesByUserIdCopyWith(_GetAllLecturesByUserId value,
          $Res Function(_GetAllLecturesByUserId) then) =
      __$GetAllLecturesByUserIdCopyWithImpl<$Res>;
  $Res call({String courseTitle});
}

/// @nodoc
class __$GetAllLecturesByUserIdCopyWithImpl<$Res>
    extends _$LectureEventCopyWithImpl<$Res>
    implements _$GetAllLecturesByUserIdCopyWith<$Res> {
  __$GetAllLecturesByUserIdCopyWithImpl(_GetAllLecturesByUserId _value,
      $Res Function(_GetAllLecturesByUserId) _then)
      : super(_value, (v) => _then(v as _GetAllLecturesByUserId));

  @override
  _GetAllLecturesByUserId get _value => super._value as _GetAllLecturesByUserId;

  @override
  $Res call({
    Object courseTitle = freezed,
  }) {
    return _then(_GetAllLecturesByUserId(
      courseTitle:
          courseTitle == freezed ? _value.courseTitle : courseTitle as String,
    ));
  }
}

/// @nodoc
class _$_GetAllLecturesByUserId implements _GetAllLecturesByUserId {
  const _$_GetAllLecturesByUserId({@required this.courseTitle})
      : assert(courseTitle != null);

  @override
  final String courseTitle;

  @override
  String toString() {
    return 'LectureEvent.getAllLecturesByCourse(courseTitle: $courseTitle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetAllLecturesByUserId &&
            (identical(other.courseTitle, courseTitle) ||
                const DeepCollectionEquality()
                    .equals(other.courseTitle, courseTitle)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(courseTitle);

  @JsonKey(ignore: true)
  @override
  _$GetAllLecturesByUserIdCopyWith<_GetAllLecturesByUserId> get copyWith =>
      __$GetAllLecturesByUserIdCopyWithImpl<_GetAllLecturesByUserId>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult downloadLecture(String fileUrl),
    @required
        TResult uploadLecture(UserModel user, String title, String courseTitle,
            String description),
    @required TResult getAllLectures(),
    @required TResult getAllLecturesByCourse(String courseTitle),
    @required TResult getAllCoursesByUserId(String userId),
    @required TResult createCourse(String courseTitle),
    @required
        TResult submitUser(
            String userId, String courseTitle, String lectureTitle),
    @required
        TResult getAllSubmittedUsers(
            String userId, String courseTitle, String lectureTitle),
  }) {
    assert(started != null);
    assert(downloadLecture != null);
    assert(uploadLecture != null);
    assert(getAllLectures != null);
    assert(getAllLecturesByCourse != null);
    assert(getAllCoursesByUserId != null);
    assert(createCourse != null);
    assert(submitUser != null);
    assert(getAllSubmittedUsers != null);
    return getAllLecturesByCourse(courseTitle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult downloadLecture(String fileUrl),
    TResult uploadLecture(
        UserModel user, String title, String courseTitle, String description),
    TResult getAllLectures(),
    TResult getAllLecturesByCourse(String courseTitle),
    TResult getAllCoursesByUserId(String userId),
    TResult createCourse(String courseTitle),
    TResult submitUser(String userId, String courseTitle, String lectureTitle),
    TResult getAllSubmittedUsers(
        String userId, String courseTitle, String lectureTitle),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getAllLecturesByCourse != null) {
      return getAllLecturesByCourse(courseTitle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult downloadLecture(_DownloadLecture value),
    @required TResult uploadLecture(_UploadLecture value),
    @required TResult getAllLectures(_GetAllLectures value),
    @required TResult getAllLecturesByCourse(_GetAllLecturesByUserId value),
    @required TResult getAllCoursesByUserId(_GetAllCoursesByUserId value),
    @required TResult createCourse(_CreateCourse value),
    @required TResult submitUser(_SubmitUser value),
    @required TResult getAllSubmittedUsers(_GetAllSubmittedUsers value),
  }) {
    assert(started != null);
    assert(downloadLecture != null);
    assert(uploadLecture != null);
    assert(getAllLectures != null);
    assert(getAllLecturesByCourse != null);
    assert(getAllCoursesByUserId != null);
    assert(createCourse != null);
    assert(submitUser != null);
    assert(getAllSubmittedUsers != null);
    return getAllLecturesByCourse(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult downloadLecture(_DownloadLecture value),
    TResult uploadLecture(_UploadLecture value),
    TResult getAllLectures(_GetAllLectures value),
    TResult getAllLecturesByCourse(_GetAllLecturesByUserId value),
    TResult getAllCoursesByUserId(_GetAllCoursesByUserId value),
    TResult createCourse(_CreateCourse value),
    TResult submitUser(_SubmitUser value),
    TResult getAllSubmittedUsers(_GetAllSubmittedUsers value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getAllLecturesByCourse != null) {
      return getAllLecturesByCourse(this);
    }
    return orElse();
  }
}

abstract class _GetAllLecturesByUserId implements LectureEvent {
  const factory _GetAllLecturesByUserId({@required String courseTitle}) =
      _$_GetAllLecturesByUserId;

  String get courseTitle;
  @JsonKey(ignore: true)
  _$GetAllLecturesByUserIdCopyWith<_GetAllLecturesByUserId> get copyWith;
}

/// @nodoc
abstract class _$GetAllCoursesByUserIdCopyWith<$Res> {
  factory _$GetAllCoursesByUserIdCopyWith(_GetAllCoursesByUserId value,
          $Res Function(_GetAllCoursesByUserId) then) =
      __$GetAllCoursesByUserIdCopyWithImpl<$Res>;
  $Res call({String userId});
}

/// @nodoc
class __$GetAllCoursesByUserIdCopyWithImpl<$Res>
    extends _$LectureEventCopyWithImpl<$Res>
    implements _$GetAllCoursesByUserIdCopyWith<$Res> {
  __$GetAllCoursesByUserIdCopyWithImpl(_GetAllCoursesByUserId _value,
      $Res Function(_GetAllCoursesByUserId) _then)
      : super(_value, (v) => _then(v as _GetAllCoursesByUserId));

  @override
  _GetAllCoursesByUserId get _value => super._value as _GetAllCoursesByUserId;

  @override
  $Res call({
    Object userId = freezed,
  }) {
    return _then(_GetAllCoursesByUserId(
      userId: userId == freezed ? _value.userId : userId as String,
    ));
  }
}

/// @nodoc
class _$_GetAllCoursesByUserId implements _GetAllCoursesByUserId {
  const _$_GetAllCoursesByUserId({@required this.userId})
      : assert(userId != null);

  @override
  final String userId;

  @override
  String toString() {
    return 'LectureEvent.getAllCoursesByUserId(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetAllCoursesByUserId &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userId);

  @JsonKey(ignore: true)
  @override
  _$GetAllCoursesByUserIdCopyWith<_GetAllCoursesByUserId> get copyWith =>
      __$GetAllCoursesByUserIdCopyWithImpl<_GetAllCoursesByUserId>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult downloadLecture(String fileUrl),
    @required
        TResult uploadLecture(UserModel user, String title, String courseTitle,
            String description),
    @required TResult getAllLectures(),
    @required TResult getAllLecturesByCourse(String courseTitle),
    @required TResult getAllCoursesByUserId(String userId),
    @required TResult createCourse(String courseTitle),
    @required
        TResult submitUser(
            String userId, String courseTitle, String lectureTitle),
    @required
        TResult getAllSubmittedUsers(
            String userId, String courseTitle, String lectureTitle),
  }) {
    assert(started != null);
    assert(downloadLecture != null);
    assert(uploadLecture != null);
    assert(getAllLectures != null);
    assert(getAllLecturesByCourse != null);
    assert(getAllCoursesByUserId != null);
    assert(createCourse != null);
    assert(submitUser != null);
    assert(getAllSubmittedUsers != null);
    return getAllCoursesByUserId(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult downloadLecture(String fileUrl),
    TResult uploadLecture(
        UserModel user, String title, String courseTitle, String description),
    TResult getAllLectures(),
    TResult getAllLecturesByCourse(String courseTitle),
    TResult getAllCoursesByUserId(String userId),
    TResult createCourse(String courseTitle),
    TResult submitUser(String userId, String courseTitle, String lectureTitle),
    TResult getAllSubmittedUsers(
        String userId, String courseTitle, String lectureTitle),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getAllCoursesByUserId != null) {
      return getAllCoursesByUserId(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult downloadLecture(_DownloadLecture value),
    @required TResult uploadLecture(_UploadLecture value),
    @required TResult getAllLectures(_GetAllLectures value),
    @required TResult getAllLecturesByCourse(_GetAllLecturesByUserId value),
    @required TResult getAllCoursesByUserId(_GetAllCoursesByUserId value),
    @required TResult createCourse(_CreateCourse value),
    @required TResult submitUser(_SubmitUser value),
    @required TResult getAllSubmittedUsers(_GetAllSubmittedUsers value),
  }) {
    assert(started != null);
    assert(downloadLecture != null);
    assert(uploadLecture != null);
    assert(getAllLectures != null);
    assert(getAllLecturesByCourse != null);
    assert(getAllCoursesByUserId != null);
    assert(createCourse != null);
    assert(submitUser != null);
    assert(getAllSubmittedUsers != null);
    return getAllCoursesByUserId(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult downloadLecture(_DownloadLecture value),
    TResult uploadLecture(_UploadLecture value),
    TResult getAllLectures(_GetAllLectures value),
    TResult getAllLecturesByCourse(_GetAllLecturesByUserId value),
    TResult getAllCoursesByUserId(_GetAllCoursesByUserId value),
    TResult createCourse(_CreateCourse value),
    TResult submitUser(_SubmitUser value),
    TResult getAllSubmittedUsers(_GetAllSubmittedUsers value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getAllCoursesByUserId != null) {
      return getAllCoursesByUserId(this);
    }
    return orElse();
  }
}

abstract class _GetAllCoursesByUserId implements LectureEvent {
  const factory _GetAllCoursesByUserId({@required String userId}) =
      _$_GetAllCoursesByUserId;

  String get userId;
  @JsonKey(ignore: true)
  _$GetAllCoursesByUserIdCopyWith<_GetAllCoursesByUserId> get copyWith;
}

/// @nodoc
abstract class _$CreateCourseCopyWith<$Res> {
  factory _$CreateCourseCopyWith(
          _CreateCourse value, $Res Function(_CreateCourse) then) =
      __$CreateCourseCopyWithImpl<$Res>;
  $Res call({String courseTitle});
}

/// @nodoc
class __$CreateCourseCopyWithImpl<$Res> extends _$LectureEventCopyWithImpl<$Res>
    implements _$CreateCourseCopyWith<$Res> {
  __$CreateCourseCopyWithImpl(
      _CreateCourse _value, $Res Function(_CreateCourse) _then)
      : super(_value, (v) => _then(v as _CreateCourse));

  @override
  _CreateCourse get _value => super._value as _CreateCourse;

  @override
  $Res call({
    Object courseTitle = freezed,
  }) {
    return _then(_CreateCourse(
      courseTitle:
          courseTitle == freezed ? _value.courseTitle : courseTitle as String,
    ));
  }
}

/// @nodoc
class _$_CreateCourse implements _CreateCourse {
  const _$_CreateCourse({@required this.courseTitle})
      : assert(courseTitle != null);

  @override
  final String courseTitle;

  @override
  String toString() {
    return 'LectureEvent.createCourse(courseTitle: $courseTitle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateCourse &&
            (identical(other.courseTitle, courseTitle) ||
                const DeepCollectionEquality()
                    .equals(other.courseTitle, courseTitle)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(courseTitle);

  @JsonKey(ignore: true)
  @override
  _$CreateCourseCopyWith<_CreateCourse> get copyWith =>
      __$CreateCourseCopyWithImpl<_CreateCourse>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult downloadLecture(String fileUrl),
    @required
        TResult uploadLecture(UserModel user, String title, String courseTitle,
            String description),
    @required TResult getAllLectures(),
    @required TResult getAllLecturesByCourse(String courseTitle),
    @required TResult getAllCoursesByUserId(String userId),
    @required TResult createCourse(String courseTitle),
    @required
        TResult submitUser(
            String userId, String courseTitle, String lectureTitle),
    @required
        TResult getAllSubmittedUsers(
            String userId, String courseTitle, String lectureTitle),
  }) {
    assert(started != null);
    assert(downloadLecture != null);
    assert(uploadLecture != null);
    assert(getAllLectures != null);
    assert(getAllLecturesByCourse != null);
    assert(getAllCoursesByUserId != null);
    assert(createCourse != null);
    assert(submitUser != null);
    assert(getAllSubmittedUsers != null);
    return createCourse(courseTitle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult downloadLecture(String fileUrl),
    TResult uploadLecture(
        UserModel user, String title, String courseTitle, String description),
    TResult getAllLectures(),
    TResult getAllLecturesByCourse(String courseTitle),
    TResult getAllCoursesByUserId(String userId),
    TResult createCourse(String courseTitle),
    TResult submitUser(String userId, String courseTitle, String lectureTitle),
    TResult getAllSubmittedUsers(
        String userId, String courseTitle, String lectureTitle),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (createCourse != null) {
      return createCourse(courseTitle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult downloadLecture(_DownloadLecture value),
    @required TResult uploadLecture(_UploadLecture value),
    @required TResult getAllLectures(_GetAllLectures value),
    @required TResult getAllLecturesByCourse(_GetAllLecturesByUserId value),
    @required TResult getAllCoursesByUserId(_GetAllCoursesByUserId value),
    @required TResult createCourse(_CreateCourse value),
    @required TResult submitUser(_SubmitUser value),
    @required TResult getAllSubmittedUsers(_GetAllSubmittedUsers value),
  }) {
    assert(started != null);
    assert(downloadLecture != null);
    assert(uploadLecture != null);
    assert(getAllLectures != null);
    assert(getAllLecturesByCourse != null);
    assert(getAllCoursesByUserId != null);
    assert(createCourse != null);
    assert(submitUser != null);
    assert(getAllSubmittedUsers != null);
    return createCourse(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult downloadLecture(_DownloadLecture value),
    TResult uploadLecture(_UploadLecture value),
    TResult getAllLectures(_GetAllLectures value),
    TResult getAllLecturesByCourse(_GetAllLecturesByUserId value),
    TResult getAllCoursesByUserId(_GetAllCoursesByUserId value),
    TResult createCourse(_CreateCourse value),
    TResult submitUser(_SubmitUser value),
    TResult getAllSubmittedUsers(_GetAllSubmittedUsers value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (createCourse != null) {
      return createCourse(this);
    }
    return orElse();
  }
}

abstract class _CreateCourse implements LectureEvent {
  const factory _CreateCourse({@required String courseTitle}) = _$_CreateCourse;

  String get courseTitle;
  @JsonKey(ignore: true)
  _$CreateCourseCopyWith<_CreateCourse> get copyWith;
}

/// @nodoc
abstract class _$SubmitUserCopyWith<$Res> {
  factory _$SubmitUserCopyWith(
          _SubmitUser value, $Res Function(_SubmitUser) then) =
      __$SubmitUserCopyWithImpl<$Res>;
  $Res call({String userId, String courseTitle, String lectureTitle});
}

/// @nodoc
class __$SubmitUserCopyWithImpl<$Res> extends _$LectureEventCopyWithImpl<$Res>
    implements _$SubmitUserCopyWith<$Res> {
  __$SubmitUserCopyWithImpl(
      _SubmitUser _value, $Res Function(_SubmitUser) _then)
      : super(_value, (v) => _then(v as _SubmitUser));

  @override
  _SubmitUser get _value => super._value as _SubmitUser;

  @override
  $Res call({
    Object userId = freezed,
    Object courseTitle = freezed,
    Object lectureTitle = freezed,
  }) {
    return _then(_SubmitUser(
      userId: userId == freezed ? _value.userId : userId as String,
      courseTitle:
          courseTitle == freezed ? _value.courseTitle : courseTitle as String,
      lectureTitle: lectureTitle == freezed
          ? _value.lectureTitle
          : lectureTitle as String,
    ));
  }
}

/// @nodoc
class _$_SubmitUser implements _SubmitUser {
  const _$_SubmitUser(
      {@required this.userId,
      @required this.courseTitle,
      @required this.lectureTitle})
      : assert(userId != null),
        assert(courseTitle != null),
        assert(lectureTitle != null);

  @override
  final String userId;
  @override
  final String courseTitle;
  @override
  final String lectureTitle;

  @override
  String toString() {
    return 'LectureEvent.submitUser(userId: $userId, courseTitle: $courseTitle, lectureTitle: $lectureTitle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SubmitUser &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.courseTitle, courseTitle) ||
                const DeepCollectionEquality()
                    .equals(other.courseTitle, courseTitle)) &&
            (identical(other.lectureTitle, lectureTitle) ||
                const DeepCollectionEquality()
                    .equals(other.lectureTitle, lectureTitle)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(courseTitle) ^
      const DeepCollectionEquality().hash(lectureTitle);

  @JsonKey(ignore: true)
  @override
  _$SubmitUserCopyWith<_SubmitUser> get copyWith =>
      __$SubmitUserCopyWithImpl<_SubmitUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult downloadLecture(String fileUrl),
    @required
        TResult uploadLecture(UserModel user, String title, String courseTitle,
            String description),
    @required TResult getAllLectures(),
    @required TResult getAllLecturesByCourse(String courseTitle),
    @required TResult getAllCoursesByUserId(String userId),
    @required TResult createCourse(String courseTitle),
    @required
        TResult submitUser(
            String userId, String courseTitle, String lectureTitle),
    @required
        TResult getAllSubmittedUsers(
            String userId, String courseTitle, String lectureTitle),
  }) {
    assert(started != null);
    assert(downloadLecture != null);
    assert(uploadLecture != null);
    assert(getAllLectures != null);
    assert(getAllLecturesByCourse != null);
    assert(getAllCoursesByUserId != null);
    assert(createCourse != null);
    assert(submitUser != null);
    assert(getAllSubmittedUsers != null);
    return submitUser(userId, courseTitle, lectureTitle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult downloadLecture(String fileUrl),
    TResult uploadLecture(
        UserModel user, String title, String courseTitle, String description),
    TResult getAllLectures(),
    TResult getAllLecturesByCourse(String courseTitle),
    TResult getAllCoursesByUserId(String userId),
    TResult createCourse(String courseTitle),
    TResult submitUser(String userId, String courseTitle, String lectureTitle),
    TResult getAllSubmittedUsers(
        String userId, String courseTitle, String lectureTitle),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (submitUser != null) {
      return submitUser(userId, courseTitle, lectureTitle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult downloadLecture(_DownloadLecture value),
    @required TResult uploadLecture(_UploadLecture value),
    @required TResult getAllLectures(_GetAllLectures value),
    @required TResult getAllLecturesByCourse(_GetAllLecturesByUserId value),
    @required TResult getAllCoursesByUserId(_GetAllCoursesByUserId value),
    @required TResult createCourse(_CreateCourse value),
    @required TResult submitUser(_SubmitUser value),
    @required TResult getAllSubmittedUsers(_GetAllSubmittedUsers value),
  }) {
    assert(started != null);
    assert(downloadLecture != null);
    assert(uploadLecture != null);
    assert(getAllLectures != null);
    assert(getAllLecturesByCourse != null);
    assert(getAllCoursesByUserId != null);
    assert(createCourse != null);
    assert(submitUser != null);
    assert(getAllSubmittedUsers != null);
    return submitUser(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult downloadLecture(_DownloadLecture value),
    TResult uploadLecture(_UploadLecture value),
    TResult getAllLectures(_GetAllLectures value),
    TResult getAllLecturesByCourse(_GetAllLecturesByUserId value),
    TResult getAllCoursesByUserId(_GetAllCoursesByUserId value),
    TResult createCourse(_CreateCourse value),
    TResult submitUser(_SubmitUser value),
    TResult getAllSubmittedUsers(_GetAllSubmittedUsers value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (submitUser != null) {
      return submitUser(this);
    }
    return orElse();
  }
}

abstract class _SubmitUser implements LectureEvent {
  const factory _SubmitUser(
      {@required String userId,
      @required String courseTitle,
      @required String lectureTitle}) = _$_SubmitUser;

  String get userId;
  String get courseTitle;
  String get lectureTitle;
  @JsonKey(ignore: true)
  _$SubmitUserCopyWith<_SubmitUser> get copyWith;
}

/// @nodoc
abstract class _$GetAllSubmittedUsersCopyWith<$Res> {
  factory _$GetAllSubmittedUsersCopyWith(_GetAllSubmittedUsers value,
          $Res Function(_GetAllSubmittedUsers) then) =
      __$GetAllSubmittedUsersCopyWithImpl<$Res>;
  $Res call({String userId, String courseTitle, String lectureTitle});
}

/// @nodoc
class __$GetAllSubmittedUsersCopyWithImpl<$Res>
    extends _$LectureEventCopyWithImpl<$Res>
    implements _$GetAllSubmittedUsersCopyWith<$Res> {
  __$GetAllSubmittedUsersCopyWithImpl(
      _GetAllSubmittedUsers _value, $Res Function(_GetAllSubmittedUsers) _then)
      : super(_value, (v) => _then(v as _GetAllSubmittedUsers));

  @override
  _GetAllSubmittedUsers get _value => super._value as _GetAllSubmittedUsers;

  @override
  $Res call({
    Object userId = freezed,
    Object courseTitle = freezed,
    Object lectureTitle = freezed,
  }) {
    return _then(_GetAllSubmittedUsers(
      userId: userId == freezed ? _value.userId : userId as String,
      courseTitle:
          courseTitle == freezed ? _value.courseTitle : courseTitle as String,
      lectureTitle: lectureTitle == freezed
          ? _value.lectureTitle
          : lectureTitle as String,
    ));
  }
}

/// @nodoc
class _$_GetAllSubmittedUsers implements _GetAllSubmittedUsers {
  const _$_GetAllSubmittedUsers(
      {@required this.userId,
      @required this.courseTitle,
      @required this.lectureTitle})
      : assert(userId != null),
        assert(courseTitle != null),
        assert(lectureTitle != null);

  @override
  final String userId;
  @override
  final String courseTitle;
  @override
  final String lectureTitle;

  @override
  String toString() {
    return 'LectureEvent.getAllSubmittedUsers(userId: $userId, courseTitle: $courseTitle, lectureTitle: $lectureTitle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetAllSubmittedUsers &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.courseTitle, courseTitle) ||
                const DeepCollectionEquality()
                    .equals(other.courseTitle, courseTitle)) &&
            (identical(other.lectureTitle, lectureTitle) ||
                const DeepCollectionEquality()
                    .equals(other.lectureTitle, lectureTitle)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(courseTitle) ^
      const DeepCollectionEquality().hash(lectureTitle);

  @JsonKey(ignore: true)
  @override
  _$GetAllSubmittedUsersCopyWith<_GetAllSubmittedUsers> get copyWith =>
      __$GetAllSubmittedUsersCopyWithImpl<_GetAllSubmittedUsers>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult downloadLecture(String fileUrl),
    @required
        TResult uploadLecture(UserModel user, String title, String courseTitle,
            String description),
    @required TResult getAllLectures(),
    @required TResult getAllLecturesByCourse(String courseTitle),
    @required TResult getAllCoursesByUserId(String userId),
    @required TResult createCourse(String courseTitle),
    @required
        TResult submitUser(
            String userId, String courseTitle, String lectureTitle),
    @required
        TResult getAllSubmittedUsers(
            String userId, String courseTitle, String lectureTitle),
  }) {
    assert(started != null);
    assert(downloadLecture != null);
    assert(uploadLecture != null);
    assert(getAllLectures != null);
    assert(getAllLecturesByCourse != null);
    assert(getAllCoursesByUserId != null);
    assert(createCourse != null);
    assert(submitUser != null);
    assert(getAllSubmittedUsers != null);
    return getAllSubmittedUsers(userId, courseTitle, lectureTitle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult downloadLecture(String fileUrl),
    TResult uploadLecture(
        UserModel user, String title, String courseTitle, String description),
    TResult getAllLectures(),
    TResult getAllLecturesByCourse(String courseTitle),
    TResult getAllCoursesByUserId(String userId),
    TResult createCourse(String courseTitle),
    TResult submitUser(String userId, String courseTitle, String lectureTitle),
    TResult getAllSubmittedUsers(
        String userId, String courseTitle, String lectureTitle),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getAllSubmittedUsers != null) {
      return getAllSubmittedUsers(userId, courseTitle, lectureTitle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult downloadLecture(_DownloadLecture value),
    @required TResult uploadLecture(_UploadLecture value),
    @required TResult getAllLectures(_GetAllLectures value),
    @required TResult getAllLecturesByCourse(_GetAllLecturesByUserId value),
    @required TResult getAllCoursesByUserId(_GetAllCoursesByUserId value),
    @required TResult createCourse(_CreateCourse value),
    @required TResult submitUser(_SubmitUser value),
    @required TResult getAllSubmittedUsers(_GetAllSubmittedUsers value),
  }) {
    assert(started != null);
    assert(downloadLecture != null);
    assert(uploadLecture != null);
    assert(getAllLectures != null);
    assert(getAllLecturesByCourse != null);
    assert(getAllCoursesByUserId != null);
    assert(createCourse != null);
    assert(submitUser != null);
    assert(getAllSubmittedUsers != null);
    return getAllSubmittedUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult downloadLecture(_DownloadLecture value),
    TResult uploadLecture(_UploadLecture value),
    TResult getAllLectures(_GetAllLectures value),
    TResult getAllLecturesByCourse(_GetAllLecturesByUserId value),
    TResult getAllCoursesByUserId(_GetAllCoursesByUserId value),
    TResult createCourse(_CreateCourse value),
    TResult submitUser(_SubmitUser value),
    TResult getAllSubmittedUsers(_GetAllSubmittedUsers value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getAllSubmittedUsers != null) {
      return getAllSubmittedUsers(this);
    }
    return orElse();
  }
}

abstract class _GetAllSubmittedUsers implements LectureEvent {
  const factory _GetAllSubmittedUsers(
      {@required String userId,
      @required String courseTitle,
      @required String lectureTitle}) = _$_GetAllSubmittedUsers;

  String get userId;
  String get courseTitle;
  String get lectureTitle;
  @JsonKey(ignore: true)
  _$GetAllSubmittedUsersCopyWith<_GetAllSubmittedUsers> get copyWith;
}

/// @nodoc
class _$LectureStateTearOff {
  const _$LectureStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Loading loading() {
    return const _Loading();
  }

// ignore: unused_element
  _Failure failure() {
    return const _Failure();
  }

// ignore: unused_element
  _LectureLoaded lectureLoaded({@required LectureEntity lectureEntity}) {
    return _LectureLoaded(
      lectureEntity: lectureEntity,
    );
  }

// ignore: unused_element
  _AllLecturesLoaded allLecturesLoaded(
      {@required List<LectureEntity> lecturesEntities,
      List<String> submittedUsers}) {
    return _AllLecturesLoaded(
      lecturesEntities: lecturesEntities,
      submittedUsers: submittedUsers,
    );
  }

// ignore: unused_element
  _AllCoursesLoaded allCoursesLoaded({@required List<String> courseIds}) {
    return _AllCoursesLoaded(
      courseIds: courseIds,
    );
  }

// ignore: unused_element
  _AllSubmittedUsersLoaded allSubmittedUsersLoaded(
      {@required List<String> submittedUsers}) {
    return _AllSubmittedUsersLoaded(
      submittedUsers: submittedUsers,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LectureState = _$LectureStateTearOff();

/// @nodoc
mixin _$LectureState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult failure(),
    @required TResult lectureLoaded(LectureEntity lectureEntity),
    @required
        TResult allLecturesLoaded(
            List<LectureEntity> lecturesEntities, List<String> submittedUsers),
    @required TResult allCoursesLoaded(List<String> courseIds),
    @required TResult allSubmittedUsersLoaded(List<String> submittedUsers),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult failure(),
    TResult lectureLoaded(LectureEntity lectureEntity),
    TResult allLecturesLoaded(
        List<LectureEntity> lecturesEntities, List<String> submittedUsers),
    TResult allCoursesLoaded(List<String> courseIds),
    TResult allSubmittedUsersLoaded(List<String> submittedUsers),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult failure(_Failure value),
    @required TResult lectureLoaded(_LectureLoaded value),
    @required TResult allLecturesLoaded(_AllLecturesLoaded value),
    @required TResult allCoursesLoaded(_AllCoursesLoaded value),
    @required TResult allSubmittedUsersLoaded(_AllSubmittedUsersLoaded value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult failure(_Failure value),
    TResult lectureLoaded(_LectureLoaded value),
    TResult allLecturesLoaded(_AllLecturesLoaded value),
    TResult allCoursesLoaded(_AllCoursesLoaded value),
    TResult allSubmittedUsersLoaded(_AllSubmittedUsersLoaded value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $LectureStateCopyWith<$Res> {
  factory $LectureStateCopyWith(
          LectureState value, $Res Function(LectureState) then) =
      _$LectureStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LectureStateCopyWithImpl<$Res> implements $LectureStateCopyWith<$Res> {
  _$LectureStateCopyWithImpl(this._value, this._then);

  final LectureState _value;
  // ignore: unused_field
  final $Res Function(LectureState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$LectureStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'LectureState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult failure(),
    @required TResult lectureLoaded(LectureEntity lectureEntity),
    @required
        TResult allLecturesLoaded(
            List<LectureEntity> lecturesEntities, List<String> submittedUsers),
    @required TResult allCoursesLoaded(List<String> courseIds),
    @required TResult allSubmittedUsersLoaded(List<String> submittedUsers),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failure != null);
    assert(lectureLoaded != null);
    assert(allLecturesLoaded != null);
    assert(allCoursesLoaded != null);
    assert(allSubmittedUsersLoaded != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult failure(),
    TResult lectureLoaded(LectureEntity lectureEntity),
    TResult allLecturesLoaded(
        List<LectureEntity> lecturesEntities, List<String> submittedUsers),
    TResult allCoursesLoaded(List<String> courseIds),
    TResult allSubmittedUsersLoaded(List<String> submittedUsers),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult failure(_Failure value),
    @required TResult lectureLoaded(_LectureLoaded value),
    @required TResult allLecturesLoaded(_AllLecturesLoaded value),
    @required TResult allCoursesLoaded(_AllCoursesLoaded value),
    @required TResult allSubmittedUsersLoaded(_AllSubmittedUsersLoaded value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failure != null);
    assert(lectureLoaded != null);
    assert(allLecturesLoaded != null);
    assert(allCoursesLoaded != null);
    assert(allSubmittedUsersLoaded != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult failure(_Failure value),
    TResult lectureLoaded(_LectureLoaded value),
    TResult allLecturesLoaded(_AllLecturesLoaded value),
    TResult allCoursesLoaded(_AllCoursesLoaded value),
    TResult allSubmittedUsersLoaded(_AllSubmittedUsersLoaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LectureState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$LectureStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc
class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'LectureState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult failure(),
    @required TResult lectureLoaded(LectureEntity lectureEntity),
    @required
        TResult allLecturesLoaded(
            List<LectureEntity> lecturesEntities, List<String> submittedUsers),
    @required TResult allCoursesLoaded(List<String> courseIds),
    @required TResult allSubmittedUsersLoaded(List<String> submittedUsers),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failure != null);
    assert(lectureLoaded != null);
    assert(allLecturesLoaded != null);
    assert(allCoursesLoaded != null);
    assert(allSubmittedUsersLoaded != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult failure(),
    TResult lectureLoaded(LectureEntity lectureEntity),
    TResult allLecturesLoaded(
        List<LectureEntity> lecturesEntities, List<String> submittedUsers),
    TResult allCoursesLoaded(List<String> courseIds),
    TResult allSubmittedUsersLoaded(List<String> submittedUsers),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult failure(_Failure value),
    @required TResult lectureLoaded(_LectureLoaded value),
    @required TResult allLecturesLoaded(_AllLecturesLoaded value),
    @required TResult allCoursesLoaded(_AllCoursesLoaded value),
    @required TResult allSubmittedUsersLoaded(_AllSubmittedUsersLoaded value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failure != null);
    assert(lectureLoaded != null);
    assert(allLecturesLoaded != null);
    assert(allCoursesLoaded != null);
    assert(allSubmittedUsersLoaded != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult failure(_Failure value),
    TResult lectureLoaded(_LectureLoaded value),
    TResult allLecturesLoaded(_AllLecturesLoaded value),
    TResult allCoursesLoaded(_AllCoursesLoaded value),
    TResult allSubmittedUsersLoaded(_AllSubmittedUsersLoaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements LectureState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$FailureCopyWithImpl<$Res> extends _$LectureStateCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(_Failure _value, $Res Function(_Failure) _then)
      : super(_value, (v) => _then(v as _Failure));

  @override
  _Failure get _value => super._value as _Failure;
}

/// @nodoc
class _$_Failure implements _Failure {
  const _$_Failure();

  @override
  String toString() {
    return 'LectureState.failure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Failure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult failure(),
    @required TResult lectureLoaded(LectureEntity lectureEntity),
    @required
        TResult allLecturesLoaded(
            List<LectureEntity> lecturesEntities, List<String> submittedUsers),
    @required TResult allCoursesLoaded(List<String> courseIds),
    @required TResult allSubmittedUsersLoaded(List<String> submittedUsers),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failure != null);
    assert(lectureLoaded != null);
    assert(allLecturesLoaded != null);
    assert(allCoursesLoaded != null);
    assert(allSubmittedUsersLoaded != null);
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult failure(),
    TResult lectureLoaded(LectureEntity lectureEntity),
    TResult allLecturesLoaded(
        List<LectureEntity> lecturesEntities, List<String> submittedUsers),
    TResult allCoursesLoaded(List<String> courseIds),
    TResult allSubmittedUsersLoaded(List<String> submittedUsers),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult failure(_Failure value),
    @required TResult lectureLoaded(_LectureLoaded value),
    @required TResult allLecturesLoaded(_AllLecturesLoaded value),
    @required TResult allCoursesLoaded(_AllCoursesLoaded value),
    @required TResult allSubmittedUsersLoaded(_AllSubmittedUsersLoaded value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failure != null);
    assert(lectureLoaded != null);
    assert(allLecturesLoaded != null);
    assert(allCoursesLoaded != null);
    assert(allSubmittedUsersLoaded != null);
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult failure(_Failure value),
    TResult lectureLoaded(_LectureLoaded value),
    TResult allLecturesLoaded(_AllLecturesLoaded value),
    TResult allCoursesLoaded(_AllCoursesLoaded value),
    TResult allSubmittedUsersLoaded(_AllSubmittedUsersLoaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements LectureState {
  const factory _Failure() = _$_Failure;
}

/// @nodoc
abstract class _$LectureLoadedCopyWith<$Res> {
  factory _$LectureLoadedCopyWith(
          _LectureLoaded value, $Res Function(_LectureLoaded) then) =
      __$LectureLoadedCopyWithImpl<$Res>;
  $Res call({LectureEntity lectureEntity});
}

/// @nodoc
class __$LectureLoadedCopyWithImpl<$Res>
    extends _$LectureStateCopyWithImpl<$Res>
    implements _$LectureLoadedCopyWith<$Res> {
  __$LectureLoadedCopyWithImpl(
      _LectureLoaded _value, $Res Function(_LectureLoaded) _then)
      : super(_value, (v) => _then(v as _LectureLoaded));

  @override
  _LectureLoaded get _value => super._value as _LectureLoaded;

  @override
  $Res call({
    Object lectureEntity = freezed,
  }) {
    return _then(_LectureLoaded(
      lectureEntity: lectureEntity == freezed
          ? _value.lectureEntity
          : lectureEntity as LectureEntity,
    ));
  }
}

/// @nodoc
class _$_LectureLoaded implements _LectureLoaded {
  const _$_LectureLoaded({@required this.lectureEntity})
      : assert(lectureEntity != null);

  @override
  final LectureEntity lectureEntity;

  @override
  String toString() {
    return 'LectureState.lectureLoaded(lectureEntity: $lectureEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LectureLoaded &&
            (identical(other.lectureEntity, lectureEntity) ||
                const DeepCollectionEquality()
                    .equals(other.lectureEntity, lectureEntity)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(lectureEntity);

  @JsonKey(ignore: true)
  @override
  _$LectureLoadedCopyWith<_LectureLoaded> get copyWith =>
      __$LectureLoadedCopyWithImpl<_LectureLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult failure(),
    @required TResult lectureLoaded(LectureEntity lectureEntity),
    @required
        TResult allLecturesLoaded(
            List<LectureEntity> lecturesEntities, List<String> submittedUsers),
    @required TResult allCoursesLoaded(List<String> courseIds),
    @required TResult allSubmittedUsersLoaded(List<String> submittedUsers),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failure != null);
    assert(lectureLoaded != null);
    assert(allLecturesLoaded != null);
    assert(allCoursesLoaded != null);
    assert(allSubmittedUsersLoaded != null);
    return lectureLoaded(lectureEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult failure(),
    TResult lectureLoaded(LectureEntity lectureEntity),
    TResult allLecturesLoaded(
        List<LectureEntity> lecturesEntities, List<String> submittedUsers),
    TResult allCoursesLoaded(List<String> courseIds),
    TResult allSubmittedUsersLoaded(List<String> submittedUsers),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (lectureLoaded != null) {
      return lectureLoaded(lectureEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult failure(_Failure value),
    @required TResult lectureLoaded(_LectureLoaded value),
    @required TResult allLecturesLoaded(_AllLecturesLoaded value),
    @required TResult allCoursesLoaded(_AllCoursesLoaded value),
    @required TResult allSubmittedUsersLoaded(_AllSubmittedUsersLoaded value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failure != null);
    assert(lectureLoaded != null);
    assert(allLecturesLoaded != null);
    assert(allCoursesLoaded != null);
    assert(allSubmittedUsersLoaded != null);
    return lectureLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult failure(_Failure value),
    TResult lectureLoaded(_LectureLoaded value),
    TResult allLecturesLoaded(_AllLecturesLoaded value),
    TResult allCoursesLoaded(_AllCoursesLoaded value),
    TResult allSubmittedUsersLoaded(_AllSubmittedUsersLoaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (lectureLoaded != null) {
      return lectureLoaded(this);
    }
    return orElse();
  }
}

abstract class _LectureLoaded implements LectureState {
  const factory _LectureLoaded({@required LectureEntity lectureEntity}) =
      _$_LectureLoaded;

  LectureEntity get lectureEntity;
  @JsonKey(ignore: true)
  _$LectureLoadedCopyWith<_LectureLoaded> get copyWith;
}

/// @nodoc
abstract class _$AllLecturesLoadedCopyWith<$Res> {
  factory _$AllLecturesLoadedCopyWith(
          _AllLecturesLoaded value, $Res Function(_AllLecturesLoaded) then) =
      __$AllLecturesLoadedCopyWithImpl<$Res>;
  $Res call(
      {List<LectureEntity> lecturesEntities, List<String> submittedUsers});
}

/// @nodoc
class __$AllLecturesLoadedCopyWithImpl<$Res>
    extends _$LectureStateCopyWithImpl<$Res>
    implements _$AllLecturesLoadedCopyWith<$Res> {
  __$AllLecturesLoadedCopyWithImpl(
      _AllLecturesLoaded _value, $Res Function(_AllLecturesLoaded) _then)
      : super(_value, (v) => _then(v as _AllLecturesLoaded));

  @override
  _AllLecturesLoaded get _value => super._value as _AllLecturesLoaded;

  @override
  $Res call({
    Object lecturesEntities = freezed,
    Object submittedUsers = freezed,
  }) {
    return _then(_AllLecturesLoaded(
      lecturesEntities: lecturesEntities == freezed
          ? _value.lecturesEntities
          : lecturesEntities as List<LectureEntity>,
      submittedUsers: submittedUsers == freezed
          ? _value.submittedUsers
          : submittedUsers as List<String>,
    ));
  }
}

/// @nodoc
class _$_AllLecturesLoaded implements _AllLecturesLoaded {
  const _$_AllLecturesLoaded(
      {@required this.lecturesEntities, this.submittedUsers})
      : assert(lecturesEntities != null);

  @override
  final List<LectureEntity> lecturesEntities;
  @override
  final List<String> submittedUsers;

  @override
  String toString() {
    return 'LectureState.allLecturesLoaded(lecturesEntities: $lecturesEntities, submittedUsers: $submittedUsers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AllLecturesLoaded &&
            (identical(other.lecturesEntities, lecturesEntities) ||
                const DeepCollectionEquality()
                    .equals(other.lecturesEntities, lecturesEntities)) &&
            (identical(other.submittedUsers, submittedUsers) ||
                const DeepCollectionEquality()
                    .equals(other.submittedUsers, submittedUsers)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(lecturesEntities) ^
      const DeepCollectionEquality().hash(submittedUsers);

  @JsonKey(ignore: true)
  @override
  _$AllLecturesLoadedCopyWith<_AllLecturesLoaded> get copyWith =>
      __$AllLecturesLoadedCopyWithImpl<_AllLecturesLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult failure(),
    @required TResult lectureLoaded(LectureEntity lectureEntity),
    @required
        TResult allLecturesLoaded(
            List<LectureEntity> lecturesEntities, List<String> submittedUsers),
    @required TResult allCoursesLoaded(List<String> courseIds),
    @required TResult allSubmittedUsersLoaded(List<String> submittedUsers),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failure != null);
    assert(lectureLoaded != null);
    assert(allLecturesLoaded != null);
    assert(allCoursesLoaded != null);
    assert(allSubmittedUsersLoaded != null);
    return allLecturesLoaded(lecturesEntities, submittedUsers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult failure(),
    TResult lectureLoaded(LectureEntity lectureEntity),
    TResult allLecturesLoaded(
        List<LectureEntity> lecturesEntities, List<String> submittedUsers),
    TResult allCoursesLoaded(List<String> courseIds),
    TResult allSubmittedUsersLoaded(List<String> submittedUsers),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (allLecturesLoaded != null) {
      return allLecturesLoaded(lecturesEntities, submittedUsers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult failure(_Failure value),
    @required TResult lectureLoaded(_LectureLoaded value),
    @required TResult allLecturesLoaded(_AllLecturesLoaded value),
    @required TResult allCoursesLoaded(_AllCoursesLoaded value),
    @required TResult allSubmittedUsersLoaded(_AllSubmittedUsersLoaded value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failure != null);
    assert(lectureLoaded != null);
    assert(allLecturesLoaded != null);
    assert(allCoursesLoaded != null);
    assert(allSubmittedUsersLoaded != null);
    return allLecturesLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult failure(_Failure value),
    TResult lectureLoaded(_LectureLoaded value),
    TResult allLecturesLoaded(_AllLecturesLoaded value),
    TResult allCoursesLoaded(_AllCoursesLoaded value),
    TResult allSubmittedUsersLoaded(_AllSubmittedUsersLoaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (allLecturesLoaded != null) {
      return allLecturesLoaded(this);
    }
    return orElse();
  }
}

abstract class _AllLecturesLoaded implements LectureState {
  const factory _AllLecturesLoaded(
      {@required List<LectureEntity> lecturesEntities,
      List<String> submittedUsers}) = _$_AllLecturesLoaded;

  List<LectureEntity> get lecturesEntities;
  List<String> get submittedUsers;
  @JsonKey(ignore: true)
  _$AllLecturesLoadedCopyWith<_AllLecturesLoaded> get copyWith;
}

/// @nodoc
abstract class _$AllCoursesLoadedCopyWith<$Res> {
  factory _$AllCoursesLoadedCopyWith(
          _AllCoursesLoaded value, $Res Function(_AllCoursesLoaded) then) =
      __$AllCoursesLoadedCopyWithImpl<$Res>;
  $Res call({List<String> courseIds});
}

/// @nodoc
class __$AllCoursesLoadedCopyWithImpl<$Res>
    extends _$LectureStateCopyWithImpl<$Res>
    implements _$AllCoursesLoadedCopyWith<$Res> {
  __$AllCoursesLoadedCopyWithImpl(
      _AllCoursesLoaded _value, $Res Function(_AllCoursesLoaded) _then)
      : super(_value, (v) => _then(v as _AllCoursesLoaded));

  @override
  _AllCoursesLoaded get _value => super._value as _AllCoursesLoaded;

  @override
  $Res call({
    Object courseIds = freezed,
  }) {
    return _then(_AllCoursesLoaded(
      courseIds:
          courseIds == freezed ? _value.courseIds : courseIds as List<String>,
    ));
  }
}

/// @nodoc
class _$_AllCoursesLoaded implements _AllCoursesLoaded {
  const _$_AllCoursesLoaded({@required this.courseIds})
      : assert(courseIds != null);

  @override
  final List<String> courseIds;

  @override
  String toString() {
    return 'LectureState.allCoursesLoaded(courseIds: $courseIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AllCoursesLoaded &&
            (identical(other.courseIds, courseIds) ||
                const DeepCollectionEquality()
                    .equals(other.courseIds, courseIds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(courseIds);

  @JsonKey(ignore: true)
  @override
  _$AllCoursesLoadedCopyWith<_AllCoursesLoaded> get copyWith =>
      __$AllCoursesLoadedCopyWithImpl<_AllCoursesLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult failure(),
    @required TResult lectureLoaded(LectureEntity lectureEntity),
    @required
        TResult allLecturesLoaded(
            List<LectureEntity> lecturesEntities, List<String> submittedUsers),
    @required TResult allCoursesLoaded(List<String> courseIds),
    @required TResult allSubmittedUsersLoaded(List<String> submittedUsers),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failure != null);
    assert(lectureLoaded != null);
    assert(allLecturesLoaded != null);
    assert(allCoursesLoaded != null);
    assert(allSubmittedUsersLoaded != null);
    return allCoursesLoaded(courseIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult failure(),
    TResult lectureLoaded(LectureEntity lectureEntity),
    TResult allLecturesLoaded(
        List<LectureEntity> lecturesEntities, List<String> submittedUsers),
    TResult allCoursesLoaded(List<String> courseIds),
    TResult allSubmittedUsersLoaded(List<String> submittedUsers),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (allCoursesLoaded != null) {
      return allCoursesLoaded(courseIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult failure(_Failure value),
    @required TResult lectureLoaded(_LectureLoaded value),
    @required TResult allLecturesLoaded(_AllLecturesLoaded value),
    @required TResult allCoursesLoaded(_AllCoursesLoaded value),
    @required TResult allSubmittedUsersLoaded(_AllSubmittedUsersLoaded value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failure != null);
    assert(lectureLoaded != null);
    assert(allLecturesLoaded != null);
    assert(allCoursesLoaded != null);
    assert(allSubmittedUsersLoaded != null);
    return allCoursesLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult failure(_Failure value),
    TResult lectureLoaded(_LectureLoaded value),
    TResult allLecturesLoaded(_AllLecturesLoaded value),
    TResult allCoursesLoaded(_AllCoursesLoaded value),
    TResult allSubmittedUsersLoaded(_AllSubmittedUsersLoaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (allCoursesLoaded != null) {
      return allCoursesLoaded(this);
    }
    return orElse();
  }
}

abstract class _AllCoursesLoaded implements LectureState {
  const factory _AllCoursesLoaded({@required List<String> courseIds}) =
      _$_AllCoursesLoaded;

  List<String> get courseIds;
  @JsonKey(ignore: true)
  _$AllCoursesLoadedCopyWith<_AllCoursesLoaded> get copyWith;
}

/// @nodoc
abstract class _$AllSubmittedUsersLoadedCopyWith<$Res> {
  factory _$AllSubmittedUsersLoadedCopyWith(_AllSubmittedUsersLoaded value,
          $Res Function(_AllSubmittedUsersLoaded) then) =
      __$AllSubmittedUsersLoadedCopyWithImpl<$Res>;
  $Res call({List<String> submittedUsers});
}

/// @nodoc
class __$AllSubmittedUsersLoadedCopyWithImpl<$Res>
    extends _$LectureStateCopyWithImpl<$Res>
    implements _$AllSubmittedUsersLoadedCopyWith<$Res> {
  __$AllSubmittedUsersLoadedCopyWithImpl(_AllSubmittedUsersLoaded _value,
      $Res Function(_AllSubmittedUsersLoaded) _then)
      : super(_value, (v) => _then(v as _AllSubmittedUsersLoaded));

  @override
  _AllSubmittedUsersLoaded get _value =>
      super._value as _AllSubmittedUsersLoaded;

  @override
  $Res call({
    Object submittedUsers = freezed,
  }) {
    return _then(_AllSubmittedUsersLoaded(
      submittedUsers: submittedUsers == freezed
          ? _value.submittedUsers
          : submittedUsers as List<String>,
    ));
  }
}

/// @nodoc
class _$_AllSubmittedUsersLoaded implements _AllSubmittedUsersLoaded {
  const _$_AllSubmittedUsersLoaded({@required this.submittedUsers})
      : assert(submittedUsers != null);

  @override
  final List<String> submittedUsers;

  @override
  String toString() {
    return 'LectureState.allSubmittedUsersLoaded(submittedUsers: $submittedUsers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AllSubmittedUsersLoaded &&
            (identical(other.submittedUsers, submittedUsers) ||
                const DeepCollectionEquality()
                    .equals(other.submittedUsers, submittedUsers)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(submittedUsers);

  @JsonKey(ignore: true)
  @override
  _$AllSubmittedUsersLoadedCopyWith<_AllSubmittedUsersLoaded> get copyWith =>
      __$AllSubmittedUsersLoadedCopyWithImpl<_AllSubmittedUsersLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult failure(),
    @required TResult lectureLoaded(LectureEntity lectureEntity),
    @required
        TResult allLecturesLoaded(
            List<LectureEntity> lecturesEntities, List<String> submittedUsers),
    @required TResult allCoursesLoaded(List<String> courseIds),
    @required TResult allSubmittedUsersLoaded(List<String> submittedUsers),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failure != null);
    assert(lectureLoaded != null);
    assert(allLecturesLoaded != null);
    assert(allCoursesLoaded != null);
    assert(allSubmittedUsersLoaded != null);
    return allSubmittedUsersLoaded(submittedUsers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult failure(),
    TResult lectureLoaded(LectureEntity lectureEntity),
    TResult allLecturesLoaded(
        List<LectureEntity> lecturesEntities, List<String> submittedUsers),
    TResult allCoursesLoaded(List<String> courseIds),
    TResult allSubmittedUsersLoaded(List<String> submittedUsers),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (allSubmittedUsersLoaded != null) {
      return allSubmittedUsersLoaded(submittedUsers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult failure(_Failure value),
    @required TResult lectureLoaded(_LectureLoaded value),
    @required TResult allLecturesLoaded(_AllLecturesLoaded value),
    @required TResult allCoursesLoaded(_AllCoursesLoaded value),
    @required TResult allSubmittedUsersLoaded(_AllSubmittedUsersLoaded value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failure != null);
    assert(lectureLoaded != null);
    assert(allLecturesLoaded != null);
    assert(allCoursesLoaded != null);
    assert(allSubmittedUsersLoaded != null);
    return allSubmittedUsersLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult failure(_Failure value),
    TResult lectureLoaded(_LectureLoaded value),
    TResult allLecturesLoaded(_AllLecturesLoaded value),
    TResult allCoursesLoaded(_AllCoursesLoaded value),
    TResult allSubmittedUsersLoaded(_AllSubmittedUsersLoaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (allSubmittedUsersLoaded != null) {
      return allSubmittedUsersLoaded(this);
    }
    return orElse();
  }
}

abstract class _AllSubmittedUsersLoaded implements LectureState {
  const factory _AllSubmittedUsersLoaded(
      {@required List<String> submittedUsers}) = _$_AllSubmittedUsersLoaded;

  List<String> get submittedUsers;
  @JsonKey(ignore: true)
  _$AllSubmittedUsersLoadedCopyWith<_AllSubmittedUsersLoaded> get copyWith;
}
