Texture2D colorTexture : register (t0);

SamplerState colorSampler : register(s0);

cbuffer ColorBuffer : register(b0)
{
    float4 color;
};

cbuffer SceneBuffer : register (b1) {
    float4x4 model;
};

struct VSOutput
{
    float4 pos : SV_Position;
    float2 uv : TEXCOORD;
};

float4 ps(VSOutput pixel) : SV_Target0
{
     return color;
}

