.class public Lcom/android/keyguard/sec/KeyguardPreviewContainer;
.super Landroid/widget/FrameLayout;
.source "KeyguardPreviewContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/KeyguardPreviewContainer$KeyguardCirclePreviewDrawable;,
        Lcom/android/keyguard/sec/KeyguardPreviewContainer$ShortcutResetCallback;
    }
.end annotation


# static fields
.field private static final INSECURE_CAMERA_INTENT:Landroid/content/Intent;

.field private static final MSG_THEME_CHANGED:I = 0x0

.field private static final PREVIEW_ANIMATION_DURATION:J = 0x19aL

.field private static final SECURE_CAMERA_INTENT:Landroid/content/Intent;

.field private static final SUPPORT_BACKWARD_ANIMATION:Z

.field private static final TAG:Ljava/lang/String; = "KeyguardPreviewContainer"


# instance fields
.field private mCameraPreview:Landroid/view/View;

.field private mCameraRotation:I

.field private mDisplay:Landroid/view/Display;

.field mDistance:I

.field private mFirstBorder:I

.field private final mHandler:Landroid/os/Handler;

.field private mIsKeyguardShowing:Z

.field private mIsMobileKeyboardCovered:Z

.field private mIsMultiTouch:Z

.field private mIsSecure:Z

.field private mKeyguardScreenRotation:Z

.field private mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mPhonePreview:Landroid/view/View;

.field private mPreviewClipper:Landroid/animation/Animator;

.field mPreviewDrawable:Lcom/android/keyguard/sec/KeyguardPreviewContainer$KeyguardCirclePreviewDrawable;

.field private mPreviewEnabled:Z

.field private mPreviewInflater:Lcom/android/keyguard/sec/KeyguardPreviewInflater;

.field private mPreviewShrinkAnimator:Landroid/animation/ValueAnimator;

.field private mPreviewView:Landroid/view/View;

.field private mShortcutResetCallback:Lcom/android/keyguard/sec/KeyguardPreviewContainer$ShortcutResetCallback;

.field private mShowing:Z

.field private mStartX:I

.field private mStartY:I

.field mTempRect:Landroid/graphics/Rect;

.field private mThemeObserver:Landroid/database/ContentObserver;

.field private mobileKeyboardCovered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sec.android.app.camera"

    const-string v2, "com.sec.android.app.camera.Camera"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sec.android.app.camera"

    const-string v2, "com.sec.android.app.camera.Camera"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportPreviewBackwardAnimation()Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->SUPPORT_BACKWARD_ANIMATION:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mPreviewEnabled:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mPreviewDrawable:Lcom/android/keyguard/sec/KeyguardPreviewContainer$KeyguardCirclePreviewDrawable;

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mDistance:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mTempRect:Landroid/graphics/Rect;

    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mIsMultiTouch:Z

    new-instance v0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardPreviewContainer$1;-><init>(Lcom/android/keyguard/sec/KeyguardPreviewContainer;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mShowing:Z

    new-instance v0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardPreviewContainer$2;-><init>(Lcom/android/keyguard/sec/KeyguardPreviewContainer;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$3;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/KeyguardPreviewContainer$3;-><init>(Lcom/android/keyguard/sec/KeyguardPreviewContainer;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mThemeObserver:Landroid/database/ContentObserver;

    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mIsMobileKeyboardCovered:Z

    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mobileKeyboardCovered:Z

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mDisplay:Landroid/view/Display;

    new-instance v0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$KeyguardCirclePreviewDrawable;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardPreviewContainer$KeyguardCirclePreviewDrawable;-><init>(Lcom/android/keyguard/sec/KeyguardPreviewContainer;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mPreviewDrawable:Lcom/android/keyguard/sec/KeyguardPreviewContainer$KeyguardCirclePreviewDrawable;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$dimen;->keyguard_lockscreen_first_border:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mFirstBorder:I

    new-instance v0, Lcom/android/keyguard/sec/KeyguardPreviewInflater;

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/keyguard/sec/KeyguardPreviewInflater;-><init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mPreviewInflater:Lcom/android/keyguard/sec/KeyguardPreviewInflater;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->shouldEnableKeyguardScreenRotation()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mKeyguardScreenRotation:Z

    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->setWillNotDraw(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/KeyguardPreviewContainer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mIsKeyguardShowing:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/keyguard/sec/KeyguardPreviewContainer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mIsKeyguardShowing:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/KeyguardPreviewContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->refreshCameraPreviewIfNeeded()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/keyguard/sec/KeyguardPreviewContainer;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mPreviewShrinkAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/keyguard/sec/KeyguardPreviewContainer;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mStartX:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/keyguard/sec/KeyguardPreviewContainer;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mStartY:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/KeyguardPreviewContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->handleThemeChanged()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/KeyguardPreviewContainer;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/KeyguardPreviewContainer;)Lcom/android/keyguard/sec/KeyguardPreviewInflater;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mPreviewInflater:Lcom/android/keyguard/sec/KeyguardPreviewInflater;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/KeyguardPreviewContainer;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mPhonePreview:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/keyguard/sec/KeyguardPreviewContainer;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mPhonePreview:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/KeyguardPreviewContainer;)Landroid/content/Intent;
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->getCameraIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/KeyguardPreviewContainer;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mCameraPreview:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/keyguard/sec/KeyguardPreviewContainer;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mCameraPreview:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/keyguard/sec/KeyguardPreviewContainer;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mCameraRotation:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/keyguard/sec/KeyguardPreviewContainer;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mCameraRotation:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/keyguard/sec/KeyguardPreviewContainer;)Landroid/view/Display;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method private getAnimationDuration()J
    .locals 6

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->getMaxCircleSize()F

    move-result v2

    const/high16 v3, 0x43cd0000    # 410.0f

    iget v4, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mDistance:I

    int-to-float v4, v4

    sub-float v4, v2, v4

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mFirstBorder:I

    int-to-float v4, v4

    sub-float v4, v2, v4

    div-float/2addr v3, v4

    float-to-long v0, v3

    const-string v3, "KeyguardPreviewContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAnimationDuration() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method private getCameraIntent()Landroid/content/Intent;
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    goto :goto_0
.end method

.method private getMaxCircleSize()F
    .locals 8

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v1, v3

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mStartX:I

    int-to-float v3, v3

    sub-float v3, v1, v3

    iget v4, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mStartX:I

    int-to-float v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mStartY:I

    int-to-float v0, v3

    float-to-double v4, v2

    float-to-double v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v3, v4

    return v3
.end method

.method private handleThemeChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->refreshPhonePreviewIfNeeded()V

    return-void
.end method

.method private inflatePreViews()V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mPreviewInflater:Lcom/android/keyguard/sec/KeyguardPreviewInflater;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->getCameraIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardPreviewInflater;->inflatePreview(Landroid/content/Intent;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mCameraPreview:Landroid/view/View;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mCameraRotation:I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mCameraPreview:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mCameraPreview:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mCameraPreview:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mCameraPreview:Landroid/view/View;

    new-instance v1, Lcom/android/keyguard/sec/KeyguardPreviewContainer$4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardPreviewContainer$4;-><init>(Lcom/android/keyguard/sec/KeyguardPreviewContainer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mCameraPreview:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mPreviewInflater:Lcom/android/keyguard/sec/KeyguardPreviewInflater;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardPreviewInflater;->inflatePreview(Landroid/content/Intent;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mPhonePreview:Landroid/view/View;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mPhonePreview:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mPhonePreview:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mPhonePreview:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mPhonePreview:Landroid/view/View;

    new-instance v1, Lcom/android/keyguard/sec/KeyguardPreviewContainer$5;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardPreviewContainer$5;-><init>(Lcom/android/keyguard/sec/KeyguardPreviewContainer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mPhonePreview:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private isSecure()Z
    .locals 4

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v0

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwipeLockShowingBeforeTimeout:Z

    if-nez v3, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private refreshCameraPreviewIfNeeded()V
    .locals 3

    iget-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mKeyguardScreenRotation:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mIsKeyguardShowing:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mCameraRotation:I

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    if-ne v1, v2, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mIsMobileKeyboardCovered:Z

    iget-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mobileKeyboardCovered:Z

    if-eq v1, v2, :cond_2

    :cond_1
    new-instance v0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$8;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardPreviewContainer$8;-><init>(Lcom/android/keyguard/sec/KeyguardPreviewContainer;)V

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_2
    return-void
.end method

.method private shouldEnableKeyguardScreenRotation()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "lockscreen.rot_override"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    sget v2, Lcom/android/keyguard/R$bool;->config_enableLockScreenRotation:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private startBackwardAnimation(Landroid/animation/AnimatorListenerAdapter;)V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mPreviewView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mPreviewView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget v1, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mDistance:I

    aput v1, v0, v2

    const/4 v1, 0x1

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mPreviewShrinkAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mPreviewShrinkAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mPreviewShrinkAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/interpolator/SineInOut60;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineInOut60;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mPreviewShrinkAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mPreviewShrinkAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/keyguard/sec/KeyguardPreviewContainer$9;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardPreviewContainer$9;-><init>(Lcom/android/keyguard/sec/KeyguardPreviewContainer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mPreviewShrinkAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 12

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v3, v0, 0xff

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_1

    iput-boolean v9, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mIsMultiTouch:Z

    goto :goto_0

    :cond_1
    iput-boolean v8, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mIsMultiTouch:Z

    goto :goto_0

    :pswitch_2
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    const-string v3, "KeyguardPreviewContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mTempRect.left ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mTempRect.top ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mStartX:I

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mStartY:I

    goto :goto_0

    :pswitch_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget v4, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mStartX:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v1, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v4, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mStartY:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v2, v3

    int-to-double v4, v1

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    int-to-double v6, v2

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v3, v4

    iput v3, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mDistance:I

    const-string v3, "KeyguardPreviewContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleTouchEvent() - mDistance "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mDistance:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mFirstBorder:I

    iget v4, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mDistance:I

    if-gt v3, v4, :cond_4

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isDirectCallToEcc()Z

    move-result v3

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mIsSecure:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mPreviewView:Landroid/view/View;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mPreviewView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mPhonePreview:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    iget-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mIsMultiTouch:Z

    if-eqz v3, :cond_4

    :cond_3
    iget v3, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mFirstBorder:I

    iput v3, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mDistance:I

    :cond_4
    iget-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mPreviewEnabled:Z

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mDistance:I

    if-nez v3, :cond_6

    invoke-virtual {p0, v8}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->setPreviewEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->invalidate()V

    :cond_5
    :goto_1
    iget-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mPreviewEnabled:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mPreviewDrawable:Lcom/android/keyguard/sec/KeyguardPreviewContainer$KeyguardCirclePreviewDrawable;

    iget v4, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mStartX:I

    iget v5, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mDistance:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mStartY:I

    iget v6, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mDistance:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mStartX:I

    iget v7, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mDistance:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mStartY:I

    iget v8, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mDistance:I

    add-int/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/keyguard/sec/KeyguardPreviewContainer$KeyguardCirclePreviewDrawable;->setPreviewRect(IIII)V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->invalidate()V

    goto/16 :goto_0

    :cond_6
    iget v3, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mDistance:I

    if-lez v3, :cond_5

    invoke-virtual {p0, v9}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->setPreviewEnabled(Z)V

    goto :goto_1

    :pswitch_4
    iget v3, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mFirstBorder:I

    iget v4, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mDistance:I

    if-ge v3, v4, :cond_7

    iget-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mIsMultiTouch:Z

    if-nez v3, :cond_7

    and-int/lit16 v3, v0, 0xff

    const/4 v4, 0x3

    if-ne v3, v4, :cond_8

    :cond_7
    sget-boolean v3, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->SUPPORT_BACKWARD_ANIMATION:Z

    if-eqz v3, :cond_9

    new-instance v3, Lcom/android/keyguard/sec/KeyguardPreviewContainer$6;

    invoke-direct {v3, p0}, Lcom/android/keyguard/sec/KeyguardPreviewContainer$6;-><init>(Lcom/android/keyguard/sec/KeyguardPreviewContainer;)V

    invoke-direct {p0, v3}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->startBackwardAnimation(Landroid/animation/AnimatorListenerAdapter;)V

    :cond_8
    :goto_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-gt v3, v9, :cond_0

    iput-boolean v8, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mIsMultiTouch:Z

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0, v8}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->setPreviewEnabled(Z)V

    iput v8, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mDistance:I

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->invalidate()V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mShowing:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const/4 v0, 0x1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v1, p1, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-ne v1, v0, :cond_4

    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mobileKeyboardCovered:Z

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mPhonePreview:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mIsMobileKeyboardCovered:Z

    iget-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mobileKeyboardCovered:Z

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->refreshPhonePreviewIfNeeded()V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mCameraPreview:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mKeyguardScreenRotation:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mIsMobileKeyboardCovered:Z

    iget-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mobileKeyboardCovered:Z

    if-eq v0, v1, :cond_2

    :cond_1
    const-string v0, "KeyguardPreviewContainer"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->refreshCameraPreviewIfNeeded()V

    :cond_2
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mIsMobileKeyboardCovered:Z

    iget-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mobileKeyboardCovered:Z

    if-eq v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mobileKeyboardCovered:Z

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mIsMobileKeyboardCovered:Z

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mPreviewEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mPreviewDrawable:Lcom/android/keyguard/sec/KeyguardPreviewContainer$KeyguardCirclePreviewDrawable;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardPreviewContainer$KeyguardCirclePreviewDrawable;->isShaderReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mPreviewDrawable:Lcom/android/keyguard/sec/KeyguardPreviewContainer$KeyguardCirclePreviewDrawable;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/KeyguardPreviewContainer$KeyguardCirclePreviewDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->inflatePreViews()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "current_sec_active_themepackage"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mThemeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public refreshPhonePreviewIfNeeded()V
    .locals 2

    new-instance v0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$7;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardPreviewContainer$7;-><init>(Lcom/android/keyguard/sec/KeyguardPreviewContainer;)V

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public refreshPreviewIfNeeded()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->refreshPhonePreviewIfNeeded()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->refreshCameraPreviewIfNeeded()V

    return-void
.end method

.method public resetPreviewView()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mPreviewClipper:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    const-string v0, "KeyguardPreviewContainer"

    const-string v1, "cancel preview animation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mPreviewClipper:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mPreviewClipper:Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mPreviewView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mPreviewView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mPreviewView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->setPreviewEnabled(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mPreviewDrawable:Lcom/android/keyguard/sec/KeyguardPreviewContainer$KeyguardCirclePreviewDrawable;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/sec/KeyguardPreviewContainer$KeyguardCirclePreviewDrawable;->setPreViewBitmap(Landroid/graphics/Bitmap;)V

    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mShowing:Z

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mShortcutResetCallback:Lcom/android/keyguard/sec/KeyguardPreviewContainer$ShortcutResetCallback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mShortcutResetCallback:Lcom/android/keyguard/sec/KeyguardPreviewContainer$ShortcutResetCallback;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardPreviewContainer$ShortcutResetCallback;->shortcutReset()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->invalidate()V

    return-void
.end method

.method public setPreviewEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mPreviewEnabled:Z

    return-void
.end method

.method public setPreviewView(Z)V
    .locals 6

    const/4 v3, 0x0

    if-eqz p1, :cond_5

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mCameraPreview:Landroid/view/View;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mPreviewView:Landroid/view/View;

    iget-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mKeyguardScreenRotation:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v1

    const-string v2, "KeyguardPreviewContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current rotation ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mCameraRotation:I

    if-eq v2, v1, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mCameraPreview:Landroid/view/View;

    if-eqz v2, :cond_1

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mCameraRotation:I

    const-string v2, "KeyguardPreviewContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "manually rotated to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mCameraRotation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mCameraPreview:Landroid/view/View;

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/high16 v4, 0x43340000    # 180.0f

    invoke-virtual {v2, v4}, Landroid/view/View;->setRotation(F)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mPreviewView:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mPreviewView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_2
    const-string v4, "KeyguardPreviewContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bitmap == null-"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v0, :cond_6

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mPreviewDrawable:Lcom/android/keyguard/sec/KeyguardPreviewContainer$KeyguardCirclePreviewDrawable;

    invoke-virtual {v2, v0}, Lcom/android/keyguard/sec/KeyguardPreviewContainer$KeyguardCirclePreviewDrawable;->setPreViewBitmap(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mPreviewView:Landroid/view/View;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mPreviewView:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->isSecure()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mIsSecure:Z

    return-void

    :cond_4
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mCameraPreview:Landroid/view/View;

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setRotation(F)V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mPhonePreview:Landroid/view/View;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mPreviewView:Landroid/view/View;

    goto :goto_0

    :cond_6
    move v2, v3

    goto :goto_1
.end method

.method public setShortcutResetCallback(Lcom/android/keyguard/sec/KeyguardPreviewContainer$ShortcutResetCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mShortcutResetCallback:Lcom/android/keyguard/sec/KeyguardPreviewContainer$ShortcutResetCallback;

    return-void
.end method

.method public startAnimation(Landroid/animation/AnimatorListenerAdapter;)V
    .locals 5

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mPreviewView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mPreviewView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mShowing:Z

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mPreviewView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mPreviewView:Landroid/view/View;

    iget v1, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mStartX:I

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mStartY:I

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mDistance:I

    int-to-float v3, v3

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->getMaxCircleSize()F

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mPreviewClipper:Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mPreviewClipper:Landroid/animation/Animator;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->getAnimationDuration()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mPreviewClipper:Landroid/animation/Animator;

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mPreviewClipper:Landroid/animation/Animator;

    new-instance v1, Landroid/view/animation/interpolator/SineInOut60;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineInOut60;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mPreviewClipper:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_0
    return-void
.end method
