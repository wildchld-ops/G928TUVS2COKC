.class public Lcom/sec/android/bsthw/calibeauty/BstHwCb;
.super Ljava/lang/Object;
.source "BstHwCb.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BstHwCb"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cbBeautifyStrokes([II[II)Lcom/sec/android/bsthw/calibeauty/BstHwCbReturnInfo;
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/bsthw/calibeauty/BstHwCb;->nativeCBBeautifyStrokes([II[II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/bsthw/calibeauty/BstHwCbReturnInfo;

    return-object v0
.end method

.method public static cbCloseEngine()V
    .locals 0

    invoke-static {}, Lcom/sec/android/bsthw/calibeauty/BstHwCb;->nativeCBCloseEngine()V

    return-void
.end method

.method public static cbGetSlantDirection()I
    .locals 1

    invoke-static {}, Lcom/sec/android/bsthw/calibeauty/BstHwCb;->nativeCBGetSlantDir()I

    move-result v0

    return v0
.end method

.method public static cbGetStyleParam(II)I
    .locals 1

    invoke-static {p0, p1}, Lcom/sec/android/bsthw/calibeauty/BstHwCb;->nativeCBGetStyleParam(II)I

    move-result v0

    return v0
.end method

.method public static cbGetStyleParams(I[I)I
    .locals 1

    invoke-static {p0, p1}, Lcom/sec/android/bsthw/calibeauty/BstHwCb;->nativeCBGetStyleParams(I[I)I

    move-result v0

    return v0
.end method

.method public static cbInitEngine()I
    .locals 1

    invoke-static {}, Lcom/sec/android/bsthw/calibeauty/BstHwCb;->nativeCBInitEngine()I

    move-result v0

    return v0
.end method

.method public static cbLoadPDB(I[B)I
    .locals 1

    invoke-static {p0, p1}, Lcom/sec/android/bsthw/calibeauty/BstHwCb;->nativeCBLoadPDB(I[B)I

    move-result v0

    return v0
.end method

.method public static cbLoadPDBEx(Landroid/content/res/AssetManager;)I
    .locals 1

    invoke-static {p0}, Lcom/sec/android/bsthw/calibeauty/BstHwCb;->nativeCBLoadPDBEx(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static cbSetLittleStorkeFlag(Z)I
    .locals 2

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/sec/android/bsthw/calibeauty/BstHwCb;->nativeCBSetLittleStorkeFlag(I)I

    move-result v1

    return v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static cbSetRect(III)I
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/sec/android/bsthw/calibeauty/BstHwCb;->nativeCBSetCbRect(III)I

    move-result v0

    return v0
.end method

.method public static cbSetSlantValue(I)I
    .locals 1

    invoke-static {p0}, Lcom/sec/android/bsthw/calibeauty/BstHwCb;->nativeCBSetSlantValue(I)I

    move-result v0

    return v0
.end method

.method public static cbSetStyle(I)I
    .locals 1

    invoke-static {p0}, Lcom/sec/android/bsthw/calibeauty/BstHwCb;->nativeCBSetStyle(I)I

    move-result v0

    return v0
.end method

.method public static cbSetStyleParam(II)I
    .locals 1

    invoke-static {p0, p1}, Lcom/sec/android/bsthw/calibeauty/BstHwCb;->nativeCBSetStyleParam(II)I

    move-result v0

    return v0
.end method

.method public static createHTHPathFromPointArray([I)Landroid/graphics/Path;
    .locals 7

    const/4 v3, 0x0

    const/4 v5, -0x1

    if-eqz p0, :cond_2

    array-length v6, p0

    div-int/lit8 v2, v6, 0x2

    const/high16 v6, 0x10000

    new-array v1, v6, [I

    const/high16 v0, 0x10000

    if-nez v2, :cond_0

    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    :goto_0
    return-object v6

    :cond_0
    const/4 v4, 0x0

    invoke-static {p0, v2, v1, v0}, Lcom/sec/android/bsthw/calibeauty/BstHwCb;->cbBeautifyStrokes([II[II)Lcom/sec/android/bsthw/calibeauty/BstHwCbReturnInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    iget v5, v4, Lcom/sec/android/bsthw/calibeauty/BstHwCbReturnInfo;->resultValue:I

    iget v0, v4, Lcom/sec/android/bsthw/calibeauty/BstHwCbReturnInfo;->contourNum:I

    :cond_1
    if-nez v5, :cond_2

    invoke-static {v1, v0}, Lcom/sec/android/bsthw/calibeauty/BstHwCb;->getPathFromContourData([II)Landroid/graphics/Path;

    move-result-object v3

    :cond_2
    move-object v6, v3

    goto :goto_0
.end method

.method private static getBezierContour([Landroid/graphics/Point;I)Landroid/graphics/Path;
    .locals 8

    const/4 v2, 0x0

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    const/4 v1, 0x4

    if-lt p1, v1, :cond_0

    array-length v1, p0

    if-le p1, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    aget-object v1, p0, v2

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    aget-object v2, p0, v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    rem-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_2

    const-string v1, "BstHwCb"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBezierContour nLength="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    div-int/lit8 v1, p1, 0x4

    mul-int/lit8 p1, v1, 0x4

    :cond_2
    const/4 v7, 0x1

    :goto_1
    if-ge v7, p1, :cond_3

    aget-object v1, p0, v7

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    aget-object v2, p0, v7

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    add-int/lit8 v3, v7, 0x1

    aget-object v3, p0, v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    add-int/lit8 v4, v7, 0x1

    aget-object v4, p0, v4

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    add-int/lit8 v5, v7, 0x2

    aget-object v5, p0, v5

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    add-int/lit8 v6, v7, 0x2

    aget-object v6, p0, v6

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-int/lit8 v7, v7, 0x4

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    goto :goto_0
.end method

.method private static getPathFromContourData([II)Landroid/graphics/Path;
    .locals 11

    const v10, 0xffff

    array-length v3, p0

    move v1, p1

    const/4 v6, 0x1

    new-array v0, v1, [Landroid/graphics/Point;

    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v4}, Landroid/graphics/Path;->rewind()V

    const/4 v2, 0x0

    :goto_0
    if-eqz v6, :cond_4

    const/4 v5, 0x0

    :goto_1
    add-int/lit8 v7, v2, 0x1

    if-lt v7, v3, :cond_0

    const/4 v6, 0x0

    goto :goto_0

    :cond_0
    aget v7, p0, v2

    if-ne v7, v10, :cond_1

    add-int/lit8 v7, v2, 0x1

    aget v7, p0, v7

    if-ne v7, v10, :cond_1

    const/4 v6, 0x0

    goto :goto_0

    :cond_1
    aget v7, p0, v2

    if-ne v7, v10, :cond_3

    add-int/lit8 v7, v2, 0x1

    aget v7, p0, v7

    if-nez v7, :cond_3

    invoke-static {v0, v5}, Lcom/sec/android/bsthw/calibeauty/BstHwCb;->getBezierContour([Landroid/graphics/Point;I)Landroid/graphics/Path;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-static {v0, v5}, Lcom/sec/android/bsthw/calibeauty/BstHwCb;->getBezierContour([Landroid/graphics/Point;I)Landroid/graphics/Path;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    :cond_2
    add-int/lit8 v2, v2, 0x2

    const/4 v5, 0x0

    goto :goto_0

    :cond_3
    new-instance v7, Landroid/graphics/Point;

    aget v8, p0, v2

    add-int/lit8 v9, v2, 0x1

    aget v9, p0, v9

    invoke-direct {v7, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    aput-object v7, v0, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_4
    return-object v4
.end method

.method static native nativeCBBeautifyStrokes([II[II)Ljava/lang/Object;
.end method

.method static native nativeCBCloseEngine()V
.end method

.method static native nativeCBGetSlantDir()I
.end method

.method static native nativeCBGetStyleParam(II)I
.end method

.method static native nativeCBGetStyleParams(I[I)I
.end method

.method static native nativeCBInitEngine()I
.end method

.method static native nativeCBLoadPDB(I[B)I
.end method

.method static native nativeCBLoadPDBEx(Ljava/lang/Object;)I
.end method

.method static native nativeCBSetCbRect(III)I
.end method

.method static native nativeCBSetLittleStorkeFlag(I)I
.end method

.method static native nativeCBSetSlantValue(I)I
.end method

.method static native nativeCBSetStyle(I)I
.end method

.method static native nativeCBSetStyleParam(II)I
.end method
