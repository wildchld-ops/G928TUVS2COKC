.class public Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;
.super Landroid/widget/FrameLayout;
.source "KeyguardEffectViewMassTension.java"

# interfaces
.implements Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;


# static fields
.field private static final sound_tap_path:Ljava/lang/String; = "/system/media/audio/ui/Tap_tension.ogg"


# instance fields
.field private final CIRCLE_MAX_ALPHA:I

.field private final CIRCLE_MAX_ALPHA_FACTOR:F

.field private final CIRCLE_MIN_ALPHA:I

.field protected TAG:Ljava/lang/String;

.field private final TENSION_BETWEEN_FACTOR:I

.field private final TENSION_CIRCLE_PLACE_ADJUST:I

.field private final TENSION_LINE_DELETE:I

.field private final TENSION_LINE_MIN:F

.field private final TENSION_RELEASE_FACTOR:F

.field protected final UNLOCK_DRAG_THRESHOLD:D

.field protected final UNLOCK_RELEASE_THRESHOLD:D

.field private final UNLOCK_SOUND_PLAY_TIME:J

.field protected final UNLOCK_TEMP_THRESHOLD:D

.field private betweenLineX:I

.field private betweenLineY:I

.field private degree:D

.field private diffPressTime:J

.field private isIgnoreTouch:Z

.field private isSystemSoundChecked:Z

.field private lineSize:F

.field private mCircleCenterDot:Landroid/widget/ImageView;

.field private mCircleCenterDotAfter:Landroid/widget/ImageView;

.field private mCircleCenterDotAnim:Landroid/view/animation/Animation;

.field mCircleCenterDotFromPoint:Landroid/graphics/Point;

.field private mCircleCenterDotReleaseAnim:Landroid/view/animation/Animation;

.field protected mCircleCenterDotRoot:Landroid/widget/RelativeLayout;

.field mCircleCenterDotToPoint:Landroid/graphics/Point;

.field private mCircleFinger:Landroid/widget/ImageView;

.field private mCircleFingerAfter:Landroid/widget/ImageView;

.field private mCircleFingerAnim:Landroid/view/animation/Animation;

.field private mCircleFingerReleaseAnim:Landroid/view/animation/Animation;

.field protected mCircleFingerRoot:Landroid/widget/RelativeLayout;

.field private mCircleLine:Landroid/widget/ImageView;

.field private mCircleLineAfter:Landroid/widget/ImageView;

.field protected mCircleLineRoot:Landroid/widget/RelativeLayout;

.field private mCircleOuter:Landroid/widget/ImageView;

.field private mCircleOuterAfter:Landroid/widget/ImageView;

.field private mCircleOuterAnim:Landroid/view/animation/Animation;

.field protected mCircleOuterRoot:Landroid/widget/RelativeLayout;

.field private final mContext:Landroid/content/Context;

.field private mDistanceRatio:D

.field private mLineAnim:Landroid/view/animation/ScaleAnimation;

.field private final mLockSoundVolume:F

.field private mSoundPool:Landroid/media/SoundPool;

.field protected mX:F

.field protected mY:F

.field private outerTensionFactorX:D

.field private outerTensionFactorY:D

.field private prevPressTime:J

.field private radian:D

.field private releaseSoundRunnable:Ljava/lang/Runnable;

.field private sounds:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;-><init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;-><init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;Z)V
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v6, 0x1

    const v5, 0x3f4ccccd    # 0.8f

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v2, "TensionLockScreen"

    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->TAG:Ljava/lang/String;

    const/16 v2, 0xff

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->CIRCLE_MAX_ALPHA:I

    const/16 v2, 0x32

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->CIRCLE_MIN_ALPHA:I

    const-wide v2, 0x3ff3333340000000L    # 1.2000000476837158

    iput-wide v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->UNLOCK_TEMP_THRESHOLD:D

    const-wide v2, 0x3ff6666660000000L    # 1.399999976158142

    iput-wide v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->UNLOCK_RELEASE_THRESHOLD:D

    const-wide v2, 0x4000ccccc0000000L    # 2.0999999046325684

    iput-wide v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->UNLOCK_DRAG_THRESHOLD:D

    iput v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->TENSION_RELEASE_FACTOR:F

    iput v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->CIRCLE_MAX_ALPHA_FACTOR:F

    const/16 v2, 0x28

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->TENSION_BETWEEN_FACTOR:I

    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->TENSION_LINE_MIN:F

    const/4 v2, 0x5

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->TENSION_CIRCLE_PLACE_ADJUST:I

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->isIgnoreTouch:Z

    const-wide/16 v2, 0x7d0

    iput-wide v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->UNLOCK_SOUND_PLAY_TIME:J

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDotToPoint:Landroid/graphics/Point;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDotFromPoint:Landroid/graphics/Point;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mSoundPool:Landroid/media/SoundPool;

    iput-wide v8, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->diffPressTime:J

    iput-wide v8, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->prevPressTime:J

    iput-boolean v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->isSystemSoundChecked:Z

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/android/keyguard/R$layout;->keyguard_mass_tension_effect_view:I

    invoke-virtual {v0, v2, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$dimen;->tension_line_delete:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->TENSION_LINE_DELETE:I

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->setLayout()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->setAnimation()V

    invoke-direct {p0, v4, v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->setLineAnim(FF)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    int-to-float v4, v1

    const/high16 v5, 0x41a00000    # 20.0f

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mLockSoundVolume:F

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDot:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;)Landroid/view/animation/AnimationSet;
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->createBouncerAnimation()Landroid/view/animation/AnimationSet;

    move-result-object v0

    return-object v0
.end method

.method private checkSound()V
    .locals 5

    const/4 v4, 0x1

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "lockscreen_sounds_enabled"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    if-ne v2, v4, :cond_0

    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->isSystemSoundChecked:Z

    :goto_1
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->isSystemSoundChecked:Z

    goto :goto_1
.end method

.method private clearAllViews()V
    .locals 3

    const/4 v2, 0x4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleOuter:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFinger:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDot:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLine:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLineAfter:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleOuter:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDot:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFinger:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLine:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private createBouncerAnimation()Landroid/view/animation/AnimationSet;
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDotFromPoint:Landroid/graphics/Point;

    iget v1, v6, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDotFromPoint:Landroid/graphics/Point;

    iget v2, v6, Landroid/graphics/Point;->y:I

    iget-object v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDotToPoint:Landroid/graphics/Point;

    iget v3, v6, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDotToPoint:Landroid/graphics/Point;

    iget v4, v6, Landroid/graphics/Point;->y:I

    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v5, Landroid/view/animation/TranslateAnimation;

    sub-int v6, v3, v1

    int-to-float v6, v6

    sub-int v7, v4, v2

    int-to-float v7, v7

    invoke-direct {v5, v8, v6, v8, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v6, 0xfa

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    invoke-virtual {v5, v9}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v6, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension$1;

    invoke-direct {v6, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension$1;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;)V

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-object v0
.end method

.method public static getCounterEffectName()Ljava/lang/String;
    .locals 1

    const-string v0, "Wallpaper"

    return-object v0
.end method

.method public static isBackgroundEffect()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private playSound()V
    .locals 7

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->isSystemSoundChecked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->sounds:I

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mLockSoundVolume:F

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mLockSoundVolume:F

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    :cond_0
    return-void
.end method

.method private setAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/keyguard/R$anim;->keyguard_tention_animate_fadeout:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFingerAnim:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/keyguard/R$anim;->keyguard_tention_animate_fadeout:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDotAnim:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/keyguard/R$anim;->keyguard_tention_animate_alpha:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleOuterAnim:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/keyguard/R$anim;->keyguard_tention_animate_finger:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFingerReleaseAnim:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/keyguard/R$anim;->keyguard_tention_animate_centerdot_release:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDotReleaseAnim:Landroid/view/animation/Animation;

    return-void
.end method

.method private setLayout()V
    .locals 1

    sget v0, Lcom/android/keyguard/R$id;->keyguard_tension_effect_tension_in_press:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleOuter:Landroid/widget/ImageView;

    sget v0, Lcom/android/keyguard/R$id;->keyguard_tension_effect_tension_finger:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFinger:Landroid/widget/ImageView;

    sget v0, Lcom/android/keyguard/R$id;->keyguard_tension_effect_tension_center_dot:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDot:Landroid/widget/ImageView;

    sget v0, Lcom/android/keyguard/R$id;->keyguard_tension_effect_tension_line:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLine:Landroid/widget/ImageView;

    sget v0, Lcom/android/keyguard/R$id;->keyguard_tension_effect_tension_in_press_root:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleOuterRoot:Landroid/widget/RelativeLayout;

    sget v0, Lcom/android/keyguard/R$id;->keyguard_tension_effect_tension_in_press_after:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleOuterAfter:Landroid/widget/ImageView;

    sget v0, Lcom/android/keyguard/R$id;->keyguard_tension_effect_tension_finger_root:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFingerRoot:Landroid/widget/RelativeLayout;

    sget v0, Lcom/android/keyguard/R$id;->keyguard_tension_effect_tension_finger_after:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFingerAfter:Landroid/widget/ImageView;

    sget v0, Lcom/android/keyguard/R$id;->keyguard_tension_effect_tension_center_dot_root:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDotRoot:Landroid/widget/RelativeLayout;

    sget v0, Lcom/android/keyguard/R$id;->keyguard_tension_effect_tension_center_dot_after:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDotAfter:Landroid/widget/ImageView;

    sget v0, Lcom/android/keyguard/R$id;->keyguard_tension_effect_tension_line_root:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLineRoot:Landroid/widget/RelativeLayout;

    sget v0, Lcom/android/keyguard/R$id;->keyguard_tension_effect_tension_line_after:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLineAfter:Landroid/widget/ImageView;

    return-void
.end method

.method private setLineAnim(FF)V
    .locals 4

    const/high16 v1, 0x3f800000    # 1.0f

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v0, p1, p2, v1, v1}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mLineAnim:Landroid/view/animation/ScaleAnimation;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mLineAnim:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mLineAnim:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mLineAnim:Landroid/view/animation/ScaleAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mLineAnim:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mLineAnim:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension$2;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private setOuterCircle(Landroid/view/View;D)V
    .locals 8

    const/16 v1, 0xff

    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    const-wide v4, 0x406fe00000000000L    # 255.0

    mul-double/2addr v4, p2

    const-wide v6, 0x3fe99999a0000000L    # 0.800000011920929

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-int v0, v2

    if-ge v0, v1, :cond_0

    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleOuter:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageAlpha(I)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private setSound()V
    .locals 5

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mSoundPool:Landroid/media/SoundPool;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->TAG:Ljava/lang/String;

    const-string v2, "show mSoundPool is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    const-string v1, "/system/media/audio/ui/Tap_tension.ogg"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/media/SoundPool;

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-direct {v1, v2, v4, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mSoundPool:Landroid/media/SoundPool;

    const-string v2, "/system/media/audio/ui/Tap_tension.ogg"

    invoke-virtual {v1, v2, v4}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->sounds:I

    :cond_0
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->clearAllViews()V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mSoundPool:Landroid/media/SoundPool;

    :cond_0
    return-void
.end method

.method public getUnlockDelay()J
    .locals 2

    const-wide/16 v0, 0x1f4

    return-wide v0
.end method

.method public handleHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handleHoverEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->isIgnoreTouch:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->isIgnoreTouch:Z

    :cond_0
    const/16 v18, 0x0

    :goto_0
    return v18

    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v18

    packed-switch v18, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    const/16 v18, 0x1

    goto :goto_0

    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->clearAllViews()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleOuter:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x32

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageAlpha(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFinger:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0xff

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageAlpha(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0xff

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageAlpha(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0xff

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageAlpha(I)V

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mX:F

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mY:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleOuter:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleOuter:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleOuter:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleOuter:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleOuter:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setY(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFinger:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFinger:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFinger:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFinger:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFinger:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setY(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setY(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDotToPoint:Landroid/graphics/Point;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDotToPoint:Landroid/graphics/Point;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setScaleX(F)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->prevPressTime:J

    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->diffPressTime:J

    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->playSound()V

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mX:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v8, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mY:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v9, v0

    int-to-double v0, v8

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    int-to-double v0, v9

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    add-double v12, v18, v20

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleOuter:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->getWidth()I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v18, v10, v16

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mDistanceRatio:D

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mX:F

    move/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mX:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    const/high16 v20, 0x42200000    # 40.0f

    div-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->betweenLineX:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mY:F

    move/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mY:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    const/high16 v20, 0x42200000    # 40.0f

    div-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->betweenLineY:I

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mDistanceRatio:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->setOuterCircle(Landroid/view/View;D)V

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mX:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    move/from16 v0, v18

    float-to-double v4, v0

    const/high16 v18, -0x40800000    # -1.0f

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mY:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-double v6, v0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->radian:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->radian:D

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x400921fb54442d18L    # Math.PI

    div-double v18, v18, v20

    const-wide v20, 0x4066800000000000L    # 180.0

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->degree:D

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mX:F

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFinger:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleOuter:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v21

    div-int/lit8 v21, v21, 0x2

    add-int v20, v20, v21

    add-int/lit8 v20, v20, -0x5

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->degree:D

    move-wide/from16 v22, v0

    const-wide v24, 0x4066800000000000L    # 180.0

    div-double v22, v22, v24

    const-wide v24, 0x400921fb54442d18L    # Math.PI

    mul-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    mul-double v20, v20, v22

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->outerTensionFactorX:D

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mY:F

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFinger:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleOuter:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v21

    div-int/lit8 v21, v21, 0x2

    add-int v20, v20, v21

    add-int/lit8 v20, v20, -0x5

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->degree:D

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0x4066800000000000L    # 180.0

    div-double v22, v22, v24

    const-wide v24, 0x400921fb54442d18L    # Math.PI

    mul-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    mul-double v20, v20, v22

    sub-double v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->outerTensionFactorY:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mDistanceRatio:D

    move-wide/from16 v18, v0

    const-wide v20, 0x3ff3333340000000L    # 1.2000000476837158

    cmpg-double v18, v18, v20

    if-gez v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFinger:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFinger:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFinger:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFinger:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setY(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->betweenLineX:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->betweenLineY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setY(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->betweenLineX:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->betweenLineY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setY(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setPivotX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setPivotY(F)V

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mX:F

    move/from16 v19, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mX:F

    move/from16 v21, v0

    sub-float v20, v20, v21

    const/high16 v21, 0x42200000    # 40.0f

    div-float v20, v20, v21

    add-float v19, v19, v20

    sub-float v14, v18, v19

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mY:F

    move/from16 v19, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mY:F

    move/from16 v21, v0

    sub-float v20, v20, v21

    const/high16 v21, 0x42200000    # 40.0f

    div-float v20, v20, v21

    add-float v19, v19, v20

    sub-float v15, v18, v19

    mul-float v18, v14, v14

    mul-float v19, v15, v15

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    sub-double v18, v18, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->TENSION_LINE_DELETE:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    sub-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->lineSize:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->lineSize:F

    move/from16 v18, v0

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->lineSize:F

    move/from16 v18, v0

    :goto_2
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->lineSize:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->lineSize:F

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setScaleX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->degree:D

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setRotation(F)V

    goto/16 :goto_1

    :cond_3
    const/16 v18, 0x0

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mDistanceRatio:D

    move-wide/from16 v18, v0

    const-wide v20, 0x3ff3333340000000L    # 1.2000000476837158

    cmpl-double v18, v18, v20

    if-ltz v18, :cond_6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mDistanceRatio:D

    move-wide/from16 v18, v0

    const-wide v20, 0x4000ccccc0000000L    # 2.0999999046325684

    cmpg-double v18, v18, v20

    if-gtz v18, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFinger:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->outerTensionFactorX:D

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFinger:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v22, v0

    sub-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFinger:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->outerTensionFactorY:D

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFinger:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v22, v0

    sub-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setY(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->betweenLineX:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->betweenLineY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setY(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->betweenLineX:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->betweenLineY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setY(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setPivotX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setPivotY(F)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->outerTensionFactorX:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->betweenLineX:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    sub-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v14, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->outerTensionFactorY:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->betweenLineY:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    sub-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v15, v0

    mul-float v18, v14, v14

    mul-float v19, v15, v15

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    sub-double v18, v18, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->TENSION_LINE_DELETE:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    sub-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->lineSize:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->lineSize:F

    move/from16 v18, v0

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->lineSize:F

    move/from16 v18, v0

    :goto_3
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->lineSize:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->lineSize:F

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setScaleX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->degree:D

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setRotation(F)V

    goto/16 :goto_1

    :cond_5
    const/16 v18, 0x0

    goto :goto_3

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleOuter:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFinger:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFingerRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFingerAfter:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFingerRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFingerAfter:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setY(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFingerAfter:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFingerReleaseAnim:Landroid/view/animation/Animation;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleOuterRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mX:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleOuterAfter:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleOuterRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mY:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleOuterAfter:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setY(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleOuterAfter:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleOuterAnim:Landroid/view/animation/Animation;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLineRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->betweenLineX:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLineRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->betweenLineY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setY(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLineRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setPivotX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLineRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLineAfter:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setPivotY(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLineRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->degree:D

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setRotation(F)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->lineSize:F

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->setLineAnim(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLineAfter:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mLineAnim:Landroid/view/animation/ScaleAnimation;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDotFromPoint:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->betweenLineX:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDotFromPoint:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->betweenLineY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Point;->y:I

    goto/16 :goto_1

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleOuter:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFinger:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleOuterRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mX:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleOuterAfter:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleOuterRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mY:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleOuterAfter:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setY(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleOuterAfter:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleOuterAnim:Landroid/view/animation/Animation;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mX:F

    move/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mX:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    const/high16 v20, 0x42200000    # 40.0f

    div-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->betweenLineX:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mY:F

    move/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mY:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    const/high16 v20, 0x42200000    # 40.0f

    div-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->betweenLineY:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->prevPressTime:J

    move-wide/from16 v20, v0

    sub-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->diffPressTime:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mDistanceRatio:D

    move-wide/from16 v18, v0

    const-wide v20, 0x3ff6666660000000L    # 1.399999976158142

    cmpg-double v18, v18, v20

    if-gez v18, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFingerRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFingerAfter:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFingerRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFingerAfter:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setY(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFingerAfter:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFingerAnim:Landroid/view/animation/Animation;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDotRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->betweenLineX:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDotAfter:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDotRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->betweenLineY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDotAfter:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setY(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDotAfter:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDotAnim:Landroid/view/animation/Animation;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->diffPressTime:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x258

    cmp-long v18, v18, v20

    if-lez v18, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->playSound()V

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mDistanceRatio:D

    move-wide/from16 v18, v0

    const-wide v20, 0x3ff6666660000000L    # 1.399999976158142

    cmpl-double v18, v18, v20

    if-ltz v18, :cond_2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mDistanceRatio:D

    move-wide/from16 v18, v0

    const-wide v20, 0x4000ccccc0000000L    # 2.0999999046325684

    cmpg-double v18, v18, v20

    if-gtz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFingerRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFingerAfter:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFingerRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFingerAfter:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setY(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFingerAfter:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFingerReleaseAnim:Landroid/view/animation/Animation;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLineRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->betweenLineX:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLineRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->betweenLineY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setY(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLineRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setPivotX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLineRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLineAfter:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setPivotY(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLineRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->degree:D

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setRotation(F)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->lineSize:F

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->setLineAnim(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLineAfter:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mLineAnim:Landroid/view/animation/ScaleAnimation;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDotFromPoint:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->betweenLineX:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDotFromPoint:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->betweenLineY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Point;->y:I

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->TAG:Ljava/lang/String;

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public playLockSound()V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->TAG:Ljava/lang/String;

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->clearAllViews()V

    return-void
.end method

.method public screenTurnedOff()V
    .locals 0

    return-void
.end method

.method public screenTurnedOn()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->TAG:Ljava/lang/String;

    const-string v1, "screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->checkSound()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->setSound()V

    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public update()V
    .locals 0

    return-void
.end method

.method public updateAfterCreation()V
    .locals 0

    return-void
.end method
