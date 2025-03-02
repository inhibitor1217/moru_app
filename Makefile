generate: generate-libmoru generate-proto

# Import shared library objects from `moru` and generate bindings.
generate-libmoru:
	cp -r ../moru/build/jniLibs android/app/src/main
	mkdir -p android/app/src/main/jniLibs/include
	cp android/app/src/main/jniLibs/arm64-v8a/libmoru.h android/app/src/main/jniLibs/include
	dart run ffigen

# Generate dart bindings from protobuf interface.
generate-proto:
	protoc -I ./moru-proto \
		--dart_out=lib/external/moru \
		./moru-proto/**/*.proto
