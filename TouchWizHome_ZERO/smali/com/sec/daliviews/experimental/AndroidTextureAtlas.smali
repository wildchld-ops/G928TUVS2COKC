.class public Lcom/sec/daliviews/experimental/AndroidTextureAtlas;
.super Ljava/lang/Object;
.source "AndroidTextureAtlas.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/daliviews/experimental/AndroidTextureAtlas$ABitmapGeometryBufferFlag;
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field private mNativePtr:J

.field mStatus:[B

.field mStatusBuffer:Ljava/nio/ByteBuffer;

.field mStatusbufferlength:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->mNativePtr:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->mStatusbufferlength:I

    iget v0, p0, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->mStatusbufferlength:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->mStatus:[B

    iget v0, p0, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->mStatusbufferlength:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->mStatusBuffer:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->nAndroidTextureAtlas()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->mNativePtr:J

    iget-object v0, p0, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->mStatusBuffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->mStatus:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method private static native nAddBitmap(JLandroid/graphics/Bitmap;Z)Ljava/lang/Object;
.end method

.method private static native nAddSubBitmap(JLandroid/graphics/Bitmap;IIIIZ)Ljava/lang/Object;
.end method

.method private static native nAddSubBitmapNativePtr(JLandroid/graphics/Bitmap;IIIIZ)J
.end method

.method private static native nAndroidTextureAtlas()J
.end method

.method private static native nClearAtlas(J)V
.end method

.method private static native nCommitChanges(J)V
.end method

.method private static native nDestroyAndroidTextureAtlas(J)J
.end method

.method private static native nGC(JI)V
.end method

.method private static native nGetAddBitmapNativeHandle(JLandroid/graphics/Bitmap;Ljava/nio/ByteBuffer;IZLjava/nio/ByteBuffer;I)J
.end method

.method private static native nGetBitmapGeometryBuffer(JLandroid/graphics/Bitmap;[FI)I
.end method

.method private static native nGetBitmapNativeHandle(JLandroid/graphics/Bitmap;)J
.end method

.method private static native nHasBitmap(JLandroid/graphics/Bitmap;)Z
.end method

.method private static native nReleaseBitmap(JLandroid/graphics/Bitmap;)V
.end method

.method private static native nReleaseNativeBitmapHandle(JJ)V
.end method

.method private static native nSetMutable(JJZ)V
.end method

.method private static native nSetNinePatchChunk(JJLjava/nio/ByteBuffer;I)V
.end method

.method private static native nSetSkBitmapPointer(JJJ)V
.end method

.method private static native nUpdateBitmap(JJZ)Z
.end method

.method public static testAddBitmap(Landroid/content/Context;)V
    .locals 14

    const/16 v13, 0xf

    new-instance v2, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;

    invoke-direct {v2, p0}, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;-><init>(Landroid/content/Context;)V

    const/16 v10, 0x12

    new-array v9, v10, [I

    fill-array-data v9, :array_0

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const/4 v0, 0x0

    :try_start_0
    const-string v10, "test"

    invoke-virtual {v1, v10}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    array-length v10, v0

    if-eqz v10, :cond_0

    invoke-virtual {v2, v1, v0}, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->testRealBitmapAssets(Landroid/content/res/AssetManager;[Ljava/lang/String;)V

    :goto_1
    return-void

    :catch_0
    move-exception v5

    const-string v10, "DDD"

    const-string v11, "Exception!"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_2
    if-ge v7, v13, :cond_2

    const/4 v8, 0x0

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v13, :cond_1

    aget v10, v9, v8

    add-int/lit8 v11, v8, 0x1

    aget v11, v9, v11

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->addBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->releaseBitmap(Landroid/graphics/Bitmap;)V

    add-int/lit8 v8, v8, 0x2

    array-length v10, v9

    rem-int/2addr v8, v10

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->GC(I)V

    goto :goto_1

    :array_0
    .array-data 4
        0x140
        0xc8
        0x190
        0x122
        0xf
        0xf
        0x50
        0x5a
        0x20
        0x20
        0x4
        0x4
        0x52
        0x81
        0x780
        0x438
        0x64
        0x64
    .end array-data
.end method


# virtual methods
.method public GC(I)V
    .locals 4

    iget-wide v0, p0, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p0, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->mNativePtr:J

    invoke-static {v0, v1, p1}, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->nGC(JI)V

    goto :goto_0
.end method

.method public addBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->addBitmap(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public addBitmap(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 6

    iget-wide v2, p0, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->mNativePtr:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-wide v2, p0, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->mNativePtr:J

    invoke-static {v2, v3, p1, p2}, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->nAddBitmap(JLandroid/graphics/Bitmap;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public addSubBitmap(Landroid/graphics/Bitmap;IIIIZ)Landroid/graphics/Bitmap;
    .locals 9

    iget-wide v0, p0, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v8, 0x0

    :goto_0
    return-object v8

    :cond_1
    iget-wide v0, p0, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->mNativePtr:J

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->nAddSubBitmap(JLandroid/graphics/Bitmap;IIIIZ)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public addSubBitmapNativePtr(Landroid/graphics/Bitmap;IIIIZ)J
    .locals 8

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->mNativePtr:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    iget-wide v0, p0, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->mNativePtr:J

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->nAddSubBitmapNativePtr(JLandroid/graphics/Bitmap;IIIIZ)J

    move-result-wide v0

    goto :goto_0
.end method

.method public clearAtlas()V
    .locals 4

    iget-wide v0, p0, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p0, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->nClearAtlas(J)V

    goto :goto_0
.end method

.method public commitChanges()V
    .locals 4

    iget-wide v0, p0, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p0, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->nCommitChanges(J)V

    goto :goto_0
.end method

.method public debugSaveBufferToFile(Ljava/lang/String;[FI)V
    .locals 5

    :try_start_0
    array-length v3, p2

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v3, 0x0

    mul-int/lit8 v4, p3, 0x4

    invoke-virtual {v1, v0, v3, v4}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    iget-wide v0, p0, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->nDestroyAndroidTextureAtlas(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->mNativePtr:J

    return-void
.end method

.method public finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    invoke-virtual {p0}, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->destroy()V

    return-void
.end method

.method public getAddBitmapNativeHandle(Landroid/graphics/Bitmap;ZLjava/nio/ByteBuffer;I)[J
    .locals 11

    const-wide/16 v2, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v0, 0x2

    new-array v8, v0, [J

    iget-wide v0, p0, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->mNativePtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    aput-wide v2, v8, v9

    const-wide/16 v0, 0x8

    aput-wide v0, v8, v10

    :goto_0
    return-object v8

    :cond_1
    iget-wide v0, p0, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->mNativePtr:J

    iget-object v3, p0, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->mStatusBuffer:Ljava/nio/ByteBuffer;

    iget v4, p0, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->mStatusbufferlength:I

    move-object v2, p1

    move v5, p2

    move-object v6, p3

    move v7, p4

    invoke-static/range {v0 .. v7}, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->nGetAddBitmapNativeHandle(JLandroid/graphics/Bitmap;Ljava/nio/ByteBuffer;IZLjava/nio/ByteBuffer;I)J

    move-result-wide v0

    aput-wide v0, v8, v9

    iget-object v0, p0, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->mStatus:[B

    aget-byte v0, v0, v9

    int-to-long v0, v0

    aput-wide v0, v8, v10

    goto :goto_0
.end method

.method public getBitmapGeometryBuffer(Landroid/graphics/Bitmap;[FI)I
    .locals 4

    iget-wide v0, p0, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->mNativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->nGetBitmapGeometryBuffer(JLandroid/graphics/Bitmap;[FI)I

    move-result v0

    goto :goto_0
.end method

.method public getBitmapNativeHandle(Landroid/graphics/Bitmap;)J
    .locals 4

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->mNativePtr:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    iget-wide v0, p0, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->mNativePtr:J

    invoke-static {v0, v1, p1}, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->nGetBitmapNativeHandle(JLandroid/graphics/Bitmap;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getNativePtr()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->mNativePtr:J

    return-wide v0
.end method

.method public hasBitmap(Landroid/graphics/Bitmap;)Z
    .locals 4

    iget-wide v0, p0, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-wide v0, p0, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->mNativePtr:J

    invoke-static {v0, v1, p1}, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->nHasBitmap(JLandroid/graphics/Bitmap;)Z

    move-result v0

    goto :goto_0
.end method

.method public releaseBitmap(Landroid/graphics/Bitmap;)V
    .locals 4

    iget-wide v0, p0, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-wide v0, p0, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->mNativePtr:J

    invoke-static {v0, v1, p1}, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->nReleaseBitmap(JLandroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public releaseNativeBitmapHandle(J)V
    .locals 5

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->mNativePtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    cmp-long v0, p1, v2

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-wide v0, p0, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->nReleaseNativeBitmapHandle(JJ)V

    goto :goto_0
.end method

.method public setMutable(JZ)V
    .locals 5

    iget-wide v0, p0, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p0, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->mNativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->nSetMutable(JJZ)V

    goto :goto_0
.end method

.method public setMutable(Landroid/graphics/Bitmap;Z)V
    .locals 6

    const-wide/16 v4, 0x0

    iget-wide v2, p0, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->mNativePtr:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-wide v2, p0, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->mNativePtr:J

    invoke-static {v2, v3, p1}, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->nGetBitmapNativeHandle(JLandroid/graphics/Bitmap;)J

    move-result-wide v0

    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->mNativePtr:J

    invoke-static {v2, v3, v0, v1, p2}, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->nSetMutable(JJZ)V

    goto :goto_0
.end method

.method public setNinePatchData(JLjava/nio/ByteBuffer;I)V
    .locals 7

    iget-wide v0, p0, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p0, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->mNativePtr:J

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->nSetNinePatchChunk(JJLjava/nio/ByteBuffer;I)V

    goto :goto_0
.end method

.method public setNinePatchData(Landroid/graphics/Bitmap;Ljava/nio/ByteBuffer;I)V
    .locals 6

    iget-wide v0, p0, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->mNativePtr:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p0, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->mNativePtr:J

    invoke-static {v0, v1, p1}, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->nGetBitmapNativeHandle(JLandroid/graphics/Bitmap;)J

    move-result-wide v2

    iget-wide v0, p0, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->mNativePtr:J

    move-object v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->nSetNinePatchChunk(JJLjava/nio/ByteBuffer;I)V

    goto :goto_0
.end method

.method public setSkBitmapPointer(JJ)V
    .locals 7

    iget-wide v0, p0, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p0, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->mNativePtr:J

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->nSetSkBitmapPointer(JJJ)V

    goto :goto_0
.end method

.method public testRealBitmapAssets(Landroid/content/res/AssetManager;[Ljava/lang/String;)V
    .locals 8

    const v6, 0x19000

    :try_start_0
    new-array v1, v6, [F

    const/4 v5, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v6, p2

    if-ge v2, v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "test/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p2, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isPremultiplied()Z

    move-result v4

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    invoke-virtual {p0, v0}, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->addBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    const/16 v6, 0x9

    invoke-virtual {p0, v0, v1, v6}, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->getBitmapGeometryBuffer(Landroid/graphics/Bitmap;[FI)I

    move-result v5

    const-string v6, "DDD"

    const-string v7, "Buffer dammit"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-lez v5, :cond_1

    const-string v6, "/sdcard/vertexbuffer.dat"

    invoke-virtual {p0, v6, v1, v5}, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->debugSaveBufferToFile(Ljava/lang/String;[FI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->GC(I)V

    return-void

    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method public touchBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public updateBitmap(JZ)Z
    .locals 5

    iget-wide v0, p0, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->mNativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->nUpdateBitmap(JJZ)Z

    move-result v0

    goto :goto_0
.end method

.method public updateBitmap(Landroid/graphics/Bitmap;Z)Z
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->mNativePtr:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-wide v4, p0, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->mNativePtr:J

    invoke-static {v4, v5, p1}, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->nGetBitmapNativeHandle(JLandroid/graphics/Bitmap;)J

    move-result-wide v0

    cmp-long v3, v0, v6

    if-eqz v3, :cond_0

    iget-wide v2, p0, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->mNativePtr:J

    invoke-static {v2, v3, v0, v1, p2}, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->nUpdateBitmap(JJZ)Z

    move-result v2

    goto :goto_0
.end method
