.class public final Lcom/myscript/atk/inw/config/Config;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field public static final INK_COLOR:I = -0x1000000

.field public static final INK_WIDTH:F = 5.0f


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDimension(FLandroid/util/DisplayMetrics;)F
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method
