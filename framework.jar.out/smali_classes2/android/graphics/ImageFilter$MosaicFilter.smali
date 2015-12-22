.class public Landroid/graphics/ImageFilter$MosaicFilter;
.super Landroid/graphics/ImageFilter;
.source "ImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ImageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MosaicFilter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/16 v0, 0x33

    invoke-direct {p0, v0}, Landroid/graphics/ImageFilter;-><init>(I)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/ImageFilter$1;)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/ImageFilter$MosaicFilter;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/graphics/ImageFilter$MosaicFilter;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/graphics/ImageFilter;-><init>(Landroid/graphics/ImageFilter;)V

    return-void
.end method


# virtual methods
.method public clone()Landroid/graphics/ImageFilter;
    .locals 1

    new-instance v0, Landroid/graphics/ImageFilter$MosaicFilter;

    invoke-direct {v0, p0}, Landroid/graphics/ImageFilter$MosaicFilter;-><init>(Landroid/graphics/ImageFilter$MosaicFilter;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/graphics/ImageFilter$MosaicFilter;->clone()Landroid/graphics/ImageFilter;

    move-result-object v0

    return-object v0
.end method

.method public setRadius(F)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/graphics/ImageFilter;->setValue(IF)V

    return-void
.end method
