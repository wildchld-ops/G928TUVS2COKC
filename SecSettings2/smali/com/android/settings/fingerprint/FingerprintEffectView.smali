.class public Lcom/android/settings/fingerprint/FingerprintEffectView;
.super Landroid/widget/FrameLayout;
.source "FingerprintEffectView.java"


# instance fields
.field private bShowError:Z

.field private mContext:Landroid/content/Context;

.field private mEffectHeight:I

.field private mEffectWidth:I

.field private mFingereffect:Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;

.field private mPercent:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintEffectView;->mPercent:I

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEffectView;->bShowError:Z

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintEffectView;->mEffectWidth:I

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintEffectView;->mEffectHeight:I

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/fingerprint/FingerprintEffectView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintEffectView;->mPercent:I

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEffectView;->bShowError:Z

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintEffectView;->mEffectWidth:I

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintEffectView;->mEffectHeight:I

    invoke-direct {p0, p1, p2}, Lcom/android/settings/fingerprint/FingerprintEffectView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintEffectView;->mPercent:I

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEffectView;->bShowError:Z

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintEffectView;->mEffectWidth:I

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintEffectView;->mEffectHeight:I

    invoke-direct {p0, p1, p2}, Lcom/android/settings/fingerprint/FingerprintEffectView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x0

    const-string v1, "FingerprintEffectView"

    const-string v2, "[init]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEffectView;->mContext:Landroid/content/Context;

    if-nez p2, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "attrs is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    sget-object v1, Lcom/android/settings/R$styleable;->FingerprintEffectView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintEffectView;->mEffectWidth:I

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintEffectView;->mEffectHeight:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEffectView;->reset()V

    return-void
.end method


# virtual methods
.method public removeFingerMark()V
    .locals 5

    const/4 v4, 0x1

    const-string v1, "FingerprintEffectView"

    const-string v2, "[removeFingerMark]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEffectView;->mFingereffect:Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEffectView;->bShowError:Z

    if-ne v1, v4, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEffectView;->bShowError:Z

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3d4ccccd    # 0.05f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEffectView;->mFingereffect:Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;

    invoke-virtual {v1, v0}, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->startAnimation(Landroid/view/animation/Animation;)V

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintEffectView;->mPercent:I

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintEffectView;->setPercent(I)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 5

    const/4 v2, 0x0

    const-string v0, "FingerprintEffectView"

    const-string v1, "[reset]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, p0, Lcom/android/settings/fingerprint/FingerprintEffectView;->mPercent:I

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintEffectView;->bShowError:Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEffectView;->mFingereffect:Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEffectView;->mFingereffect:Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEffectView;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEffectView;->mFingereffect:Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;

    :cond_0
    new-instance v0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEffectView;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintEffectView;->mEffectWidth:I

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintEffectView;->mEffectHeight:I

    const v4, 0x7f02008f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;-><init>(Landroid/content/Context;III)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEffectView;->mFingereffect:Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEffectView;->mFingereffect:Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintEffectView;->mEffectWidth:I

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintEffectView;->mEffectHeight:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintEffectView;->addView(Landroid/view/View;II)V

    return-void
.end method

.method public setPercent(I)V
    .locals 3

    const-string v0, "FingerprintEffectView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setPercent] percent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintEffectView;->mPercent:I

    if-le v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEffectView;->mFingereffect:Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEffectView;->mFingereffect:Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->setPercent(F)V

    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEffectView;->bShowError:Z

    if-nez v0, :cond_0

    iput p1, p0, Lcom/android/settings/fingerprint/FingerprintEffectView;->mPercent:I

    goto :goto_0
.end method

.method public showErrorEffect()V
    .locals 5

    const/4 v4, 0x1

    const-string v2, "FingerprintEffectView"

    const-string v3, "[showErrorEffect]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintEffectView;->mPercent:I

    add-int/lit8 v1, v2, 0x5

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3d4ccccd    # 0.05f

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEffectView;->mFingereffect:Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintEffectView;->bShowError:Z

    if-nez v2, :cond_0

    iput-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintEffectView;->bShowError:Z

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEffectView;->mFingereffect:Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;

    invoke-virtual {v2, v0}, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintEffectView;->setPercent(I)V

    :cond_0
    return-void
.end method
