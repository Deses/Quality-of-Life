// Modified by QoL mod: Lowest Setting Nearby Water Transparency.hlsl
Texture2D<float4> t18 : register(t18);

Texture2D<float4> t17 : register(t17);

Texture2D<float4> t16 : register(t16);

Texture2D<float4> t15 : register(t15);

Texture2D<float4> t14 : register(t14);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t12 : register(t12);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t9 : register(t9);

Texture3D<float4> t8 : register(t8);

Texture3D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture3D<float4> t2 : register(t2);

TextureCube<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s10_s : register(s10);

SamplerState s9_s : register(s9);

SamplerState s8_s : register(s8);

SamplerState s7_s : register(s7);

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[1];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[12];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[11];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[220];
}




// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float4 v4 : TEXCOORD2,
  float4 v5 : TEXCOORD3,
  float4 v6 : TEXCOORD4,
  out float4 o0 : SV_Target0)
{
  const float4 icb[] = { { 1.000000, 0, 0, 0},
                              { 0, 1.000000, 0, 0},
                              { 0, 0, 1.000000, 0},
                              { 0, 0, 0, 1.000000} };
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cmp(cb2[0].w < 0.5);
  r0.yzw = -v6.xyz * cb2[0].www + cb2[0].xyz;
  r1.x = dot(r0.yzw, r0.yzw);
  r1.y = r1.x * cb0[88].x + 1;
  r1.y = rcp(r1.y);
  r1.y = saturate(r1.y * 1.03999996 + -0.0399999991);
  r1.yzw = cb0[2].xyz * r1.yyy;
  r1.x = rsqrt(r1.x);
  r0.yzw = r1.xxx * r0.yzw;
  r0.yzw = r0.xxx ? cb2[0].xyz : r0.yzw;
  r1.xyz = r0.xxx ? cb0[2].xyz : r1.yzw;
  r0.x = cmp(9.99999975e-06 < cb0[89].z);
  r1.w = cmp(cb0[89].z < -9.99999975e-06);
  r0.x = (int)r0.x | (int)r1.w;
  if (r0.x != 0) {
    r0.x = cb1[8].x * v0.z + cb1[8].y;
    r0.x = 1 / r0.x;
    r0.x = saturate(r0.x * cb0[89].x + -cb0[89].y);
    r1.w = r0.x * cb0[89].w + -cb0[89].w;
    r1.w = exp2(r1.w);
    r0.x = r1.w * r0.x;
    r2.xyz = cb0[89].zzz * r1.xyz;
    r1.xyz = r0.xxx * r2.xyz + r1.xyz;
  }
  r0.x = 1 / v4.w;
  r2.xy = v4.xy * r0.xx;
  r3.xy = cb1[10].xz + v6.xz;
  r3.zw = cb0[187].xx * r3.xy;
  r4.xy = cb1[0].yy * cb0[76].xy + r3.zw;
  r4.xyz = t5.SampleLevel(s2_s, r4.xy, 0).xyz;
  r4.xyz = r4.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r5.xy = cb0[78].zz * r4.xy;
  r3.zw = cb1[0].yy * cb0[78].xy + r3.zw;
  r6.xyz = t6.SampleLevel(s2_s, r3.zw, 0).xyz;
  r4.w = -1;
  r4.xyz = r6.xyz * float3(2,2,2) + r4.wwz;
  r4.xy = cb0[78].zz * r4.xy;
  r5.z = -1;
  r4.xyz = r5.xyz + r4.xyz;
  r0.x = dot(r4.xyz, r4.xyz);
  r0.x = rsqrt(r0.x);
  r4.xyz = r4.xyz * r0.xxx;
  r3.zw = v4.xy / v4.ww;
  r0.x = t0.Sample(s9_s, r3.zw).x;
  r0.x = cb1[8].z * r0.x + cb1[8].w;
  r0.x = 1 / r0.x;
  r1.w = 1 / v5.w;
  r1.w = r1.w * -r0.x;
  r5.xyz = v5.xyz * r1.www;
  r6.xyzw = v5.yxyz * r1.wwww + cb1[5].yxyz;
  r7.xyzw = cb1[5].yxyz + -v6.yxyz;
  r1.w = dot(r7.yzw, r7.yzw);
  r2.w = rsqrt(r1.w);
  r8.xyzw = r7.xyzw * r2.wwww;
  r9.xyzw = v6.yxyz + -r6.xyzw;
  r3.z = dot(r9.yzw, r9.yzw);
  r3.z = sqrt(r3.z);
  r3.w = cb0[188].x + v4.w;
  r9.yz = cb0[174].yy * r4.xy;
  r0.x = saturate(-r3.w + r0.x);
  r10.xy = r9.yz * r0.xx;
  r10.z = 0;
  r9.yzw = v4.xyw + r10.xyz;
  r9.yz = r9.yz / r9.ww;
  r0.x = t0.Sample(s9_s, r9.yz).x;
  r0.x = cb1[8].z * r0.x + cb1[8].w;
  r0.x = 1 / r0.x;
  r0.x = saturate(r0.x + -r3.w);
  r9.yzw = r0.xxx * r10.xyz + v4.xyw;
  r0.x = rcp(r9.w);
  r10.xy = r9.yz * r0.xx;
  r10.xyz = t15.Sample(s1_s, r10.xy).xyz;
  if (cb0[209].x != 0) {
    r11.xyz = cb1[5].xyz + -r6.yzw;
    r0.x = dot(r11.xyz, r11.xyz);
    r0.x = sqrt(r0.x);
    r11.xyz = r11.xyz / r0.xxx;
    t18.GetDimensions(0, fDest.x, fDest.y, fDest.z);
    r6.xz = fDest.xy;
    r12.xy = float2(0.5,0.5) / r6.xz;
    r0.x = 8 * cb0[219].x;
    r0.x = cmp(r0.x >= -r0.x);
    r12.zw = r0.xx ? float2(8,0.125) : float2(-8,-0.125);
    r0.x = cb0[219].x * r12.w;
    r0.x = frac(r0.x);
    r13.xyzw = r12.zzzz * r0.xxxx + float4(8,8,16,16);
    r13.xyzw = r13.xyzw * float4(32.6650009,11.8149996,32.6650009,11.8149996) + v0.xyxy;
    r0.x = dot(r13.xy, float2(0.0671105608,0.00583714992));
    r0.x = frac(r0.x);
    r0.x = 52.9829178 * r0.x;
    r14.z = frac(r0.x);
    r0.x = dot(r13.zw, float2(0.0671105608,0.00583714992));
    r0.x = frac(r0.x);
    r0.x = 52.9829178 * r0.x;
    r14.x = frac(r0.x);
    r12.zw = float2(-0.5,-0.5) + r14.xz;
    r12.zw = r12.zw * float2(4,4) + v0.yx;
    r6.xz = float2(4,4) * r6.xz;
    r6.xz = r12.wz / r6.xz;
    r0.x = t0.Sample(s9_s, r6.xz).x;
    r0.x = cb1[8].z * r0.x + cb1[8].w;
    r0.x = 1 / r0.x;
    r13.xyzw = t18.Gather(s3_s, r6.xz).xyzw;
    r0.x = r0.x / cb1[6].z;
    r14.x = cb3[9].z;
    r14.y = cb3[10].z;
    r14.z = cb3[11].z;
    r3.w = dot(r14.xyz, r11.xyz);
    r0.x = r0.x / r3.w;
    r11.xyzw = r13.xyzw + -r0.xxxx;
    r0.x = min(abs(r11.z), abs(r11.w));
    r0.x = min(abs(r11.y), r0.x);
    r0.x = min(abs(r11.x), r0.x);
    r13.xy = r6.xz + r12.xy;
    r3.w = t16.SampleLevel(s1_s, r13.xy, 0).w;
    r3.w = cmp(r3.w != 1.000000);
    if (r3.w != 0) {
      r6.xz = r6.xz + -r12.xy;
      r3.w = cmp(abs(r11.y) == r0.x);
      if (r3.w != 0) {
        r12.xy = t17.SampleLevel(s3_s, r6.xz, 0, int2(1, 1)).xy;
      } else {
        r3.w = cmp(abs(r11.z) == r0.x);
        if (r3.w != 0) {
          r12.xy = t17.SampleLevel(s3_s, r6.xz, 0, int2(1, 0)).xy;
        } else {
          r3.w = cmp(abs(r11.w) == r0.x);
          if (r3.w != 0) {
            r12.xy = t17.SampleLevel(s3_s, r6.xz, 0, int2(0, 0)).xy;
          } else {
            r12.xy = t17.SampleLevel(s3_s, r6.xz, 0, int2(0, 1)).xy;
          }
        }
      }
      r13.xyzw = t16.SampleLevel(s3_s, r6.xz, 0, int2(0, 1)).xyzw;
      r14.xyzw = t16.SampleLevel(s3_s, r6.xz, 0, int2(1, 1)).xyzw;
      r15.xyzw = t16.SampleLevel(s3_s, r6.xz, 0, int2(1, 0)).xyzw;
      r16.xyzw = t16.SampleLevel(s3_s, r6.xz, 0, int2(0, 0)).xyzw;
      r3.w = max(abs(r11.z), abs(r11.w));
      r3.w = max(abs(r11.y), r3.w);
      r3.w = max(abs(r11.x), r3.w);
      r11.xyzw = abs(r11.xyzw) + -r0.xxxx;
      r0.x = r3.w + -r0.x;
      r11.xyzw = saturate(r11.xyzw / r0.xxxx);
      r0.x = saturate(r0.x);
      r0.x = r0.x * -4.5999999 + 5;
      r11.xyzw = log2(r11.xyzw);
      r11.xyzw = r11.xyzw * r0.xxxx;
      r11.xyzw = exp2(r11.xyzw);
      r11.xyzw = float4(1,1,1,1) + -r11.xyzw;
      r6.xz = (uint2)r12.zw;
      r6.xz = (int2)r6.xz + int2(2,2);
      r6.xz = (int2)r6.xz & int2(3,3);
      r6.xz = (uint2)r6.xz;
      r6.xz = float2(0.5,0.5) + r6.xz;
      r12.zw = float2(0.25,0.25) * r6.xz;
      r6.xz = -r6.zx * float2(0.25,0.25) + float2(1,1);
      r17.xy = r6.xz * r12.zw;
      r0.x = r12.w * r12.z;
      r18.y = r11.y * r0.x;
      r18.xz = r17.xy * r11.xz;
      r0.x = r6.x * r6.z;
      r18.w = r11.w * r0.x;
      r11.xyzw = r18.yyyy * r14.xyzw;
      r11.xyzw = r13.xyzw * r18.xxxx + r11.xyzw;
      r11.xyzw = r15.xyzw * r18.zzzz + r11.xyzw;
      r11.xyzw = r16.xyzw * r18.wwww + r11.xyzw;
      r0.x = dot(r18.xyzw, float4(1,1,1,1));
      r11.xyzw = r11.xyzw / r0.xxxx;
    } else {
      r11.xyzw = float4(0,0,0,1);
      r12.xy = float2(0,0);
    }
    r0.x = 1000 * r12.x;
  } else {
    r11.xyzw = float4(0,0,0,1);
    r0.x = 0;
    r12.y = 0;
  }
  r6.xz = r9.yz / r9.ww;
  r3.w = t0.Sample(s9_s, r6.xz).x;
  r3.w = cb1[8].z * r3.w + cb1[8].w;
  r3.w = 1 / r3.w;
  r3.w = -v4.w + r3.w;
  r5.w = cmp(cb0[21].y < 0);
  r9.yzw = r5.www ? cb0[17].yzw : cb0[21].xyz;
  r5.w = cmp(cb0[88].x == 0.000000);
  r9.yzw = r5.www ? r9.yzw : r0.yzw;
  r4.w = 1;
  r0.y = dot(r4.xyw, r4.xyw);
  r0.y = rsqrt(r0.y);
  r12.xzw = r4.xwy * r0.yyy;
  r7.xyz = r7.yzw * r2.www + r9.yzw;
  r0.y = dot(r7.xyz, r7.xyz);
  r0.y = rsqrt(r0.y);
  r7.xyz = r7.xyz * r0.yyy;
  r0.y = saturate(dot(r12.xzw, r7.xyz));
  r0.w = cb0[175].x * 1.44270003 + 1.44270003;
  r0.y = r0.y * r0.w + -r0.w;
  r0.y = exp2(r0.y);
  r0.w = cb0[175].z * r9.z + -1;
  r0.zw = max(float2(0,0.0500000007), r0.zw);
  r0.y = r0.y * r0.w;
  r0.w = cb0[175].z * -r8.x + 1;
  r0.w = max(0.0500000007, r0.w);
  r0.y = r0.y * r0.w;
  r0.w = r3.w * 0.100000001 + -0.100000001;
  r0.w = saturate(cb0[175].y * r0.w);
  r0.y = r0.y * r0.w;
  r7.xyz = cb0[174].www * r1.xyz;
  r6.xz = float2(25,25) * cb0[76].xy;
  r0.w = cb0[69].w * r3.z;
  r9.yz = r4.xy * r0.ww;
  r13.z = cb1[0].y * cb0[67].y;
  r6.yw = r6.yw * cb0[67].xx + r9.yz;
  r13.xy = r13.zz * r6.xz + r6.yw;
  r6.x = dot(r13.xyz, float3(-2,3,1));
  r6.y = dot(r13.xyz, float3(-1,-2,2));
  r6.z = dot(r13.xzy, float3(2,2,1));
  r13.x = dot(r6.xyz, float3(-0.800000012,1.20000005,0.400000006));
  r13.y = dot(r6.xyz, float3(-0.400000006,-0.800000012,0.800000012));
  r13.z = dot(r6.xzy, float3(0.800000012,0.800000012,0.400000006));
  r0.w = dot(r13.xyz, float3(-0.600000024,0.899999976,0.300000012));
  r2.w = dot(r13.xyz, float3(-0.300000012,-0.600000024,0.600000024));
  r4.w = dot(r13.xzy, float3(0.600000024,0.600000024,0.300000012));
  r6.xyz = frac(r6.xyz);
  r6.xyz = float3(0.5,0.5,0.5) + -r6.xyz;
  r9.yzw = frac(r13.xyz);
  r9.yzw = float3(0.5,0.5,0.5) + -r9.yzw;
  r13.x = frac(r0.w);
  r13.y = frac(r2.w);
  r13.z = frac(r4.w);
  r12.xzw = float3(0.5,0.5,0.5) + -r13.xyz;
  r0.w = dot(r6.xyz, r6.xyz);
  r2.w = dot(r9.yzw, r9.yzw);
  r0.w = min(r2.w, r0.w);
  r2.w = dot(r12.xzw, r12.xzw);
  r0.w = min(r2.w, r0.w);
  r2.w = saturate(cb0[69].y * r9.x);
  r4.w = dot(r5.xyz, r5.xyz);
  r4.w = sqrt(r4.w);
  r4.w = saturate(cb0[69].z * r4.w);
  r2.w = r2.w * -r4.w + r2.w;
  r0.w = r0.w * r0.w;
  r0.w = 7 * r0.w;
  r0.w = r0.w * r0.w;
  r5.xyz = cb0[68].xyz * cb0[2].xyz;
  r5.xyz = r5.xyz * r0.www;
  r5.xyz = r5.xyz * r2.www;
  r0.w = saturate(cb0[187].y * r3.z);
  r0.w = 9.99999975e-05 + r0.w;
  r0.w = log2(r0.w);
  r0.w = cb0[187].z * r0.w;
  r0.w = exp2(r0.w);
  r5.xyz = r5.xyz * -r0.www + r5.xyz;
  r5.xyz = r10.xyz * r5.xyz + r10.xyz;
  r6.xy = -cb0[178].xy * r3.ww;
  r6.xy = float2(1.44269502,1.44269502) * r6.xy;
  r6.xy = exp2(r6.xy);
  r6.xy = float2(1,1) + -r6.xy;
  r6.xy = max(float2(0,0), r6.xy);
  r9.yzw = cb0[182].xyz + -cb0[176].xyz;
  r9.yzw = cb0[182].www * r9.yzw + cb0[176].xyz;
  r9.yzw = float3(-1,-1,-1) + r9.yzw;
  r6.xzw = r6.xxx * r9.yzw + float3(1,1,1);
  r9.yzw = r6.xzw * r5.xyz;
  r10.xyz = cb0[183].xyz + -cb0[177].xyz;
  r10.xyz = cb0[183].www * r10.xyz + cb0[177].xyz;
  r5.xyz = -r6.xzw * r5.xyz + r10.xyz;
  r5.xyz = r6.yyy * r5.xyz + r9.yzw;
  r0.w = cmp(0 != cb0[170].x);
  r2.w = cmp(0 != cb0[125].x);
  r0.w = r0.w ? r2.w : 0;
  if (r0.w != 0) {
    r6.xyz = max(float3(9.99999975e-05,9.99999975e-05,9.99999975e-05), r5.xyz);
    r0.w = cmp(0.5 < cb0[142].w);
    r9.yzw = cb0[161].xyz * v6.yyy;
    r9.yzw = cb0[160].xyz * v6.xxx + r9.yzw;
    r9.yzw = cb0[162].xyz * v6.zzz + r9.yzw;
    r9.yzw = cb0[163].xyz + r9.yzw;
    r10.xy = v6.xz * cb0[168].xy + cb0[168].zw;
    r2.w = t7.Sample(s4_s, r9.yzw).x;
    r3.z = t9.Sample(s5_s, r10.xy).x;
    r2.w = saturate(r2.w * cb0[142].y + cb0[142].z);
    r9.yzw = cb0[143].xyz + -v6.xyz;
    r4.w = dot(r9.yzw, r9.yzw);
    r4.w = sqrt(r4.w);
    r4.w = saturate(r4.w * cb0[143].w + cb0[147].x);
    r9.yzw = cb0[144].xyz + -v6.xyz;
    r5.w = dot(r9.yzw, r9.yzw);
    r5.w = sqrt(r5.w);
    r5.w = saturate(r5.w * cb0[144].w + cb0[147].y);
    r6.w = max(r5.w, r4.w);
    r4.w = min(r5.w, r4.w);
    r4.w = r0.w ? r6.w : r4.w;
    r9.yzw = cb0[145].xyz + -v6.xyz;
    r5.w = dot(r9.yzw, r9.yzw);
    r5.w = sqrt(r5.w);
    r5.w = saturate(r5.w * cb0[145].w + cb0[147].z);
    r6.w = max(r5.w, r4.w);
    r4.w = min(r5.w, r4.w);
    r4.w = r0.w ? r6.w : r4.w;
    r9.yzw = cb0[146].xyz + -v6.xyz;
    r5.w = dot(r9.yzw, r9.yzw);
    r5.w = sqrt(r5.w);
    r5.w = saturate(r5.w * cb0[146].w + cb0[147].w);
    r6.w = max(r5.w, r4.w);
    r4.w = min(r5.w, r4.w);
    r0.w = r0.w ? r6.w : r4.w;
    r0.w = r2.w * r0.w;
    r0.w = r0.w * r3.z;
    r2.w = dot(r6.xyz, float3(0.212672904,0.715152204,0.0721750036));
    r9.yzw = r6.xyz + -r2.www;
    r10.xyz = cb0[154].xyz * r9.yzw + r2.www;
    r10.xyz = max(float3(0,0,0), r10.xyz);
    r10.xyz = log2(r10.xyz);
    r13.x = cb0[154].w * r10.x;
    r13.y = cb0[155].w * r10.y;
    r13.z = cb0[156].w * r10.z;
    r10.xyz = exp2(r13.xyz);
    r10.xyz = r10.xyz * cb0[155].xyz + cb0[156].xyz;
    r3.z = cmp(1 < asint(cb0[141].x));
    if (r3.z != 0) {
      r3.z = cmp(r0.w < 0.00196078443);
      if (r3.z != 0) {
        r3.z = cmp(0.5 < cb0[148].w);
        r12.xzw = cb0[165].xyz * v6.yyy;
        r12.xzw = cb0[164].xyz * v6.xxx + r12.xzw;
        r12.xzw = cb0[166].xyz * v6.zzz + r12.xzw;
        r12.xzw = cb0[167].xyz + r12.xzw;
        r13.xy = v6.xz * cb0[169].xy + cb0[169].zw;
        r4.w = t8.Sample(s4_s, r12.xzw).x;
        r5.w = t10.Sample(s5_s, r13.xy).x;
        r4.w = saturate(r4.w * cb0[148].y + cb0[148].z);
        r12.xzw = cb0[149].xyz + -v6.xyz;
        r6.w = dot(r12.xzw, r12.xzw);
        r6.w = sqrt(r6.w);
        r6.w = saturate(r6.w * cb0[149].w + cb0[153].x);
        r12.xzw = cb0[150].xyz + -v6.xyz;
        r7.w = dot(r12.xzw, r12.xzw);
        r7.w = sqrt(r7.w);
        r7.w = saturate(r7.w * cb0[150].w + cb0[153].y);
        r10.w = max(r7.w, r6.w);
        r6.w = min(r7.w, r6.w);
        r6.w = r3.z ? r10.w : r6.w;
        r12.xzw = cb0[151].xyz + -v6.xyz;
        r7.w = dot(r12.xzw, r12.xzw);
        r7.w = sqrt(r7.w);
        r7.w = saturate(r7.w * cb0[151].w + cb0[153].z);
        r10.w = max(r7.w, r6.w);
        r6.w = min(r7.w, r6.w);
        r6.w = r3.z ? r10.w : r6.w;
        r12.xzw = cb0[152].xyz + -v6.xyz;
        r7.w = dot(r12.xzw, r12.xzw);
        r7.w = sqrt(r7.w);
        r7.w = saturate(r7.w * cb0[152].w + cb0[153].w);
        r10.w = max(r7.w, r6.w);
        r6.w = min(r7.w, r6.w);
        r3.z = r3.z ? r10.w : r6.w;
        r3.z = r4.w * r3.z;
        r0.w = r3.z * r5.w;
        r9.yzw = cb0[157].xyz * r9.yzw + r2.www;
        r9.yzw = max(float3(0,0,0), r9.yzw);
        r9.yzw = log2(r9.yzw);
        r13.x = cb0[157].w * r9.y;
        r13.y = cb0[158].w * r9.z;
        r13.z = cb0[159].w * r9.w;
        r9.yzw = exp2(r13.xyz);
        r10.xyz = r9.yzw * cb0[158].xyz + cb0[159].xyz;
      }
    }
    r9.yzw = r10.xyz + -r6.xyz;
    r5.xyz = r0.www * r9.yzw + r6.xyz;
  }
  r4.xyz = cb0[180].xzy * r4.xzy;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r4.xyz * r0.www;
  r0.w = dot(-r8.yzw, r4.xyz);
  r0.w = r0.w + r0.w;
  r4.xyz = r4.xyz * -r0.www + -r8.yzw;
  r4.xyzw = t1.SampleLevel(s10_s, r4.xyz, 0).xyzw;
  r0.w = -1 + r4.w;
  r0.w = cb0[179].w * r0.w + 1;
  r0.w = log2(r0.w);
  r0.w = cb0[179].y * r0.w;
  r0.w = exp2(r0.w);
  r0.w = cb0[179].x * r0.w;
  r2.w = cb0[184].x * cb0[181].x;
  r3.z = cb0[181].y * -r8.x + 1;
  r3.z = max(0.0500000007, r3.z);
  r2.w = r3.z * r2.w;
  r3.z = saturate(cb0[181].z * r3.w);
  r2.w = saturate(r3.z * r2.w);
  r4.xyz = r0.www * r4.xyz + -r5.xyz;
  r4.xyz = r2.www * r4.xyz + r5.xyz;
  r1.xyz = r0.zzz * r1.xyz + v3.xyz;
  r0.z = sqrt(r1.w);
  r0.w = -cb0[74].y + r0.z;
  r0.w = r0.w / cb0[74].z;
  r1.w = cb0[73].x * v1.x;
  r2.w = max(0, r9.x);
  r1.w = min(r2.w, r1.w);
  r2.w = cb0[73].x * v1.x + 9.99999975e-05;
  r1.w = r1.w / r2.w;
  r1.w = 1 + -r1.w;
  r5.xy = cb1[0].yy * cb0[70].zw;
  r5.xy = frac(r5.xy);
  r5.xy = cb0[70].xy * r3.xy + r5.xy;
  r2.w = t4.Sample(s2_s, r5.xy).x;
  r3.x = r3.x + r3.y;
  r3.x = cb0[74].x * r3.x;
  r3.x = cb0[71].x * cb1[0].y + r3.x;
  r3.y = 1 + -r1.w;
  r3.x = cb0[73].z * r1.w + r3.x;
  r3.x = sin(r3.x);
  r3.x = cb0[73].w * r1.w + r3.x;
  r3.z = r2.w * 2 + -1;
  r3.x = r3.x + r3.z;
  r3.x = cmp(r3.x >= r3.y);
  r3.x = r3.x ? 1.000000 : 0;
  r2.w = r3.x * r2.w;
  r3.x = 9.99999975e-05 + cb0[73].y;
  r3.x = saturate(r0.z / r3.x);
  r3.x = 1 + -r3.x;
  r3.y = cb0[72].w * v1.y;
  r0.w = r3.y * r0.w;
  r0.w = r0.w * r2.w;
  r0.w = r0.w * r1.w;
  r0.w = saturate(r0.w * r3.x);
  r1.xyz = cb0[72].xyz * r1.xyz + -r4.xyz;
  r1.xyz = r0.www * r1.xyz + r4.xyz;
  r1.xyz = r7.xyz * r0.yyy + r1.xyz;
  r0.y = saturate(cb0[174].z * r3.w);
  r0.y = v1.w * r0.y;
  r0.w = cmp(cb0[170].x == 1.000000);
  if (r0.w != 0) {
    r0.w = cmp(0.5 < cb0[142].w);
    r3.xyz = cb0[161].xyz * v6.yyy;
    r3.xyz = cb0[160].xyz * v6.xxx + r3.xyz;
    r3.xyz = cb0[162].xyz * v6.zzz + r3.xyz;
    r3.xyz = cb0[163].xyz + r3.xyz;
    r4.xy = v6.xz * cb0[168].xy + cb0[168].zw;
    r1.w = t7.Sample(s4_s, r3.xyz).x;
    r2.w = t9.Sample(s5_s, r4.xy).x;
    r1.w = saturate(r1.w * cb0[142].y + cb0[142].z);
    r3.xyz = cb0[143].xyz + -v6.xyz;
    r3.x = dot(r3.xyz, r3.xyz);
    r3.x = sqrt(r3.x);
    r3.x = saturate(r3.x * cb0[143].w + cb0[147].x);
    r3.yzw = cb0[144].xyz + -v6.xyz;
    r3.y = dot(r3.yzw, r3.yzw);
    r3.y = sqrt(r3.y);
    r3.y = saturate(r3.y * cb0[144].w + cb0[147].y);
    r3.z = max(r3.x, r3.y);
    r3.x = min(r3.x, r3.y);
    r3.x = r0.w ? r3.z : r3.x;
    r3.yzw = cb0[145].xyz + -v6.xyz;
    r3.y = dot(r3.yzw, r3.yzw);
    r3.y = sqrt(r3.y);
    r3.y = saturate(r3.y * cb0[145].w + cb0[147].z);
    r3.z = max(r3.x, r3.y);
    r3.x = min(r3.x, r3.y);
    r3.x = r0.w ? r3.z : r3.x;
    r3.yzw = cb0[146].xyz + -v6.xyz;
    r3.y = dot(r3.yzw, r3.yzw);
    r3.y = sqrt(r3.y);
    r3.y = saturate(r3.y * cb0[146].w + cb0[147].w);
    r3.z = max(r3.x, r3.y);
    r3.x = min(r3.x, r3.y);
    r0.w = r0.w ? r3.z : r3.x;
    r0.w = r1.w * r0.w;
    r0.w = r0.w * r2.w;
    r1.w = cmp(1 < asint(cb0[141].x));
    if (r1.w != 0) {
      r2.w = cmp(r0.w < 0.00196078443);
      if (r2.w != 0) {
        r2.w = cmp(0.5 < cb0[148].w);
        r3.xyz = cb0[165].xyz * v6.yyy;
        r3.xyz = cb0[164].xyz * v6.xxx + r3.xyz;
        r3.xyz = cb0[166].xyz * v6.zzz + r3.xyz;
        r3.xyz = cb0[167].xyz + r3.xyz;
        r4.xy = v6.xz * cb0[169].xy + cb0[169].zw;
        r3.x = t8.Sample(s4_s, r3.xyz).x;
        r3.y = t10.Sample(s5_s, r4.xy).x;
        r3.x = saturate(r3.x * cb0[148].y + cb0[148].z);
        r4.xyz = cb0[149].xyz + -v6.xyz;
        r3.z = dot(r4.xyz, r4.xyz);
        r3.z = sqrt(r3.z);
        r3.z = saturate(r3.z * cb0[149].w + cb0[153].x);
        r4.xyz = cb0[150].xyz + -v6.xyz;
        r3.w = dot(r4.xyz, r4.xyz);
        r3.w = sqrt(r3.w);
        r3.w = saturate(r3.w * cb0[150].w + cb0[153].y);
        r4.x = max(r3.z, r3.w);
        r3.z = min(r3.z, r3.w);
        r3.z = r2.w ? r4.x : r3.z;
        r4.xyz = cb0[151].xyz + -v6.xyz;
        r3.w = dot(r4.xyz, r4.xyz);
        r3.w = sqrt(r3.w);
        r3.w = saturate(r3.w * cb0[151].w + cb0[153].z);
        r4.x = max(r3.z, r3.w);
        r3.z = min(r3.z, r3.w);
        r3.z = r2.w ? r4.x : r3.z;
        r4.xyz = cb0[152].xyz + -v6.xyz;
        r3.w = dot(r4.xyz, r4.xyz);
        r3.w = sqrt(r3.w);
        r3.w = saturate(r3.w * cb0[152].w + cb0[153].w);
        r4.x = max(r3.z, r3.w);
        r3.z = min(r3.z, r3.w);
        r2.w = r2.w ? r4.x : r3.z;
        r2.w = r3.x * r2.w;
        r2.w = r2.w * r3.y;
      } else {
        r2.w = r0.w;
      }
    } else {
      r2.w = r0.w;
    }
    r3.xyz = r1.xyz * cb0[189].xyz + -r1.xyz;
    r1.xyz = r2.www * r3.xyz + r1.xyz;
    if (r1.w != 0) {
      r1.w = cmp(r0.w < 0.00196078443);
      if (r1.w != 0) {
        r1.w = cmp(0.5 < cb0[148].w);
        r3.xyz = cb0[165].xyz * v6.yyy;
        r3.xyz = cb0[164].xyz * v6.xxx + r3.xyz;
        r3.xyz = cb0[166].xyz * v6.zzz + r3.xyz;
        r3.xyz = cb0[167].xyz + r3.xyz;
        r4.xy = v6.xz * cb0[169].xy + cb0[169].zw;
        r2.w = t8.Sample(s4_s, r3.xyz).x;
        r3.x = t10.Sample(s5_s, r4.xy).x;
        r2.w = saturate(r2.w * cb0[148].y + cb0[148].z);
        r3.yzw = cb0[149].xyz + -v6.xyz;
        r3.y = dot(r3.yzw, r3.yzw);
        r3.y = sqrt(r3.y);
        r3.y = saturate(r3.y * cb0[149].w + cb0[153].x);
        r4.xyz = cb0[150].xyz + -v6.xyz;
        r3.z = dot(r4.xyz, r4.xyz);
        r3.z = sqrt(r3.z);
        r3.z = saturate(r3.z * cb0[150].w + cb0[153].y);
        r3.w = max(r3.y, r3.z);
        r3.y = min(r3.y, r3.z);
        r3.y = r1.w ? r3.w : r3.y;
        r4.xyz = cb0[151].xyz + -v6.xyz;
        r3.z = dot(r4.xyz, r4.xyz);
        r3.z = sqrt(r3.z);
        r3.z = saturate(r3.z * cb0[151].w + cb0[153].z);
        r3.w = max(r3.y, r3.z);
        r3.y = min(r3.y, r3.z);
        r3.y = r1.w ? r3.w : r3.y;
        r4.xyz = cb0[152].xyz + -v6.xyz;
        r3.z = dot(r4.xyz, r4.xyz);
        r3.z = sqrt(r3.z);
        r3.z = saturate(r3.z * cb0[152].w + cb0[153].w);
        r3.w = max(r3.y, r3.z);
        r3.y = min(r3.y, r3.z);
        r1.w = r1.w ? r3.w : r3.y;
        r1.w = r2.w * r1.w;
        r0.w = r1.w * r3.x;
      }
    }
    r1.w = r0.y * cb0[190].x + -r0.y;
    o0.w = r0.w * r1.w + r0.y;
  } else {
    o0.w = r0.y;
  }
  r3.xyz = -cb1[5].xyz + v6.xyz;
  r4.x = cb3[9].z;
  r4.y = cb3[10].z;
  r4.z = cb3[11].z;
  r0.y = dot(r3.xyz, r4.xyz);
  r0.w = cmp(0.00999999978 < cb0[51].w);
  if (r0.w != 0) {
    r0.w = cmp(cb0[56].y < 0.5);
    if (r0.w != 0) {
      r4.xyz = -cb0[51].xyz + v6.xyz;
      r0.w = dot(r4.xyz, r4.xyz);
      r0.w = sqrt(r0.w);
      r0.w = saturate(r0.w * cb0[53].z + cb0[53].w);
      r0.w = 1 + -r0.w;
      r0.w = r0.w * r0.w;
      r1.w = cmp(cb0[37].w == 1.000000);
      r2.w = cmp(r4.y < 0);
      r1.w = r1.w ? r2.w : 0;
      r0.w = r1.w ? 0 : r0.w;
    } else {
      r1.w = -cb0[51].y + v6.y;
      r2.w = 1 / cb0[51].w;
      r1.w = saturate(r2.w * r1.w);
      r2.w = r1.w * -2 + 3;
      r1.w = r1.w * r1.w;
      r0.w = r2.w * r1.w;
    }
    r0.w = saturate(cb0[56].z * r0.w);
    r1.w = cmp(cb0[56].x >= 0.0500000007);
    r1.w = r1.w ? 1.000000 : 0;
    r1.w = r1.w * r0.w;
    r2.w = cmp(0.949999988 >= cb0[56].x);
    r2.w = r2.w ? 1.000000 : 0;
    r0.w = r2.w * r0.w;
  } else {
    r1.w = 0;
    r0.w = 0;
  }
  r2.w = dot(r3.xyz, r3.xyz);
  r2.w = sqrt(r2.w);
  r3.w = saturate(r2.w * cb0[43].z + cb0[43].w);
  r4.x = saturate(r2.w * cb0[54].z + cb0[54].w);
  r4.x = r4.x + -r3.w;
  r3.w = r1.w * r4.x + r3.w;
  r4.x = 2 + -r3.w;
  r4.x = r4.x * r3.w;
  r3.w = dot(cb0[50].xyzw, float4(1,1,1,1));
  r3.w = cmp(0.0500000007 < r3.w);
  if (r3.w != 0) {
    r5.xyz = -cb0[5].zxy + v6.zxy;
    r3.w = dot(r5.xyz, r5.xyz);
    r3.w = rsqrt(r3.w);
    r5.xyz = r5.xyz * r3.www;
    r3.w = abs(r5.y) + abs(r5.z);
    r3.w = r3.w + abs(r5.x);
    r5.xyz = r5.xyz / r3.www;
    r4.zw = float2(1,1) + -abs(r5.zy);
    r6.xyz = cmp(r5.xyz >= float3(0,0,0));
    r5.xw = r6.yz ? float2(1,1) : float2(-1,-1);
    r4.zw = r5.xw * r4.zw;
    r4.zw = r6.xx ? r5.yz : r4.zw;
    r4.zw = r4.zw * float2(0.5,0.5) + float2(0.5,0.5);
    r5.xyz = t3.SampleLevel(s0_s, r4.zw, 0).xyz;
  } else {
    r5.xyz = float3(0,0,0);
  }
  r3.x = dot(r3.xz, r3.xz);
  r3.x = sqrt(r3.x);
  r4.y = saturate(r3.x * cb0[45].x + cb0[45].y);
  r6.y = saturate(cb1[5].y * cb0[45].z + cb0[45].w);
  r3.z = 0.999899983 * cb1[6].z;
  r0.y = cmp(-r0.y >= r3.z);
  r6.x = cb0[42].w * r4.x;
  r4.xy = r0.yy ? r6.xy : r4.xy;
  r0.y = -cb4[0].w + cb0[55].w;
  r0.y = r1.w * r0.y + cb4[0].w;
  r3.z = max(9.99999975e-05, r4.x);
  r3.z = log2(r3.z);
  r0.y = r3.z * r0.y;
  r0.y = exp2(r0.y);
  r3.z = cb0[49].x * cb0[41].w;
  r0.y = min(r3.z, r0.y);
  r0.y = min(1, r0.y);
  r3.z = saturate(v6.y * cb0[43].x + cb0[43].y);
  r3.w = 2 + -r3.z;
  r3.z = r3.z * r3.w;
  r6.xyz = r3.zzz * cb0[42].xyz + cb0[41].xyz;
  r7.xyz = cb0[55].xyz + -r6.xyz;
  r6.xyz = r1.www * r7.xyz + r6.xyz;
  r7.xyz = -r6.xyz + r5.xyz;
  r6.xyz = cb0[50].xxx * r7.xyz + r6.xyz;
  r1.w = -cb0[40].w + r2.w;
  r1.w = saturate(cb0[44].w * r1.w);
  r7.xyz = -cb0[44].xyz + r5.xyz;
  r7.xyz = cb0[50].yyy * r7.xyz + cb0[44].xyz;
  r7.xyz = r7.xyz + -r6.xyz;
  r6.xyz = r1.www * r7.xyz + r6.xyz;
  r4.z = saturate(r3.x * cb0[47].z + cb0[47].w);
  r1.w = cb0[52].w + -cb0[39].y;
  r1.w = r0.w * r1.w + cb0[39].y;
  r3.xz = cb0[39].xz * r3.yy;
  r4.xw = cmp(float2(0.00999999978,0.00999999978) < abs(r3.xz));
  r3.yw = -cb0[39].xz * r3.yy + cb0[48].yw;
  r3.yw = min(float2(80,80), r3.yw);
  r3.yw = float2(1.44269502,1.44269502) * r3.yw;
  r3.yw = exp2(r3.yw);
  r3.yw = cb0[48].xz + -r3.yw;
  r3.xy = r3.yw / r3.xz;
  r3.xy = r4.xw ? r3.xy : cb0[48].xz;
  r1.w = r2.w * r1.w;
  r1.w = -r3.x * r1.w;
  r1.w = exp2(r1.w);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r3.x = saturate(r2.w * cb0[40].x + cb0[40].y);
  r3.z = saturate(r2.w * cb0[53].x + cb0[53].y);
  r3.z = r3.z + -r3.x;
  r3.x = r0.w * r3.z + r3.x;
  r3.z = 2 + -r3.x;
  r3.w = cb0[54].x + -cb0[40].z;
  r3.w = r0.w * r3.w + cb0[40].z;
  r3.x = r3.x * r3.z + -1;
  r3.x = r3.w * r3.x + 1;
  r1.w = r3.x * r1.w;
  r7.x = min(cb0[41].w, r1.w);
  r1.w = cb0[39].w * r2.w;
  r1.w = -r3.y * r1.w;
  r1.w = exp2(r1.w);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r3.x = saturate(r2.w * cb0[47].x + cb0[47].y);
  r3.y = 2 + -r3.x;
  r3.x = r3.x * r3.y;
  r1.w = r3.x * r1.w;
  r7.y = min(cb0[49].y, r1.w);
  r3.xy = r7.xy * r4.yz;
  r8.xyz = -cb4[0].xyz + cb0[52].xyz;
  r8.xyz = r0.www * r8.xyz + cb4[0].xyz;
  r1.w = cb0[54].y + -cb0[50].z;
  r0.w = r0.w * r1.w + cb0[50].z;
  r9.xyz = -r8.xyz + r5.xyz;
  r8.xyz = r0.www * r9.xyz + r8.xyz;
  r9.xyz = r6.xyz * r0.yyy;
  r6.xyz = -r6.xyz * r0.yyy + r8.xyz;
  r3.xzw = r3.xxx * r6.xyz + r9.xyz;
  r0.y = 1 + -r0.y;
  r4.xy = -r7.xy * r4.yz + float2(1,1);
  r0.y = r4.x * r0.y;
  r4.xzw = -cb0[46].xyz + r5.xyz;
  r4.xzw = cb0[50].www * r4.xzw + cb0[46].xyz;
  r0.w = cb0[38].x * -r3.y + 1;
  r4.xzw = r4.xzw * r3.yyy;
  r3.xyz = r3.xzw * r0.www + r4.xzw;
  r3.w = r0.y * r4.y;
  r0.y = cmp(r12.y == 0.000000);
  r0.x = r0.z + -r0.x;
  r0.x = r0.x / r12.y;
  r0.x = saturate(0.5 + r0.x);
  r0.x = r0.y ? 0 : r0.x;
  r0.y = cmp(0 < r0.x);
  r0.z = -1 + r11.w;
  r0.z = r0.x * r0.z + 1;
  r4.xyz = r0.xxx * r11.xyz;
  r4.xyz = r3.xyz * r0.zzz + r4.xyz;
  r4.w = r3.w * r0.z;
  r0.xyzw = r0.yyyy ? r4.xyzw : r3.xyzw;
  r0.xyzw = cb0[209].xxxx ? r0.xyzw : r3.xyzw;
  r0.xyz = r0.www * r1.xyz + r0.xyz;
  r0.w = cmp(cb0[37].z == 128.000000);
  r0.w = r0.w ? 16 : 8;
  r0.w = r0.w / cb0[37].z;
  r1.x = cmp(v4.w < 5);
  r1.y = v4.w * r0.w;
  r1.y = 0.200000003 * r1.y;
  r1.z = log2(v4.w);
  r1.z = r1.z * 0.150515005 + -0.34948501;
  r1.w = 1 + -r0.w;
  r0.w = r1.z * r1.w + r0.w;
  r2.z = r1.x ? r1.y : r0.w;
  r1.xyzw = t2.Sample(s7_s, r2.xyz).xyzw;
  r0.xyz = r1.www * r0.xyz + r1.xyz;
  r0.w = t14.SampleLevel(s8_s, r2.xy, 0).x;
  r0.xyz = r0.www * cb0[173].xyz + r0.xyz;
  r0.w = cmp(0.5 < cb0[170].y);
  if (r0.w != 0) {
    r1.xy = (int2)v0.xy;
    r3.xyzw = t13.Gather(s6_s, r2.xy).xyzw;
    r3.xyzw = r3.xyzw * cb1[6].zzzz + -v4.wwww;
    r4.xyzw = cmp(r3.xyzw < float4(0,0,0,0));
    r3.xyzw = r4.xyzw ? float4(65504,65504,65504,65504) : abs(r3.xyzw);
    r2.xyz = cmp(r3.xyy < r3.zww);
    r2.xyz = r2.xyz ? float3(0,1.40129846e-45,0) : float3(2,3,2);
    r0.w = dot(r3.xz, icb[r2.x+0].xz);
    r1.z = dot(r3.yw, icb[r2.z+0].xz);
    r0.w = cmp(r0.w < r1.z);
    r0.w = r0.w ? r2.x : r2.y;
    r1.zw = (uint2)r1.xy >> int2(1,1);
    r1.xy = (int2)r1.xy & int2(1,1);
    r1.xy = cmp((int2)r1.xy == int2(0,0));
    r1.xy = (int2)r1.xy + (int2)r1.zw;
    r1.z = (int)-r0.w + 3;
    r1.w = cmp((uint)r0.w < 2);
    r2.x = r1.w ? r0.w : r1.z;
    r2.y = r1.w ? 0.000000 : 0;
    r1.xy = (int2)r1.xy + (int2)r2.xy;
    r1.zw = (int2)cb0[171].zw;
    r1.zw = (int2)r1.zw + int2(-1,-1);
    r1.xy = max(int2(0,0), (int2)r1.xy);
    r1.xy = min((int2)r1.xy, (int2)r1.zw);
    r1.zw = float2(0,0);
    r0.w = t12.Load(r1.xyw).x;
    r0.w = v4.w + -r0.w;
    r0.w = saturate(r0.w * 0.125 + 0.5);
    r2.x = cmp(0 < r0.w);
    if (r2.x != 0) {
      r1.xyzw = t11.Load(r1.xyz).xyzw;
      r1.xyz = r1.www * r0.xyz + r1.xyz;
      r1.xyz = r1.xyz + -r0.xyz;
      r0.xyz = r0.www * r1.xyz + r0.xyz;
    }
  }
  r0.w = cmp(0 != cb0[90].x);
  if (r0.w != 0) {
    r0.w = cmp(cb0[109].y >= r2.w);
    r1.x = dot(r0.xyz, float3(0.212500006,0.715399981,0.0720999986));
    r1.xyz = cb0[91].xyz * r1.xxx;
    r2.xy = cmp(cb0[115].xx == float2(1,4));
    r1.w = max(9.99999975e-05, cb0[109].y);
    r1.w = r2.w / r1.w;
    r1.w = max(0.0250000004, r1.w);
    r3.xyz = cb0[91].xyz * r1.www;
    r3.xyz = r2.yyy ? r3.xyz : r0.xyz;
    r1.xyz = r2.xxx ? r1.xyz : r3.xyz;
    r1.w = 1 + -cb0[109].z;
    r1.w = -cb0[109].y * r1.w + r2.w;
    r2.x = cb0[109].y * cb0[109].z + 9.99999975e-05;
    r1.w = saturate(r1.w / r2.x);
    r1.w = saturate(r1.w * -cb0[114].x + cb0[114].x);
    r1.xyz = r1.xyz + -r0.xyz;
    r1.xyz = r1.www * r1.xyz + r0.xyz;
    o0.xyz = r0.www ? r1.xyz : r0.xyz;
  } else {
    o0.xyz = r0.xyz;
  }
//  The line below controls the opacity of water, it ranges between 0-1. 0 is transparent while 1 is opaque.
  o0.w = 0.6;
//  The line below controls the color of water in the form of RGB, each value ranges between 0-1. You can uncomment the line below for a simple white color. Don't know why you would want that but know that the option is there.
//  o0.xyz = float3(1,1,1);
  return;
}


