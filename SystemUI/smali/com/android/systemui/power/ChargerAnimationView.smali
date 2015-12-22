.class public Lcom/android/systemui/power/ChargerAnimationView;
.super Landroid/widget/RelativeLayout;
.source "ChargerAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/power/ChargerAnimationView$ChargerAnimationListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_LISTENER_REPEAT_COUNT:I = 0xa

.field private static final ANIM_FRAME_DURATION:I = 0x11

.field private static final ANIM_IMAGE_CABLE_SCALE:F = 1.9f

.field private static final ANIM_IMAGE_WIRELESS_SCALE:F = 5.2f

.field private static final BATTERY_LEVEL_CHANGE_RANGE:I = 0x2

.field private static final BATTERY_LEVEL_TEXT:Ljava/lang/String; = "%s%%"

.field private static final CABLE_CHARGER_ANIM_NAME_FORMAT:Ljava/lang/String; = "charger_anim_cable_%s"

.field private static final CABLE_CHARGER_ANIM_NAME_FORMAT_UNDER_TEN:Ljava/lang/String; = "charger_anim_cable_0%s"

.field private static final CHARGER_ANIMATION_BOOST_FREQ:I = 0x155cc0

.field private static final CHARGER_ANIMATION_BOOST_FREQ_RATIO:F = 1.0f

.field private static final FRAME_OF_CABLE_CHARGER:I = 0x4f

.field private static final FRAME_OF_WIRELESS_CHARGER:I = 0x4f

.field private static final TAG:Ljava/lang/String; = "PowerUI.ChargerAnimationView"

.field private static final WIRELESS_CHARGER_ANIM_NAME_FORMAT:Ljava/lang/String; = "charger_anim_wireless_%s"

.field private static final WIRELESS_CHARGER_ANIM_NAME_FORMAT_UNDER_TEN:Ljava/lang/String; = "charger_anim_wireless_0%s"


# instance fields
.field private mAnimListenerRecursiveCount:I

.field private mAnimationListener:Lcom/android/systemui/power/ChargerAnimationView$ChargerAnimationListener;

.field private mAnimationPlaying:Z

.field private mBackGroundAnim:Landroid/animation/AnimatorSet;

.field private mBackGroundView:Landroid/widget/LinearLayout;

.field private mBatteryChangeLevel:I

.field private mBatteryLevelTextView:Landroid/widget/TextView;

.field private mBatteryTextAnim:Landroid/animation/AnimatorSet;

.field private mChargerAnimationView:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mCurrentBatteryLevel:I

.field private mCurrentChargerType:I

.field private mCurrentOrientation:I

.field private mDVFSHelper:Landroid/os/DVFSHelper;

.field private mDisplay:Landroid/view/Display;

.field private mDisplayDensity:F

.field private mFrameAnimation_Cable:Landroid/graphics/drawable/AnimationDrawable;

.field private mFrameAnimation_Wireless:Landroid/graphics/drawable/AnimationDrawable;

.field private mHandler:Landroid/os/Handler;

.field private mIsScreenOn:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/power/ChargerAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/power/ChargerAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAnimationPlaying:Z

    iput-boolean v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mIsScreenOn:Z

    iput v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAnimListenerRecursiveCount:I

    iput v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCurrentBatteryLevel:I

    iput v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCurrentOrientation:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryChangeLevel:I

    iput v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCurrentChargerType:I

    iput-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/power/ChargerAnimationView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryLevelTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/power/ChargerAnimationView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCurrentBatteryLevel:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/power/ChargerAnimationView;)Lcom/android/systemui/power/ChargerAnimationView$ChargerAnimationListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAnimationListener:Lcom/android/systemui/power/ChargerAnimationView$ChargerAnimationListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/power/ChargerAnimationView;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mFrameAnimation_Cable:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/systemui/power/ChargerAnimationView;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryChangeLevel:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/power/ChargerAnimationView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/power/ChargerAnimationView;->changeBatteryLevelText()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/power/ChargerAnimationView;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mFrameAnimation_Wireless:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/power/ChargerAnimationView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAnimListenerRecursiveCount:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/systemui/power/ChargerAnimationView;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAnimListenerRecursiveCount:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/power/ChargerAnimationView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/power/ChargerAnimationView;->checkChargerAnimationEnd(II)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/power/ChargerAnimationView;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryTextAnim:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/power/ChargerAnimationView;)Landroid/os/DVFSHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mDVFSHelper:Landroid/os/DVFSHelper;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/power/ChargerAnimationView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargerAnimationView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private changeBatteryLevelText()V
    .locals 6

    iget v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCurrentBatteryLevel:I

    const/16 v3, 0x64

    if-ge v2, v3, :cond_0

    iget v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCurrentBatteryLevel:I

    iget v3, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryChangeLevel:I

    sub-int v1, v2, v3

    :goto_0
    const-string v2, "%s%%"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryChangeLevel:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryChangeLevel:I

    iget-object v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/power/ChargerAnimationView$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/systemui/power/ChargerAnimationView$1;-><init>(Lcom/android/systemui/power/ChargerAnimationView;Ljava/lang/String;I)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    iget v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCurrentBatteryLevel:I

    goto :goto_0
.end method

.method private checkChargerAnimationEnd(II)V
    .locals 6

    move v0, p2

    iget v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAnimListenerRecursiveCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAnimListenerRecursiveCount:I

    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/power/ChargerAnimationView$2;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/power/ChargerAnimationView$2;-><init>(Lcom/android/systemui/power/ChargerAnimationView;I)V

    int-to-long v4, p1

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private dp2px(F)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mDisplayDensity:F

    mul-float/2addr v0, p1

    return v0
.end method

.method private makeChargerAnimationDrawable(I)V
    .locals 12

    const/4 v11, 0x3

    if-ne p1, v11, :cond_0

    const/16 v3, 0x4f

    const-string v6, "charger_anim_wireless_%s"

    const-string v7, "charger_anim_wireless_0%s"

    :goto_0
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    const/16 v8, 0xa

    if-ge v4, v8, :cond_1

    const/4 v8, 0x1

    :try_start_0
    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    const-class v8, Lcom/android/systemui/R$drawable;

    invoke-virtual {v8, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const-class v8, Lcom/android/systemui/R$drawable;

    invoke-virtual {v0, v8}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    if-ne p1, v11, :cond_2

    iget-object v8, p0, Lcom/android/systemui/power/ChargerAnimationView;->mFrameAnimation_Wireless:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/systemui/power/ChargerAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const/16 v10, 0x11

    invoke-virtual {v8, v9, v10}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    const/16 v3, 0x4f

    const-string v6, "charger_anim_cable_%s"

    const-string v7, "charger_anim_cable_0%s"

    goto :goto_0

    :cond_1
    const/4 v8, 0x1

    :try_start_1
    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    iget-object v8, p0, Lcom/android/systemui/power/ChargerAnimationView;->mFrameAnimation_Cable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/systemui/power/ChargerAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const/16 v10, 0x11

    invoke-virtual {v8, v9, v10}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_3

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_3

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_3

    :cond_3
    return-void
.end method

.method private setBackGroundAnimation()V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBackGroundView:Landroid/widget/LinearLayout;

    const-string v2, "alpha"

    const/4 v3, 0x7

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBackGroundAnim:Landroid/animation/AnimatorSet;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3e4ccccd    # 0.2f
        0x3e4ccccd    # 0.2f
        0x3e4ccccd    # 0.2f
        0x3e4ccccd    # 0.2f
        0x3e4ccccd    # 0.2f
        0x0
    .end array-data
.end method

.method private setBatteryLevelTextAnimation()V
    .locals 10

    const-wide/16 v8, 0x320

    const/4 v6, 0x2

    iget-object v3, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryLevelTextView:Landroid/widget/TextView;

    const-string v4, "alpha"

    const/4 v5, 0x7

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v4, 0x640

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryLevelTextView:Landroid/widget/TextView;

    const-string v4, "scaleX"

    new-array v5, v6, [F

    fill-array-data v5, :array_1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryLevelTextView:Landroid/widget/TextView;

    const-string v4, "scaleY"

    new-array v5, v6, [F

    fill-array-data v5, :array_2

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryTextAnim:Landroid/animation/AnimatorSet;

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    aput-object v2, v4, v6

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
        0x3ecccccd    # 0.4f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private setCableChargerAnimation()V
    .locals 7

    const/16 v6, 0xf

    const/4 v5, 0x1

    const/4 v3, -0x2

    const v4, 0x3ff33333    # 1.9f

    new-instance v2, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mFrameAnimation_Cable:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mFrameAnimation_Cable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    invoke-direct {p0, v5}, Lcom/android/systemui/power/ChargerAnimationView;->makeChargerAnimationDrawable(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargerAnimationView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setRotation(F)V

    const/high16 v2, 0x41600000    # 14.0f

    invoke-direct {p0, v2}, Lcom/android/systemui/power/ChargerAnimationView;->dp2px(F)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargerAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargerAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargerAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleY(F)V

    iget-object v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargerAnimationView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/power/ChargerAnimationView;->mFrameAnimation_Cable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :pswitch_1
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargerAnimationView:Landroid/widget/ImageView;

    const/high16 v3, 0x43870000    # 270.0f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargerAnimationView:Landroid/widget/ImageView;

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private setWirelessChargerAnimation()V
    .locals 5

    const/4 v4, -0x2

    const v3, 0x40a66666    # 5.2f

    new-instance v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mFrameAnimation_Wireless:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mFrameAnimation_Wireless:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/systemui/power/ChargerAnimationView;->makeChargerAnimationDrawable(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargerAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargerAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargerAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleY(F)V

    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargerAnimationView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mFrameAnimation_Wireless:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 6

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/systemui/power/ChargerAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mDisplayDensity:F

    const v0, 0x7f0e00b4

    invoke-virtual {p0, v0}, Lcom/android/systemui/power/ChargerAnimationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargerAnimationView:Landroid/widget/ImageView;

    const v0, 0x7f0e00b3

    invoke-virtual {p0, v0}, Lcom/android/systemui/power/ChargerAnimationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBackGroundView:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBackGroundAnim:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Lcom/android/systemui/power/ChargerAnimationView;->setBackGroundAnimation()V

    const v0, 0x7f0e00b5

    invoke-virtual {p0, v0}, Lcom/android/systemui/power/ChargerAnimationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryLevelTextView:Landroid/widget/TextView;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryTextAnim:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Lcom/android/systemui/power/ChargerAnimationView;->setBatteryLevelTextAnimation()V

    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mContext:Landroid/content/Context;

    const-string v2, "CHARGER_ANIMATION_BOOSTER"

    const/16 v3, 0xc

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mDVFSHelper:Landroid/os/DVFSHelper;

    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mDVFSHelper:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    iget-object v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mDVFSHelper:Landroid/os/DVFSHelper;

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v2, v4, v5}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyByPercentOfMaximum(D)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    return-void
.end method

.method protected setChargerAnimationViewVisibility(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAnimationPlaying:Z

    invoke-virtual {p0, p1}, Lcom/android/systemui/power/ChargerAnimationView;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setChargingAnimationListner(Lcom/android/systemui/power/ChargerAnimationView$ChargerAnimationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAnimationListener:Lcom/android/systemui/power/ChargerAnimationView$ChargerAnimationListener;

    return-void
.end method

.method protected setScreenOrientationState(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCurrentOrientation:I

    return-void
.end method

.method protected setScreenTurnOnState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mIsScreenOn:Z

    invoke-direct {p0}, Lcom/android/systemui/power/ChargerAnimationView;->setBackGroundAnimation()V

    return-void
.end method

.method protected setWindowDisplay(Landroid/view/Display;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mDisplay:Landroid/view/Display;

    return-void
.end method

.method protected startChargerAnimation(IIZ)V
    .locals 3

    iput p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCurrentChargerType:I

    iget-boolean v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAnimationPlaying:Z

    if-eqz v1, :cond_0

    const-string v1, "PowerUI.ChargerAnimationView"

    const-string v2, "Animation is playing, return"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mDVFSHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v1}, Landroid/os/DVFSHelper;->acquire()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/power/ChargerAnimationView;->setChargerAnimationViewVisibility(I)V

    iput p2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCurrentBatteryLevel:I

    iget v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCurrentChargerType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    if-eqz p3, :cond_1

    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBackGroundAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :cond_1
    const/16 v0, 0x53f

    invoke-direct {p0}, Lcom/android/systemui/power/ChargerAnimationView;->setWirelessChargerAnimation()V

    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mFrameAnimation_Wireless:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryTextAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    invoke-direct {p0}, Lcom/android/systemui/power/ChargerAnimationView;->changeBatteryLevelText()V

    :goto_1
    const-string v1, "PowerUI.ChargerAnimationView"

    const-string v2, "Animation Started"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCurrentChargerType:I

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/power/ChargerAnimationView;->checkChargerAnimationEnd(II)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x53f

    invoke-direct {p0}, Lcom/android/systemui/power/ChargerAnimationView;->setCableChargerAnimation()V

    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mFrameAnimation_Cable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_1
.end method

.method protected stopChargerAnimation()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAnimationPlaying:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCurrentChargerType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const-string v0, "PowerUI.ChargerAnimationView"

    const-string v1, "Orientation change so stop annimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mFrameAnimation_Cable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/power/ChargerAnimationView;->setChargerAnimationViewVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mDVFSHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAnimListenerRecursiveCount:I

    :cond_0
    return-void
.end method
