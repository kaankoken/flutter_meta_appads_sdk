SHELL = /bin/bash

.PHONY: help
help: ## Display this help message
	@cat $(MAKEFILE_LIST) | grep -e "^[a-zA-Z_\-]*: *.*## *" | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: prepare
prepare: ### Install dependencies
	brew install protobuf || true
	brew install swift-protobuf || true
	flutter pub global activate protoc_plugin

.PHONY: generateMessages
generateMessages:
	$(MAKE) logEventChannel
	$(MAKE) logPurchaseMessage
	$(MAKE) logStandardEventMessage
	$(MAKE) setUserDataMessage
	$(MAKE) fbAnonIdMessage
	$(MAKE) setDataProcessingOptionsMessage

.PHONY: logEventChannel
logEventChannel: ### Generate proto files for scanMessages
	protoc --proto_path=proto --dart_out=lib/proto log_event_message.proto
	protoc --proto_path=proto --swift_out=ios/Classes/Proto log_event_message.proto
	protoc --proto_path=proto --java_out=android/src/main/java/ log_event_message.proto

.PHONY: logPurchaseMessage
logPurchaseMessage: ### Generate proto files for scanMessages
	protoc --proto_path=proto --dart_out=lib/proto log_purchase_message.proto
	protoc --proto_path=proto --swift_out=ios/Classes/Proto log_purchase_message.proto
	protoc --proto_path=proto --java_out=android/src/main/java/ log_purchase_message.proto

.PHONY: logStandardEventMessage
logStandardEventMessage: ### Generate proto files for scanMessages
	protoc --proto_path=proto --dart_out=lib/proto log_standard_event_message.proto
	protoc --proto_path=proto --swift_out=ios/Classes/Proto log_standard_event_message.proto
	protoc --proto_path=proto --java_out=android/src/main/java/ log_standard_event_message.proto

.PHONY: setUserDataMessage
setUserDataMessage: ### Generate proto files for scanMessages
	protoc --proto_path=proto --dart_out=lib/proto set_user_data_message.proto
	protoc --proto_path=proto --swift_out=ios/Classes/Proto set_user_data_message.proto
	protoc --proto_path=proto --java_out=android/src/main/java/ set_user_data_message.proto

.PHONY: fbAnonIdMessage
fbAnonIdMessage: ### Generate proto files for scanMessages
	protoc --proto_path=proto --dart_out=lib/proto fb_anon_id_message.proto
	protoc --proto_path=proto --swift_out=ios/Classes/Proto fb_anon_id_message.proto
	protoc --proto_path=proto --java_out=android/src/main/java/ fb_anon_id_message.proto

.PHONY: setDataProcessingOptionsMessage
setDataProcessingOptionsMessage: ### Generate proto files for scanMessages
	protoc --proto_path=proto --dart_out=lib/proto set_data_processing_options.proto
	protoc --proto_path=proto --swift_out=ios/Classes/Proto set_data_processing_options.proto
	protoc --proto_path=proto --java_out=android/src/main/java/ set_data_processing_options.proto
