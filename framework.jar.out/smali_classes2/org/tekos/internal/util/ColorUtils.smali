.class public Lorg/tekos/internal/util/ColorUtils;
.super Ljava/lang/Object;
.source "ColorUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blendColors(IIF)I
    .locals 7
    .param p0, "color1"    # I
    .param p1, "color2"    # I
    .param p2, "ratio"    # F

    .prologue
    .line 65
    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v2, v4, p2

    .line 66
    .local v2, "inverseRatio":F
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    add-float v3, v4, v5

    .line 67
    .local v3, "r":F
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    add-float v1, v4, v5

    .line 68
    .local v1, "g":F
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    add-float v0, v4, v5

    .line 69
    .local v0, "b":F
    float-to-int v4, v3

    float-to-int v5, v1

    float-to-int v6, v0

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    return v4
.end method

.method public static blurBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "radius"    # I

    .prologue
    .line 387
    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 388
    .local v1, "out":Landroid/graphics/Bitmap;
    invoke-static {p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v3

    .line 391
    .local v3, "rs":Landroid/renderscript/RenderScript;
    sget-object v5, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v6, 0x1

    .line 390
    invoke-static {v3, p1, v5, v6}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 392
    .local v0, "input":Landroid/renderscript/Allocation;
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v2

    .line 394
    .local v2, "output":Landroid/renderscript/Allocation;
    invoke-static {v3}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v4

    .line 395
    .local v4, "script":Landroid/renderscript/ScriptIntrinsicBlur;
    invoke-virtual {v4, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 396
    int-to-float v5, p2

    invoke-virtual {v4, v5}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 397
    invoke-virtual {v4, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 399
    invoke-virtual {v2, v1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 401
    invoke-virtual {v3}, Landroid/renderscript/RenderScript;->destroy()V

    .line 402
    return-object v1
.end method

.method public static changeColorTransparency(II)I
    .locals 5
    .param p0, "colorToChange"    # I
    .param p1, "reduce"    # I

    .prologue
    .line 88
    const/4 v4, -0x3

    if-ne p0, v4, :cond_0

    .line 89
    return p0

    .line 92
    :cond_0
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    .line 93
    .local v3, "red":I
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .line 94
    .local v1, "blue":I
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 95
    .local v2, "green":I
    mul-int/lit8 v0, p1, 0x2

    .line 96
    .local v0, "alpha":I
    invoke-static {v0, v3, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    return v4
.end method

.method public static darken(IF)I
    .locals 1
    .param p0, "color"    # I
    .param p1, "fraction"    # F

    .prologue
    .line 57
    const/high16 v0, -0x1000000

    invoke-static {v0, p0, p1}, Lorg/tekos/internal/util/ColorUtils;->blendColors(IIF)I

    move-result v0

    return v0
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 366
    if-nez p0, :cond_0

    .line 367
    return-object v4

    .line 370
    :cond_0
    instance-of v4, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_1

    .line 371
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4

    .line 374
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v0, 0x0

    .line 375
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 376
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 377
    .local v2, "height":I
    if-lez v3, :cond_2

    if-lez v2, :cond_2

    .line 378
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 379
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 380
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    invoke-virtual {p0, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 381
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 383
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :cond_2
    return-object v0
.end method

.method public static getAverageColor(Landroid/graphics/drawable/Drawable;)I
    .locals 13
    .param p0, "image"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 175
    const/16 v7, 0x190

    .line 176
    .local v7, "sampleSize":I
    const/4 v10, 0x3

    new-array v8, v10, [F

    .local v8, "sampleTotals":[F
    fill-array-data v8, :array_0

    .line 179
    invoke-static {p0}, Lorg/tekos/internal/util/ColorUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 180
    .local v1, "b":Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    .line 181
    const/4 v10, -0x3

    return v10

    .line 183
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 184
    .local v9, "width":I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 185
    .local v2, "height":I
    const/4 v10, 0x3

    new-array v3, v10, [F

    .line 187
    .local v3, "hsv":[F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v9, :cond_3

    .line 188
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-ge v5, v2, :cond_2

    .line 189
    invoke-virtual {v1, v4, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    .line 190
    .local v6, "sample":I
    invoke-static {v6, v3}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 191
    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v10

    .line 178
    const/16 v11, 0xc8

    .line 191
    if-le v10, v11, :cond_1

    const/4 v10, 0x1

    aget v10, v3, v10

    .line 177
    const v11, 0x3dcccccd    # 0.1f

    .line 191
    cmpl-float v10, v10, v11

    if-ltz v10, :cond_1

    .line 192
    const/4 v10, 0x0

    aget v11, v8, v10

    const/4 v12, 0x0

    aget v12, v3, v12

    add-float/2addr v11, v12

    aput v11, v8, v10

    .line 193
    const/4 v10, 0x1

    aget v11, v8, v10

    const/4 v12, 0x1

    aget v12, v3, v12

    add-float/2addr v11, v12

    aput v11, v8, v10

    .line 194
    const/4 v10, 0x2

    aget v11, v8, v10

    const/4 v12, 0x2

    aget v12, v3, v12

    add-float/2addr v11, v12

    aput v11, v8, v10

    .line 188
    :cond_1
    div-int/lit8 v10, v2, 0x14

    add-int/2addr v5, v10

    goto :goto_1

    .line 187
    .end local v6    # "sample":I
    :cond_2
    div-int/lit8 v10, v9, 0x14

    add-int/2addr v4, v10

    goto :goto_0

    .line 199
    .end local v5    # "j":I
    :cond_3
    const/4 v10, 0x3

    new-array v0, v10, [F

    .line 200
    .local v0, "average":[F
    const/4 v10, 0x0

    aget v10, v8, v10

    int-to-float v11, v7

    div-float/2addr v10, v11

    const/4 v11, 0x0

    aput v10, v0, v11

    .line 201
    const/4 v10, 0x1

    aget v10, v8, v10

    int-to-float v11, v7

    div-float/2addr v10, v11

    const/4 v11, 0x1

    aput v10, v0, v11

    .line 202
    const v10, 0x3f4ccccd    # 0.8f

    const/4 v11, 0x2

    aput v10, v0, v11

    .line 204
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v10

    return v10

    .line 176
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static getDominantColor(Landroid/graphics/Bitmap;)I
    .locals 1
    .param p0, "source"    # Landroid/graphics/Bitmap;

    .prologue
    .line 286
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/tekos/internal/util/ColorUtils;->getDominantColor(Landroid/graphics/Bitmap;Z)I

    move-result v0

    return v0
.end method

.method public static getDominantColor(Landroid/graphics/Bitmap;Z)I
    .locals 20
    .param p0, "source"    # Landroid/graphics/Bitmap;
    .param p1, "applyThreshold"    # Z

    .prologue
    .line 290
    if-nez p0, :cond_0

    .line 291
    const/4 v2, -0x3

    return v2

    .line 293
    :cond_0
    const/16 v2, 0x24

    new-array v13, v2, [I

    .line 294
    .local v13, "colorBins":[I
    const/4 v15, -0x1

    .line 295
    .local v15, "maxBin":I
    const/16 v2, 0x24

    new-array v0, v2, [F

    move-object/from16 v17, v0

    .line 296
    .local v17, "sumHue":[F
    const/16 v2, 0x24

    new-array v0, v2, [F

    move-object/from16 v18, v0

    .line 297
    .local v18, "sumSat":[F
    const/16 v2, 0x24

    new-array v0, v2, [F

    move-object/from16 v19, v0

    .line 298
    .local v19, "sumVal":[F
    const/4 v2, 0x3

    new-array v14, v2, [F

    .line 300
    .local v14, "hsv":[F
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 301
    .local v9, "height":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 302
    .local v5, "width":I
    mul-int v2, v5, v9

    new-array v3, v2, [I

    .line 303
    .local v3, "pixels":[I
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 304
    const/16 v16, 0x0

    .local v16, "row":I
    :goto_0
    move/from16 v0, v16

    if-ge v0, v9, :cond_6

    .line 305
    const/4 v12, 0x0

    .local v12, "col":I
    :goto_1
    if-ge v12, v5, :cond_5

    .line 306
    mul-int v2, v16, v5

    add-int/2addr v2, v12

    aget v11, v3, v2

    .line 307
    .local v11, "c":I
    invoke-static {v11}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    const/16 v4, 0x80

    if-ge v2, v4, :cond_2

    .line 305
    :cond_1
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 310
    :cond_2
    invoke-static {v11, v14}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 312
    if-eqz p1, :cond_3

    const/4 v2, 0x1

    aget v2, v14, v2

    const v4, 0x3eb33333    # 0.35f

    cmpg-float v2, v2, v4

    if-lez v2, :cond_1

    const/4 v2, 0x2

    aget v2, v14, v2

    const v4, 0x3eb33333    # 0.35f

    cmpg-float v2, v2, v4

    if-lez v2, :cond_1

    .line 316
    :cond_3
    const/4 v2, 0x0

    aget v2, v14, v2

    const/high16 v4, 0x41200000    # 10.0f

    div-float/2addr v2, v4

    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v10, v6

    .line 317
    .local v10, "bin":I
    aget v2, v17, v10

    const/4 v4, 0x0

    aget v4, v14, v4

    add-float/2addr v2, v4

    aput v2, v17, v10

    .line 318
    aget v2, v18, v10

    const/4 v4, 0x1

    aget v4, v14, v4

    add-float/2addr v2, v4

    aput v2, v18, v10

    .line 319
    aget v2, v19, v10

    const/4 v4, 0x2

    aget v4, v14, v4

    add-float/2addr v2, v4

    aput v2, v19, v10

    .line 320
    aget v2, v13, v10

    add-int/lit8 v2, v2, 0x1

    aput v2, v13, v10

    .line 321
    if-ltz v15, :cond_4

    aget v2, v13, v10

    aget v4, v13, v15

    if-le v2, v4, :cond_1

    .line 322
    :cond_4
    move v15, v10

    goto :goto_2

    .line 304
    .end local v10    # "bin":I
    .end local v11    # "c":I
    :cond_5
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 327
    .end local v12    # "col":I
    :cond_6
    if-gez v15, :cond_7

    .line 328
    const/4 v2, -0x3

    return v2

    .line 330
    :cond_7
    aget v2, v17, v15

    aget v4, v13, v15

    int-to-float v4, v4

    div-float/2addr v2, v4

    const/4 v4, 0x0

    aput v2, v14, v4

    .line 331
    aget v2, v18, v15

    aget v4, v13, v15

    int-to-float v4, v4

    div-float/2addr v2, v4

    const/4 v4, 0x1

    aput v2, v14, v4

    .line 332
    aget v2, v19, v15

    aget v4, v13, v15

    int-to-float v4, v4

    div-float/2addr v2, v4

    const/4 v4, 0x2

    aput v2, v14, v4

    .line 333
    invoke-static {v14}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    return v2
.end method

.method public static getDominantColor(Landroid/graphics/drawable/Drawable;)I
    .locals 2
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, -0x3

    .line 275
    if-nez p0, :cond_0

    .line 276
    return v1

    .line 278
    :cond_0
    invoke-static {p0}, Lorg/tekos/internal/util/ColorUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 279
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 280
    return v1

    .line 282
    :cond_1
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/tekos/internal/util/ColorUtils;->getDominantColor(Landroid/graphics/Bitmap;Z)I

    move-result v1

    return v1
.end method

.method public static getDominantExampleColor(Landroid/graphics/Bitmap;)I
    .locals 25
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 208
    if-nez p0, :cond_0

    .line 209
    const/4 v3, -0x3

    return v3

    .line 212
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 213
    .local v4, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 214
    .local v8, "height":I
    mul-int v23, v4, v8

    .line 215
    .local v23, "size":I
    move/from16 v0, v23

    new-array v2, v0, [I

    .line 217
    .local v2, "pixels":[I
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 219
    .local v1, "bitmap2":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 221
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 222
    .local v12, "colorMap":Ljava/util/List;, "Ljava/util/List<Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    const/4 v11, 0x0

    .line 227
    .local v11, "color":I
    const/16 v20, 0x0

    .line 228
    .local v20, "r":I
    const/16 v16, 0x0

    .line 229
    .local v16, "g":I
    const/4 v9, 0x0

    .line 231
    .local v9, "b":I
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    array-length v3, v2

    move/from16 v0, v18

    if-ge v0, v3, :cond_4

    .line 232
    aget v11, v2, v18

    .line 234
    invoke-static {v11}, Landroid/graphics/Color;->red(I)I

    move-result v20

    .line 235
    invoke-static {v11}, Landroid/graphics/Color;->green(I)I

    move-result v16

    .line 236
    invoke-static {v11}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    .line 238
    const/4 v3, 0x0

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    .line 239
    .local v21, "rC":Ljava/lang/Integer;
    if-nez v21, :cond_1

    .line 240
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    .line 242
    :cond_1
    const/4 v3, 0x0

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v7, v6, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const/4 v3, 0x1

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    .line 245
    .local v17, "gC":Ljava/lang/Integer;
    if-nez v17, :cond_2

    .line 246
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .line 248
    :cond_2
    const/4 v3, 0x1

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v7, v6, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    const/4 v3, 0x2

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 251
    .local v10, "bC":Ljava/lang/Integer;
    if-nez v10, :cond_3

    .line 252
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 254
    :cond_3
    const/4 v3, 0x2

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v7, v6, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    .line 257
    .end local v10    # "bC":Ljava/lang/Integer;
    .end local v17    # "gC":Ljava/lang/Integer;
    .end local v21    # "rC":Ljava/lang/Integer;
    :cond_4
    const/4 v3, 0x3

    new-array v0, v3, [I

    move-object/from16 v22, v0

    .line 258
    .local v22, "rgb":[I
    const/16 v18, 0x0

    :goto_1
    const/4 v3, 0x3

    move/from16 v0, v18

    if-ge v0, v3, :cond_7

    .line 259
    const/16 v19, 0x0

    .line 260
    .local v19, "max":I
    const/16 v24, 0x0

    .line 261
    .local v24, "val":I
    move/from16 v0, v18

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "entry$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 262
    .local v14, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move/from16 v0, v19

    if-le v3, v0, :cond_5

    .line 263
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 264
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v24

    goto :goto_2

    .line 267
    .end local v14    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_6
    aput v24, v22, v18

    .line 258
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 270
    .end local v15    # "entry$iterator":Ljava/util/Iterator;
    .end local v19    # "max":I
    .end local v24    # "val":I
    :cond_7
    const/4 v3, 0x0

    aget v3, v22, v3

    const/4 v5, 0x1

    aget v5, v22, v5

    const/4 v6, 0x2

    aget v6, v22, v6

    invoke-static {v3, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v13

    .line 271
    .local v13, "dominantColor":I
    return v13
.end method

.method public static getGradientDrawable(ZI)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p0, "isNav"    # Z
    .param p1, "color"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 42
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v6, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 43
    .local v0, "color2":I
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    .line 44
    if-eqz p0, :cond_0

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 45
    :goto_0
    const/4 v3, 0x2

    new-array v3, v3, [I

    aput p1, v3, v6

    aput v0, v3, v5

    .line 43
    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 46
    .local v1, "drawable":Landroid/graphics/drawable/GradientDrawable;
    invoke-static {p1}, Lorg/tekos/internal/util/ColorUtils;->isBrightColor(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 47
    if-eqz p0, :cond_1

    const/high16 p1, -0x1000000

    .line 51
    :goto_1
    invoke-virtual {v1, v5}, Landroid/graphics/drawable/GradientDrawable;->setDither(Z)V

    .line 52
    invoke-virtual {v1, v5, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 53
    return-object v1

    .line 44
    .end local v1    # "drawable":Landroid/graphics/drawable/GradientDrawable;
    :cond_0
    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_0

    .line 47
    .restart local v1    # "drawable":Landroid/graphics/drawable/GradientDrawable;
    :cond_1
    const/4 p1, -0x1

    goto :goto_1

    .line 49
    :cond_2
    if-eqz p0, :cond_3

    const/4 p1, -0x1

    goto :goto_1

    :cond_3
    const/high16 p1, -0x1000000

    goto :goto_1
.end method

.method public static getIconColorFromDrawable(Landroid/graphics/drawable/Drawable;)I
    .locals 4
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, -0x3

    .line 152
    if-nez p0, :cond_0

    .line 153
    return v3

    .line 155
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    if-nez v2, :cond_1

    .line 156
    return v3

    .line 158
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 159
    .local v1, "copyDrawable":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_2

    .line 160
    return v3

    .line 162
    :cond_2
    instance-of v2, v1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v2, :cond_3

    .line 163
    check-cast p0, Landroid/graphics/drawable/ColorDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v2

    return v2

    .line 165
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-static {v1}, Lorg/tekos/internal/util/ColorUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 166
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_4

    .line 167
    return v3

    .line 169
    :cond_4
    invoke-static {v0}, Lorg/tekos/internal/util/ColorUtils;->getDominantColor(Landroid/graphics/Bitmap;)I

    move-result v2

    return v2
.end method

.method public static getIconWhiteBlackTransparent(Landroid/graphics/drawable/Drawable;)Z
    .locals 4
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 138
    invoke-static {p0}, Lorg/tekos/internal/util/ColorUtils;->getDominantColor(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    .line 139
    .local v0, "color":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 140
    return v2

    .line 141
    :cond_0
    const/high16 v1, -0x1000000

    if-ne v0, v1, :cond_1

    .line 142
    return v2

    .line 143
    :cond_1
    if-nez v0, :cond_2

    .line 144
    return v2

    .line 145
    :cond_2
    const/4 v1, -0x3

    if-ne v0, v1, :cond_3

    .line 146
    return v2

    .line 148
    :cond_3
    return v3
.end method

.method public static getMainColorFromBitmap(Landroid/graphics/Bitmap;II)I
    .locals 6
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 126
    if-nez p0, :cond_0

    .line 127
    const/4 v5, -0x3

    return v5

    .line 129
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v3

    .line 130
    .local v3, "pixel":I
    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .line 131
    .local v4, "red":I
    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .line 132
    .local v1, "blue":I
    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 133
    .local v2, "green":I
    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 134
    .local v0, "alpha":I
    invoke-static {v0, v4, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    return v5
.end method

.method public static getMainColorFromDrawable(Landroid/graphics/drawable/Drawable;)I
    .locals 10
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v9, 0x5

    const/4 v8, -0x3

    .line 337
    if-nez p0, :cond_0

    .line 338
    return v8

    .line 340
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v7

    if-nez v7, :cond_1

    .line 341
    return v8

    .line 343
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 344
    .local v3, "copyDrawable":Landroid/graphics/drawable/Drawable;
    if-nez v3, :cond_2

    .line 345
    return v8

    .line 347
    :cond_2
    instance-of v7, v3, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v7, :cond_3

    .line 348
    check-cast p0, Landroid/graphics/drawable/ColorDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v7

    return v7

    .line 350
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-static {v3}, Lorg/tekos/internal/util/ColorUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 351
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-nez v1, :cond_4

    .line 352
    return v8

    .line 354
    :cond_4
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-le v7, v9, :cond_5

    .line 355
    const/4 v7, 0x0

    invoke-virtual {v1, v7, v9}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v5

    .line 356
    .local v5, "pixel":I
    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v6

    .line 357
    .local v6, "red":I
    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .line 358
    .local v2, "blue":I
    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v4

    .line 359
    .local v4, "green":I
    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 360
    .local v0, "alpha":I
    invoke-static {v0, v6, v4, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    return v7

    .line 362
    .end local v0    # "alpha":I
    .end local v2    # "blue":I
    .end local v4    # "green":I
    .end local v5    # "pixel":I
    .end local v6    # "red":I
    :cond_5
    return v8
.end method

.method public static isBrightColor(I)Z
    .locals 11
    .param p0, "color"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 109
    const/4 v2, -0x3

    if-ne p0, v2, :cond_0

    .line 110
    return v8

    .line 111
    :cond_0
    if-nez p0, :cond_1

    .line 112
    return v8

    .line 113
    :cond_1
    const/4 v2, -0x1

    if-ne p0, v2, :cond_2

    .line 114
    return v9

    .line 116
    :cond_2
    const/4 v2, 0x3

    new-array v1, v2, [I

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    aput v2, v1, v8

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    aput v2, v1, v9

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    aput v2, v1, v10

    .line 117
    .local v1, "rgb":[I
    aget v2, v1, v8

    aget v3, v1, v8

    mul-int/2addr v2, v3

    int-to-double v2, v2

    const-wide v4, 0x3fced916872b020cL    # 0.241

    mul-double/2addr v2, v4

    aget v4, v1, v9

    .line 118
    aget v5, v1, v9

    .line 117
    mul-int/2addr v4, v5

    int-to-double v4, v4

    .line 118
    const-wide v6, 0x3fe61cac083126e9L    # 0.691

    .line 117
    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    .line 118
    aget v4, v1, v10

    aget v5, v1, v10

    mul-int/2addr v4, v5

    int-to-double v4, v4

    const-wide v6, 0x3fb16872b020c49cL    # 0.068

    mul-double/2addr v4, v6

    .line 117
    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 119
    .local v0, "brightness":I
    const/16 v2, 0xaa

    if-lt v0, v2, :cond_3

    .line 120
    return v9

    .line 122
    :cond_3
    return v8
.end method

.method public static isColorTransparency(I)Z
    .locals 3
    .param p0, "color"    # I

    .prologue
    const/4 v1, 0x0

    .line 100
    const/4 v2, -0x3

    if-ne p0, v2, :cond_0

    .line 101
    return v1

    .line 104
    :cond_0
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 105
    .local v0, "alpha":I
    const/16 v2, 0x64

    if-ge v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static lighten(IF)I
    .locals 1
    .param p0, "color"    # I
    .param p1, "fraction"    # F

    .prologue
    .line 61
    const/4 v0, -0x1

    invoke-static {v0, p0, p1}, Lorg/tekos/internal/util/ColorUtils;->blendColors(IIF)I

    move-result v0

    return v0
.end method

.method public static opposeColor(I)I
    .locals 7
    .param p0, "ColorToInvert"    # I

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 73
    const/4 v2, -0x3

    if-ne p0, v2, :cond_0

    .line 74
    return p0

    .line 77
    :cond_0
    const/4 v2, 0x3

    new-array v1, v2, [F

    .line 79
    .local v1, "hsv":[F
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    .line 80
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    rsub-int v3, v3, 0xff

    .line 81
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    .line 79
    invoke-static {v2, v3, v4, v1}, Landroid/graphics/Color;->RGBToHSV(III[F)V

    .line 82
    const/4 v2, 0x0

    aget v2, v1, v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-float v0, v2

    .line 83
    .local v0, "H":F
    cmpl-float v2, v0, v6

    if-lez v2, :cond_1

    sub-float/2addr v0, v6

    .line 84
    :cond_1
    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    return v2
.end method
