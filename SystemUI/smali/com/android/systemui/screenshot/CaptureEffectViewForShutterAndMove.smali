.class public Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;
.super Landroid/view/View;
.source "CaptureEffectViewForShutterAndMove.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove$OnCaptureAnimationListener;
    }
.end annotation


# static fields
.field static final ANIMATION_ALPHA_AFTER_RATIO:F = 0.0f

.field static final ANIMATION_ALPHA_BEFORE_RATIO:F = 0.8f

.field static final ANIMATION_SCALE_AFTER_RATIO:F = 0.8f

.field static final ANIMATION_SCALE_BOFORE_RATIO:F = 1.0f

.field static final MODE_DEFAULT:I = 0x0

.field static final MODE_DUAL_KEY_MAINSCREEN:I = 0x3

.field static final MODE_DUAL_KEY_MAINSCREEN_270:I = 0x5

.field static final MODE_DUAL_KEY_MAINSCREEN_90:I = 0x4

.field static final MODE_DUAL_KEY_SUBSCREEN:I = 0x6

.field static final MODE_DUAL_KEY_SUBSCREEN_0_MAINSCREEN_270:I = 0xa

.field static final MODE_DUAL_KEY_SUBSCREEN_0_MAINSCREEN_90:I = 0x9

.field static final MODE_DUAL_KEY_SUBSCREEN_270:I = 0x8

.field static final MODE_DUAL_KEY_SUBSCREEN_270_MAINSCREEN_0:I = 0xc

.field static final MODE_DUAL_KEY_SUBSCREEN_90:I = 0x7

.field static final MODE_DUAL_KEY_SUBSCREEN_90_MAINSCREEN_0:I = 0xb

.field static final MODE_DUAL_PALM_MAINSCREEN:I = 0xd

.field static final MODE_DUAL_PALM_SUBSCREEN:I = 0xe

.field static final MODE_SWEEP_LEFT:I = 0x1

.field static final MODE_SWEEP_RIGHT:I = 0x2

.field static final SCALE_ANIMATION_TIME:I = 0x12c

.field static final TRANSLATE_ANIMATION_TIME_DEFAULT:I = 0x12c

.field static final TRANSLATE_ANIMATION_TIME_PALM:I = 0xc8

.field static final TRANSLATE_START_OFFSET:I = 0x190


# instance fields
.field final TAG:Ljava/lang/String;

.field private imageview:Landroid/widget/ImageView;

.field private mCaptureAnimationListener:Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;

.field private mMode:I

.field private mTranslateDuration:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-string v0, "CaptureEffectViewForShutterAndMove"

    iput-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->mCaptureAnimationListener:Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;

    iput p2, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->mMode:I

    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->mTranslateDuration:I

    iget v0, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->mMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->mMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->mMode:I

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->mMode:I

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->mMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->mMode:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->mMode:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->mMode:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->mMode:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->mMode:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    :cond_0
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->mTranslateDuration:I

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->mTranslateDuration:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;)Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->mCaptureAnimationListener:Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;

    return-object v0
.end method


# virtual methods
.method public getScaleAnimation()Landroid/view/animation/ScaleAnimation;
    .locals 9

    const/4 v5, 0x2

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f4ccccd    # 0.8f

    const/4 v6, 0x0

    const/4 v8, 0x0

    iget v3, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->mMode:I

    packed-switch v3, :pswitch_data_0

    :goto_0
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/interpolator/SineInOut80;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineInOut80;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-object v0

    :pswitch_0
    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v8, 0x3f000000    # 0.5f

    goto :goto_0

    :pswitch_1
    const/4 v6, 0x0

    const/high16 v8, 0x3f000000    # 0.5f

    goto :goto_0

    :pswitch_2
    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f000000    # 0.5f

    goto :goto_0

    :pswitch_3
    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_0

    :pswitch_4
    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v8, 0x0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getTranslateAnimation()Landroid/view/animation/TranslateAnimation;
    .locals 12

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    iget v3, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->mMode:I

    packed-switch v3, :pswitch_data_0

    :goto_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    move v3, v1

    move v5, v1

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iget v1, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->mTranslateDuration:I

    int-to-long v10, v1

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    const-wide/16 v10, 0x190

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    new-instance v1, Landroid/view/animation/interpolator/QuintOut80;

    invoke-direct {v1}, Landroid/view/animation/interpolator/QuintOut80;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-object v0

    :pswitch_0
    const/high16 v8, -0x40800000    # -1.0f

    goto :goto_0

    :pswitch_1
    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_0

    :pswitch_2
    const/high16 v4, -0x40800000    # -1.0f

    goto :goto_0

    :pswitch_3
    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setOnCaptureAnimationListener(Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->mCaptureAnimationListener:Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;

    return-void
.end method

.method public show(Landroid/widget/ImageView;)V
    .locals 7

    const/4 v6, 0x1

    iput-object p1, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->imageview:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->getScaleAnimation()Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->getTranslateAnimation()Landroid/view/animation/TranslateAnimation;

    move-result-object v3

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v4, 0x3f4ccccd    # 0.8f

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iget v4, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->mTranslateDuration:I

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const-wide/16 v4, 0x190

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v6}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    new-instance v4, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove$1;-><init>(Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;)V

    invoke-virtual {v1, v4}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v4, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->imageview:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
