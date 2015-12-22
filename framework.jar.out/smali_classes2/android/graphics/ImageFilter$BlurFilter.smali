.class public Landroid/graphics/ImageFilter$BlurFilter;
.super Landroid/graphics/ImageFilter;
.source "ImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ImageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlurFilter"
.end annotation


# static fields
.field public static final TYPE_COSINE:I = 0x1

.field public static final TYPE_GAUSSIAN:I = 0x0

.field public static final TYPE_SGI:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 1

    const/16 v0, 0x36

    invoke-direct {p0, v0}, Landroid/graphics/ImageFilter;-><init>(I)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/ImageFilter$1;)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/ImageFilter$BlurFilter;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/graphics/ImageFilter$BlurFilter;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/graphics/ImageFilter;-><init>(Landroid/graphics/ImageFilter;)V

    return-void
.end method


# virtual methods
.method public clone()Landroid/graphics/ImageFilter;
    .locals 1

    new-instance v0, Landroid/graphics/ImageFilter$BlurFilter;

    invoke-direct {v0, p0}, Landroid/graphics/ImageFilter$BlurFilter;-><init>(Landroid/graphics/ImageFilter$BlurFilter;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/graphics/ImageFilter$BlurFilter;->clone()Landroid/graphics/ImageFilter;

    move-result-object v0

    return-object v0
.end method

.method public setOptimization(I)V
    .locals 2

    const/4 v0, 0x1

    int-to-float v1, p1

    invoke-super {p0, v0, v1}, Landroid/graphics/ImageFilter;->setValue(IF)V

    return-void
.end method

.method public setRadius(F)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/high16 v2, 0x437a0000    # 250.0f

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/graphics/ImageFilter;->setValue(IF)V

    return-void
.end method
