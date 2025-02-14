# vcpkg-ohos-overlay

The vcpkg overlay ports and triplets for OpenHarmony Native SDK.

## Support overlay triplets

- arm64-ohos
- arm64-ohos-static
- x64-ohos
- x64-ohos-static

## Support overlay ports

- ffmpeg-4 FFmpeg 4.4 series
- ffmpeg-6 FFmpeg 6.1 series
- ffmpeg-7p1-edge FFmpeg 7.1 series
  (https://github.com/FFmpeg/FFmpeg/tree/8cabfd922a726a964eeae8b5276583f470df39c3)

## Usage

If DevEco Studio is not installed or not installed in the default folder, please
set the OHOS_SDK_NATIVE_HOME environment variable to something like
"C:\Program Files\Huawei\DevEco Studio\sdk\default\openharmony\native" first.

Here is the vcpkg usage example:

> vcpkg "--overlay-triplets=..\vcpkg-ohos-overlay\triplets" "--overlay-ports=..\vcpkg-ohos-overlay\ports" install ffmpeg-4:arm64-ohos

## Documents

- [License](License.md)
