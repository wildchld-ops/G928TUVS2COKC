.class public Landroid/graphics/ImageFilter$BlendingFilter;
.super Landroid/graphics/ImageFilter;
.source "ImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ImageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlendingFilter"
.end annotation


# static fields
.field public static final BLENDING_MODE_MULTIPLY:I = 0x1

.field public static final BLENDING_MODE_NORMAL:I = 0x0

.field public static final BLENDING_MODE_SCREEN:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 1

    const/16 v0, 0x35

    invoke-direct {p0, v0}, Landroid/graphics/ImageFilter;-><init>(I)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/ImageFilter$1;)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/ImageFilter$BlendingFilter;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/graphics/ImageFilter$BlendingFilter;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/graphics/ImageFilter;-><init>(Landroid/graphics/ImageFilter;)V

    return-void
.end method


# virtual methods
.method public clone()Landroid/graphics/ImageFilter;
    .locals 1

    new-instance v0, Landroid/graphics/ImageFilter$BlendingFilter;

    invoke-direct {v0, p0}, Landroid/graphics/ImageFilter$BlendingFilter;-><init>(Landroid/graphics/ImageFilter$BlendingFilter;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/graphics/ImageFilter$BlendingFilter;->clone()Landroid/graphics/ImageFilter;

    move-result-object v0

    return-object v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/graphics/ImageFilter;->setBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setOperation(I)V
    .locals 2

    const/4 v0, 0x0

    int-to-float v1, p1

    invoke-super {p0, v0, v1}, Landroid/graphics/ImageFilter;->setValue(IF)V

    return-void
.end method
