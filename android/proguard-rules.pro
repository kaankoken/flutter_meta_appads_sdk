# Keep protobuf classes and their fields
-keep class * extends com.google.protobuf.GeneratedMessageLite { *; }
-keep class com.google.protobuf.** { *; }

# Keep all proto generated classes in this plugin
-keep class cat.durban.sergio.flutter_meta_appads_sdk.proto.** { *; }

# Keep protobuf field names from being obfuscated
-keepclassmembers class * extends com.google.protobuf.GeneratedMessageLite {
  <fields>;
}

# Keep protobuf builders
-keepclassmembers class * extends com.google.protobuf.GeneratedMessageLite$Builder {
  public <methods>;
}

# Facebook SDK - keep from obfuscation
-keep class com.facebook.** { *; }
-keep interface com.facebook.** { *; }
-keepattributes Signature
