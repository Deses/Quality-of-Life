// a7866d7923cd75d5
Texture2D<float4> t17 : register(t17);

Texture2D<float4> t16 : register(t16);

Texture2D<float4> t15 : register(t15);

Texture2D<float4> t14 : register(t14);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t12 : register(t12);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t9 : register(t9);

Texture2D<float4> t8 : register(t8);

Texture3D<float4> t7 : register(t7);

Texture3D<float4> t6 : register(t6);

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
  float4 cb0[208];
}




// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  out float4 o0 : SV_Target0)
{
  const float4 icb[] = { { 1.000000, 0, 0, 0},
                              { 0, 1.000000, 0, 0},
                              { 0, 0, 1.000000, 0},
                              { 0, 0, 0, 1.000000} };
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cmp(cb2[0].w < 0.5);
  r0.yzw = -v5.xyz * cb2[0].www + cb2[0].xyz;
  r1.x = dot(r0.yzw, r0.yzw);
  r1.y = r1.x * cb0[80].x + 1;
  r1.y = rcp(r1.y);
  r1.y = saturate(r1.y * 1.03999996 + -0.0399999991);
  r1.yzw = cb0[2].xyz * r1.yyy;
  r1.x = rsqrt(r1.x);
  r0.yzw = r1.xxx * r0.yzw;
  r0.yzw = r0.xxx ? cb2[0].xyz : r0.yzw;
  r1.xyz = r0.xxx ? cb0[2].xyz : r1.yzw;
  r0.x = cmp(9.99999975e-06 < cb0[81].z);
  r1.w = cmp(cb0[81].z < -9.99999975e-06);
  r0.x = (int)r0.x | (int)r1.w;
  if (r0.x != 0) {
    r0.x = cb1[8].x * v0.z + cb1[8].y;
    r0.x = 1 / r0.x;
    r0.x = saturate(r0.x * cb0[81].x + -cb0[81].y);
    r1.w = r0.x * cb0[81].w + -cb0[81].w;
    r1.w = exp2(r1.w);
    r0.x = r1.w * r0.x;
    r2.xyz = cb0[81].zzz * r1.xyz;
    r1.xyz = r0.xxx * r2.xyz + r1.xyz;
  }
  r0.x = 1 / v3.w;
  r2.xy = v3.xy * r0.xx;
  r3.xy = cb1[10].xz + v5.xz;
  r3.xy = cb0[176].yy * r3.xy;
  r3.zw = cb1[0].yy * cb0[68].xy + r3.xy;
  r4.xyz = t4.SampleLevel(s2_s, r3.zw, 0).xyz;
  r4.xyz = r4.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r5.xy = cb0[70].zz * r4.xy;
  r3.xy = cb1[0].yy * cb0[70].xy + r3.xy;
  r3.xyz = t5.SampleLevel(s2_s, r3.xy, 0).xyz;
  r4.w = -1;
  r3.xyz = r3.xyz * float3(2,2,2) + r4.wwz;
  r3.xy = cb0[70].zz * r3.xy;
  r5.z = -1;
  r3.xyz = r5.xyz + r3.xyz;
  r0.x = dot(r3.xyz, r3.xyz);
  r0.x = rsqrt(r0.x);
  r3.xyz = r3.xyz * r0.xxx;
  r4.xy = v3.xy / v3.ww;
  r0.x = t0.Sample(s9_s, r4.xy).x;
  r0.x = cb1[8].z * r0.x + cb1[8].w;
  r0.x = 1 / r0.x;
  r4.xyzw = cb1[5].yxyz + -v5.yxyz;
  r1.w = dot(r4.yzw, r4.yzw);
  r2.w = rsqrt(r1.w);
  r5.xyzw = r4.xyzw * r2.wwww;
  r4.x = cb0[176].z + v3.w;
  r6.xy = cb0[166].yy * r3.xy;
  r6.z = saturate(-r4.x + r0.x);
  r6.xy = r6.xy * r6.zz;
  r6.z = 0;
  r7.xyz = v3.xyw + r6.xyz;
  r7.xy = r7.xy / r7.zz;
  r6.w = t0.Sample(s9_s, r7.xy).x;
  r6.w = cb1[8].z * r6.w + cb1[8].w;
  r6.w = 1 / r6.w;
  r4.x = saturate(r6.w + -r4.x);
  r6.xyz = r4.xxx * r6.xyz + v3.xyw;
  r4.x = rcp(r6.z);
  r7.xy = r6.xy * r4.xx;
  r7.xyz = t14.Sample(s1_s, r7.xy).xyz;
  if (cb0[197].x != 0) {
    r4.x = 1 / v4.w;
    r0.x = r4.x * -r0.x;
    r8.xyz = v4.xyz * r0.xxx + cb1[5].xyz;
    r8.xyz = cb1[5].xyz + -r8.xyz;
    r0.x = dot(r8.xyz, r8.xyz);
    r0.x = sqrt(r0.x);
    r8.xyz = r8.xyz / r0.xxx;
    t17.GetDimensions(0, fDest.x, fDest.y, fDest.z);
    r9.xy = fDest.xy;
    r9.zw = float2(0.5,0.5) / r9.xy;
    r0.x = 8 * cb0[207].x;
    r0.x = cmp(r0.x >= -r0.x);
    r10.xy = r0.xx ? float2(8,0.125) : float2(-8,-0.125);
    r0.x = cb0[207].x * r10.y;
    r0.x = frac(r0.x);
    r10.xyzw = r10.xxxx * r0.xxxx + float4(8,8,16,16);
    r10.xyzw = r10.xyzw * float4(32.6650009,11.8149996,32.6650009,11.8149996) + v0.xyxy;
    r0.x = dot(r10.xy, float2(0.0671105608,0.00583714992));
    r0.x = frac(r0.x);
    r0.x = 52.9829178 * r0.x;
    r11.z = frac(r0.x);
    r0.x = dot(r10.zw, float2(0.0671105608,0.00583714992));
    r0.x = frac(r0.x);
    r0.x = 52.9829178 * r0.x;
    r11.x = frac(r0.x);
    r10.xy = float2(-0.5,-0.5) + r11.xz;
    r10.xy = r10.xy * float2(4,4) + v0.yx;
    r9.xy = float2(4,4) * r9.xy;
    r9.xy = r10.yx / r9.xy;
    r0.x = t0.Sample(s9_s, r9.xy).x;
    r0.x = cb1[8].z * r0.x + cb1[8].w;
    r0.x = 1 / r0.x;
    r11.xyzw = t17.Gather(s3_s, r9.xy).xyzw;
    r0.x = r0.x / cb1[6].z;
    r12.x = cb3[9].z;
    r12.y = cb3[10].z;
    r12.z = cb3[11].z;
    r4.x = dot(r12.xyz, r8.xyz);
    r0.x = r0.x / r4.x;
    r8.xyzw = r11.xyzw + -r0.xxxx;
    r0.x = min(abs(r8.z), abs(r8.w));
    r0.x = min(abs(r8.y), r0.x);
    r0.x = min(abs(r8.x), r0.x);
    r10.zw = r9.xy + r9.zw;
    r4.x = t15.SampleLevel(s1_s, r10.zw, 0).w;
    r4.x = cmp(r4.x != 1.000000);
    if (r4.x != 0) {
      r9.xy = r9.xy + -r9.zw;
      r4.x = cmp(abs(r8.y) == r0.x);
      if (r4.x != 0) {
        r9.zw = t16.SampleLevel(s3_s, r9.xy, 0, int2(1, 1)).xy;
      } else {
        r4.x = cmp(abs(r8.z) == r0.x);
        if (r4.x != 0) {
          r9.zw = t16.SampleLevel(s3_s, r9.xy, 0, int2(1, 0)).xy;
        } else {
          r4.x = cmp(abs(r8.w) == r0.x);
          if (r4.x != 0) {
            r9.zw = t16.SampleLevel(s3_s, r9.xy, 0, int2(0, 0)).xy;
          } else {
            r9.zw = t16.SampleLevel(s3_s, r9.xy, 0, int2(0, 1)).xy;
          }
        }
      }
      r11.xyzw = t15.SampleLevel(s3_s, r9.xy, 0, int2(0, 1)).xyzw;
      r12.xyzw = t15.SampleLevel(s3_s, r9.xy, 0, int2(1, 1)).xyzw;
      r13.xyzw = t15.SampleLevel(s3_s, r9.xy, 0, int2(1, 0)).xyzw;
      r14.xyzw = t15.SampleLevel(s3_s, r9.xy, 0, int2(0, 0)).xyzw;
      r4.x = max(abs(r8.z), abs(r8.w));
      r4.x = max(abs(r8.y), r4.x);
      r4.x = max(abs(r8.x), r4.x);
      r8.xyzw = abs(r8.xyzw) + -r0.xxxx;
      r0.x = r4.x + -r0.x;
      r8.xyzw = saturate(r8.xyzw / r0.xxxx);
      r0.x = saturate(r0.x);
      r0.x = r0.x * -4.5999999 + 5;
      r8.xyzw = log2(r8.xyzw);
      r8.xyzw = r8.xyzw * r0.xxxx;
      r8.xyzw = exp2(r8.xyzw);
      r8.xyzw = float4(1,1,1,1) + -r8.xyzw;
      r9.xy = (uint2)r10.xy;
      r9.xy = (int2)r9.xy + int2(2,2);
      r9.xy = (int2)r9.xy & int2(3,3);
      r9.xy = (uint2)r9.xy;
      r9.xy = float2(0.5,0.5) + r9.xy;
      r10.xy = float2(0.25,0.25) * r9.xy;
      r9.xy = -r9.yx * float2(0.25,0.25) + float2(1,1);
      r10.zw = r9.xy * r10.xy;
      r0.x = r10.y * r10.x;
      r15.y = r8.y * r0.x;
      r15.xz = r10.zw * r8.xz;
      r0.x = r9.x * r9.y;
      r15.w = r8.w * r0.x;
      r8.xyzw = r15.yyyy * r12.xyzw;
      r8.xyzw = r11.xyzw * r15.xxxx + r8.xyzw;
      r8.xyzw = r13.xyzw * r15.zzzz + r8.xyzw;
      r8.xyzw = r14.xyzw * r15.wwww + r8.xyzw;
      r0.x = dot(r15.xyzw, float4(1,1,1,1));
      r8.xyzw = r8.xyzw / r0.xxxx;
    } else {
      r8.xyzw = float4(0,0,0,1);
      r9.zw = float2(0,0);
    }
    r0.x = 1000 * r9.z;
  } else {
    r8.xyzw = float4(0,0,0,1);
    r0.x = 0;
    r9.w = 0;
  }
  r6.xy = r6.xy / r6.zz;
  r4.x = t0.Sample(s9_s, r6.xy).x;
  r4.x = cb1[8].z * r4.x + cb1[8].w;
  r4.x = 1 / r4.x;
  r4.x = -v3.w + r4.x;
  r6.x = cmp(cb0[21].y < 0);
  r6.xyz = r6.xxx ? cb0[17].yzw : cb0[21].xyz;
  r6.w = cmp(cb0[80].x == 0.000000);
  r0.yzw = r6.www ? r6.xyz : r0.yzw;
  r3.w = 1;
  r6.x = dot(r3.xyw, r3.xyw);
  r6.x = rsqrt(r6.x);
  r6.xyz = r6.xxx * r3.xwy;
  r4.yzw = r4.yzw * r2.www + r0.yzw;
  r0.y = dot(r4.yzw, r4.yzw);
  r0.y = rsqrt(r0.y);
  r4.yzw = r4.yzw * r0.yyy;
  r0.y = saturate(dot(r6.xyz, r4.yzw));
  r0.w = cb0[167].x * 1.44270003 + 1.44270003;
  r0.y = r0.y * r0.w + -r0.w;
  r0.y = exp2(r0.y);
  r0.z = cb0[167].z * r0.z + -1;
  r0.z = max(0.0500000007, r0.z);
  r0.y = r0.y * r0.z;
  r0.z = cb0[167].z * -r5.x + 1;
  r0.z = max(0.0500000007, r0.z);
  r0.y = r0.y * r0.z;
  r0.z = r4.x * 0.100000001 + -0.100000001;
  r0.z = saturate(cb0[167].y * r0.z);
  r0.y = r0.y * r0.z;
  r1.xyz = cb0[166].www * r1.xyz;
  r0.zw = -cb0[170].xy * r4.xx;
  r0.zw = float2(1.44269502,1.44269502) * r0.zw;
  r0.zw = exp2(r0.zw);
  r0.zw = float2(1,1) + -r0.zw;
  r0.zw = max(float2(0,0), r0.zw);
  r4.yzw = cb0[174].xyz + -cb0[168].xyz;
  r4.yzw = cb0[174].www * r4.yzw + cb0[168].xyz;
  r4.yzw = float3(-1,-1,-1) + r4.yzw;
  r4.yzw = r0.zzz * r4.yzw + float3(1,1,1);
  r6.xyz = r4.yzw * r7.xyz;
  r9.xyz = cb0[175].xyz + -cb0[169].xyz;
  r9.xyz = cb0[175].www * r9.xyz + cb0[169].xyz;
  r4.yzw = -r4.yzw * r7.xyz + r9.xyz;
  r4.yzw = r0.www * r4.yzw + r6.xyz;
  r0.z = cmp(0 != cb0[162].x);
  r0.w = cmp(0 != cb0[117].x);
  r0.z = r0.w ? r0.z : 0;
  if (r0.z != 0) {
    r6.xyz = max(float3(9.99999975e-05,9.99999975e-05,9.99999975e-05), r4.yzw);
    r0.z = cmp(0.5 < cb0[134].w);
    r7.xyz = cb0[153].xyz * v5.yyy;
    r7.xyz = cb0[152].xyz * v5.xxx + r7.xyz;
    r7.xyz = cb0[154].xyz * v5.zzz + r7.xyz;
    r7.xyz = cb0[155].xyz + r7.xyz;
    r9.xy = v5.xz * cb0[160].xy + cb0[160].zw;
    r0.w = t6.Sample(s4_s, r7.xyz).x;
    r2.w = t8.Sample(s5_s, r9.xy).x;
    r0.w = saturate(r0.w * cb0[134].y + cb0[134].z);
    r7.xyz = cb0[135].xyz + -v5.xyz;
    r3.w = dot(r7.xyz, r7.xyz);
    r3.w = sqrt(r3.w);
    r3.w = saturate(r3.w * cb0[135].w + cb0[139].x);
    r7.xyz = cb0[136].xyz + -v5.xyz;
    r6.w = dot(r7.xyz, r7.xyz);
    r6.w = sqrt(r6.w);
    r6.w = saturate(r6.w * cb0[136].w + cb0[139].y);
    r7.x = max(r6.w, r3.w);
    r3.w = min(r6.w, r3.w);
    r3.w = r0.z ? r7.x : r3.w;
    r7.xyz = cb0[137].xyz + -v5.xyz;
    r6.w = dot(r7.xyz, r7.xyz);
    r6.w = sqrt(r6.w);
    r6.w = saturate(r6.w * cb0[137].w + cb0[139].z);
    r7.x = max(r6.w, r3.w);
    r3.w = min(r6.w, r3.w);
    r3.w = r0.z ? r7.x : r3.w;
    r7.xyz = cb0[138].xyz + -v5.xyz;
    r6.w = dot(r7.xyz, r7.xyz);
    r6.w = sqrt(r6.w);
    r6.w = saturate(r6.w * cb0[138].w + cb0[139].w);
    r7.x = max(r6.w, r3.w);
    r3.w = min(r6.w, r3.w);
    r0.z = r0.z ? r7.x : r3.w;
    r0.z = r0.w * r0.z;
    r0.z = r0.z * r2.w;
    r0.w = dot(r6.xyz, float3(0.212672904,0.715152204,0.0721750036));
    r7.xyz = r6.xyz + -r0.www;
    r9.xyz = cb0[146].xyz * r7.xyz + r0.www;
    r9.xyz = max(float3(0,0,0), r9.xyz);
    r9.xyz = log2(r9.xyz);
    r10.x = cb0[146].w * r9.x;
    r10.y = cb0[147].w * r9.y;
    r10.z = cb0[148].w * r9.z;
    r9.xyz = exp2(r10.xyz);
    r9.xyz = r9.xyz * cb0[147].xyz + cb0[148].xyz;
    r2.w = cmp(1 < asint(cb0[133].x));
    if (r2.w != 0) {
      r2.w = cmp(r0.z < 0.00196078443);
      if (r2.w != 0) {
        r2.w = cmp(0.5 < cb0[140].w);
        r10.xyz = cb0[157].xyz * v5.yyy;
        r10.xyz = cb0[156].xyz * v5.xxx + r10.xyz;
        r10.xyz = cb0[158].xyz * v5.zzz + r10.xyz;
        r10.xyz = cb0[159].xyz + r10.xyz;
        r11.xy = v5.xz * cb0[161].xy + cb0[161].zw;
        r3.w = t7.Sample(s4_s, r10.xyz).x;
        r6.w = t9.Sample(s5_s, r11.xy).x;
        r3.w = saturate(r3.w * cb0[140].y + cb0[140].z);
        r10.xyz = cb0[141].xyz + -v5.xyz;
        r7.w = dot(r10.xyz, r10.xyz);
        r7.w = sqrt(r7.w);
        r7.w = saturate(r7.w * cb0[141].w + cb0[145].x);
        r10.xyz = cb0[142].xyz + -v5.xyz;
        r10.x = dot(r10.xyz, r10.xyz);
        r10.x = sqrt(r10.x);
        r10.x = saturate(r10.x * cb0[142].w + cb0[145].y);
        r10.y = max(r10.x, r7.w);
        r7.w = min(r10.x, r7.w);
        r7.w = r2.w ? r10.y : r7.w;
        r10.xyz = cb0[143].xyz + -v5.xyz;
        r10.x = dot(r10.xyz, r10.xyz);
        r10.x = sqrt(r10.x);
        r10.x = saturate(r10.x * cb0[143].w + cb0[145].z);
        r10.y = max(r10.x, r7.w);
        r7.w = min(r10.x, r7.w);
        r7.w = r2.w ? r10.y : r7.w;
        r10.xyz = cb0[144].xyz + -v5.xyz;
        r10.x = dot(r10.xyz, r10.xyz);
        r10.x = sqrt(r10.x);
        r10.x = saturate(r10.x * cb0[144].w + cb0[145].w);
        r10.y = max(r10.x, r7.w);
        r7.w = min(r10.x, r7.w);
        r2.w = r2.w ? r10.y : r7.w;
        r2.w = r3.w * r2.w;
        r0.z = r2.w * r6.w;
        r7.xyz = cb0[149].xyz * r7.xyz + r0.www;
        r7.xyz = max(float3(0,0,0), r7.xyz);
        r7.xyz = log2(r7.xyz);
        r10.x = cb0[149].w * r7.x;
        r10.y = cb0[150].w * r7.y;
        r10.z = cb0[151].w * r7.z;
        r7.xyz = exp2(r10.xyz);
        r9.xyz = r7.xyz * cb0[150].xyz + cb0[151].xyz;
      }
    }
    r7.xyz = r9.xyz + -r6.xyz;
    r4.yzw = r0.zzz * r7.xyz + r6.xyz;
  }
  r3.xyz = cb0[172].xzy * r3.xzy;
  r0.z = dot(r3.xyz, r3.xyz);
  r0.z = rsqrt(r0.z);
  r3.xyz = r3.xyz * r0.zzz;
  r0.z = dot(-r5.yzw, r3.xyz);
  r0.z = r0.z + r0.z;
  r3.xyz = r3.xyz * -r0.zzz + -r5.yzw;
  r3.xyzw = t1.SampleLevel(s10_s, r3.xyz, 0).xyzw;
  r0.z = -1 + r3.w;
  r0.z = cb0[171].w * r0.z + 1;
  r0.z = log2(r0.z);
  r0.z = cb0[171].y * r0.z;
  r0.z = exp2(r0.z);
  r0.z = cb0[171].x * r0.z;
  r0.w = cb0[176].x * cb0[173].x;
  r2.w = cb0[173].y * -r5.x + 1;
  r2.w = max(0.0500000007, r2.w);
  r0.w = r2.w * r0.w;
  r2.w = saturate(cb0[173].z * r4.x);
  r0.w = saturate(r2.w * r0.w);
  r3.xyz = r0.zzz * r3.xyz + -r4.yzw;
  r3.xyz = r0.www * r3.xyz + r4.yzw;
  r0.yzw = r1.xyz * r0.yyy + r3.xyz;
  r1.x = saturate(cb0[166].z * r4.x);
  r1.x = v1.w * r1.x;
  r1.y = cmp(cb0[162].x == 1.000000);
  if (r1.y != 0) {
    r1.y = cmp(0.5 < cb0[134].w);
    r3.xyz = cb0[153].xyz * v5.yyy;
    r3.xyz = cb0[152].xyz * v5.xxx + r3.xyz;
    r3.xyz = cb0[154].xyz * v5.zzz + r3.xyz;
    r3.xyz = cb0[155].xyz + r3.xyz;
    r4.xy = v5.xz * cb0[160].xy + cb0[160].zw;
    r1.z = t6.Sample(s4_s, r3.xyz).x;
    r2.w = t8.Sample(s5_s, r4.xy).x;
    r1.z = saturate(r1.z * cb0[134].y + cb0[134].z);
    r3.xyz = cb0[135].xyz + -v5.xyz;
    r3.x = dot(r3.xyz, r3.xyz);
    r3.x = sqrt(r3.x);
    r3.x = saturate(r3.x * cb0[135].w + cb0[139].x);
    r3.yzw = cb0[136].xyz + -v5.xyz;
    r3.y = dot(r3.yzw, r3.yzw);
    r3.y = sqrt(r3.y);
    r3.y = saturate(r3.y * cb0[136].w + cb0[139].y);
    r3.z = max(r3.x, r3.y);
    r3.x = min(r3.x, r3.y);
    r3.x = r1.y ? r3.z : r3.x;
    r3.yzw = cb0[137].xyz + -v5.xyz;
    r3.y = dot(r3.yzw, r3.yzw);
    r3.y = sqrt(r3.y);
    r3.y = saturate(r3.y * cb0[137].w + cb0[139].z);
    r3.z = max(r3.x, r3.y);
    r3.x = min(r3.x, r3.y);
    r3.x = r1.y ? r3.z : r3.x;
    r3.yzw = cb0[138].xyz + -v5.xyz;
    r3.y = dot(r3.yzw, r3.yzw);
    r3.y = sqrt(r3.y);
    r3.y = saturate(r3.y * cb0[138].w + cb0[139].w);
    r3.z = max(r3.x, r3.y);
    r3.x = min(r3.x, r3.y);
    r1.y = r1.y ? r3.z : r3.x;
    r1.y = r1.z * r1.y;
    r1.y = r1.y * r2.w;
    r1.z = cmp(1 < asint(cb0[133].x));
    if (r1.z != 0) {
      r2.w = cmp(r1.y < 0.00196078443);
      if (r2.w != 0) {
        r2.w = cmp(0.5 < cb0[140].w);
        r3.xyz = cb0[157].xyz * v5.yyy;
        r3.xyz = cb0[156].xyz * v5.xxx + r3.xyz;
        r3.xyz = cb0[158].xyz * v5.zzz + r3.xyz;
        r3.xyz = cb0[159].xyz + r3.xyz;
        r4.xy = v5.xz * cb0[161].xy + cb0[161].zw;
        r3.x = t7.Sample(s4_s, r3.xyz).x;
        r3.y = t9.Sample(s5_s, r4.xy).x;
        r3.x = saturate(r3.x * cb0[140].y + cb0[140].z);
        r4.xyz = cb0[141].xyz + -v5.xyz;
        r3.z = dot(r4.xyz, r4.xyz);
        r3.z = sqrt(r3.z);
        r3.z = saturate(r3.z * cb0[141].w + cb0[145].x);
        r4.xyz = cb0[142].xyz + -v5.xyz;
        r3.w = dot(r4.xyz, r4.xyz);
        r3.w = sqrt(r3.w);
        r3.w = saturate(r3.w * cb0[142].w + cb0[145].y);
        r4.x = max(r3.z, r3.w);
        r3.z = min(r3.z, r3.w);
        r3.z = r2.w ? r4.x : r3.z;
        r4.xyz = cb0[143].xyz + -v5.xyz;
        r3.w = dot(r4.xyz, r4.xyz);
        r3.w = sqrt(r3.w);
        r3.w = saturate(r3.w * cb0[143].w + cb0[145].z);
        r4.x = max(r3.z, r3.w);
        r3.z = min(r3.z, r3.w);
        r3.z = r2.w ? r4.x : r3.z;
        r4.xyz = cb0[144].xyz + -v5.xyz;
        r3.w = dot(r4.xyz, r4.xyz);
        r3.w = sqrt(r3.w);
        r3.w = saturate(r3.w * cb0[144].w + cb0[145].w);
        r4.x = max(r3.z, r3.w);
        r3.z = min(r3.z, r3.w);
        r2.w = r2.w ? r4.x : r3.z;
        r2.w = r3.x * r2.w;
        r2.w = r2.w * r3.y;
      } else {
        r2.w = r1.y;
      }
    } else {
      r2.w = r1.y;
    }
    r3.xyz = r0.yzw * cb0[177].xyz + -r0.yzw;
    r0.yzw = r2.www * r3.xyz + r0.yzw;
    if (r1.z != 0) {
      r1.z = cmp(r1.y < 0.00196078443);
      if (r1.z != 0) {
        r1.z = cmp(0.5 < cb0[140].w);
        r3.xyz = cb0[157].xyz * v5.yyy;
        r3.xyz = cb0[156].xyz * v5.xxx + r3.xyz;
        r3.xyz = cb0[158].xyz * v5.zzz + r3.xyz;
        r3.xyz = cb0[159].xyz + r3.xyz;
        r4.xy = v5.xz * cb0[161].xy + cb0[161].zw;
        r2.w = t7.Sample(s4_s, r3.xyz).x;
        r3.x = t9.Sample(s5_s, r4.xy).x;
        r2.w = saturate(r2.w * cb0[140].y + cb0[140].z);
        r3.yzw = cb0[141].xyz + -v5.xyz;
        r3.y = dot(r3.yzw, r3.yzw);
        r3.y = sqrt(r3.y);
        r3.y = saturate(r3.y * cb0[141].w + cb0[145].x);
        r4.xyz = cb0[142].xyz + -v5.xyz;
        r3.z = dot(r4.xyz, r4.xyz);
        r3.z = sqrt(r3.z);
        r3.z = saturate(r3.z * cb0[142].w + cb0[145].y);
        r3.w = max(r3.y, r3.z);
        r3.y = min(r3.y, r3.z);
        r3.y = r1.z ? r3.w : r3.y;
        r4.xyz = cb0[143].xyz + -v5.xyz;
        r3.z = dot(r4.xyz, r4.xyz);
        r3.z = sqrt(r3.z);
        r3.z = saturate(r3.z * cb0[143].w + cb0[145].z);
        r3.w = max(r3.y, r3.z);
        r3.y = min(r3.y, r3.z);
        r3.y = r1.z ? r3.w : r3.y;
        r4.xyz = cb0[144].xyz + -v5.xyz;
        r3.z = dot(r4.xyz, r4.xyz);
        r3.z = sqrt(r3.z);
        r3.z = saturate(r3.z * cb0[144].w + cb0[145].w);
        r3.w = max(r3.y, r3.z);
        r3.y = min(r3.y, r3.z);
        r1.z = r1.z ? r3.w : r3.y;
        r1.z = r2.w * r1.z;
        r1.y = r1.z * r3.x;
      }
    }
    r1.z = r1.x * cb0[178].x + -r1.x;
    o0.w = r1.y * r1.z + r1.x;
  } else {
    o0.w = r1.x;
  }
  r1.xyz = -cb1[5].xyz + v5.xyz;
  r3.x = cb3[9].z;
  r3.y = cb3[10].z;
  r3.z = cb3[11].z;
  r2.w = dot(r1.xyz, r3.xyz);
  r3.x = cmp(0.00999999978 < cb0[51].w);
  if (r3.x != 0) {
    r3.x = cmp(cb0[56].y < 0.5);
    if (r3.x != 0) {
      r3.xyz = -cb0[51].xyz + v5.xyz;
      r3.x = dot(r3.xyz, r3.xyz);
      r3.x = sqrt(r3.x);
      r3.x = saturate(r3.x * cb0[53].z + cb0[53].w);
      r3.x = 1 + -r3.x;
      r3.x = r3.x * r3.x;
      r3.z = cmp(cb0[37].w == 1.000000);
      r3.y = cmp(r3.y < 0);
      r3.y = r3.y ? r3.z : 0;
      r3.x = r3.y ? 0 : r3.x;
    } else {
      r3.y = -cb0[51].y + v5.y;
      r3.z = 1 / cb0[51].w;
      r3.y = saturate(r3.y * r3.z);
      r3.z = r3.y * -2 + 3;
      r3.y = r3.y * r3.y;
      r3.x = r3.z * r3.y;
    }
    r3.x = saturate(cb0[56].z * r3.x);
    r3.y = cmp(cb0[56].x >= 0.0500000007);
    r3.y = r3.y ? 1.000000 : 0;
    r3.y = r3.x * r3.y;
    r3.z = cmp(0.949999988 >= cb0[56].x);
    r3.z = r3.z ? 1.000000 : 0;
    r3.x = r3.x * r3.z;
  } else {
    r3.xy = float2(0,0);
  }
  r3.z = dot(r1.xyz, r1.xyz);
  r3.z = sqrt(r3.z);
  r3.w = saturate(r3.z * cb0[43].z + cb0[43].w);
  r4.x = saturate(r3.z * cb0[54].z + cb0[54].w);
  r4.x = r4.x + -r3.w;
  r3.w = r3.y * r4.x + r3.w;
  r4.x = 2 + -r3.w;
  r4.x = r4.x * r3.w;
  r3.w = dot(cb0[50].xyzw, float4(1,1,1,1));
  r3.w = cmp(0.0500000007 < r3.w);
  if (r3.w != 0) {
    r5.xyz = -cb0[5].zxy + v5.zxy;
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
  r1.x = dot(r1.xz, r1.xz);
  r1.x = sqrt(r1.x);
  r4.y = saturate(r1.x * cb0[45].x + cb0[45].y);
  r6.y = saturate(cb1[5].y * cb0[45].z + cb0[45].w);
  r1.z = 0.999899983 * cb1[6].z;
  r1.z = cmp(-r2.w >= r1.z);
  r6.x = cb0[42].w * r4.x;
  r4.xy = r1.zz ? r6.xy : r4.xy;
  r1.z = -cb4[0].w + cb0[55].w;
  r1.z = r3.y * r1.z + cb4[0].w;
  r2.w = max(9.99999975e-05, r4.x);
  r2.w = log2(r2.w);
  r1.z = r2.w * r1.z;
  r1.z = exp2(r1.z);
  r2.w = cb0[49].x * cb0[41].w;
  r1.z = min(r2.w, r1.z);
  r1.z = min(1, r1.z);
  r2.w = saturate(v5.y * cb0[43].x + cb0[43].y);
  r3.w = 2 + -r2.w;
  r2.w = r3.w * r2.w;
  r6.xyz = r2.www * cb0[42].xyz + cb0[41].xyz;
  r7.xyz = cb0[55].xyz + -r6.xyz;
  r6.xyz = r3.yyy * r7.xyz + r6.xyz;
  r7.xyz = -r6.xyz + r5.xyz;
  r6.xyz = cb0[50].xxx * r7.xyz + r6.xyz;
  r2.w = -cb0[40].w + r3.z;
  r2.w = saturate(cb0[44].w * r2.w);
  r7.xyz = -cb0[44].xyz + r5.xyz;
  r7.xyz = cb0[50].yyy * r7.xyz + cb0[44].xyz;
  r7.xyz = r7.xyz + -r6.xyz;
  r6.xyz = r2.www * r7.xyz + r6.xyz;
  r4.z = saturate(r1.x * cb0[47].z + cb0[47].w);
  r1.x = cb0[52].w + -cb0[39].y;
  r1.x = r3.x * r1.x + cb0[39].y;
  r3.yw = cb0[39].xz * r1.yy;
  r4.xw = cmp(float2(0.00999999978,0.00999999978) < abs(r3.yw));
  r7.xy = -cb0[39].xz * r1.yy + cb0[48].yw;
  r7.xy = min(float2(80,80), r7.xy);
  r7.xy = float2(1.44269502,1.44269502) * r7.xy;
  r7.xy = exp2(r7.xy);
  r7.xy = cb0[48].xz + -r7.xy;
  r3.yw = r7.xy / r3.yw;
  r3.yw = r4.xw ? r3.yw : cb0[48].xz;
  r1.x = r3.z * r1.x;
  r1.x = -r3.y * r1.x;
  r1.x = exp2(r1.x);
  r1.x = 1 + -r1.x;
  r1.x = max(0, r1.x);
  r1.y = saturate(r3.z * cb0[40].x + cb0[40].y);
  r2.w = saturate(r3.z * cb0[53].x + cb0[53].y);
  r2.w = r2.w + -r1.y;
  r1.y = r3.x * r2.w + r1.y;
  r2.w = 2 + -r1.y;
  r3.y = cb0[54].x + -cb0[40].z;
  r3.y = r3.x * r3.y + cb0[40].z;
  r1.y = r1.y * r2.w + -1;
  r1.y = r3.y * r1.y + 1;
  r1.x = r1.x * r1.y;
  r1.x = min(cb0[41].w, r1.x);
  r2.w = cb0[39].w * r3.z;
  r2.w = -r3.w * r2.w;
  r2.w = exp2(r2.w);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r3.y = saturate(r3.z * cb0[47].x + cb0[47].y);
  r3.w = 2 + -r3.y;
  r3.y = r3.y * r3.w;
  r2.w = r3.y * r2.w;
  r1.y = min(cb0[49].y, r2.w);
  r3.yw = r1.xy * r4.yz;
  r7.xyz = -cb4[0].xyz + cb0[52].xyz;
  r7.xyz = r3.xxx * r7.xyz + cb4[0].xyz;
  r2.w = cb0[54].y + -cb0[50].z;
  r2.w = r3.x * r2.w + cb0[50].z;
  r9.xyz = -r7.xyz + r5.xyz;
  r7.xyz = r2.www * r9.xyz + r7.xyz;
  r9.xyz = r6.xyz * r1.zzz;
  r6.xyz = -r6.xyz * r1.zzz + r7.xyz;
  r6.xyz = r3.yyy * r6.xyz + r9.xyz;
  r1.z = 1 + -r1.z;
  r1.xy = -r1.xy * r4.yz + float2(1,1);
  r1.x = r1.z * r1.x;
  r4.xyz = -cb0[46].xyz + r5.xyz;
  r4.xyz = cb0[50].www * r4.xyz + cb0[46].xyz;
  r1.z = cb0[38].x * -r3.w + 1;
  r3.xyw = r4.xyz * r3.www;
  r4.xyz = r6.xyz * r1.zzz + r3.xyw;
  r4.w = r1.x * r1.y;
  r1.x = sqrt(r1.w);
  r1.y = cmp(r9.w == 0.000000);
  r0.x = r1.x + -r0.x;
  r0.x = r0.x / r9.w;
  r0.x = saturate(0.5 + r0.x);
  r0.x = r1.y ? 0 : r0.x;
  r1.x = cmp(0 < r0.x);
  r1.y = -1 + r8.w;
  r1.y = r0.x * r1.y + 1;
  r3.xyw = r0.xxx * r8.xyz;
  r5.xyz = r4.xyz * r1.yyy + r3.xyw;
  r5.w = r4.w * r1.y;
  r1.xyzw = r1.xxxx ? r5.xyzw : r4.xyzw;
  r1.xyzw = cb0[197].xxxx ? r1.xyzw : r4.xyzw;
  r0.xyz = r1.www * r0.yzw + r1.xyz;
  r0.w = cmp(cb0[37].z == 128.000000);
  r0.w = r0.w ? 16 : 8;
  r0.w = r0.w / cb0[37].z;
  r1.x = cmp(v3.w < 5);
  r1.y = v3.w * r0.w;
  r1.y = 0.200000003 * r1.y;
  r1.z = log2(v3.w);
  r1.z = r1.z * 0.150515005 + -0.34948501;
  r1.w = 1 + -r0.w;
  r0.w = r1.z * r1.w + r0.w;
  r2.z = r1.x ? r1.y : r0.w;
  r1.xyzw = t2.Sample(s7_s, r2.xyz).xyzw;
  r0.xyz = r1.www * r0.xyz + r1.xyz;
  r0.w = t13.SampleLevel(s8_s, r2.xy, 0).x;
  r0.xyz = r0.www * cb0[165].xyz + r0.xyz;
  r0.w = cmp(0.5 < cb0[162].y);
  if (r0.w != 0) {
    r1.xy = (int2)v0.xy;
    r2.xyzw = t12.Gather(s6_s, r2.xy).xyzw;
    r2.xyzw = r2.xyzw * cb1[6].zzzz + -v3.wwww;
    r4.xyzw = cmp(r2.xyzw < float4(0,0,0,0));
    r2.xyzw = r4.xyzw ? float4(65504,65504,65504,65504) : abs(r2.xyzw);
    r3.xyw = cmp(r2.xyy < r2.zww);
    r3.xyw = r3.xyw ? float3(0,1.40129846e-45,0) : float3(2,3,2);
    r0.w = dot(r2.xz, icb[r3.x+0].xz);
    r1.z = dot(r2.yw, icb[r3.w+0].xz);
    r0.w = cmp(r0.w < r1.z);
    r0.w = r0.w ? r3.x : r3.y;
    r1.zw = (uint2)r1.xy >> int2(1,1);
    r1.xy = (int2)r1.xy & int2(1,1);
    r1.xy = cmp((int2)r1.xy == int2(0,0));
    r1.xy = (int2)r1.xy + (int2)r1.zw;
    r1.z = (int)-r0.w + 3;
    r1.w = cmp((uint)r0.w < 2);
    r2.x = r1.w ? r0.w : r1.z;
    r2.y = r1.w ? 0.000000 : 0;
    r1.xy = (int2)r1.xy + (int2)r2.xy;
    r1.zw = (int2)cb0[163].zw;
    r1.zw = (int2)r1.zw + int2(-1,-1);
    r1.xy = max(int2(0,0), (int2)r1.xy);
    r1.xy = min((int2)r1.xy, (int2)r1.zw);
    r1.zw = float2(0,0);
    r0.w = t11.Load(r1.xyw).x;
    r0.w = v3.w + -r0.w;
    r0.w = saturate(r0.w * 0.125 + 0.5);
    r2.x = cmp(0 < r0.w);
    if (r2.x != 0) {
      r1.xyzw = t10.Load(r1.xyz).xyzw;
      r1.xyz = r1.www * r0.xyz + r1.xyz;
      r1.xyz = r1.xyz + -r0.xyz;
      r0.xyz = r0.www * r1.xyz + r0.xyz;
    }
  }
  r0.w = cmp(0 != cb0[82].x);
  if (r0.w != 0) {
    r0.w = cmp(cb0[101].y >= r3.z);
    r1.x = dot(r0.xyz, float3(0.212500006,0.715399981,0.0720999986));
    r1.xyz = cb0[83].xyz * r1.xxx;
    r2.xy = cmp(cb0[107].xx == float2(1,4));
    r1.w = max(9.99999975e-05, cb0[101].y);
    r1.w = r3.z / r1.w;
    r1.w = max(0.0250000004, r1.w);
    r3.xyw = cb0[83].xyz * r1.www;
    r2.yzw = r2.yyy ? r3.xyw : r0.xyz;
    r1.xyz = r2.xxx ? r1.xyz : r2.yzw;
    r1.w = 1 + -cb0[101].z;
    r1.w = -cb0[101].y * r1.w + r3.z;
    r2.x = cb0[101].y * cb0[101].z + 9.99999975e-05;
    r1.w = saturate(r1.w / r2.x);
    r1.w = saturate(r1.w * -cb0[106].x + cb0[106].x);
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
