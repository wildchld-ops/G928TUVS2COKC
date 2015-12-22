.class public Landroid/graphics/ImageFilter$BitmapMaskFilter;
.super Landroid/graphics/ImageFilter;
.source "ImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ImageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitmapMaskFilter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 3

    const/16 v1, 0x34

    invoke-direct {p0, v1}, Landroid/graphics/ImageFilter;-><init>(I)V

    :try_start_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "This method is deprecated!"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private constructor <init>(Landroid/graphics/ImageFilter$BitmapMaskFilter;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/graphics/ImageFilter;-><init>(Landroid/graphics/ImageFilter;)V

    return-void
.end method


# virtual methods
.method public clone()Landroid/graphics/ImageFilter;
    .locals 1

    new-instance v0, Landroid/graphics/ImageFilter$BitmapMaskFilter;

    invoke-direct {v0, p0}, Landroid/graphics/ImageFilter$BitmapMaskFilter;-><init>(Landroid/graphics/ImageFilter$BitmapMaskFilter;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/graphics/ImageFilter$BitmapMaskFilter;->clone()Landroid/graphics/ImageFilter;

    move-result-object v0

    return-object v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 3

    :try_start_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "This method is deprecated!"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public setColor(FFFF)V
    .locals 3

    :try_start_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "This method is deprecated!"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
