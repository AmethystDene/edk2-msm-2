[Defines]
  PLATFORM_NAME                  = fortuna3g
  PLATFORM_GUID                  = 7461d6b9-8123-44c5-8377-30a034679638
  PLATFORM_VERSION               = 0.1
  DSC_SPECIFICATION              = 0x00010019
  OUTPUT_DIRECTORY               = Build/$(PLATFORM_NAME)
  SUPPORTED_ARCHITECTURES        = AARCH64
  BUILD_TARGETS                  = DEBUG|RELEASE
  SKUID_IDENTIFIER               = DEFAULT
  FLASH_DEFINITION               = Platform/Qualcomm/msm8998/msm8998.fdf
  DEVICE_DXE_FV_COMPONENTS       = Platform/Samsung/msm8916/fortuna3g.fdf.inc

!include Platform/Qualcomm/sm7150/sm7150.dsc

[BuildOptions.common]
  GCC:*_*_AARCH64_CC_FLAGS = -DENABLE_SIMPLE_INIT -DENABLE_LINUX_SIMPLE_MASS_STORAGE

[PcdsFixedAtBuild.common]
  gQcomTokenSpaceGuid.PcdMipiFrameBufferWidth|540
  gQcomTokenSpaceGuid.PcdMipiFrameBufferHeight|960

  # Simple Init
  gSimpleInitTokenSpaceGuid.PcdGuiDefaultDPI|100

  gRenegadePkgTokenSpaceGuid.PcdDeviceVendor|"Samsung"
  gRenegadePkgTokenSpaceGuid.PcdDeviceProduct|"Grand Prime (SM-G530H)"
  gRenegadePkgTokenSpaceGuid.PcdDeviceCodeName|"fortuna3g"