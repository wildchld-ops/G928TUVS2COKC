.class public Lcom/sec/android/app/launcher/views/ColorPickerItemView;
.super Lcom/sec/daliviews/views/IconView;
.source "ColorPickerItemView.java"


# instance fields
.field private mAppearAnim:Lcom/sec/daliviews/animation/NativeAnimation;

.field private mAppearCheckAnim:Lcom/sec/daliviews/animation/NativeAnimation;

.field private mDismissAnim:Lcom/sec/daliviews/animation/NativeAnimation;

.field private mTickedImage:Lcom/sec/daliviews/views/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/daliviews/views/IconView;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/ColorPickerItemView;->mTickedImage:Lcom/sec/daliviews/views/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/ColorPickerItemView;->mAppearCheckAnim:Lcom/sec/daliviews/animation/NativeAnimation;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/ColorPickerItemView;->mAppearAnim:Lcom/sec/daliviews/animation/NativeAnimation;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/ColorPickerItemView;->mDismissAnim:Lcom/sec/daliviews/animation/NativeAnimation;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/daliviews/views/IconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/ColorPickerItemView;->mTickedImage:Lcom/sec/daliviews/views/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/ColorPickerItemView;->mAppearCheckAnim:Lcom/sec/daliviews/animation/NativeAnimation;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/ColorPickerItemView;->mAppearAnim:Lcom/sec/daliviews/animation/NativeAnimation;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/ColorPickerItemView;->mDismissAnim:Lcom/sec/daliviews/animation/NativeAnimation;

    return-void
.end method

.method private cleanupJava()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/ColorPickerItemView;->mAppearCheckAnim:Lcom/sec/daliviews/animation/NativeAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/ColorPickerItemView;->mAppearCheckAnim:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-virtual {v0}, Lcom/sec/daliviews/animation/NativeAnimation;->destroy()V

    iput-object v1, p0, Lcom/sec/android/app/launcher/views/ColorPickerItemView;->mAppearCheckAnim:Lcom/sec/daliviews/animation/NativeAnimation;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/ColorPickerItemView;->mAppearAnim:Lcom/sec/daliviews/animation/NativeAnimation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/ColorPickerItemView;->mAppearAnim:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-virtual {v0}, Lcom/sec/daliviews/animation/NativeAnimation;->destroy()V

    iput-object v1, p0, Lcom/sec/android/app/launcher/views/ColorPickerItemView;->mAppearAnim:Lcom/sec/daliviews/animation/NativeAnimation;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/ColorPickerItemView;->mDismissAnim:Lcom/sec/daliviews/animation/NativeAnimation;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/ColorPickerItemView;->mDismissAnim:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-virtual {v0}, Lcom/sec/daliviews/animation/NativeAnimation;->destroy()V

    iput-object v1, p0, Lcom/sec/android/app/launcher/views/ColorPickerItemView;->mDismissAnim:Lcom/sec/daliviews/animation/NativeAnimation;

    :cond_2
    return-void
.end method


# virtual methods
.method public appear()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/ColorPickerItemView;->mTickedImage:Lcom/sec/daliviews/views/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/ColorPickerItemView;->mTickedImage:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/ColorPickerItemView;->mAppearCheckAnim:Lcom/sec/daliviews/animation/NativeAnimation;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;

    move-result-object v0

    const v1, 0x7f04000e

    invoke-static {v0, v1}, Lcom/sec/daliviews/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Lcom/sec/daliviews/animation/NativeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/ColorPickerItemView;->mAppearCheckAnim:Lcom/sec/daliviews/animation/NativeAnimation;

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/ColorPickerItemView;->mAppearCheckAnim:Lcom/sec/daliviews/animation/NativeAnimation;

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/ColorPickerItemView;->mTickedImage:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/animation/NativeAnimation;->start(Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/ColorPickerItemView;->mDismissAnim:Lcom/sec/daliviews/animation/NativeAnimation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/ColorPickerItemView;->mDismissAnim:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-virtual {v0}, Lcom/sec/daliviews/animation/NativeAnimation;->reset()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/ColorPickerItemView;->mAppearAnim:Lcom/sec/daliviews/animation/NativeAnimation;

    if-nez v0, :cond_3

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;

    move-result-object v0

    const v1, 0x7f04000d

    invoke-static {v0, v1}, Lcom/sec/daliviews/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Lcom/sec/daliviews/animation/NativeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/ColorPickerItemView;->mAppearAnim:Lcom/sec/daliviews/animation/NativeAnimation;

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/ColorPickerItemView;->mAppearAnim:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-virtual {v0, p0}, Lcom/sec/daliviews/animation/NativeAnimation;->start(Lcom/sec/daliviews/views/NativeViewBase;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/ColorPickerItemView;->mAppearCheckAnim:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-virtual {v0}, Lcom/sec/daliviews/animation/NativeAnimation;->reset()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/ColorPickerItemView;->mAppearAnim:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-virtual {v0}, Lcom/sec/daliviews/animation/NativeAnimation;->reset()V

    goto :goto_1
.end method

.method public destroy()V
    .locals 0

    invoke-super {p0}, Lcom/sec/daliviews/views/IconView;->destroy()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/ColorPickerItemView;->cleanupJava()V

    return-void
.end method

.method public dismiss()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/ColorPickerItemView;->mAppearCheckAnim:Lcom/sec/daliviews/animation/NativeAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/ColorPickerItemView;->mAppearCheckAnim:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-virtual {v0}, Lcom/sec/daliviews/animation/NativeAnimation;->reset()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/ColorPickerItemView;->mDismissAnim:Lcom/sec/daliviews/animation/NativeAnimation;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;

    move-result-object v0

    const v1, 0x7f04000f

    invoke-static {v0, v1}, Lcom/sec/daliviews/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Lcom/sec/daliviews/animation/NativeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/ColorPickerItemView;->mDismissAnim:Lcom/sec/daliviews/animation/NativeAnimation;

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/ColorPickerItemView;->mDismissAnim:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-virtual {v0, p0}, Lcom/sec/daliviews/animation/NativeAnimation;->start(Lcom/sec/daliviews/views/NativeViewBase;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/ColorPickerItemView;->mDismissAnim:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-virtual {v0}, Lcom/sec/daliviews/animation/NativeAnimation;->reset()V

    goto :goto_0
.end method

.method public getModedViewType()I
    .locals 1

    const v0, 0x7f0b0001

    return v0
.end method

.method public resetPeer()V
    .locals 0

    invoke-super {p0}, Lcom/sec/daliviews/views/IconView;->resetPeer()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/ColorPickerItemView;->cleanupJava()V

    return-void
.end method

.method public setChecked(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/ColorPickerItemView;->mTickedImage:Lcom/sec/daliviews/views/ImageView;

    if-nez v0, :cond_0

    const v0, 0x7f0b0069

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/views/ColorPickerItemView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/ColorPickerItemView;->mTickedImage:Lcom/sec/daliviews/views/ImageView;

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/ColorPickerItemView;->mTickedImage:Lcom/sec/daliviews/views/ImageView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/sec/daliviews/views/ImageView;->setVisibility(I)V

    return-void

    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method
