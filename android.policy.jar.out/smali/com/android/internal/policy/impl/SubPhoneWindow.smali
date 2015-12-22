.class public Lcom/android/internal/policy/impl/SubPhoneWindow;
.super Lcom/android/internal/policy/impl/PhoneWindow;
.source "SubPhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/SubPhoneWindow$ResizeHelper;,
        Lcom/android/internal/policy/impl/SubPhoneWindow$SubPhoneWindowListener;,
        Lcom/android/internal/policy/impl/SubPhoneWindow$SubPhoneDecorView;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final SAFE_DEBUG:Z = true

.field static final TAG:Ljava/lang/String; = "SubPhoneWindow"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBorder:Lcom/android/internal/policy/impl/multiwindow/Border;

.field private mContext:Landroid/content/Context;

.field private mHasStackFocus:Z

.field private mIsBorder:Z

.field private mIvt:[B

.field private mMinStackBoundForLand:Landroid/graphics/Rect;

.field private mMinStackBoundForPort:Landroid/graphics/Rect;

.field private final mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

.field private mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mScaleX:F

.field private mScaleY:F

.field private mStackBound:Landroid/graphics/Rect;

.field private mStatusBarHeight:I

.field private mSubPhoneWindowListener:Lcom/android/internal/policy/impl/SubPhoneWindow$SubPhoneWindowListener;

.field private mToken:Landroid/os/IBinder;

.field private mTrasnparentColor:Landroid/graphics/drawable/ColorDrawable;

.field private mVibrator:Landroid/os/SystemVibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 11

    const/4 v6, 0x0

    const/4 v9, 0x1

    const/high16 v8, 0x447a0000    # 1000.0f

    const/4 v7, 0x0

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mActivity:Landroid/app/Activity;

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mTrasnparentColor:Landroid/graphics/drawable/ColorDrawable;

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mHasStackFocus:Z

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mIsBorder:Z

    iput-object v6, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mToken:Landroid/os/IBinder;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mMinStackBoundForPort:Landroid/graphics/Rect;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mMinStackBoundForLand:Landroid/graphics/Rect;

    const/16 v5, 0x1a

    new-array v5, v5, [B

    fill-array-data v5, :array_0

    iput-object v5, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mIvt:[B

    iput-object p1, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mContext:Landroid/content/Context;

    instance-of v5, v5, Landroid/app/Activity;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mContext:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    iput-object v5, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mActivity:Landroid/app/Activity;

    :cond_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mContext:Landroid/content/Context;

    const-string v6, "vibrator"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/SystemVibrator;

    iput-object v5, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mVibrator:Landroid/os/SystemVibrator;

    iget-object v5, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mContext:Landroid/content/Context;

    const-string v6, "power"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    iput-object v5, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mPowerManager:Landroid/os/PowerManager;

    iget-object v5, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mContext:Landroid/content/Context;

    const-string v6, "multiwindow_facade"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iput-object v5, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v5, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1050011

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mStatusBarHeight:I

    iget-object v5, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v5, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    iget-object v5, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mToken:Landroid/os/IBinder;

    :goto_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v6, 0x800

    invoke-virtual {v5, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_1

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mIsBorder:Z

    :cond_1
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    :cond_2
    iget-object v5, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e00d9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    new-instance v3, Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Point;->x:I

    mul-int/2addr v5, v2

    int-to-float v5, v5

    div-float/2addr v5, v8

    float-to-int v5, v5

    iget v6, v1, Landroid/graphics/Point;->y:I

    mul-int/2addr v6, v2

    int-to-float v6, v6

    div-float/2addr v6, v8

    float-to-int v6, v6

    invoke-direct {v3, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v5, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v9, :cond_4

    iget-object v5, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mMinStackBoundForPort:Landroid/graphics/Rect;

    invoke-virtual {v5, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v5, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mMinStackBoundForLand:Landroid/graphics/Rect;

    iget v6, v3, Landroid/graphics/Rect;->left:I

    iget v7, v3, Landroid/graphics/Rect;->top:I

    iget v8, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    :goto_1
    return-void

    :cond_3
    new-instance v5, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>()V

    iput-object v5, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mMinStackBoundForPort:Landroid/graphics/Rect;

    iget v6, v3, Landroid/graphics/Rect;->left:I

    iget v7, v3, Landroid/graphics/Rect;->top:I

    iget v8, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v5, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mMinStackBoundForLand:Landroid/graphics/Rect;

    invoke-virtual {v5, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    :array_0
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x0t
        0x12t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x30t
        0x0t
        0x0t
        0xat
        0x0t
        0x0t
        0x0t
        0x0t
        0x20t
        0x0t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        -0x5et
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/SubPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/SubPhoneWindow;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/SubPhoneWindow;->forceHideInputMethod()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/SubPhoneWindow;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mIsBorder:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/SubPhoneWindow;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mIsBorder:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/SubPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/Border;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mBorder:Lcom/android/internal/policy/impl/multiwindow/Border;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/SubPhoneWindow;)Landroid/graphics/Rect;
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/SubPhoneWindow;->getStackBoxBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/SubPhoneWindow;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mMinStackBoundForPort:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/SubPhoneWindow;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mMinStackBoundForLand:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/SubPhoneWindow;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/SubPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    return-object v0
.end method

.method private forceHideInputMethod()Z
    .locals 2

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getStackBoxBounds()Landroid/graphics/Rect;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method private isCascadeScaledWindow()Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setStackFocus(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mHasStackFocus:Z

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mHasStackFocus:Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mBorder:Lcom/android/internal/policy/impl/multiwindow/Border;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mBorder:Lcom/android/internal/policy/impl/multiwindow/Border;

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mHasStackFocus:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/Border;->setFocus(Z)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SubPhoneWindow;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SubPhoneWindow;->peekDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SubPhoneWindow;->peekDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method


# virtual methods
.method public changeStackFocus(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SubPhoneWindow;->setStackFocus(Z)V

    return-void
.end method

.method protected generateDecor()Lcom/android/internal/policy/impl/PhoneWindow$DecorView;
    .locals 4

    iget-object v1, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mBorder:Lcom/android/internal/policy/impl/multiwindow/Border;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/internal/policy/impl/multiwindow/Border;

    iget-object v2, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/android/internal/policy/impl/multiwindow/Border;-><init>(Landroid/content/Context;Landroid/view/WindowManager;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mBorder:Lcom/android/internal/policy/impl/multiwindow/Border;

    :cond_0
    new-instance v1, Lcom/android/internal/policy/impl/SubPhoneWindow$SubPhoneDecorView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mContext:Landroid/content/Context;

    const/4 v3, -0x1

    invoke-direct {v1, p0, v2, v3}, Lcom/android/internal/policy/impl/SubPhoneWindow$SubPhoneDecorView;-><init>(Lcom/android/internal/policy/impl/SubPhoneWindow;Landroid/content/Context;I)V

    return-object v1
.end method

.method public onMultiWindowStyleChanged(Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindow;->onMultiWindowStyleChanged(Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v1, p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setTo(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/SubPhoneWindow;->isCascadeScaledWindow()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mIsBorder:Z

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SubPhoneWindow;->peekDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SubPhoneWindow;->peekDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mIsBorder:Z

    goto :goto_0
.end method
