# Clone/Fetch Upstream Device Dependencies
# Device Tree
echo "Cloning sm8150-Common Tree"
git clone https://github.com/mnrniloy/TWRP_device_oneplus_sm8150-common.git -b 14-twrp device/oneplus/sm8150-common
echo ""

echo "Cloning kernel tree"
git clone https://github.com/mnrniloy/Neptune_kernel_sm8150_oneplus.git -b inline-erofs kernel/oneplus/sm8150
echo ""

echo "Cloning Hardware"
git clone https://github.com/mnrniloy/hardware_oneplus.git -b 14 hardware/oneplus
echo ""

