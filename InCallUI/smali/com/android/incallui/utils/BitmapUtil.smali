.class public Lcom/android/incallui/utils/BitmapUtil;
.super Ljava/lang/Object;
.source "BitmapUtil.java"


# direct methods
.method public static getRoundedBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 16

    if-nez p0, :cond_0

    const/4 v11, 0x0

    :goto_0
    return-object v11

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    const/4 v3, 0x1

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, p1

    int-to-float v5, v0

    move/from16 v0, p2

    int-to-float v6, v0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v3, v10

    move/from16 v0, p1

    int-to-float v4, v0

    div-float/2addr v3, v4

    int-to-float v4, v9

    move/from16 v0, p2

    int-to-float v5, v0

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v12

    move/from16 v0, p1

    int-to-float v3, v0

    mul-float/2addr v3, v12

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-int v14, v3

    move/from16 v0, p2

    int-to-float v3, v0

    mul-float/2addr v3, v12

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-int v15, v3

    new-instance v13, Landroid/graphics/Rect;

    div-int/lit8 v3, v10, 0x2

    sub-int/2addr v3, v14

    div-int/lit8 v4, v9, 0x2

    sub-int/2addr v4, v15

    div-int/lit8 v5, v10, 0x2

    add-int/2addr v5, v14

    div-int/lit8 v6, v9, 0x2

    add-int/2addr v6, v15

    invoke-direct {v13, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/RectF;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, p1

    int-to-float v5, v0

    move/from16 v0, p2

    int-to-float v6, v0

    invoke-direct {v8, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v13, v8, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0
.end method
