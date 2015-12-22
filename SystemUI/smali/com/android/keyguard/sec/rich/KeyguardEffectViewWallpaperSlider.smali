.class public Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;
.super Landroid/widget/FrameLayout;
.source "KeyguardEffectViewWallpaperSlider.java"

# interfaces
.implements Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;
    }
.end annotation


# static fields
.field private static final ANIMATING_TIME:I = 0x320

.field private static final START_SLIDE:I = 0x2710

.field private static final STOP_SLIDE:I = 0x2711

.field private static final TAG:Ljava/lang/String; = "KeyguardEffectViewWallpaperSlider"


# instance fields
.field private mAnimationHandler:Landroid/os/Handler;

.field private mIsAnimating:Z

.field private mNewView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;

.field private mOldView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;

.field private mScreenState:Z

.field private mSlideAnim:Landroid/animation/AnimatorSet;

.field private mSlideAnimListener:Landroid/animation/AnimatorListenerAdapter;

.field private mWidgetController:Lcom/android/keyguard/sec/rich/WallpaperWidgetController;

.field private mWindowHeight:I

.field private mWindowWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v3, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mIsAnimating:Z

    iput-boolean v3, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mScreenState:Z

    new-instance v3, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$1;

    invoke-direct {v3, p0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$1;-><init>(Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;)V

    iput-object v3, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mAnimationHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$2;

    invoke-direct {v3, p0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$2;-><init>(Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;)V

    iput-object v3, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mSlideAnimListener:Landroid/animation/AnimatorListenerAdapter;

    iget-object v3, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mWindowWidth:I

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mWindowHeight:I

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mSlideAnim:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardProperties;->hasCocktailBar(Landroid/content/Context;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/high16 v0, 0x43200000    # 160.0f

    iget v3, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mWindowWidth:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    float-to-int v3, v3

    iput v3, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mWindowWidth:I

    const-string v3, "KeyguardEffectViewWallpaperSlider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cocktailBarSize = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v3, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;

    invoke-direct {v3, p0, p1}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;-><init>(Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mNewView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;

    new-instance v3, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;

    invoke-direct {v3, p0, p1}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;-><init>(Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mOldView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;

    iget-object v3, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mOldView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;

    invoke-direct {p0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->getCurrentWallpaperDrawable()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mWindowWidth:I

    iget v4, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mWindowHeight:I

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mNewView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;

    invoke-virtual {p0, v3, v2}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mOldView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;

    invoke-virtual {p0, v3, v2}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->setVisibility(I)V

    invoke-static {p1}, Lcom/android/keyguard/sec/rich/WallpaperWidgetController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/rich/WallpaperWidgetController;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mWidgetController:Lcom/android/keyguard/sec/rich/WallpaperWidgetController;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->startSlideShow()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mSlideAnim:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->handleStopSlideEffect()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->getCurrentWallpaperPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCounterEffectName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private getCurrentWallpaperDrawable()Landroid/graphics/drawable/BitmapDrawable;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->getCurrentWallpaperPath()Ljava/lang/String;

    move-result-object v4

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v7, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v4, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iput-boolean v6, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v5, 0x4

    iput v5, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-boolean v7, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    iput-boolean v6, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    invoke-static {v4, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    :goto_0
    return-object v3

    :cond_0
    const-string v5, "KeyguardEffectViewWallpaperSlider"

    const-string v6, "file is not exist."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getCurrentWallpaperPath()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_wallpaper_path"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleStopSlideEffect()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mIsAnimating:Z

    if-eqz v0, :cond_1

    const-string v0, "KeyguardEffectViewWallpaperSlider"

    const-string v1, "Sliding finished."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->setVisibility(I)V

    iput-boolean v2, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mIsAnimating:Z

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mOldView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;

    iget-object v1, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mNewView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;->copyView(Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mOldView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;->setPosition(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mNewView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;

    iget v1, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mWindowWidth:I

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;->setPosition(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mSlideAnim:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mSlideAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mSlideAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mWidgetController:Lcom/android/keyguard/sec/rich/WallpaperWidgetController;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetController;->handleUpdateEnd()V

    :cond_1
    return-void
.end method

.method public static isBackgroundEffect()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private isSameBitmap()Z
    .locals 3

    iget-object v1, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mOldView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;

    iget-object v1, v1, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;->path:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "KeyguardEffectViewWallpaperSlider"

    const-string v2, "mOldInfo.path is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->getCurrentWallpaperPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mOldView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;

    iget-object v1, v1, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;->path:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method private startSlideShow()V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mOldView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;

    const-string v3, "x"

    new-array v4, v9, [F

    aput v6, v4, v7

    iget v5, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mWindowWidth:I

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v4, v8

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mNewView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;

    const-string v3, "x"

    new-array v4, v9, [F

    iget v5, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mWindowWidth:I

    int-to-float v5, v5

    aput v5, v4, v7

    aput v6, v4, v8

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v2, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mSlideAnim:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mSlideAnimListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mSlideAnim:Landroid/animation/AnimatorSet;

    new-instance v3, Landroid/view/animation/interpolator/SineInOut80;

    invoke-direct {v3}, Landroid/view/animation/interpolator/SineInOut80;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mSlideAnim:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x320

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mSlideAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v2, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mSlideAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    const-string v0, "KeyguardEffectViewWallpaperSlider"

    const-string v1, "clearUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->handleStopSlideEffect()V

    return-void
.end method

.method public getUnlockDelay()J
    .locals 2

    const-string v0, "KeyguardEffectViewWallpaperSlider"

    const-string v1, "getUnlockDelay"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public handleHoverEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handleShowSlideEffect()V
    .locals 3

    const-string v1, "KeyguardEffectViewWallpaperSlider"

    const-string v2, "handleShowSlideEffect."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->isSameBitmap()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->handleStopSlideEffect()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->getCurrentWallpaperDrawable()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mNewView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v1, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mScreenState:Z

    if-eqz v1, :cond_0

    const-string v1, "KeyguardEffectViewWallpaperSlider"

    const-string v2, "Sliding started."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->setVisibility(I)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mIsAnimating:Z

    iget-object v1, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mAnimationHandler:Landroid/os/Handler;

    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v1, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mWidgetController:Lcom/android/keyguard/sec/rich/WallpaperWidgetController;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/rich/WallpaperWidgetController;->handleUpdateStart()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mOldView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;

    iget-object v2, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mNewView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;->copyView(Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;)V

    goto :goto_0

    :cond_1
    const-string v1, "KeyguardEffectViewWallpaperSlider"

    const-string v2, "startSlideShow not work. new Bitmap is null."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v1, "KeyguardEffectViewWallpaperSlider"

    const-string v2, "handleShowSlideEffect not work. same Image."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 2

    const-string v0, "KeyguardEffectViewWallpaperSlider"

    const-string v1, "handleUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public playLockSound()V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 2

    const-string v0, "KeyguardEffectViewWallpaperSlider"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->handleStopSlideEffect()V

    return-void
.end method

.method public screenTurnedOff()V
    .locals 2

    const-string v0, "KeyguardEffectViewWallpaperSlider"

    const-string v1, "screenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->handleStopSlideEffect()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mScreenState:Z

    return-void
.end method

.method public screenTurnedOn()V
    .locals 2

    const-string v0, "KeyguardEffectViewWallpaperSlider"

    const-string v1, "screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mScreenState:Z

    return-void
.end method

.method public setContextualWallpaper(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public setHidden(Z)V
    .locals 0

    return-void
.end method

.method public show()V
    .locals 2

    const-string v0, "KeyguardEffectViewWallpaperSlider"

    const-string v1, "show()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 2

    const-string v0, "KeyguardEffectViewWallpaperSlider"

    const-string v1, "showUnlockAffordance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public update()V
    .locals 2

    const-string v0, "KeyguardEffectViewWallpaperSlider"

    const-string v1, "update"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateAfterCreation()V
    .locals 0

    return-void
.end method
