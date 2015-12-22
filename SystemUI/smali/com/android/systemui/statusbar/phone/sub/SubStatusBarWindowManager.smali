.class public Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;
.super Ljava/lang/Object;
.source "SubStatusBarWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SubStatusBarWindowManager"


# instance fields
.field private mBarHeight:I

.field private final mContext:Landroid/content/Context;

.field private final mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

.field private final mKeyguardScreenRotation:Z

.field private mLp:Landroid/view/WindowManager$LayoutParams;

.field private mSubStatusBarWindowView:Landroid/view/View;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;-><init>(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mContext:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mWindowManager:Landroid/view/WindowManager;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->shouldEnableKeyguardScreenRotation()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mKeyguardScreenRotation:Z

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;)Landroid/view/WindowManager$LayoutParams;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mBarHeight:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mSubStatusBarWindowView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;)Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method private adjustScreenOrientation(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->getScreenOrientation(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    return-void
.end method

.method private apply(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->applyKeyguardFlags(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->applyFocusableFlag(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->adjustScreenOrientation(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->applyHeight(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->applyFitsSystemWindows(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mSubStatusBarWindowView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private applyFitsSystemWindows(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    # invokes: Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->isKeyguardShowingAndNotOccluded()Z
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->access$100(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->sViewCoverShowing:Z

    if-nez v3, :cond_0

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->sAppCoverShowing:Z

    if-eqz v3, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mSubStatusBarWindowView:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mSubStatusBarWindowView:Landroid/view/View;

    if-nez v0, :cond_3

    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setFitsSystemWindows(Z)V

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_1
.end method

.method private applyFocusableFlag(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)V
    .locals 3

    const v2, -0x20001

    # invokes: Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->isKeyguardShowingAndNotOccluded()Z
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->access$100(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->keyguardNeedsInput:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_0
    return-void

    :cond_0
    # invokes: Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->isKeyguardShowingAndNotOccluded()Z
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->access$100(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->statusBarFocusable:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method

.method private applyHeight(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)V
    .locals 9

    const/4 v7, 0x2

    const/4 v6, -0x1

    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    # invokes: Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->isKeyguardShowingAndNotOccluded()Z
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->access$100(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-boolean v5, p1, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->statusBarExpanded:Z

    if-nez v5, :cond_0

    iget-boolean v5, p1, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->keyguardFadingAway:Z

    if-eqz v5, :cond_1

    :cond_0
    move v1, v4

    :goto_0
    iget-boolean v5, p1, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->keyguardShowing:Z

    if-eqz v5, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    :goto_1
    const-string v3, "SubStatusBarWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "applyHeight h = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", oc = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # invokes: Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->isKeyguardShowingAndNotOccluded()Z
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->access$100(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p1, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->statusBarExpanded:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", fa = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p1, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->keyguardFadingAway:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ac = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p1, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->sAppCoverShowing:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", sc = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p1, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->sViewCoverShowing:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    iget-boolean v5, p1, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->statusBarExpanded:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mSubStatusBarWindowView:Landroid/view/View;

    const v6, 0x7f0e040c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v6, v7, [F

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mSubStatusBarWindowView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    aput v7, v6, v3

    aput v8, v6, v4

    invoke-static {v2, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v4, 0xfa

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v3, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$1;

    invoke-direct {v3, p0, v2}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$1;-><init>(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_1

    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mSubStatusBarWindowView:Landroid/view/View;

    const v6, 0x7f0e040c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v6, v7, [F

    aput v8, v6, v3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mSubStatusBarWindowView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    aput v3, v6, v4

    invoke-static {v2, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v4, 0xfa

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v3, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$2;

    invoke-direct {v3, p0, v2}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$2;-><init>(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_1
.end method

.method private applyInputFeatures(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)V
    .locals 2

    # invokes: Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->isKeyguardShowingAndNotOccluded()Z
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->access$100(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->statusBarState:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isKeyguardState(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->qsExpanded:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->isSupportNotificationOnCover()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    and-int/lit8 v1, v1, -0x5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    goto :goto_0
.end method

.method private applyKeyguardFlags(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)V
    .locals 3

    const v2, -0x100001

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->keyguardShowing:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->isLiveWallpaper(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->isHomeWallpaper(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x100000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->isDisableStatusBarTransparent:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x4000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v1, v1, -0x401

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_1
.end method

.method private getScreenOrientation(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)I
    .locals 2

    const/4 v0, -0x1

    # invokes: Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->isKeyguardShowingAndNotOccluded()Z
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->access$100(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mKeyguardScreenRotation:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private shouldEnableKeyguardScreenRotation()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "lockscreen.rot_override"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    const v2, 0x7f0b0002

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public add(Landroid/view/View;I)V
    .locals 9

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/16 v3, 0x7d0

    const v4, -0x7f7bffb8

    const/4 v5, -0x3

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "SubStatusBar"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManagerImpl;

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v7

    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/view/WindowManagerImpl;->createPresentationWindowManager(Landroid/view/Display;)Landroid/view/WindowManagerImpl;

    move-result-object v8

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mSubStatusBarWindowView:Landroid/view/View;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mBarHeight:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mSubStatusBarWindowView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v8, v0, v1}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public getScreenOrientation(Z)I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->keyguardOccluded:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->adjustScreenOrientation(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    return v0
.end method

.method public getSubStatusBarView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mSubStatusBarWindowView:Landroid/view/View;

    return-object v0
.end method

.method public setBouncerShowing(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->bouncerShowing:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)V

    return-void
.end method

.method public setCoverShowing(ZZI)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->sViewCoverShowing:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    iput-boolean p2, v0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->sAppCoverShowing:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    if-nez p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->isFlipCover:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setKeyguardFadingAway(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->keyguardFadingAway:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)V

    return-void
.end method

.method public setKeyguardNeedsInput(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->keyguardNeedsInput:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)V

    return-void
.end method

.method public setKeyguardOccluded(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->keyguardOccluded:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)V

    return-void
.end method

.method public setKeyguardShowing(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    iput-boolean p1, v1, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->keyguardShowing:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mSubStatusBarWindowView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mSubStatusBarWindowView:Landroid/view/View;

    const v2, 0x7f0e0415

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public setKeyguardUserActivityTimeout(J)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    iput-wide p1, v0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->keyguardUserActivityTimeout:J

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)V

    return-void
.end method

.method public setQsExpanded(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->qsExpanded:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)V

    return-void
.end method

.method public setStatusBarExpanded(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->statusBarExpanded:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->statusBarFocusable:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)V

    return-void
.end method

.method public setStatusBarFocusable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->statusBarFocusable:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)V

    return-void
.end method

.method public setStatusBarState(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    iput p1, v0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->statusBarState:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)V

    return-void
.end method
