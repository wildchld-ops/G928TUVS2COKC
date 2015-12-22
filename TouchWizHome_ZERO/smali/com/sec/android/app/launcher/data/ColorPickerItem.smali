.class public Lcom/sec/android/app/launcher/data/ColorPickerItem;
.super Lcom/sec/daliviews/views/Item;
.source "ColorPickerItem.java"


# instance fields
.field private contentDescription:Ljava/lang/String;

.field private mChecked:Z

.field private mColor:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/daliviews/views/Item;-><init>()V

    iput v0, p0, Lcom/sec/android/app/launcher/data/ColorPickerItem;->mColor:I

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/data/ColorPickerItem;->mChecked:Z

    iput v1, p0, Lcom/sec/android/app/launcher/data/ColorPickerItem;->mSpanX:I

    iput v1, p0, Lcom/sec/android/app/launcher/data/ColorPickerItem;->mSpanY:I

    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/data/ColorPickerItem;->mColor:I

    return v0
.end method

.method public isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/data/ColorPickerItem;->mChecked:Z

    return v0
.end method

.method public isCompatable(Lcom/sec/daliviews/views/NativeViewBase;)Z
    .locals 1

    instance-of v0, p1, Lcom/sec/android/app/launcher/views/ColorPickerItemView;

    return v0
.end method

.method public onCreateItemView()Lcom/sec/daliviews/views/NativeViewBase;
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getViewInflater()Lcom/sec/daliviews/views/ViewInflater;

    move-result-object v1

    const v2, 0x7f030018

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/ViewInflater;->inflate(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/data/ColorPickerItem;->populateView(Lcom/sec/daliviews/views/NativeViewBase;)V

    return-object v0
.end method

.method public populateView(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 13

    const v12, 0x7f0a0082

    instance-of v11, p1, Lcom/sec/android/app/launcher/views/ColorPickerItemView;

    if-eqz v11, :cond_2

    move-object v7, p1

    check-cast v7, Lcom/sec/android/app/launcher/views/ColorPickerItemView;

    const v11, 0x7f0b0067

    invoke-virtual {p1, v11}, Lcom/sec/daliviews/views/NativeViewBase;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v6

    check-cast v6, Lcom/sec/daliviews/views/ImageView;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a008a

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    sub-int v4, v5, v11

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0089

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    sub-int v3, v2, v11

    iget v11, p0, Lcom/sec/android/app/launcher/data/ColorPickerItem;->mColor:I

    invoke-static {v11, v4, v3}, Lcom/sec/android/app/launcher/theme/ThemeUtils;->roundBitmap(III)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v9, 0x0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f020027

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-static {v8, v5, v2}, Lcom/sec/android/app/launcher/utils/Utils;->getBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-static {v10, v0}, Lcom/sec/android/app/launcher/theme/ThemeUtils;->strokeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v9

    if-eqz v9, :cond_0

    move-object v0, v9

    :cond_0
    const/4 v11, 0x1

    invoke-virtual {v6, v11}, Lcom/sec/daliviews/views/ImageView;->setPremultiplied(Z)V

    invoke-virtual {v6, v0}, Lcom/sec/daliviews/views/ImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v11, p0, Lcom/sec/android/app/launcher/data/ColorPickerItem;->contentDescription:Ljava/lang/String;

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/sec/android/app/launcher/data/ColorPickerItem;->contentDescription:Ljava/lang/String;

    invoke-virtual {v7, v11}, Lcom/sec/android/app/launcher/views/ColorPickerItemView;->setContentDescription(Ljava/lang/String;)V

    :cond_1
    iget-boolean v11, p0, Lcom/sec/android/app/launcher/data/ColorPickerItem;->mChecked:Z

    invoke-virtual {v7, v11}, Lcom/sec/android/app/launcher/views/ColorPickerItemView;->setChecked(Z)V

    :cond_2
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/data/ColorPickerItem;->mChecked:Z

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/ColorPickerItem;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/views/ColorPickerItemView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/views/ColorPickerItemView;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/launcher/data/ColorPickerItem;->mColor:I

    return-void
.end method

.method public setContentDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/data/ColorPickerItem;->contentDescription:Ljava/lang/String;

    return-void
.end method
