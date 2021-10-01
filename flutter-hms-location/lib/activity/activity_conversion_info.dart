/*
    Copyright 2020-2021. Huawei Technologies Co., Ltd. All rights reserved.

    Licensed under the Apache License, Version 2.0 (the "License")
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        https://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
*/

import 'dart:convert';
import 'dart:ui';

class ActivityConversionInfo {
  /// Specified activity that the user enters.
  static const int ENTER_ACTIVITY_CONVERSION = 0;

  /// Specified activity that the user exits.
  static const int EXIT_ACTIVITY_CONVERSION = 1;

  /// Activity type of the conversion.
  ///
  /// The value is one of the activity types defined in
  /// [ActivityIdentificationData].
  int activityType;

  /// Activity conversion information.
  int conversionType;

  ActivityConversionInfo({
    required this.activityType,
    required this.conversionType,
  });

  Map<String, dynamic> toMap() {
    return {
      'activityType': activityType,
      'conversionType': conversionType,
    };
  }

  factory ActivityConversionInfo.fromMap(Map<dynamic, dynamic> map) {
    return ActivityConversionInfo(
      activityType: map['activityType'],
      conversionType: map['conversionType'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ActivityConversionInfo.fromJson(String source) =>
      ActivityConversionInfo.fromMap(json.decode(source));

  @override
  String toString() =>
      'ActivityConversionInfo(activityType: $activityType, conversionType: $conversionType)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is ActivityConversionInfo &&
        o.activityType == activityType &&
        o.conversionType == conversionType;
  }

  @override
  int get hashCode {
    return hashList([
      activityType,
      conversionType,
    ]);
  }
}
