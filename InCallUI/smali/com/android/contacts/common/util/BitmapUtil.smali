.class public Lcom/android/contacts/common/util/BitmapUtil;
.super Ljava/lang/Object;
.source "BitmapUtil.java"


# direct methods
.method public static decodeBitmapFromBytes([BI)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v1, 0x1

    if-gt p1, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {p0, v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0
.end method

.method public static findOptimalSampleSize(II)I
    .locals 5

    const/4 v1, 0x1

    if-ge p1, v1, :cond_1

    :cond_0
    return v1

    :cond_1
    if-lt p0, v1, :cond_0

    move v0, p0

    const/4 v1, 0x1

    :goto_0
    shr-int/lit8 v2, v0, 0x1

    int-to-float v2, v2

    int-to-float v3, p1

    const v4, 0x3f4ccccd    # 0.8f

    mul-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    shl-int/lit8 v1, v1, 0x1

    shr-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getSmallerExtentFromBytes([B)I
    .locals 3

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {p0, v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method
