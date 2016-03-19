.class public final Lcom/myscript/atk/sltw/b/a;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field public static final a:[F

.field public static final b:[I

.field public static final c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x9

    const/4 v0, 0x5

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/myscript/atk/sltw/b/a;->a:[F

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/myscript/atk/sltw/b/a;->b:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/myscript/atk/sltw/b/a;->c:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x42200000    # 40.0f
        0x42700000    # 60.0f
        0x42a00000    # 80.0f
        0x42c80000    # 100.0f
        0x42f00000    # 120.0f
    .end array-data

    :array_1
    .array-data 4
        0xfa
        0xb5
        0x84
        0x62
        0x4c
        0x3f
        0x37
        0x34
        0x32
    .end array-data

    :array_2
    .array-data 4
        0x190
        0x129
        0xdf
        0xac
        0x8b
        0x77
        0x6c
        0x66
        0x64
    .end array-data
.end method

.method public static a(FLandroid/util/DisplayMetrics;)F
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method public static a(Landroid/util/DisplayMetrics;)[F
    .locals 4

    sget-object v0, Lcom/myscript/atk/sltw/b/a;->a:[F

    array-length v0, v0

    new-array v1, v0, [F

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    sget-object v2, Lcom/myscript/atk/sltw/b/a;->a:[F

    aget v2, v2, v0

    const/4 v3, 0x1

    invoke-static {v3, v2, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
