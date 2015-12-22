.class public abstract Lcom/sec/android/app/launcher/data/IconItem;
.super Lcom/sec/android/app/launcher/data/LauncherItem;
.source "IconItem.java"


# instance fields
.field private volatile mIconImage:Landroid/graphics/Bitmap;

.field private mIconType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/launcher/data/LauncherItem;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/IconItem;->mIconImage:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public getIconImage()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/IconItem;->mIconImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIconType()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/data/IconItem;->mIconType:I

    return v0
.end method

.method public setIconImage(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/data/IconItem;->mIconImage:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setIconType(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/launcher/data/IconItem;->mIconType:I

    return-void
.end method

.method public update(Lcom/sec/daliviews/views/Item;)Z
    .locals 2

    instance-of v1, p1, Lcom/sec/android/app/launcher/data/IconItem;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/launcher/data/IconItem;

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/IconItem;->mIconImage:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/sec/android/app/launcher/data/IconItem;->mIconImage:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/sec/android/app/launcher/data/IconItem;->mIconImage:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/data/IconItem;->setIconImage(Landroid/graphics/Bitmap;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/app/launcher/data/LauncherItem;->update(Lcom/sec/daliviews/views/Item;)Z

    move-result v1

    return v1
.end method
