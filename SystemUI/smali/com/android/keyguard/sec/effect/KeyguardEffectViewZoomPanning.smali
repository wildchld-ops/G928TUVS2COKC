.class public Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;
.super Landroid/widget/FrameLayout;
.source "KeyguardEffectViewZoomPanning.java"

# interfaces
.implements Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$1;,
        Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;,
        Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;
    }
.end annotation


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private mBottomArea:Landroid/view/View;

.field private mIsDoubleTapPuase:Z

.field private mIsForceUpdateMusicBitmap:Z

.field private mIsRemoveMusicBitmapByScreenOff:Z

.field private mMovableImageView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

.field private mMusicWallpaper:Landroid/graphics/Bitmap;

.field private mNotificationPanel:Landroid/view/View;

.field private mStrMusicBitmapId:Ljava/lang/String;

.field private mTouchStartX:F

.field private mTouchStartY:F

.field private mUpdateDelayed:Z

.field private mWidgetReleaseInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;-><init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;-><init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;Z)V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "KeyguardEffectViewZoom"

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z

    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    new-instance v0, Landroid/view/animation/interpolator/SineEaseInOut;

    invoke-direct {v0}, Landroid/view/animation/interpolator/SineEaseInOut;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mWidgetReleaseInterpolator:Landroid/view/animation/Interpolator;

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "Constructor()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    invoke-direct {v0, p0, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mUpdateDelayed:Z

    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMusicWallpaper:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mStrMusicBitmapId:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mIsRemoveMusicBitmapByScreenOff:Z

    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mIsForceUpdateMusicBitmap:Z

    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mNotificationPanel:Landroid/view/View;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    invoke-virtual {p0, v0, v4, v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->addView(Landroid/view/View;II)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMusicWallpaper:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMusicWallpaper:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mStrMusicBitmapId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mIsDoubleTapPuase:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mIsDoubleTapPuase:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mUpdateDelayed:Z

    return v0
.end method

.method public static getCounterEffectName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static isBackgroundEffect()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private isSameBitmap()Z
    .locals 5

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->getCurrentBitmapPath()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMusicWallpaper:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMusicWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_wallpaper_path"

    const/4 v4, -0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private startAffordanceAnimation()V
    .locals 10

    const-wide/16 v8, 0xa6

    const v1, 0x3f99999a    # 1.2f

    const v5, 0x3f866666    # 1.05f

    const-wide/16 v6, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mNotificationPanel:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "startAffordanceAnimation() view is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mNotificationPanel:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mNotificationPanel:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mNotificationPanel:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mNotificationPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mNotificationPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    invoke-virtual {v0, v5}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    invoke-virtual {v0, v5}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->setScaleY(F)V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x342

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x29a

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mNotificationPanel:Landroid/view/View;

    sget v1, Lcom/android/keyguard/R$id;->sec_keyguard_bottom_area:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mBottomArea:Landroid/view/View;

    goto/16 :goto_0
.end method

.method private startResetTranlateAnimation()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mNotificationPanel:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "startResetTranlateAnimation() view is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mNotificationPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mWidgetReleaseInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method private startWidgetTranslateAnimation(FF)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mNotificationPanel:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "startWidgetTranslateAnimation() mNotificationStack is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mNotificationPanel:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setX(F)V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mNotificationPanel:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setY(F)V

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    if-nez v0, :cond_1

    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "mMovableImageView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->stopAnimation()Z

    goto :goto_0
.end method

.method public getUnlockDelay()J
    .locals 2

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "getUnlockDelay()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public handleHoverEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    const/high16 v6, 0x3e800000    # 0.25f

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v0, v4, 0xff

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    if-nez v4, :cond_2

    const-string v4, "KeyguardEffectViewZoom"

    const-string v5, "mMovableImageView is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :goto_1
    return v4

    :pswitch_1
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->startResetTranlateAnimation()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mTouchStartX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mTouchStartY:F

    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mBottomArea:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mBottomArea:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :pswitch_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mTouchStartX:F

    sub-float/2addr v4, v5

    mul-float v2, v4, v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mTouchStartY:F

    sub-float/2addr v4, v5

    mul-float v3, v4, v6

    invoke-direct {p0, v2, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->startWidgetTranslateAnimation(FF)V

    goto :goto_0

    :pswitch_4
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-ge v1, v4, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    if-ne v1, v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mTouchStartX:F

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mTouchStartY:F

    goto :goto_0

    :pswitch_5
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->startResetTranlateAnimation()V

    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mBottomArea:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mBottomArea:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    invoke-virtual {v4, p2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "handleUnlock()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->startResetTranlateAnimation()V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    if-nez v0, :cond_1

    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "mMovableImageView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->handleUnlock()V

    goto :goto_0
.end method

.method public playLockSound()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "playLockSound()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public removeMusicWallpaper()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "removeMusicWallpaper()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    if-nez v0, :cond_1

    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "mMovableImageView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMusicWallpaper:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mStrMusicBitmapId:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mIsDoubleTapPuase:Z

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mIsRemoveMusicBitmapByScreenOff:Z

    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->update()V

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "reset()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    if-nez v0, :cond_1

    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "mMovableImageView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public screenTurnedOff()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "screenTurnedOff()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->startResetTranlateAnimation()V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    if-nez v0, :cond_2

    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "mMovableImageView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->stopAnimation()Z

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mUpdateDelayed:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "screenTurnedOff() running delayed update"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->update()V

    goto :goto_0
.end method

.method public screenTurnedOn()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "screenTurnedOn()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->startAffordanceAnimation()V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    if-nez v0, :cond_1

    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "mMovableImageView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->startAnimation()Z

    goto :goto_0
.end method

.method public setContextualWallpaper(Landroid/graphics/Bitmap;)V
    .locals 4

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardEffectViewZoom"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setContextualWallpaper() bmp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getPreferredConfigBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMusicWallpaper:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMusicWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mStrMusicBitmapId:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mIsDoubleTapPuase:Z

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mIsRemoveMusicBitmapByScreenOff:Z

    if-ne v0, v3, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mIsRemoveMusicBitmapByScreenOff:Z

    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mIsForceUpdateMusicBitmap:Z

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->update()V

    return-void
.end method

.method public setHidden(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "setHidden()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setLayers(Landroid/view/View;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "setLayers()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mNotificationPanel:Landroid/view/View;

    if-eqz p1, :cond_1

    sget v0, Lcom/android/keyguard/R$id;->sec_keyguard_bottom_area:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mBottomArea:Landroid/view/View;

    :cond_1
    return-void
.end method

.method public show()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "show()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    if-nez v0, :cond_1

    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "mMovableImageView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->startAnimation()Z

    goto :goto_0
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "showUnlockAffordance()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public update()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "KeyguardEffectViewZoom"

    const-string v2, "update()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    if-nez v1, :cond_2

    const-string v1, "KeyguardEffectViewZoom"

    const-string v2, "mMovableImageView is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->isUpdatableState()Z

    move-result v1

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mIsForceUpdateMusicBitmap:Z

    if-nez v1, :cond_5

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->isSameBitmap()Z

    move-result v1

    if-ne v1, v3, :cond_3

    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "KeyguardEffectViewZoom"

    const-string v2, "update() : no need to update because of same bitmap"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "KeyguardEffectViewZoom"

    const-string v2, "update() : is not updatable state"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mUpdateDelayed:Z

    goto :goto_0

    :cond_5
    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mUpdateDelayed:Z

    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mIsForceUpdateMusicBitmap:Z

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->stopAnimation()Z

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->initBitmap()Z

    move-result v1

    if-ne v1, v3, :cond_6

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    # invokes: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->updateFaceList()V
    invoke-static {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->access$000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;)V

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->initCamera()V

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    # invokes: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->updateGoalList()V
    invoke-static {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->access$100(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;)V

    :cond_6
    if-ne v0, v3, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->startAnimation()Z

    goto :goto_0
.end method

.method public updateAfterCreation()V
    .locals 0

    return-void
.end method
