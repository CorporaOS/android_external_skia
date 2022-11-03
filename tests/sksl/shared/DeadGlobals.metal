#include <metal_stdlib>
#include <simd/simd.h>
using namespace metal;
constant const float Pi = 3.14;
constant const float Alias1 = Pi;
constant const float Alias2 = Alias1;
struct Uniforms {
    half4 colorGreen;
    half4 colorRed;
};
struct Inputs {
};
struct Outputs {
    half4 sk_FragColor [[color(0)]];
};
fragment Outputs fragmentMain(Inputs _in [[stage_in]], constant Uniforms& _uniforms [[buffer(0)]], bool _frontFacing [[front_facing]], float4 _fragCoord [[position]]) {
    Outputs _out;
    (void)_out;
    _out.sk_FragColor = _uniforms.colorGreen;
    return _out;
}
