.class public Lcom/samsung/android/visualeffect/fingerscan/catmullrom/CatmullRomSplineUtils;
.super Ljava/lang/Object;
.source "CatmullRomSplineUtils.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/visualeffect/fingerscan/catmullrom/CatmullRomSplineUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/samsung/android/visualeffect/fingerscan/catmullrom/CatmullRomSplineUtils;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static subdividePoints([Lcom/samsung/android/visualeffect/fingerscan/catmullrom/Point2D;I)[Lcom/samsung/android/visualeffect/fingerscan/catmullrom/Point2D;
    .locals 11

    sget-boolean v9, Lcom/samsung/android/visualeffect/fingerscan/catmullrom/CatmullRomSplineUtils;->$assertionsDisabled:Z

    if-nez v9, :cond_0

    if-nez p0, :cond_0

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    :cond_0
    sget-boolean v9, Lcom/samsung/android/visualeffect/fingerscan/catmullrom/CatmullRomSplineUtils;->$assertionsDisabled:Z

    if-nez v9, :cond_1

    array-length v9, p0

    const/4 v10, 0x3

    if-ge v9, v10, :cond_1

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    :cond_1
    array-length v9, p0

    add-int/lit8 v9, v9, -0x1

    mul-int/2addr v9, p1

    add-int/lit8 v9, v9, 0x1

    new-array v8, v9, [Lcom/samsung/android/visualeffect/fingerscan/catmullrom/Point2D;

    const/high16 v9, 0x3f800000    # 1.0f

    int-to-float v10, p1

    div-float v2, v9, v10

    const/4 v1, 0x0

    :goto_0
    array-length v9, p0

    add-int/lit8 v9, v9, -0x1

    if-lt v1, v9, :cond_2

    return-object v8

    :cond_2
    if-nez v1, :cond_3

    aget-object v4, p0, v1

    :goto_1
    aget-object v5, p0, v1

    add-int/lit8 v9, v1, 0x1

    aget-object v6, p0, v9

    add-int/lit8 v9, v1, 0x2

    array-length v10, p0

    if-ne v9, v10, :cond_4

    add-int/lit8 v9, v1, 0x1

    aget-object v7, p0, v9

    :goto_2
    new-instance v0, Lcom/samsung/android/visualeffect/fingerscan/catmullrom/CatmullRomSpline2D;

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/samsung/android/visualeffect/fingerscan/catmullrom/CatmullRomSpline2D;-><init>(Lcom/samsung/android/visualeffect/fingerscan/catmullrom/Point2D;Lcom/samsung/android/visualeffect/fingerscan/catmullrom/Point2D;Lcom/samsung/android/visualeffect/fingerscan/catmullrom/Point2D;Lcom/samsung/android/visualeffect/fingerscan/catmullrom/Point2D;)V

    const/4 v3, 0x0

    :goto_3
    if-le v3, p1, :cond_5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v9, v1, -0x1

    aget-object v4, p0, v9

    goto :goto_1

    :cond_4
    add-int/lit8 v9, v1, 0x2

    aget-object v7, p0, v9

    goto :goto_2

    :cond_5
    mul-int v9, v1, p1

    add-int/2addr v9, v3

    int-to-float v10, v3

    mul-float/2addr v10, v2

    invoke-virtual {v0, v10}, Lcom/samsung/android/visualeffect/fingerscan/catmullrom/CatmullRomSpline2D;->q(F)Lcom/samsung/android/visualeffect/fingerscan/catmullrom/Point2D;

    move-result-object v10

    aput-object v10, v8, v9

    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method
