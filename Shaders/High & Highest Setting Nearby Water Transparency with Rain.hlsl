// Modified by QoL mod: High & Highest Setting Nearby Water Transparency with Rain.hlsl
Texture2D<float4> t23 : register(t23);

Texture2D<float4> t22 : register(t22);

Texture2D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t19 : register(t19);

Texture2D<float4> t18 : register(t18);

Texture2D<float4> t17 : register(t17);

Texture2D<float4> t16 : register(t16);

Texture2D<float4> t15 : register(t15);

Texture2D<float4> t14 : register(t14);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t12 : register(t12);

Texture2D<float4> t11 : register(t11);

Texture3D<float4> t10 : register(t10);

Texture3D<float4> t9 : register(t9);

Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

TextureCube<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s13_s : register(s13);

SamplerState s12_s : register(s12);

SamplerState s11_s : register(s11);

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
  float4 cb0[227];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19;
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
  r3.zw = cb0[204].xx * r3.xy;
  r4.xy = cb1[0].yy * cb0[76].xy + r3.zw;
  r4.xyz = t7.SampleLevel(s4_s, r4.xy, 0).xyz;
  r4.xyz = r4.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r4.xy = cb0[78].zz * r4.xy;
  r3.zw = cb1[0].yy * cb0[78].xy + r3.zw;
  r5.xyz = t8.SampleLevel(s4_s, r3.zw, 0).xyz;
  r5.xyz = r5.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r5.xy = cb0[78].zz * r5.xy;
  r4.xyz = r5.xyz + r4.xyz;
  r0.x = dot(r4.xyz, r4.xyz);
  r0.x = rsqrt(r0.x);
  r4.xyz = r4.xyz * r0.xxx;
  r3.zw = v4.xy / v4.ww;
  r0.x = t0.Sample(s12_s, r3.zw).x;
  r0.x = cb1[8].z * r0.x + cb1[8].w;
  r0.x = 1 / r0.x;
  r1.w = 1 / v5.w;
  r1.w = r1.w * -r0.x;
  r5.xyz = v5.xyz * r1.www;
  r6.xyz = v5.zxy * r1.www + cb1[5].zxy;
  r7.xyzw = cb1[5].yxyz + -v6.yxyz;
  r1.w = dot(r7.yzw, r7.yzw);
  r5.w = rsqrt(r1.w);
  r8.xyzw = r7.xyzw * r5.wwww;
  r9.xyzw = v6.yxyz + -r6.zyzx;
  r6.w = dot(r9.yzw, r9.yzw);
  r6.w = sqrt(r6.w);
  r7.x = cb0[205].x + v4.w;
  r9.yz = cb0[190].yy * r4.xy;
  r0.x = saturate(-r7.x + r0.x);
  r10.xy = r9.yz * r0.xx;
  r10.z = 0;
  r9.yzw = v4.xyw + r10.xyz;
  r9.yz = r9.yz / r9.ww;
  r0.x = t0.Sample(s12_s, r9.yz).x;
  r0.x = cb1[8].z * r0.x + cb1[8].w;
  r0.x = 1 / r0.x;
  r0.x = saturate(r0.x + -r7.x);
  r9.yzw = r0.xxx * r10.xyz + v4.xyw;
  r0.x = rcp(r9.w);
  r10.xy = r9.yz * r0.xx;
  r10.xyz = t17.Sample(s3_s, r10.xy).xyz;
  if (cb0[216].x != 0) {
    r11.xyz = cb1[5].xyz + -r6.yzx;
    r0.x = dot(r11.xyz, r11.xyz);
    r0.x = sqrt(r0.x);
    r11.xyz = r11.xyz / r0.xxx;
    t23.GetDimensions(0, fDest.x, fDest.y, fDest.z);
    r12.xy = fDest.xy;
    r12.zw = float2(0.5,0.5) / r12.xy;
    r0.x = 8 * cb0[226].x;
    r0.x = cmp(r0.x >= -r0.x);
    r13.xy = r0.xx ? float2(8,0.125) : float2(-8,-0.125);
    r0.x = cb0[226].x * r13.y;
    r0.x = frac(r0.x);
    r13.xyzw = r13.xxxx * r0.xxxx + float4(8,8,16,16);
    r13.xyzw = r13.xyzw * float4(32.6650009,11.8149996,32.6650009,11.8149996) + v0.xyxy;
    r0.x = dot(r13.xy, float2(0.0671105608,0.00583714992));
    r0.x = frac(r0.x);
    r0.x = 52.9829178 * r0.x;
    r14.z = frac(r0.x);
    r0.x = dot(r13.zw, float2(0.0671105608,0.00583714992));
    r0.x = frac(r0.x);
    r0.x = 52.9829178 * r0.x;
    r14.x = frac(r0.x);
    r13.xy = float2(-0.5,-0.5) + r14.xz;
    r13.xy = r13.xy * float2(4,4) + v0.yx;
    r12.xy = float2(4,4) * r12.xy;
    r12.xy = r13.yx / r12.xy;
    r0.x = t0.Sample(s12_s, r12.xy).x;
    r0.x = cb1[8].z * r0.x + cb1[8].w;
    r0.x = 1 / r0.x;
    r14.xyzw = t23.Gather(s6_s, r12.xy).xyzw;
    r0.x = r0.x / cb1[6].z;
    r15.x = cb3[9].z;
    r15.y = cb3[10].z;
    r15.z = cb3[11].z;
    r7.x = dot(r15.xyz, r11.xyz);
    r0.x = r0.x / r7.x;
    r11.xyzw = r14.xyzw + -r0.xxxx;
    r0.x = min(abs(r11.z), abs(r11.w));
    r0.x = min(abs(r11.y), r0.x);
    r0.x = min(abs(r11.x), r0.x);
    r13.zw = r12.xy + r12.zw;
    r7.x = t21.SampleLevel(s3_s, r13.zw, 0).w;
    r7.x = cmp(r7.x != 1.000000);
    if (r7.x != 0) {
      r12.xy = r12.xy + -r12.zw;
      r7.x = cmp(abs(r11.y) == r0.x);
      if (r7.x != 0) {
        r12.zw = t22.SampleLevel(s6_s, r12.xy, 0, int2(1, 1)).xy;
      } else {
        r7.x = cmp(abs(r11.z) == r0.x);
        if (r7.x != 0) {
          r12.zw = t22.SampleLevel(s6_s, r12.xy, 0, int2(1, 0)).xy;
        } else {
          r7.x = cmp(abs(r11.w) == r0.x);
          if (r7.x != 0) {
            r12.zw = t22.SampleLevel(s6_s, r12.xy, 0, int2(0, 0)).xy;
          } else {
            r12.zw = t22.SampleLevel(s6_s, r12.xy, 0, int2(0, 1)).xy;
          }
        }
      }
      r14.xyzw = t21.SampleLevel(s6_s, r12.xy, 0, int2(0, 1)).xyzw;
      r15.xyzw = t21.SampleLevel(s6_s, r12.xy, 0, int2(1, 1)).xyzw;
      r16.xyzw = t21.SampleLevel(s6_s, r12.xy, 0, int2(1, 0)).xyzw;
      r17.xyzw = t21.SampleLevel(s6_s, r12.xy, 0, int2(0, 0)).xyzw;
      r7.x = max(abs(r11.z), abs(r11.w));
      r7.x = max(abs(r11.y), r7.x);
      r7.x = max(abs(r11.x), r7.x);
      r11.xyzw = abs(r11.xyzw) + -r0.xxxx;
      r0.x = r7.x + -r0.x;
      r11.xyzw = saturate(r11.xyzw / r0.xxxx);
      r0.x = saturate(r0.x);
      r0.x = r0.x * -4.5999999 + 5;
      r11.xyzw = log2(r11.xyzw);
      r11.xyzw = r11.xyzw * r0.xxxx;
      r11.xyzw = exp2(r11.xyzw);
      r11.xyzw = float4(1,1,1,1) + -r11.xyzw;
      r12.xy = (uint2)r13.xy;
      r12.xy = (int2)r12.xy + int2(2,2);
      r12.xy = (int2)r12.xy & int2(3,3);
      r12.xy = (uint2)r12.xy;
      r12.xy = float2(0.5,0.5) + r12.xy;
      r13.xy = float2(0.25,0.25) * r12.xy;
      r12.xy = -r12.yx * float2(0.25,0.25) + float2(1,1);
      r13.zw = r12.xy * r13.xy;
      r0.x = r13.y * r13.x;
      r18.y = r11.y * r0.x;
      r18.xz = r13.zw * r11.xz;
      r0.x = r12.x * r12.y;
      r18.w = r11.w * r0.x;
      r11.xyzw = r18.yyyy * r15.xyzw;
      r11.xyzw = r14.xyzw * r18.xxxx + r11.xyzw;
      r11.xyzw = r16.xyzw * r18.zzzz + r11.xyzw;
      r11.xyzw = r17.xyzw * r18.wwww + r11.xyzw;
      r0.x = dot(r18.xyzw, float4(1,1,1,1));
      r11.xyzw = r11.xyzw / r0.xxxx;
    } else {
      r11.xyzw = float4(0,0,0,1);
      r12.zw = float2(0,0);
    }
    r0.x = 1000 * r12.z;
  } else {
    r11.xyzw = float4(0,0,0,1);
    r0.x = 0;
    r12.w = 0;
  }
  r7.x = cmp(cb0[188].x != 0.000000);
  if (r7.x != 0) {
    r7.x = cmp(cb0[37].z == 128.000000);
    r7.x = r7.x ? 16 : 8;
    r7.x = r7.x / cb0[37].z;
    r10.w = cmp(v4.w < 5);
    r12.x = v4.w * r7.x;
    r12.x = 0.200000003 * r12.x;
    r12.y = log2(v4.w);
    r12.y = r12.y * 0.150515005 + -0.34948501;
    r12.z = 1 + -r7.x;
    r7.x = r12.y * r12.z + r7.x;
    r2.z = r10.w ? r12.x : r7.x;
    r13.xyzw = t1.Sample(s10_s, r2.xyz).xyzw;
    r12.xyz = -r13.xyz + r10.xyz;
    r2.z = max(0.100000001, r13.w);
    r2.z = rcp(r2.z);
    r13.xyz = r12.xyz * r2.zzz;
    if (cb0[216].x != 0) {
      r14.x = cb3[9].z;
      r14.y = cb3[10].z;
      r14.z = cb3[11].z;
      r7.x = dot(r5.xyz, r14.xyz);
      r10.w = cmp(0.00999999978 < cb0[51].w);
      if (r10.w != 0) {
        r10.w = cmp(cb0[56].y < 0.5);
        if (r10.w != 0) {
          r14.xyz = -cb0[51].xyz + r6.yzx;
          r10.w = dot(r14.xyz, r14.xyz);
          r10.w = sqrt(r10.w);
          r10.w = saturate(r10.w * cb0[53].z + cb0[53].w);
          r10.w = 1 + -r10.w;
          r10.w = r10.w * r10.w;
          r13.w = cmp(cb0[37].w == 1.000000);
          r14.x = cmp(r14.y < 0);
          r13.w = r13.w ? r14.x : 0;
          r10.w = r13.w ? 0 : r10.w;
        } else {
          r13.w = -cb0[51].y + r6.z;
          r14.x = 1 / cb0[51].w;
          r13.w = saturate(r14.x * r13.w);
          r14.x = r13.w * -2 + 3;
          r13.w = r13.w * r13.w;
          r10.w = r14.x * r13.w;
        }
        r10.w = saturate(cb0[56].z * r10.w);
        r13.w = cmp(cb0[56].x >= 0.0500000007);
        r13.w = r13.w ? 1.000000 : 0;
        r13.w = r13.w * r10.w;
        r14.x = cmp(0.949999988 >= cb0[56].x);
        r14.x = r14.x ? 1.000000 : 0;
        r10.w = r14.x * r10.w;
      } else {
        r13.w = 0;
        r10.w = 0;
      }
      r14.x = dot(r5.xyz, r5.xyz);
      r14.x = sqrt(r14.x);
      r14.y = saturate(r14.x * cb0[43].z + cb0[43].w);
      r14.z = saturate(r14.x * cb0[54].z + cb0[54].w);
      r14.z = r14.z + -r14.y;
      r14.y = r13.w * r14.z + r14.y;
      r14.z = 2 + -r14.y;
      r15.x = r14.y * r14.z;
      r14.y = dot(cb0[50].xyzw, float4(1,1,1,1));
      r14.y = cmp(0.0500000007 < r14.y);
      if (r14.y != 0) {
        r14.yzw = -cb0[5].zxy + r6.xyz;
        r15.z = dot(r14.yzw, r14.yzw);
        r15.z = rsqrt(r15.z);
        r14.yzw = r15.zzz * r14.yzw;
        r15.z = abs(r14.z) + abs(r14.w);
        r15.z = r15.z + abs(r14.y);
        r14.yzw = r14.yzw / r15.zzz;
        r15.zw = float2(1,1) + -abs(r14.wz);
        r16.xyz = cmp(r14.yzw >= float3(0,0,0));
        r16.yz = r16.yz ? float2(1,1) : float2(-1,-1);
        r15.zw = r16.yz * r15.zw;
        r14.yz = r16.xx ? r14.zw : r15.zw;
        r14.yz = r14.yz * float2(0.5,0.5) + float2(0.5,0.5);
        r14.yzw = t5.SampleLevel(s0_s, r14.yz, 0).xyz;
      } else {
        r14.yzw = float3(0,0,0);
      }
      r15.z = dot(r5.xz, r5.xz);
      r15.z = sqrt(r15.z);
      r15.y = saturate(r15.z * cb0[45].x + cb0[45].y);
      r16.y = saturate(cb1[5].y * cb0[45].z + cb0[45].w);
      r15.w = 0.999899983 * cb1[6].z;
      r7.x = cmp(-r7.x >= r15.w);
      r16.x = cb0[42].w * r15.x;
      r16.xy = r7.xx ? r16.xy : r15.xy;
      r7.x = -cb4[0].w + cb0[55].w;
      r7.x = r13.w * r7.x + cb4[0].w;
      r15.x = max(9.99999975e-05, r16.x);
      r15.x = log2(r15.x);
      r7.x = r15.x * r7.x;
      r7.x = exp2(r7.x);
      r15.x = cb0[49].x * cb0[41].w;
      r7.x = min(r15.x, r7.x);
      r7.x = min(1, r7.x);
      r6.z = saturate(r6.z * cb0[43].x + cb0[43].y);
      r15.x = 2 + -r6.z;
      r6.z = r15.x * r6.z;
      r15.xyw = r6.zzz * cb0[42].xyz + cb0[41].xyz;
      r17.xyz = cb0[55].xyz + -r15.xyw;
      r15.xyw = r13.www * r17.xyz + r15.xyw;
      r17.xyz = -r15.xyw + r14.yzw;
      r15.xyw = cb0[50].xxx * r17.xyz + r15.xyw;
      r6.z = -cb0[40].w + r14.x;
      r6.z = saturate(cb0[44].w * r6.z);
      r17.xyz = -cb0[44].xyz + r14.yzw;
      r17.xyz = cb0[50].yyy * r17.xyz + cb0[44].xyz;
      r17.xyz = r17.xyz + -r15.xyw;
      r15.xyw = r6.zzz * r17.xyz + r15.xyw;
      r16.z = saturate(r15.z * cb0[47].z + cb0[47].w);
      r6.z = cb0[52].w + -cb0[39].y;
      r6.z = r10.w * r6.z + cb0[39].y;
      r16.xw = cb0[39].xz * r5.yy;
      r17.xy = cmp(float2(0.00999999978,0.00999999978) < abs(r16.xw));
      r17.zw = -cb0[39].xz * r5.yy + cb0[48].yw;
      r17.zw = min(float2(80,80), r17.zw);
      r17.zw = float2(1.44269502,1.44269502) * r17.zw;
      r17.zw = exp2(r17.zw);
      r17.zw = cb0[48].xz + -r17.zw;
      r16.xw = r17.zw / r16.xw;
      r16.xw = r17.xy ? r16.xw : cb0[48].xz;
      r6.z = r14.x * r6.z;
      r6.z = -r16.x * r6.z;
      r6.z = exp2(r6.z);
      r6.z = 1 + -r6.z;
      r6.z = max(0, r6.z);
      r13.w = saturate(r14.x * cb0[40].x + cb0[40].y);
      r15.z = saturate(r14.x * cb0[53].x + cb0[53].y);
      r15.z = r15.z + -r13.w;
      r13.w = r10.w * r15.z + r13.w;
      r15.z = 2 + -r13.w;
      r16.x = cb0[54].x + -cb0[40].z;
      r16.x = r10.w * r16.x + cb0[40].z;
      r13.w = r13.w * r15.z + -1;
      r13.w = r16.x * r13.w + 1;
      r6.z = r13.w * r6.z;
      r17.x = min(cb0[41].w, r6.z);
      r6.z = cb0[39].w * r14.x;
      r6.z = -r16.w * r6.z;
      r6.z = exp2(r6.z);
      r6.z = 1 + -r6.z;
      r6.z = max(0, r6.z);
      r13.w = saturate(r14.x * cb0[47].x + cb0[47].y);
      r14.x = 2 + -r13.w;
      r13.w = r14.x * r13.w;
      r6.z = r13.w * r6.z;
      r17.y = min(cb0[49].y, r6.z);
      r16.xw = r17.xy * r16.yz;
      r18.xyz = -cb4[0].xyz + cb0[52].xyz;
      r18.xyz = r10.www * r18.xyz + cb4[0].xyz;
      r6.z = cb0[54].y + -cb0[50].z;
      r6.z = r10.w * r6.z + cb0[50].z;
      r19.xyz = -r18.xyz + r14.yzw;
      r18.xyz = r6.zzz * r19.xyz + r18.xyz;
      r19.xyz = r15.xyw * r7.xxx;
      r15.xyz = -r15.xyw * r7.xxx + r18.xyz;
      r15.xyz = r16.xxx * r15.xyz + r19.xyz;
      r6.z = 1 + -r7.x;
      r16.xy = -r17.xy * r16.yz + float2(1,1);
      r6.z = r16.x * r6.z;
      r14.xyz = -cb0[46].xyz + r14.yzw;
      r14.xyz = cb0[50].www * r14.xyz + cb0[46].xyz;
      r7.x = cb0[38].x * -r16.w + 1;
      r14.xyz = r14.xyz * r16.www;
      r14.xyz = r15.xyz * r7.xxx + r14.xyz;
      r6.z = r6.z * r16.y;
      r15.xyz = r14.xyz * r11.www + r11.xyz;
      r7.x = r6.z * r11.w;
      r12.xyz = r12.xyz * r2.zzz + -r15.xyz;
      r2.z = max(0.100000001, r7.x);
      r2.z = rcp(r2.z);
      r12.xyz = r12.xyz * r2.zzz;
      r13.xyz = r6.zzz * r12.xyz + r14.xyz;
    }
    r12.xy = r9.yz / r9.ww;
    r2.z = t0.Sample(s12_s, r12.xy).x;
    r2.z = cb1[8].z * r2.z + cb1[8].w;
    r2.z = 1 / r2.z;
    r6.z = rcp(v5.w);
    r2.z = r6.z * -r2.z;
    r12.xyz = v5.xyz * r2.zzz;
    r14.xyz = v5.zxy * r2.zzz + cb1[5].zxy;
    r15.x = cb3[9].z;
    r15.y = cb3[10].z;
    r15.z = cb3[11].z;
    r2.z = dot(r12.xyz, r15.xyz);
    r6.z = cmp(0.00999999978 < cb0[51].w);
    if (r6.z != 0) {
      r6.z = cmp(cb0[56].y < 0.5);
      if (r6.z != 0) {
        r15.xyz = -cb0[51].xyz + r14.yzx;
        r6.z = dot(r15.xyz, r15.xyz);
        r6.z = sqrt(r6.z);
        r6.z = saturate(r6.z * cb0[53].z + cb0[53].w);
        r6.z = 1 + -r6.z;
        r6.z = r6.z * r6.z;
        r7.x = cmp(cb0[37].w == 1.000000);
        r10.w = cmp(r15.y < 0);
        r7.x = r7.x ? r10.w : 0;
        r6.z = r7.x ? 0 : r6.z;
      } else {
        r7.x = -cb0[51].y + r14.z;
        r10.w = 1 / cb0[51].w;
        r7.x = saturate(r10.w * r7.x);
        r10.w = r7.x * -2 + 3;
        r7.x = r7.x * r7.x;
        r6.z = r10.w * r7.x;
      }
      r6.z = saturate(cb0[56].z * r6.z);
      r7.x = cmp(cb0[56].x >= 0.0500000007);
      r7.x = r7.x ? 1.000000 : 0;
      r7.x = r7.x * r6.z;
      r10.w = cmp(0.949999988 >= cb0[56].x);
      r10.w = r10.w ? 1.000000 : 0;
      r6.z = r10.w * r6.z;
    } else {
      r7.x = 0;
      r6.z = 0;
    }
    r10.w = dot(r12.xyz, r12.xyz);
    r10.w = sqrt(r10.w);
    r13.w = saturate(r10.w * cb0[43].z + cb0[43].w);
    r14.w = saturate(r10.w * cb0[54].z + cb0[54].w);
    r14.w = r14.w + -r13.w;
    r13.w = r7.x * r14.w + r13.w;
    r14.w = 2 + -r13.w;
    r15.x = r14.w * r13.w;
    r13.w = dot(cb0[50].xyzw, float4(1,1,1,1));
    r13.w = cmp(0.0500000007 < r13.w);
    if (r13.w != 0) {
      r14.xyw = -cb0[5].zxy + r14.xyz;
      r13.w = dot(r14.xyw, r14.xyw);
      r13.w = rsqrt(r13.w);
      r14.xyw = r14.xyw * r13.www;
      r13.w = abs(r14.y) + abs(r14.w);
      r13.w = r13.w + abs(r14.x);
      r14.xyw = r14.xyw / r13.www;
      r15.zw = float2(1,1) + -abs(r14.wy);
      r16.xyz = cmp(r14.xyw >= float3(0,0,0));
      r16.yz = r16.yz ? float2(1,1) : float2(-1,-1);
      r15.zw = r16.yz * r15.zw;
      r14.xy = r16.xx ? r14.yw : r15.zw;
      r14.xy = r14.xy * float2(0.5,0.5) + float2(0.5,0.5);
      r14.xyw = t5.SampleLevel(s0_s, r14.xy, 0).xyz;
    } else {
      r14.xyw = float3(0,0,0);
    }
    r12.x = dot(r12.xz, r12.xz);
    r12.x = sqrt(r12.x);
    r15.y = saturate(r12.x * cb0[45].x + cb0[45].y);
    r16.y = saturate(cb1[5].y * cb0[45].z + cb0[45].w);
    r12.z = 0.999899983 * cb1[6].z;
    r2.z = cmp(-r2.z >= r12.z);
    r16.x = cb0[42].w * r15.x;
    r15.xy = r2.zz ? r16.xy : r15.xy;
    r2.z = -cb4[0].w + cb0[55].w;
    r2.z = r7.x * r2.z + cb4[0].w;
    r12.z = max(9.99999975e-05, r15.x);
    r12.z = log2(r12.z);
    r2.z = r12.z * r2.z;
    r2.z = exp2(r2.z);
    r12.z = cb0[49].x * cb0[41].w;
    r2.z = min(r12.z, r2.z);
    r2.z = min(1, r2.z);
    r12.z = saturate(r14.z * cb0[43].x + cb0[43].y);
    r13.w = 2 + -r12.z;
    r12.z = r13.w * r12.z;
    r16.xyz = r12.zzz * cb0[42].xyz + cb0[41].xyz;
    r17.xyz = cb0[55].xyz + -r16.xyz;
    r16.xyz = r7.xxx * r17.xyz + r16.xyz;
    r17.xyz = -r16.xyz + r14.xyw;
    r16.xyz = cb0[50].xxx * r17.xyz + r16.xyz;
    r7.x = -cb0[40].w + r10.w;
    r7.x = saturate(cb0[44].w * r7.x);
    r17.xyz = -cb0[44].xyz + r14.xyw;
    r17.xyz = cb0[50].yyy * r17.xyz + cb0[44].xyz;
    r17.xyz = r17.xyz + -r16.xyz;
    r16.xyz = r7.xxx * r17.xyz + r16.xyz;
    r15.z = saturate(r12.x * cb0[47].z + cb0[47].w);
    r7.x = cb0[52].w + -cb0[39].y;
    r7.x = r6.z * r7.x + cb0[39].y;
    r12.xz = cb0[39].xz * r12.yy;
    r15.xw = cmp(float2(0.00999999978,0.00999999978) < abs(r12.xz));
    r17.xy = -cb0[39].xz * r12.yy + cb0[48].yw;
    r17.xy = min(float2(80,80), r17.xy);
    r17.xy = float2(1.44269502,1.44269502) * r17.xy;
    r17.xy = exp2(r17.xy);
    r17.xy = cb0[48].xz + -r17.xy;
    r12.xy = r17.xy / r12.xz;
    r12.xy = r15.xw ? r12.xy : cb0[48].xz;
    r7.x = r10.w * r7.x;
    r7.x = -r12.x * r7.x;
    r7.x = exp2(r7.x);
    r7.x = 1 + -r7.x;
    r7.x = max(0, r7.x);
    r12.x = saturate(r10.w * cb0[40].x + cb0[40].y);
    r12.z = saturate(r10.w * cb0[53].x + cb0[53].y);
    r12.z = r12.z + -r12.x;
    r12.x = r6.z * r12.z + r12.x;
    r12.z = 2 + -r12.x;
    r13.w = cb0[54].x + -cb0[40].z;
    r13.w = r6.z * r13.w + cb0[40].z;
    r12.x = r12.x * r12.z + -1;
    r12.x = r13.w * r12.x + 1;
    r7.x = r12.x * r7.x;
    r17.x = min(cb0[41].w, r7.x);
    r7.x = cb0[39].w * r10.w;
    r7.x = -r12.y * r7.x;
    r7.x = exp2(r7.x);
    r7.x = 1 + -r7.x;
    r7.x = max(0, r7.x);
    r10.w = saturate(r10.w * cb0[47].x + cb0[47].y);
    r12.x = 2 + -r10.w;
    r10.w = r12.x * r10.w;
    r7.x = r10.w * r7.x;
    r17.y = min(cb0[49].y, r7.x);
    r12.xy = r17.xy * r15.yz;
    r18.xyz = -cb4[0].xyz + cb0[52].xyz;
    r18.xyz = r6.zzz * r18.xyz + cb4[0].xyz;
    r7.x = cb0[54].y + -cb0[50].z;
    r6.z = r6.z * r7.x + cb0[50].z;
    r19.xyz = -r18.xyz + r14.xyw;
    r18.xyz = r6.zzz * r19.xyz + r18.xyz;
    r19.xyz = r16.xyz * r2.zzz;
    r16.xyz = -r16.xyz * r2.zzz + r18.xyz;
    r16.xyz = r12.xxx * r16.xyz + r19.xyz;
    r2.z = 1 + -r2.z;
    r12.xz = -r17.xy * r15.yz + float2(1,1);
    r2.z = r12.x * r2.z;
    r14.xyz = -cb0[46].xyz + r14.xyw;
    r14.xyz = cb0[50].www * r14.xyz + cb0[46].xyz;
    r6.z = cb0[38].x * -r12.y + 1;
    r14.xyz = r14.xyz * r12.yyy;
    r14.xyz = r16.xyz * r6.zzz + r14.xyz;
    r2.z = r2.z * r12.z;
    r12.xyz = -r14.xyz + r13.xyz;
    r2.z = max(0.100000001, r2.z);
    r2.z = rcp(r2.z);
    r12.xyz = r12.xyz * r2.zzz;
    r12.xyz = max(float3(0,0,0), r12.xyz);
    r12.xyz = r12.xyz + -r10.xyz;
    r10.xyz = cb0[188].xxx * r12.xyz + r10.xyz;
  }
  r9.yz = r9.yz / r9.ww;
  r2.z = t0.Sample(s12_s, r9.yz).x;
  r2.z = cb1[8].z * r2.z + cb1[8].w;
  r2.z = 1 / r2.z;
  r2.z = -v4.w + r2.z;
  r6.z = cmp(cb0[21].y < 0);
  r9.yzw = r6.zzz ? cb0[17].yzw : cb0[21].xyz;
  r6.z = cmp(cb0[88].x == 0.000000);
  r9.yzw = r6.zzz ? r9.yzw : r0.yzw;
  r4.w = 1;
  r0.y = dot(r4.xyw, r4.xyw);
  r0.y = rsqrt(r0.y);
  r12.xyz = r4.xwy * r0.yyy;
  r7.xyz = r7.yzw * r5.www + r9.yzw;
  r0.y = dot(r7.xyz, r7.xyz);
  r0.y = rsqrt(r0.y);
  r7.xyz = r7.xyz * r0.yyy;
  r0.y = saturate(dot(r12.xyz, r7.xyz));
  r0.w = cb0[191].x * 1.44270003 + 1.44270003;
  r0.y = r0.y * r0.w + -r0.w;
  r0.y = exp2(r0.y);
  r0.w = cb0[191].z * r9.z + -1;
  r0.w = max(0.0500000007, r0.w);
  r0.y = r0.y * r0.w;
  r0.w = cb0[191].z * -r8.x + 1;
  r0.w = max(0.0500000007, r0.w);
  r0.y = r0.y * r0.w;
  r0.w = r2.z * 0.100000001 + -0.100000001;
  r0.w = saturate(cb0[191].y * r0.w);
  r0.y = r0.y * r0.w;
  r7.xyz = cb0[190].www * r1.xyz;
  r0.w = t2.Sample(s2_s, r3.zw).x;
  r3.z = cmp(cb0[204].w == 1.000000);
  r0.w = r3.z ? r0.w : 1;
  r3.zw = float2(25,25) * cb0[76].xy;
  r4.w = cb0[69].w * r6.w;
  r9.yz = r4.xy * r4.ww;
  r12.z = cb1[0].y * cb0[67].y;
  r13.xy = r6.yx * cb0[67].xx + r9.yz;
  r12.xy = r12.zz * r3.zw + r13.xy;
  r13.x = dot(r12.xyz, float3(-2,3,1));
  r13.y = dot(r12.xyz, float3(-1,-2,2));
  r13.z = dot(r12.xzy, float3(2,2,1));
  r14.x = dot(r13.xyz, float3(-0.800000012,1.20000005,0.400000006));
  r14.y = dot(r13.xyz, float3(-0.400000006,-0.800000012,0.800000012));
  r14.z = dot(r13.xzy, float3(0.800000012,0.800000012,0.400000006));
  r4.w = dot(r14.xyz, float3(-0.600000024,0.899999976,0.300000012));
  r5.w = dot(r14.xyz, float3(-0.300000012,-0.600000024,0.600000024));
  r6.z = dot(r14.xzy, float3(0.600000024,0.600000024,0.300000012));
  r13.xyz = frac(r13.xyz);
  r13.xyz = float3(0.5,0.5,0.5) + -r13.xyz;
  r14.xyz = frac(r14.xyz);
  r14.xyz = float3(0.5,0.5,0.5) + -r14.xyz;
  r15.x = frac(r4.w);
  r15.y = frac(r5.w);
  r15.z = frac(r6.z);
  r15.xyz = float3(0.5,0.5,0.5) + -r15.xyz;
  r4.w = dot(r13.xyz, r13.xyz);
  r5.w = dot(r14.xyz, r14.xyz);
  r4.w = min(r5.w, r4.w);
  r5.w = dot(r15.xyz, r15.xyz);
  r13.xz = min(r5.ww, r4.ww);
  r9.yz = r13.zz * cb0[69].xx + r9.yz;
  r6.xy = r6.yx * cb0[67].xx + r9.yz;
  r12.xy = r12.zz * r3.zw + r6.xy;
  r6.x = dot(r12.xyz, float3(-2,3,1));
  r6.y = dot(r12.xyz, float3(-1,-2,2));
  r6.z = dot(r12.xzy, float3(2,2,1));
  r12.x = dot(r6.xyz, float3(-0.800000012,1.20000005,0.400000006));
  r12.y = dot(r6.xyz, float3(-0.400000006,-0.800000012,0.800000012));
  r12.z = dot(r6.xzy, float3(0.800000012,0.800000012,0.400000006));
  r3.z = dot(r12.xyz, float3(-0.600000024,0.899999976,0.300000012));
  r3.w = dot(r12.xyz, float3(-0.300000012,-0.600000024,0.600000024));
  r4.w = dot(r12.xzy, float3(0.600000024,0.600000024,0.300000012));
  r6.xyz = frac(r6.xyz);
  r6.xyz = float3(0.5,0.5,0.5) + -r6.xyz;
  r9.yzw = frac(r12.xyz);
  r9.yzw = float3(0.5,0.5,0.5) + -r9.yzw;
  r12.xy = frac(r3.zw);
  r12.z = frac(r4.w);
  r12.xyz = float3(0.5,0.5,0.5) + -r12.xyz;
  r3.z = dot(r6.xyz, r6.xyz);
  r3.w = dot(r9.yzw, r9.yzw);
  r3.z = min(r3.z, r3.w);
  r3.w = dot(r12.xyz, r12.xyz);
  r13.y = min(r3.z, r3.w);
  r3.z = saturate(cb0[69].y * r9.x);
  r3.w = dot(r5.xyz, r5.xyz);
  r3.w = sqrt(r3.w);
  r3.w = saturate(cb0[69].z * r3.w);
  r3.z = r3.z * -r3.w + r3.z;
  r5.xyz = r13.xyz * r13.xyz;
  r5.xyz = float3(7,7,7) * r5.xyz;
  r5.xyz = r5.xyz * r5.xyz;
  r6.xyz = cb0[68].xyz * cb0[2].xyz;
  r5.xyz = r6.xyz * r5.xyz;
  r5.xyz = r5.xyz * r3.zzz;
  r5.xyz = r5.xyz * r0.www;
  r3.z = saturate(cb0[204].y * r6.w);
  r3.z = 9.99999975e-05 + r3.z;
  r3.z = log2(r3.z);
  r3.z = cb0[204].z * r3.z;
  r3.z = exp2(r3.z);
  r5.xyz = r5.xyz * -r3.zzz + r5.xyz;
  r5.xyz = r10.xyz * r5.xyz + r10.xyz;
  r3.zw = -cb0[194].xy * r2.zz;
  r3.zw = float2(1.44269502,1.44269502) * r3.zw;
  r3.zw = exp2(r3.zw);
  r3.zw = float2(1,1) + -r3.zw;
  r3.zw = max(float2(0,0), r3.zw);
  r6.xyz = cb0[199].xyz + -cb0[192].xyz;
  r6.xyz = cb0[199].www * r6.xyz + cb0[192].xyz;
  r6.xyz = float3(-1,-1,-1) + r6.xyz;
  r6.xyz = r3.zzz * r6.xyz + float3(1,1,1);
  r9.yzw = r6.xyz * r5.xyz;
  r10.xyz = cb0[200].xyz + -cb0[193].xyz;
  r10.xyz = cb0[200].www * r10.xyz + cb0[193].xyz;
  r5.xyz = -r6.xyz * r5.xyz + r10.xyz;
  r5.xyz = r3.www * r5.xyz + r9.yzw;
  r3.z = cmp(0 != cb0[186].x);
  r3.w = cmp(0 != cb0[141].x);
  r3.z = r3.w ? r3.z : 0;
  if (r3.z != 0) {
    r6.xyz = max(float3(9.99999975e-05,9.99999975e-05,9.99999975e-05), r5.xyz);
    r3.z = cmp(0.5 < cb0[158].w);
    r9.yzw = cb0[177].xyz * v6.yyy;
    r9.yzw = cb0[176].xyz * v6.xxx + r9.yzw;
    r9.yzw = cb0[178].xyz * v6.zzz + r9.yzw;
    r9.yzw = cb0[179].xyz + r9.yzw;
    r10.xy = v6.xz * cb0[184].xy + cb0[184].zw;
    r3.w = t9.Sample(s7_s, r9.yzw).x;
    r4.w = t11.Sample(s8_s, r10.xy).x;
    r3.w = saturate(r3.w * cb0[158].y + cb0[158].z);
    r9.yzw = cb0[159].xyz + -v6.xyz;
    r5.w = dot(r9.yzw, r9.yzw);
    r5.w = sqrt(r5.w);
    r5.w = saturate(r5.w * cb0[159].w + cb0[163].x);
    r9.yzw = cb0[160].xyz + -v6.xyz;
    r6.w = dot(r9.yzw, r9.yzw);
    r6.w = sqrt(r6.w);
    r6.w = saturate(r6.w * cb0[160].w + cb0[163].y);
    r7.w = max(r6.w, r5.w);
    r5.w = min(r6.w, r5.w);
    r5.w = r3.z ? r7.w : r5.w;
    r9.yzw = cb0[161].xyz + -v6.xyz;
    r6.w = dot(r9.yzw, r9.yzw);
    r6.w = sqrt(r6.w);
    r6.w = saturate(r6.w * cb0[161].w + cb0[163].z);
    r7.w = max(r6.w, r5.w);
    r5.w = min(r6.w, r5.w);
    r5.w = r3.z ? r7.w : r5.w;
    r9.yzw = cb0[162].xyz + -v6.xyz;
    r6.w = dot(r9.yzw, r9.yzw);
    r6.w = sqrt(r6.w);
    r6.w = saturate(r6.w * cb0[162].w + cb0[163].w);
    r7.w = max(r6.w, r5.w);
    r5.w = min(r6.w, r5.w);
    r3.z = r3.z ? r7.w : r5.w;
    r3.z = r3.w * r3.z;
    r3.z = r3.z * r4.w;
    r3.w = dot(r6.xyz, float3(0.212672904,0.715152204,0.0721750036));
    r9.yzw = r6.xyz + -r3.www;
    r10.xyz = cb0[170].xyz * r9.yzw + r3.www;
    r10.xyz = max(float3(0,0,0), r10.xyz);
    r10.xyz = log2(r10.xyz);
    r12.x = cb0[170].w * r10.x;
    r12.y = cb0[171].w * r10.y;
    r12.z = cb0[172].w * r10.z;
    r10.xyz = exp2(r12.xyz);
    r10.xyz = r10.xyz * cb0[171].xyz + cb0[172].xyz;
    r4.w = cmp(1 < asint(cb0[157].x));
    if (r4.w != 0) {
      r4.w = cmp(r3.z < 0.00196078443);
      if (r4.w != 0) {
        r4.w = cmp(0.5 < cb0[164].w);
        r12.xyz = cb0[181].xyz * v6.yyy;
        r12.xyz = cb0[180].xyz * v6.xxx + r12.xyz;
        r12.xyz = cb0[182].xyz * v6.zzz + r12.xyz;
        r12.xyz = cb0[183].xyz + r12.xyz;
        r13.xy = v6.xz * cb0[185].xy + cb0[185].zw;
        r5.w = t10.Sample(s7_s, r12.xyz).x;
        r6.w = t12.Sample(s8_s, r13.xy).x;
        r5.w = saturate(r5.w * cb0[164].y + cb0[164].z);
        r12.xyz = cb0[165].xyz + -v6.xyz;
        r7.w = dot(r12.xyz, r12.xyz);
        r7.w = sqrt(r7.w);
        r7.w = saturate(r7.w * cb0[165].w + cb0[169].x);
        r12.xyz = cb0[166].xyz + -v6.xyz;
        r10.w = dot(r12.xyz, r12.xyz);
        r10.w = sqrt(r10.w);
        r10.w = saturate(r10.w * cb0[166].w + cb0[169].y);
        r12.x = max(r10.w, r7.w);
        r7.w = min(r10.w, r7.w);
        r7.w = r4.w ? r12.x : r7.w;
        r12.xyz = cb0[167].xyz + -v6.xyz;
        r10.w = dot(r12.xyz, r12.xyz);
        r10.w = sqrt(r10.w);
        r10.w = saturate(r10.w * cb0[167].w + cb0[169].z);
        r12.x = max(r10.w, r7.w);
        r7.w = min(r10.w, r7.w);
        r7.w = r4.w ? r12.x : r7.w;
        r12.xyz = cb0[168].xyz + -v6.xyz;
        r10.w = dot(r12.xyz, r12.xyz);
        r10.w = sqrt(r10.w);
        r10.w = saturate(r10.w * cb0[168].w + cb0[169].w);
        r12.x = max(r10.w, r7.w);
        r7.w = min(r10.w, r7.w);
        r4.w = r4.w ? r12.x : r7.w;
        r4.w = r5.w * r4.w;
        r3.z = r4.w * r6.w;
        r9.yzw = cb0[173].xyz * r9.yzw + r3.www;
        r9.yzw = max(float3(0,0,0), r9.yzw);
        r9.yzw = log2(r9.yzw);
        r12.x = cb0[173].w * r9.y;
        r12.y = cb0[174].w * r9.z;
        r12.z = cb0[175].w * r9.w;
        r9.yzw = exp2(r12.xyz);
        r10.xyz = r9.yzw * cb0[174].xyz + cb0[175].xyz;
      }
    }
    r9.yzw = r10.xyz + -r6.xyz;
    r5.xyz = r3.zzz * r9.yzw + r6.xyz;
  }
  r4.xyz = cb0[196].xzy * r4.xzy;
  r3.z = dot(r4.xyz, r4.xyz);
  r3.z = rsqrt(r3.z);
  r4.xyz = r4.xyz * r3.zzz;
  r3.z = dot(-r8.yzw, r4.xyz);
  r3.z = r3.z + r3.z;
  r6.xyz = r4.xyz * -r3.zzz + -r8.yzw;
  r6.xyzw = t3.SampleLevel(s13_s, r6.xyz, 0).xyzw;
  r3.z = -1 + r6.w;
  r3.z = cb0[195].w * r3.z + 1;
  r3.z = log2(r3.z);
  r3.z = cb0[195].y * r3.z;
  r3.z = exp2(r3.z);
  r3.z = cb0[195].x * r3.z;
  r8.yzw = r3.zzz * r6.xyz;
  r3.w = saturate(cb0[197].y * r2.z);
  r3.w = cb0[197].x * r3.w;
  r4.xy = r4.xz * r3.ww + r2.xy;
  r4.xyzw = t18.Sample(s3_s, r4.xy).xyzw;
  r3.w = saturate(cb0[197].z * r4.w);
  r4.xyz = -r3.zzz * r6.xyz + r4.xyz;
  r4.xyz = r3.www * r4.xyz + r8.yzw;
  r3.z = cb0[201].x * cb0[198].x;
  r3.w = cb0[198].y * -r8.x + 1;
  r3.w = max(0.0500000007, r3.w);
  r3.z = r3.z * r3.w;
  r3.w = saturate(cb0[198].z * r2.z);
  r3.z = saturate(r3.z * r3.w);
  r4.xyz = r4.xyz + -r5.xyz;
  r4.xyz = r3.zzz * r4.xyz + r5.xyz;
  r0.z = max(0, r0.z);
  r0.z = r0.w * r0.z;
  r1.xyz = r0.zzz * r1.xyz + v3.xyz;
  r0.z = sqrt(r1.w);
  r0.w = -cb0[74].y + r0.z;
  r0.w = r0.w / cb0[74].z;
  r1.w = cb0[73].x * v1.x;
  r3.z = max(0, r9.x);
  r1.w = min(r3.z, r1.w);
  r3.z = cb0[73].x * v1.x + 9.99999975e-05;
  r1.w = r1.w / r3.z;
  r1.w = 1 + -r1.w;
  r3.zw = cb1[0].yy * cb0[70].zw;
  r3.zw = frac(r3.zw);
  r3.zw = cb0[70].xy * r3.xy + r3.zw;
  r3.z = t6.Sample(s4_s, r3.zw).x;
  r3.w = r3.x + r3.y;
  r3.w = cb0[74].x * r3.w;
  r3.w = cb0[71].x * cb1[0].y + r3.w;
  r4.w = 1 + -r1.w;
  r3.w = cb0[73].z * r1.w + r3.w;
  r3.w = sin(r3.w);
  r3.w = cb0[73].w * r1.w + r3.w;
  r5.x = r3.z * 2 + -1;
  r3.w = r5.x + r3.w;
  r3.w = cmp(r3.w >= r4.w);
  r3.w = r3.w ? 1.000000 : 0;
  r3.z = r3.z * r3.w;
  r3.w = 9.99999975e-05 + cb0[73].y;
  r3.w = saturate(r0.z / r3.w);
  r3.w = 1 + -r3.w;
  r4.w = cb0[72].w * v1.y;
  r0.w = r4.w * r0.w;
  r0.w = r0.w * r3.z;
  r0.w = r0.w * r1.w;
  r0.w = saturate(r0.w * r3.w);
  r1.xyz = cb0[72].xyz * r1.xyz + -r4.xyz;
  r1.xyz = r0.www * r1.xyz + r4.xyz;
  r1.xyz = r7.xyz * r0.yyy + r1.xyz;
  r0.yw = cb0[203].xy * r3.xy;
  r3.zw = floor(r0.yw);
  r1.w = dot(r3.zw, float2(12.9898005,78.2330017));
  r1.w = sin(r1.w);
  r1.w = 43758.5469 * r1.w;
  r1.w = frac(r1.w);
  r3.z = 43758 * r1.w;
  r3.w = (int)r3.z;
  r3.z = trunc(r3.z);
  r3.z = cb1[0].y * 16 + r3.z;
  r3.z = trunc(r3.z);
  r4.x = 0.25 * r3.z;
  r4.x = trunc(r4.x);
  r4.y = 0.25 * r4.x;
  r3.z = -r4.x * 4 + r3.z;
  r0.yw = frac(r0.yw);
  r0.y = 0.25 * r0.y;
  r5.x = r3.z * 0.25 + r0.y;
  r5.y = r0.w * 0.25 + -r4.y;
  r0.y = (int)r3.w & 1;
  r0.y = (int)r0.y;
  r0.w = t20.Sample(s5_s, r5.xy).x;
  r0.y = r0.y * r0.w;
  r3.xy = cb0[201].yy * r3.xy;
  r0.w = t19.Sample(s5_s, r3.xy).x;
  r1.w = 1 + -r1.w;
  r0.w = r1.w * r0.w;
  r0.y = max(r0.y, r0.w);
  r0.w = r0.z * 0.0199999996 + 0.5;
  r0.w = min(1, r0.w);
  r0.y = -r0.y * r0.w + r0.y;
  r0.w = cmp(0 != cb0[61].x);
  if (r0.w != 0) {
    r3.xyzw = cb0[58].xyzw * v6.yyyy;
    r3.xyzw = cb0[57].xyzw * v6.xxxx + r3.xyzw;
    r3.xyzw = cb0[59].xyzw * v6.zzzz + r3.xyzw;
    r3.xyzw = cb0[60].xyzw + r3.xyzw;
    r3.xyz = r3.zxy / r3.www;
    r3.x = saturate(r3.x);
    r0.w = t4.Sample(s1_s, r3.yz).x;
    r1.w = 1 + -r3.x;
    r1.w = -14.4269505 * r1.w;
    r1.w = exp2(r1.w);
    r0.w = saturate(r1.w * r0.w);
    r0.w = -0.800000012 + r0.w;
    r0.w = 5 * r0.w;
    r0.w = max(0, r0.w);
    r0.w = r0.w * r0.w;
    r0.w = r0.w * r0.w;
    r0.w = r0.w * r0.w;
  } else {
    r0.w = 1;
  }
  r0.y = saturate(r0.y * r0.w);
  r3.xyz = cb0[202].xyz + -r1.xyz;
  r1.xyz = r0.yyy * r3.xyz + r1.xyz;
  r0.y = saturate(cb0[190].z * r2.z);
  r0.y = v1.w * r0.y;
  r0.w = cmp(cb0[186].x == 1.000000);
  if (r0.w != 0) {
    r0.w = cmp(0.5 < cb0[158].w);
    r3.xyz = cb0[177].xyz * v6.yyy;
    r3.xyz = cb0[176].xyz * v6.xxx + r3.xyz;
    r3.xyz = cb0[178].xyz * v6.zzz + r3.xyz;
    r3.xyz = cb0[179].xyz + r3.xyz;
    r4.xy = v6.xz * cb0[184].xy + cb0[184].zw;
    r1.w = t9.Sample(s7_s, r3.xyz).x;
    r2.z = t11.Sample(s8_s, r4.xy).x;
    r1.w = saturate(r1.w * cb0[158].y + cb0[158].z);
    r3.xyz = cb0[159].xyz + -v6.xyz;
    r3.x = dot(r3.xyz, r3.xyz);
    r3.x = sqrt(r3.x);
    r3.x = saturate(r3.x * cb0[159].w + cb0[163].x);
    r3.yzw = cb0[160].xyz + -v6.xyz;
    r3.y = dot(r3.yzw, r3.yzw);
    r3.y = sqrt(r3.y);
    r3.y = saturate(r3.y * cb0[160].w + cb0[163].y);
    r3.z = max(r3.x, r3.y);
    r3.x = min(r3.x, r3.y);
    r3.x = r0.w ? r3.z : r3.x;
    r3.yzw = cb0[161].xyz + -v6.xyz;
    r3.y = dot(r3.yzw, r3.yzw);
    r3.y = sqrt(r3.y);
    r3.y = saturate(r3.y * cb0[161].w + cb0[163].z);
    r3.z = max(r3.x, r3.y);
    r3.x = min(r3.x, r3.y);
    r3.x = r0.w ? r3.z : r3.x;
    r3.yzw = cb0[162].xyz + -v6.xyz;
    r3.y = dot(r3.yzw, r3.yzw);
    r3.y = sqrt(r3.y);
    r3.y = saturate(r3.y * cb0[162].w + cb0[163].w);
    r3.z = max(r3.x, r3.y);
    r3.x = min(r3.x, r3.y);
    r0.w = r0.w ? r3.z : r3.x;
    r0.w = r1.w * r0.w;
    r0.w = r0.w * r2.z;
    r1.w = cmp(1 < asint(cb0[157].x));
    if (r1.w != 0) {
      r2.z = cmp(r0.w < 0.00196078443);
      if (r2.z != 0) {
        r2.z = cmp(0.5 < cb0[164].w);
        r3.xyz = cb0[181].xyz * v6.yyy;
        r3.xyz = cb0[180].xyz * v6.xxx + r3.xyz;
        r3.xyz = cb0[182].xyz * v6.zzz + r3.xyz;
        r3.xyz = cb0[183].xyz + r3.xyz;
        r4.xy = v6.xz * cb0[185].xy + cb0[185].zw;
        r3.x = t10.Sample(s7_s, r3.xyz).x;
        r3.y = t12.Sample(s8_s, r4.xy).x;
        r3.x = saturate(r3.x * cb0[164].y + cb0[164].z);
        r4.xyz = cb0[165].xyz + -v6.xyz;
        r3.z = dot(r4.xyz, r4.xyz);
        r3.z = sqrt(r3.z);
        r3.z = saturate(r3.z * cb0[165].w + cb0[169].x);
        r4.xyz = cb0[166].xyz + -v6.xyz;
        r3.w = dot(r4.xyz, r4.xyz);
        r3.w = sqrt(r3.w);
        r3.w = saturate(r3.w * cb0[166].w + cb0[169].y);
        r4.x = max(r3.z, r3.w);
        r3.z = min(r3.z, r3.w);
        r3.z = r2.z ? r4.x : r3.z;
        r4.xyz = cb0[167].xyz + -v6.xyz;
        r3.w = dot(r4.xyz, r4.xyz);
        r3.w = sqrt(r3.w);
        r3.w = saturate(r3.w * cb0[167].w + cb0[169].z);
        r4.x = max(r3.z, r3.w);
        r3.z = min(r3.z, r3.w);
        r3.z = r2.z ? r4.x : r3.z;
        r4.xyz = cb0[168].xyz + -v6.xyz;
        r3.w = dot(r4.xyz, r4.xyz);
        r3.w = sqrt(r3.w);
        r3.w = saturate(r3.w * cb0[168].w + cb0[169].w);
        r4.x = max(r3.z, r3.w);
        r3.z = min(r3.z, r3.w);
        r2.z = r2.z ? r4.x : r3.z;
        r2.z = r3.x * r2.z;
        r2.z = r2.z * r3.y;
      } else {
        r2.z = r0.w;
      }
    } else {
      r2.z = r0.w;
    }
    r3.xyz = r1.xyz * cb0[206].xyz + -r1.xyz;
    r1.xyz = r2.zzz * r3.xyz + r1.xyz;
    if (r1.w != 0) {
      r1.w = cmp(r0.w < 0.00196078443);
      if (r1.w != 0) {
        r1.w = cmp(0.5 < cb0[164].w);
        r3.xyz = cb0[181].xyz * v6.yyy;
        r3.xyz = cb0[180].xyz * v6.xxx + r3.xyz;
        r3.xyz = cb0[182].xyz * v6.zzz + r3.xyz;
        r3.xyz = cb0[183].xyz + r3.xyz;
        r4.xy = v6.xz * cb0[185].xy + cb0[185].zw;
        r2.z = t10.Sample(s7_s, r3.xyz).x;
        r3.x = t12.Sample(s8_s, r4.xy).x;
        r2.z = saturate(r2.z * cb0[164].y + cb0[164].z);
        r3.yzw = cb0[165].xyz + -v6.xyz;
        r3.y = dot(r3.yzw, r3.yzw);
        r3.y = sqrt(r3.y);
        r3.y = saturate(r3.y * cb0[165].w + cb0[169].x);
        r4.xyz = cb0[166].xyz + -v6.xyz;
        r3.z = dot(r4.xyz, r4.xyz);
        r3.z = sqrt(r3.z);
        r3.z = saturate(r3.z * cb0[166].w + cb0[169].y);
        r3.w = max(r3.y, r3.z);
        r3.y = min(r3.y, r3.z);
        r3.y = r1.w ? r3.w : r3.y;
        r4.xyz = cb0[167].xyz + -v6.xyz;
        r3.z = dot(r4.xyz, r4.xyz);
        r3.z = sqrt(r3.z);
        r3.z = saturate(r3.z * cb0[167].w + cb0[169].z);
        r3.w = max(r3.y, r3.z);
        r3.y = min(r3.y, r3.z);
        r3.y = r1.w ? r3.w : r3.y;
        r4.xyz = cb0[168].xyz + -v6.xyz;
        r3.z = dot(r4.xyz, r4.xyz);
        r3.z = sqrt(r3.z);
        r3.z = saturate(r3.z * cb0[168].w + cb0[169].w);
        r3.w = max(r3.y, r3.z);
        r3.y = min(r3.y, r3.z);
        r1.w = r1.w ? r3.w : r3.y;
        r1.w = r2.z * r1.w;
        r0.w = r1.w * r3.x;
      }
    }
    r1.w = r0.y * cb0[207].x + -r0.y;
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
      r2.z = cmp(r4.y < 0);
      r1.w = r1.w ? r2.z : 0;
      r0.w = r1.w ? 0 : r0.w;
    } else {
      r1.w = -cb0[51].y + v6.y;
      r2.z = 1 / cb0[51].w;
      r1.w = saturate(r2.z * r1.w);
      r2.z = r1.w * -2 + 3;
      r1.w = r1.w * r1.w;
      r0.w = r2.z * r1.w;
    }
    r0.w = saturate(cb0[56].z * r0.w);
    r1.w = cmp(cb0[56].x >= 0.0500000007);
    r1.w = r1.w ? 1.000000 : 0;
    r1.w = r1.w * r0.w;
    r2.z = cmp(0.949999988 >= cb0[56].x);
    r2.z = r2.z ? 1.000000 : 0;
    r0.w = r2.z * r0.w;
  } else {
    r1.w = 0;
    r0.w = 0;
  }
  r2.z = dot(r3.xyz, r3.xyz);
  r2.z = sqrt(r2.z);
  r3.w = saturate(r2.z * cb0[43].z + cb0[43].w);
  r4.x = saturate(r2.z * cb0[54].z + cb0[54].w);
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
    r5.xyz = t5.SampleLevel(s0_s, r4.zw, 0).xyz;
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
  r1.w = -cb0[40].w + r2.z;
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
  r1.w = r2.z * r1.w;
  r1.w = -r3.x * r1.w;
  r1.w = exp2(r1.w);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r3.x = saturate(r2.z * cb0[40].x + cb0[40].y);
  r3.z = saturate(r2.z * cb0[53].x + cb0[53].y);
  r3.z = r3.z + -r3.x;
  r3.x = r0.w * r3.z + r3.x;
  r3.z = 2 + -r3.x;
  r3.w = cb0[54].x + -cb0[40].z;
  r3.w = r0.w * r3.w + cb0[40].z;
  r3.x = r3.x * r3.z + -1;
  r3.x = r3.w * r3.x + 1;
  r1.w = r3.x * r1.w;
  r7.x = min(cb0[41].w, r1.w);
  r1.w = cb0[39].w * r2.z;
  r1.w = -r3.y * r1.w;
  r1.w = exp2(r1.w);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r3.x = saturate(r2.z * cb0[47].x + cb0[47].y);
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
  r0.y = cmp(r12.w == 0.000000);
  r0.x = r0.z + -r0.x;
  r0.x = r0.x / r12.w;
  r0.x = saturate(0.5 + r0.x);
  r0.x = r0.y ? 0 : r0.x;
  r0.y = cmp(0 < r0.x);
  r0.z = -1 + r11.w;
  r0.z = r0.x * r0.z + 1;
  r4.xyz = r0.xxx * r11.xyz;
  r4.xyz = r3.xyz * r0.zzz + r4.xyz;
  r4.w = r3.w * r0.z;
  r0.xyzw = r0.yyyy ? r4.xyzw : r3.xyzw;
  r0.xyzw = cb0[216].xxxx ? r0.xyzw : r3.xyzw;
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
  r2.w = r1.x ? r1.y : r0.w;
  r1.xyzw = t1.Sample(s10_s, r2.xyw).xyzw;
  r0.xyz = r1.www * r0.xyz + r1.xyz;
  r0.w = t16.SampleLevel(s11_s, r2.xy, 0).x;
  r0.xyz = r0.www * cb0[189].xyz + r0.xyz;
  r0.w = cmp(0.5 < cb0[186].y);
  if (r0.w != 0) {
    r1.xy = (int2)v0.xy;
    r3.xyzw = t15.Gather(s9_s, r2.xy).xyzw;
    r3.xyzw = r3.xyzw * cb1[6].zzzz + -v4.wwww;
    r4.xyzw = cmp(r3.xyzw < float4(0,0,0,0));
    r3.xyzw = r4.xyzw ? float4(65504,65504,65504,65504) : abs(r3.xyzw);
    r2.xyw = cmp(r3.xyy < r3.zww);
    r2.xyw = r2.xyw ? float3(0,1.40129846e-45,0) : float3(2,3,2);
    r0.w = dot(r3.xz, icb[r2.x+0].xz);
    r1.z = dot(r3.yw, icb[r2.w+0].xz);
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
    r1.zw = (int2)cb0[187].zw;
    r1.zw = (int2)r1.zw + int2(-1,-1);
    r1.xy = max(int2(0,0), (int2)r1.xy);
    r1.xy = min((int2)r1.xy, (int2)r1.zw);
    r1.zw = float2(0,0);
    r0.w = t14.Load(r1.xyw).x;
    r0.w = v4.w + -r0.w;
    r0.w = saturate(r0.w * 0.125 + 0.5);
    r2.x = cmp(0 < r0.w);
    if (r2.x != 0) {
      r1.xyzw = t13.Load(r1.xyz).xyzw;
      r1.xyz = r1.www * r0.xyz + r1.xyz;
      r1.xyz = r1.xyz + -r0.xyz;
      r0.xyz = r0.www * r1.xyz + r0.xyz;
    }
  }
  r0.w = cmp(0 != cb0[90].x);
  if (r0.w != 0) {
    r0.w = cmp(cb0[109].y >= r2.z);
    r1.x = dot(r0.xyz, float3(0.212500006,0.715399981,0.0720999986));
    r1.xyz = cb0[91].xyz * r1.xxx;
    r2.xy = cmp(cb0[115].xx == float2(1,4));
    r1.w = max(9.99999975e-05, cb0[109].y);
    r1.w = r2.z / r1.w;
    r1.w = max(0.0250000004, r1.w);
    r3.xyz = cb0[91].xyz * r1.www;
    r3.xyz = r2.yyy ? r3.xyz : r0.xyz;
    r1.xyz = r2.xxx ? r1.xyz : r3.xyz;
    r1.w = 1 + -cb0[109].z;
    r1.w = -cb0[109].y * r1.w + r2.z;
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


