.class public Lcom/android/internal/util/xos/Blur;
.super Ljava/lang/Object;
.source "Blur.java"


# static fields
.field private static final MAX_BLUR_HEIGHT:I = 0x640

.field private static final MAX_BLUR_WIDTH:I = 0x384

.field private static final stackblur_mul:[S

.field private static final stackblur_shr:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xff

    .line 44
    new-array v0, v1, [S

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/util/xos/Blur;->stackblur_mul:[S

    .line 63
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/util/xos/Blur;->stackblur_shr:[B

    .line 40
    return-void

    .line 44
    nop

    :array_0
    .array-data 2
        0x200s
        0x200s
        0x1c8s
        0x200s
        0x148s
        0x1c8s
        0x14fs
        0x200s
        0x195s
        0x148s
        0x10fs
        0x1c8s
        0x184s
        0x14fs
        0x124s
        0x200s
        0x1c6s
        0x195s
        0x16cs
        0x148s
        0x12as
        0x10fs
        0x1f0s
        0x1c8s
        0x1a4s
        0x184s
        0x168s
        0x14fs
        0x138s
        0x124s
        0x111s
        0x200s
        0x1e2s
        0x1c6s
        0x1acs
        0x195s
        0x17fs
        0x16cs
        0x159s
        0x148s
        0x138s
        0x12as
        0x11cs
        0x10fs
        0x103s
        0x1f0s
        0x1dbs
        0x1c8s
        0x1b5s
        0x1a4s
        0x194s
        0x184s
        0x176s
        0x168s
        0x15bs
        0x14fs
        0x143s
        0x138s
        0x12es
        0x124s
        0x11as
        0x111s
        0x109s
        0x200s
        0x1f1s
        0x1e2s
        0x1d4s
        0x1c6s
        0x1b9s
        0x1acs
        0x1a1s
        0x195s
        0x18as
        0x17fs
        0x175s
        0x16cs
        0x162s
        0x159s
        0x151s
        0x148s
        0x140s
        0x138s
        0x131s
        0x12as
        0x123s
        0x11cs
        0x116s
        0x10fs
        0x109s
        0x103s
        0x1fbs
        0x1f0s
        0x1e5s
        0x1dbs
        0x1d1s
        0x1c8s
        0x1bes
        0x1b5s
        0x1acs
        0x1a4s
        0x19cs
        0x194s
        0x18cs
        0x184s
        0x17ds
        0x176s
        0x16fs
        0x168s
        0x162s
        0x15bs
        0x155s
        0x14fs
        0x149s
        0x143s
        0x13es
        0x138s
        0x133s
        0x12es
        0x129s
        0x124s
        0x11fs
        0x11as
        0x116s
        0x111s
        0x10ds
        0x109s
        0x105s
        0x200s
        0x1f9s
        0x1f1s
        0x1e9s
        0x1e2s
        0x1dbs
        0x1d4s
        0x1cds
        0x1c6s
        0x1bfs
        0x1b9s
        0x1b3s
        0x1acs
        0x1a6s
        0x1a1s
        0x19bs
        0x195s
        0x18fs
        0x18as
        0x185s
        0x17fs
        0x17as
        0x175s
        0x170s
        0x16cs
        0x167s
        0x162s
        0x15es
        0x159s
        0x155s
        0x151s
        0x14cs
        0x148s
        0x144s
        0x140s
        0x13cs
        0x138s
        0x135s
        0x131s
        0x12ds
        0x12as
        0x126s
        0x123s
        0x11fs
        0x11cs
        0x119s
        0x116s
        0x112s
        0x10fs
        0x10cs
        0x109s
        0x106s
        0x103s
        0x101s
        0x1fbs
        0x1f5s
        0x1f0s
        0x1ebs
        0x1e5s
        0x1e0s
        0x1dbs
        0x1d6s
        0x1d1s
        0x1ccs
        0x1c8s
        0x1c3s
        0x1bes
        0x1bas
        0x1b5s
        0x1b1s
        0x1acs
        0x1a8s
        0x1a4s
        0x1a0s
        0x19cs
        0x198s
        0x194s
        0x190s
        0x18cs
        0x188s
        0x184s
        0x181s
        0x17ds
        0x179s
        0x176s
        0x172s
        0x16fs
        0x16bs
        0x168s
        0x165s
        0x162s
        0x15es
        0x15bs
        0x158s
        0x155s
        0x152s
        0x14fs
        0x14cs
        0x149s
        0x146s
        0x143s
        0x140s
        0x13es
        0x13bs
        0x138s
        0x136s
        0x133s
        0x130s
        0x12es
        0x12bs
        0x129s
        0x126s
        0x124s
        0x121s
        0x11fs
        0x11ds
        0x11as
        0x118s
        0x116s
        0x113s
        0x111s
        0x10fs
        0x10ds
        0x10bs
        0x109s
        0x107s
        0x105s
        0x103s
    .end array-data

    .line 63
    nop

    :array_1
    .array-data 1
        0x9t
        0xbt
        0xct
        0xdt
        0xdt
        0xet
        0xet
        0xft
        0xft
        0xft
        0xft
        0x10t
        0x10t
        0x10t
        0x10t
        0x11t
        0x11t
        0x11t
        0x11t
        0x11t
        0x11t
        0x11t
        0x12t
        0x12t
        0x12t
        0x12t
        0x12t
        0x12t
        0x12t
        0x12t
        0x12t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blur(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "radius"    # I

    .prologue
    const/16 v6, 0x384

    const/4 v5, 0x1

    .line 93
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-le v4, v6, :cond_1

    .line 94
    const/16 v4, 0x640

    invoke-static {p1, v6, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 99
    :cond_0
    :goto_0
    invoke-static {p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v2

    .line 102
    .local v2, "rs":Landroid/renderscript/RenderScript;
    sget-object v4, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    .line 101
    invoke-static {v2, p1, v4, v5}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 103
    .local v0, "input":Landroid/renderscript/Allocation;
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v1

    .line 105
    .local v1, "output":Landroid/renderscript/Allocation;
    invoke-static {v2}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v3

    .line 106
    .local v3, "script":Landroid/renderscript/ScriptIntrinsicBlur;
    invoke-virtual {v3, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 107
    int-to-float v4, p2

    invoke-virtual {v3, v4}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 108
    invoke-virtual {v3, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 110
    invoke-virtual {v1, p1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 112
    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->destroy()V

    .line 113
    return-object p1

    .line 95
    .end local v0    # "input":Landroid/renderscript/Allocation;
    .end local v1    # "output":Landroid/renderscript/Allocation;
    .end local v2    # "rs":Landroid/renderscript/RenderScript;
    .end local v3    # "script":Landroid/renderscript/ScriptIntrinsicBlur;
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v4

    if-nez v4, :cond_0

    .line 96
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0
.end method

.method public static blurBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "radius"    # I

    .prologue
    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11200c2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 84
    .local v0, "useStackBlur":Z
    if-eqz v0, :cond_0

    .line 85
    invoke-static {p1, p2}, Lcom/android/internal/util/xos/Blur;->stackBlur(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 87
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/android/internal/util/xos/Blur;->blur(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private static stackBlur(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 48
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "radius"    # I

    .prologue
    .line 117
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 118
    .local v5, "w":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 119
    .local v9, "h":I
    mul-int v2, v5, v9

    new-array v3, v2, [I

    .line 120
    .local v3, "src":[I
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 134
    add-int/lit8 v21, v5, -0x1

    .line 135
    .local v21, "wm":I
    add-int/lit8 v12, v9, -0x1

    .line 136
    .local v12, "hm":I
    mul-int/lit8 v2, p1, 0x2

    add-int/lit8 v10, v2, 0x1

    .line 137
    .local v10, "div":I
    sget-object v2, Lcom/android/internal/util/xos/Blur;->stackblur_mul:[S

    aget-short v14, v2, p1

    .line 138
    .local v14, "mul_sum":I
    sget-object v2, Lcom/android/internal/util/xos/Blur;->stackblur_shr:[B

    aget-byte v15, v2, p1

    .line 139
    .local v15, "shr_sum":B
    new-array v0, v10, [I

    move-object/from16 v18, v0

    .line 141
    .local v18, "stack":[I
    const/16 v42, 0x0

    .local v42, "y":I
    :goto_0
    move/from16 v0, v42

    if-ge v0, v9, :cond_8

    .line 144
    const-wide/16 v32, 0x0

    .local v32, "sum_out_b":J
    const-wide/16 v34, 0x0

    .local v34, "sum_out_g":J
    const-wide/16 v36, 0x0

    .line 143
    .local v36, "sum_out_r":J
    const-wide/16 v26, 0x0

    .local v26, "sum_in_b":J
    const-wide/16 v28, 0x0

    .local v28, "sum_in_g":J
    const-wide/16 v30, 0x0

    .line 142
    .local v30, "sum_in_r":J
    const-wide/16 v22, 0x0

    .local v22, "sum_b":J
    const-wide/16 v24, 0x0

    .local v24, "sum_g":J
    const-wide/16 v38, 0x0

    .line 146
    .local v38, "sum_r":J
    mul-int v17, v5, v42

    .line 148
    .local v17, "src_i":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    move/from16 v0, p1

    if-gt v13, v0, :cond_0

    .line 149
    move/from16 v19, v13

    .line 150
    .local v19, "stack_i":I
    aget v2, v3, v17

    aput v2, v18, v19

    .line 151
    aget v2, v3, v17

    ushr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v4, v13, 0x1

    mul-int/2addr v2, v4

    int-to-long v6, v2

    add-long v38, v38, v6

    .line 152
    aget v2, v3, v17

    ushr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v4, v13, 0x1

    mul-int/2addr v2, v4

    int-to-long v6, v2

    add-long v24, v24, v6

    .line 153
    aget v2, v3, v17

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v4, v13, 0x1

    mul-int/2addr v2, v4

    int-to-long v6, v2

    add-long v22, v22, v6

    .line 154
    aget v2, v3, v17

    ushr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-long v6, v2

    add-long v36, v36, v6

    .line 155
    aget v2, v3, v17

    ushr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-long v6, v2

    add-long v34, v34, v6

    .line 156
    aget v2, v3, v17

    and-int/lit16 v2, v2, 0xff

    int-to-long v6, v2

    add-long v32, v32, v6

    .line 148
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 160
    .end local v19    # "stack_i":I
    :cond_0
    const/4 v13, 0x1

    :goto_2
    move/from16 v0, p1

    if-gt v13, v0, :cond_2

    .line 161
    move/from16 v0, v21

    if-gt v13, v0, :cond_1

    add-int/lit8 v17, v17, 0x1

    .line 162
    :cond_1
    add-int v19, v13, p1

    .line 163
    .restart local v19    # "stack_i":I
    aget v2, v3, v17

    aput v2, v18, v19

    .line 164
    aget v2, v3, v17

    ushr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v4, v13

    mul-int/2addr v2, v4

    int-to-long v6, v2

    add-long v38, v38, v6

    .line 165
    aget v2, v3, v17

    ushr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v4, v13

    mul-int/2addr v2, v4

    int-to-long v6, v2

    add-long v24, v24, v6

    .line 166
    aget v2, v3, v17

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v4, v13

    mul-int/2addr v2, v4

    int-to-long v6, v2

    add-long v22, v22, v6

    .line 167
    aget v2, v3, v17

    ushr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-long v6, v2

    add-long v30, v30, v6

    .line 168
    aget v2, v3, v17

    ushr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-long v6, v2

    add-long v28, v28, v6

    .line 169
    aget v2, v3, v17

    and-int/lit16 v2, v2, 0xff

    int-to-long v6, v2

    add-long v26, v26, v6

    .line 160
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 173
    .end local v19    # "stack_i":I
    :cond_2
    move/from16 v16, p1

    .line 174
    .local v16, "sp":I
    move/from16 v41, p1

    .line 175
    .local v41, "xp":I
    move/from16 v0, v41

    move/from16 v1, v21

    if-le v0, v1, :cond_3

    move/from16 v41, v21

    .line 176
    :cond_3
    mul-int v2, v42, v5

    add-int v17, v41, v2

    .line 177
    mul-int v11, v42, v5

    .line 178
    .local v11, "dst_i":I
    const/16 v40, 0x0

    .local v40, "x":I
    :goto_3
    move/from16 v0, v40

    if-ge v0, v5, :cond_7

    .line 180
    aget v2, v3, v11

    const/high16 v4, -0x1000000

    and-int/2addr v2, v4

    int-to-long v6, v2

    .line 181
    int-to-long v0, v14

    move-wide/from16 v44, v0

    mul-long v44, v44, v38

    ushr-long v44, v44, v15

    const-wide/16 v46, 0xff

    and-long v44, v44, v46

    const/16 v2, 0x10

    shl-long v44, v44, v2

    .line 180
    or-long v6, v6, v44

    .line 182
    int-to-long v0, v14

    move-wide/from16 v44, v0

    mul-long v44, v44, v24

    ushr-long v44, v44, v15

    const-wide/16 v46, 0xff

    and-long v44, v44, v46

    const/16 v2, 0x8

    shl-long v44, v44, v2

    .line 180
    or-long v6, v6, v44

    .line 183
    int-to-long v0, v14

    move-wide/from16 v44, v0

    mul-long v44, v44, v22

    ushr-long v44, v44, v15

    const-wide/16 v46, 0xff

    and-long v44, v44, v46

    .line 180
    or-long v6, v6, v44

    .line 179
    long-to-int v2, v6

    aput v2, v3, v11

    .line 184
    add-int/lit8 v11, v11, 0x1

    .line 186
    sub-long v38, v38, v36

    .line 187
    sub-long v24, v24, v34

    .line 188
    sub-long v22, v22, v32

    .line 190
    add-int v2, v16, v10

    sub-int v20, v2, p1

    .line 191
    .local v20, "stack_start":I
    move/from16 v0, v20

    if-lt v0, v10, :cond_4

    sub-int v20, v20, v10

    .line 192
    :cond_4
    move/from16 v19, v20

    .line 194
    .restart local v19    # "stack_i":I
    aget v2, v18, v19

    ushr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-long v6, v2

    sub-long v36, v36, v6

    .line 195
    aget v2, v18, v19

    ushr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-long v6, v2

    sub-long v34, v34, v6

    .line 196
    aget v2, v18, v19

    and-int/lit16 v2, v2, 0xff

    int-to-long v6, v2

    sub-long v32, v32, v6

    .line 198
    move/from16 v0, v41

    move/from16 v1, v21

    if-ge v0, v1, :cond_5

    .line 199
    add-int/lit8 v17, v17, 0x1

    .line 200
    add-int/lit8 v41, v41, 0x1

    .line 203
    :cond_5
    aget v2, v3, v17

    aput v2, v18, v19

    .line 205
    aget v2, v3, v17

    ushr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-long v6, v2

    add-long v30, v30, v6

    .line 206
    aget v2, v3, v17

    ushr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-long v6, v2

    add-long v28, v28, v6

    .line 207
    aget v2, v3, v17

    and-int/lit16 v2, v2, 0xff

    int-to-long v6, v2

    add-long v26, v26, v6

    .line 208
    add-long v38, v38, v30

    .line 209
    add-long v24, v24, v28

    .line 210
    add-long v22, v22, v26

    .line 212
    add-int/lit8 v16, v16, 0x1

    .line 213
    move/from16 v0, v16

    if-lt v0, v10, :cond_6

    const/16 v16, 0x0

    .line 214
    :cond_6
    move/from16 v19, v16

    .line 216
    aget v2, v18, v19

    ushr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-long v6, v2

    add-long v36, v36, v6

    .line 217
    aget v2, v18, v19

    ushr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-long v6, v2

    add-long v34, v34, v6

    .line 218
    aget v2, v18, v19

    and-int/lit16 v2, v2, 0xff

    int-to-long v6, v2

    add-long v32, v32, v6

    .line 219
    aget v2, v18, v19

    ushr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-long v6, v2

    sub-long v30, v30, v6

    .line 220
    aget v2, v18, v19

    ushr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-long v6, v2

    sub-long v28, v28, v6

    .line 221
    aget v2, v18, v19

    and-int/lit16 v2, v2, 0xff

    int-to-long v6, v2

    sub-long v26, v26, v6

    .line 178
    add-int/lit8 v40, v40, 0x1

    goto/16 :goto_3

    .line 141
    .end local v19    # "stack_i":I
    .end local v20    # "stack_start":I
    :cond_7
    add-int/lit8 v42, v42, 0x1

    goto/16 :goto_0

    .line 226
    .end local v11    # "dst_i":I
    .end local v13    # "i":I
    .end local v16    # "sp":I
    .end local v17    # "src_i":I
    .end local v22    # "sum_b":J
    .end local v24    # "sum_g":J
    .end local v26    # "sum_in_b":J
    .end local v28    # "sum_in_g":J
    .end local v30    # "sum_in_r":J
    .end local v32    # "sum_out_b":J
    .end local v34    # "sum_out_g":J
    .end local v36    # "sum_out_r":J
    .end local v38    # "sum_r":J
    .end local v40    # "x":I
    .end local v41    # "xp":I
    :cond_8
    const/16 v40, 0x0

    .restart local v40    # "x":I
    :goto_4
    move/from16 v0, v40

    if-ge v0, v5, :cond_11

    .line 229
    const-wide/16 v32, 0x0

    .restart local v32    # "sum_out_b":J
    const-wide/16 v34, 0x0

    .restart local v34    # "sum_out_g":J
    const-wide/16 v36, 0x0

    .line 228
    .restart local v36    # "sum_out_r":J
    const-wide/16 v26, 0x0

    .restart local v26    # "sum_in_b":J
    const-wide/16 v28, 0x0

    .restart local v28    # "sum_in_g":J
    const-wide/16 v30, 0x0

    .line 227
    .restart local v30    # "sum_in_r":J
    const-wide/16 v22, 0x0

    .restart local v22    # "sum_b":J
    const-wide/16 v24, 0x0

    .restart local v24    # "sum_g":J
    const-wide/16 v38, 0x0

    .line 231
    .restart local v38    # "sum_r":J
    move/from16 v17, v40

    .line 232
    .restart local v17    # "src_i":I
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_5
    move/from16 v0, p1

    if-gt v13, v0, :cond_9

    .line 233
    move/from16 v19, v13

    .line 234
    .restart local v19    # "stack_i":I
    aget v2, v3, v17

    aput v2, v18, v19

    .line 235
    aget v2, v3, v17

    ushr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v4, v13, 0x1

    mul-int/2addr v2, v4

    int-to-long v6, v2

    add-long v38, v38, v6

    .line 236
    aget v2, v3, v17

    ushr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v4, v13, 0x1

    mul-int/2addr v2, v4

    int-to-long v6, v2

    add-long v24, v24, v6

    .line 237
    aget v2, v3, v17

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v4, v13, 0x1

    mul-int/2addr v2, v4

    int-to-long v6, v2

    add-long v22, v22, v6

    .line 238
    aget v2, v3, v17

    ushr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-long v6, v2

    add-long v36, v36, v6

    .line 239
    aget v2, v3, v17

    ushr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-long v6, v2

    add-long v34, v34, v6

    .line 240
    aget v2, v3, v17

    and-int/lit16 v2, v2, 0xff

    int-to-long v6, v2

    add-long v32, v32, v6

    .line 232
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 243
    .end local v19    # "stack_i":I
    :cond_9
    const/4 v13, 0x1

    :goto_6
    move/from16 v0, p1

    if-gt v13, v0, :cond_b

    .line 244
    if-gt v13, v12, :cond_a

    add-int v17, v17, v5

    .line 246
    :cond_a
    add-int v19, v13, p1

    .line 247
    .restart local v19    # "stack_i":I
    aget v2, v3, v17

    aput v2, v18, v19

    .line 248
    aget v2, v3, v17

    ushr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v4, v13

    mul-int/2addr v2, v4

    int-to-long v6, v2

    add-long v38, v38, v6

    .line 249
    aget v2, v3, v17

    ushr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v4, v13

    mul-int/2addr v2, v4

    int-to-long v6, v2

    add-long v24, v24, v6

    .line 250
    aget v2, v3, v17

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v4, v13

    mul-int/2addr v2, v4

    int-to-long v6, v2

    add-long v22, v22, v6

    .line 251
    aget v2, v3, v17

    ushr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-long v6, v2

    add-long v30, v30, v6

    .line 252
    aget v2, v3, v17

    ushr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-long v6, v2

    add-long v28, v28, v6

    .line 253
    aget v2, v3, v17

    and-int/lit16 v2, v2, 0xff

    int-to-long v6, v2

    add-long v26, v26, v6

    .line 243
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 256
    .end local v19    # "stack_i":I
    :cond_b
    move/from16 v16, p1

    .line 257
    .restart local v16    # "sp":I
    move/from16 v43, p1

    .line 258
    .local v43, "yp":I
    move/from16 v0, v43

    if-le v0, v12, :cond_c

    move/from16 v43, v12

    .line 259
    :cond_c
    mul-int v2, v43, v5

    add-int v17, v40, v2

    .line 260
    move/from16 v11, v40

    .line 261
    .restart local v11    # "dst_i":I
    const/16 v42, 0x0

    :goto_7
    move/from16 v0, v42

    if-ge v0, v9, :cond_10

    .line 263
    aget v2, v3, v11

    const/high16 v4, -0x1000000

    and-int/2addr v2, v4

    int-to-long v6, v2

    .line 264
    int-to-long v0, v14

    move-wide/from16 v44, v0

    mul-long v44, v44, v38

    ushr-long v44, v44, v15

    const-wide/16 v46, 0xff

    and-long v44, v44, v46

    const/16 v2, 0x10

    shl-long v44, v44, v2

    .line 263
    or-long v6, v6, v44

    .line 265
    int-to-long v0, v14

    move-wide/from16 v44, v0

    mul-long v44, v44, v24

    ushr-long v44, v44, v15

    const-wide/16 v46, 0xff

    and-long v44, v44, v46

    const/16 v2, 0x8

    shl-long v44, v44, v2

    .line 263
    or-long v6, v6, v44

    .line 266
    int-to-long v0, v14

    move-wide/from16 v44, v0

    mul-long v44, v44, v22

    ushr-long v44, v44, v15

    const-wide/16 v46, 0xff

    and-long v44, v44, v46

    .line 263
    or-long v6, v6, v44

    .line 262
    long-to-int v2, v6

    aput v2, v3, v11

    .line 267
    add-int/2addr v11, v5

    .line 269
    sub-long v38, v38, v36

    .line 270
    sub-long v24, v24, v34

    .line 271
    sub-long v22, v22, v32

    .line 273
    add-int v2, v16, v10

    sub-int v20, v2, p1

    .line 274
    .restart local v20    # "stack_start":I
    move/from16 v0, v20

    if-lt v0, v10, :cond_d

    sub-int v20, v20, v10

    .line 275
    :cond_d
    move/from16 v19, v20

    .line 277
    .restart local v19    # "stack_i":I
    aget v2, v18, v19

    ushr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-long v6, v2

    sub-long v36, v36, v6

    .line 278
    aget v2, v18, v19

    ushr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-long v6, v2

    sub-long v34, v34, v6

    .line 279
    aget v2, v18, v19

    and-int/lit16 v2, v2, 0xff

    int-to-long v6, v2

    sub-long v32, v32, v6

    .line 281
    move/from16 v0, v43

    if-ge v0, v12, :cond_e

    .line 282
    add-int v17, v17, v5

    .line 283
    add-int/lit8 v43, v43, 0x1

    .line 286
    :cond_e
    aget v2, v3, v17

    aput v2, v18, v19

    .line 288
    aget v2, v3, v17

    ushr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-long v6, v2

    add-long v30, v30, v6

    .line 289
    aget v2, v3, v17

    ushr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-long v6, v2

    add-long v28, v28, v6

    .line 290
    aget v2, v3, v17

    and-int/lit16 v2, v2, 0xff

    int-to-long v6, v2

    add-long v26, v26, v6

    .line 291
    add-long v38, v38, v30

    .line 292
    add-long v24, v24, v28

    .line 293
    add-long v22, v22, v26

    .line 295
    add-int/lit8 v16, v16, 0x1

    .line 296
    move/from16 v0, v16

    if-lt v0, v10, :cond_f

    const/16 v16, 0x0

    .line 297
    :cond_f
    move/from16 v19, v16

    .line 299
    aget v2, v18, v19

    ushr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-long v6, v2

    add-long v36, v36, v6

    .line 300
    aget v2, v18, v19

    ushr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-long v6, v2

    add-long v34, v34, v6

    .line 301
    aget v2, v18, v19

    and-int/lit16 v2, v2, 0xff

    int-to-long v6, v2

    add-long v32, v32, v6

    .line 302
    aget v2, v18, v19

    ushr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-long v6, v2

    sub-long v30, v30, v6

    .line 303
    aget v2, v18, v19

    ushr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-long v6, v2

    sub-long v28, v28, v6

    .line 304
    aget v2, v18, v19

    and-int/lit16 v2, v2, 0xff

    int-to-long v6, v2

    sub-long v26, v26, v6

    .line 261
    add-int/lit8 v42, v42, 0x1

    goto/16 :goto_7

    .line 226
    .end local v19    # "stack_i":I
    .end local v20    # "stack_start":I
    :cond_10
    add-int/lit8 v40, v40, 0x1

    goto/16 :goto_4

    .line 308
    .end local v11    # "dst_i":I
    .end local v13    # "i":I
    .end local v16    # "sp":I
    .end local v17    # "src_i":I
    .end local v22    # "sum_b":J
    .end local v24    # "sum_g":J
    .end local v26    # "sum_in_b":J
    .end local v28    # "sum_in_g":J
    .end local v30    # "sum_in_r":J
    .end local v32    # "sum_out_b":J
    .end local v34    # "sum_out_g":J
    .end local v36    # "sum_out_r":J
    .end local v38    # "sum_r":J
    .end local v43    # "yp":I
    :cond_11
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v5, v9, v2}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method
