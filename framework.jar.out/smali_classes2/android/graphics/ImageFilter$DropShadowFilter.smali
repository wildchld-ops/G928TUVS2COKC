.class public Landroid/graphics/ImageFilter$DropShadowFilter;
.super Landroid/graphics/ImageFilter;
.source "ImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ImageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DropShadowFilter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 3

    const/high16 v2, 0x3e800000    # 0.25f

    const/16 v0, 0x37

    invoke-direct {p0, v0}, Landroid/graphics/ImageFilter;-><init>(I)V

    const/4 v0, 0x0

    const v1, 0x3b449ba6    # 0.003f

    invoke-super {p0, v0, v1}, Landroid/graphics/ImageFilter;->setValue(IF)V

    const/4 v0, 0x1

    const/high16 v1, -0x3ee00000    # -10.0f

    invoke-super {p0, v0, v1}, Landroid/graphics/ImageFilter;->setValue(IF)V

    const/4 v0, 0x2

    invoke-super {p0, v0, v2}, Landroid/graphics/ImageFilter;->setValue(IF)V

    const/4 v0, 0x3

    invoke-super {p0, v0, v2}, Landroid/graphics/ImageFilter;->setValue(IF)V

    const/4 v0, 0x4

    invoke-super {p0, v0, v2}, Landroid/graphics/ImageFilter;->setValue(IF)V

    const/4 v0, 0x5

    const v1, 0x3ecccccd    # 0.4f

    invoke-super {p0, v0, v1}, Landroid/graphics/ImageFilter;->setValue(IF)V

    const/4 v0, 0x6

    const/high16 v1, 0x41100000    # 9.0f

    invoke-super {p0, v0, v1}, Landroid/graphics/ImageFilter;->setValue(IF)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/ImageFilter$1;)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/ImageFilter$DropShadowFilter;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/graphics/ImageFilter$DropShadowFilter;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/graphics/ImageFilter;-><init>(Landroid/graphics/ImageFilter;)V

    return-void
.end method


# virtual methods
.method public clone()Landroid/graphics/ImageFilter;
    .locals 1

    new-instance v0, Landroid/graphics/ImageFilter$DropShadowFilter;

    invoke-direct {v0, p0}, Landroid/graphics/ImageFilter$DropShadowFilter;-><init>(Landroid/graphics/ImageFilter$DropShadowFilter;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/graphics/ImageFilter$DropShadowFilter;->clone()Landroid/graphics/ImageFilter;

    move-result-object v0

    return-object v0
.end method

.method public setAngle(F)V
    .locals 1

    const/4 v0, 0x1

    invoke-super {p0, v0, p1}, Landroid/graphics/ImageFilter;->setValue(IF)V

    return-void
.end method

.method public setDistance(F)V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0, v0, p1}, Landroid/graphics/ImageFilter;->setValue(IF)V

    return-void
.end method

.method public setQuality(F)V
    .locals 5

    const/high16 v1, 0x40a00000    # 5.0f

    const v2, 0x3e4ccccd    # 0.2f

    const/4 v3, 0x0

    const/high16 v4, 0x42c80000    # 100.0f

    invoke-static {p1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    mul-float/2addr v2, v3

    add-float v0, v1, v2

    const/4 v1, 0x6

    invoke-super {p0, v1, v0}, Landroid/graphics/ImageFilter;->setValue(IF)V

    return-void
.end method

.method public setShadowColor(FFFF)V
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v0, 0x2

    invoke-static {p1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/graphics/ImageFilter;->setValue(IF)V

    const/4 v0, 0x3

    invoke-static {p2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/graphics/ImageFilter;->setValue(IF)V

    const/4 v0, 0x4

    invoke-static {p3, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/graphics/ImageFilter;->setValue(IF)V

    const/4 v0, 0x5

    invoke-static {p4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/graphics/ImageFilter;->setValue(IF)V

    return-void
.end method
