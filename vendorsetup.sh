# Common Device Tree
rm -rf device/motorola/sm7325-common
git clone https://github.com/Dubai-Resources/android_device_motorola_sm7325-common.git -b 16.0 device/motorola/sm7325-common --depth=1

# Vendor Tree
rm -rf vendor/motorola/dubai
git clone https://github.com/Dubai-Resources/proprietary_vendor_motorola_dubai.git -b lineage-23.0 vendor/motorola/dubai --depth=1

# Common Vendor Tree
rm -rf vendor/motorola/sm7325-common
git clone https://github.com/Dubai-Resources/proprietary_vendor_motorola_sm7325-common.git -b lineage-23.0 vendor/motorola/sm7325-common --depth=1

# Kernel Tree
rm -rf kernel/motorola/sm7325
git clone https://github.com/Dubai-Resources/android_kernel_motorola_sm7325.git -b 16.0-KSU kernel/motorola/sm7325 --depth=1

# Hardware
rm -rf hardware/motorola
git clone https://github.com/Dubai-Resources/hardware_motorola.git -b fifteen hardware/motorola

# Setup KSU-Next
cd kernel/motorola/sm7325
curl -LSs "https://raw.githubusercontent.com/KernelSU-Next/KernelSU-Next/next/kernel/setup.sh" | bash -
cd ../../..
