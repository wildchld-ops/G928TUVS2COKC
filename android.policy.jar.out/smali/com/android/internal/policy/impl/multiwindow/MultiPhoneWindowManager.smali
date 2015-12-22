.class public Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;
.super Ljava/lang/Object;
.source "MultiPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$SettingsObserver;
    }
.end annotation


# static fields
.field static final DEBUG:Z = true

.field static final DEBUG_ALWAYS_ON:Z = false

.field private static final MULTIWINDOW_SETTING_OFF:I = 0x0

.field private static final MULTIWINDOW_SETTING_ON:I = 0x1

.field static final SAFE_DEBUG:Z

.field static final TAG:Ljava/lang/String; = "MultiPhoneWindowManager"


# instance fields
.field private mCanBeForceHide:Z

.field private mConsumeBackKeyUp:Z

.field mContext:Landroid/content/Context;

.field private mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

.field private mEnableMultiWindowUISetting:I

.field private mFirstMultiWindowSettingOn:Z

.field private mFirstRecentKeyClick:Z

.field private mFloatingPadding:Landroid/graphics/Rect;

.field private mFloatingPaddingTemp:Landroid/graphics/Rect;

.field private mForceHideCascade:Z

.field private mForceHideCenterbar:Z

.field private mForceHidePenWindowController:Z

.field private mForceHidePenWindowControllerStackId:I

.field private mForceHideStatusBar:Z

.field mHandler:Landroid/os/Handler;

.field private mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field private mIsMultiWindowTrayOpen:Z

.field private mIsRecentUI:Z

.field private mIsTrayBarUI:Z

.field mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

.field final mLock:Ljava/lang/Object;

.field private mMinimizeSize:I

.field private mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

.field private mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

.field private mMultiWindowGuide:Landroid/view/WindowManagerPolicy$WindowState;

.field private mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

.field private mMultiWindowUIIntent:Landroid/content/Intent;

.field mMultiuserReceiver:Landroid/content/BroadcastReceiver;

.field mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field private mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

.field private mScaleWindowResizableSize:I

.field mSettingsObserver:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$SettingsObserver;

.field private final mStatusBarController:Lcom/android/internal/policy/impl/BarController;

.field mStatusBarHeight:I

.field private mStatusBarTransient:Z

.field public mSystemBooted:Z

.field public mSystemReady:Z

.field private mTopApplicationWindowMode:Lcom/samsung/android/multiwindow/MultiWindowStyle;

.field private mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field private mTopFullScreenOpaqueWindowStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/WindowManagerPolicy$WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mWindowManager:Landroid/view/IWindowManager;

.field mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

.field mWindowManagerInternal:Landroid/view/WindowManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->SAFE_DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    const/4 v8, 0x0

    const/high16 v2, 0x4000000

    const/4 v7, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mLock:Ljava/lang/Object;

    iput v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mStatusBarHeight:I

    new-instance v0, Lcom/android/internal/policy/impl/BarController;

    const-string v1, "StatusBar"

    const/high16 v3, 0x10000000

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x1

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/BarController;-><init>(Ljava/lang/String;IIIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mIsRecentUI:Z

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mIsTrayBarUI:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mFloatingPadding:Landroid/graphics/Rect;

    iput v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMinimizeSize:I

    iput v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mScaleWindowResizableSize:I

    iput-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowUIIntent:Landroid/content/Intent;

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mStatusBarTransient:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopFullScreenOpaqueWindowStates:Ljava/util/ArrayList;

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mConsumeBackKeyUp:Z

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mFirstRecentKeyClick:Z

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mFirstMultiWindowSettingOn:Z

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHideCascade:Z

    iput v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mEnableMultiWindowUISetting:I

    iput-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mCanBeForceHide:Z

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHideCenterbar:Z

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mIsMultiWindowTrayOpen:Z

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHidePenWindowController:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHidePenWindowControllerStackId:I

    new-instance v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$1;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiuserReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mFloatingPaddingTemp:Landroid/graphics/Rect;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mEnableMultiWindowUISetting:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mEnableMultiWindowUISetting:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mIsRecentUI:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mFirstMultiWindowSettingOn:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mFirstMultiWindowSettingOn:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowUIIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v0

    return v0
.end method

.method private applyMultiWindowScaleFrame(Landroid/view/WindowManagerPolicy$WindowState;Landroid/graphics/Rect;)V
    .locals 7

    const/4 v6, 0x1

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->getFloatingWindowPadding(Landroid/view/WindowManagerPolicy$WindowState;)Landroid/graphics/Rect;

    move-result-object v2

    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    add-int v0, v4, v5

    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    add-int v3, v4, v5

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v1, v4, Landroid/content/res/Configuration;->orientation:I

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getRequestedOrientation()I

    move-result v4

    if-ne v4, v6, :cond_0

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    :cond_0
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getRequestedOrientation()I

    move-result v4

    if-nez v4, :cond_2

    if-ne v1, v6, :cond_2

    :cond_1
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v4

    const/high16 v5, 0x400000

    invoke-virtual {v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v3

    iput v4, p2, Landroid/graphics/Rect;->bottom:I

    iget v4, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v0

    iput v4, p2, Landroid/graphics/Rect;->right:I

    :goto_0
    return-void

    :cond_2
    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v0

    iput v4, p2, Landroid/graphics/Rect;->bottom:I

    iget v4, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v3

    iput v4, p2, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method

.method private isDeviceProvisioned()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isIsolatedSplitUsed()Z
    .locals 4

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopFullScreenOpaqueWindowStates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    const/16 v3, 0x1000

    invoke-virtual {v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isUserSetupComplete()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "user_setup_complete"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private keyguardIsShowingTq()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    return v0
.end method

.method private keyguardOn()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->keyguardIsShowingTq()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->inKeyguardRestrictedKeyInputMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldMoveUpWindow(Landroid/view/WindowManagerPolicy$WindowState;Z)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    const-string v1, "MultiPhoneWindowManager"

    const-string v3, "shouldMoveUpWindow() return false -> win is null"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->existInputMethodInScreen(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p2, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v3

    and-int/lit8 v3, v3, 0x3

    if-nez v3, :cond_0

    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v3, :cond_4

    const-string v2, "MultiPhoneWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shouldMoveUpWindow() return true -> win is mCurrentInputMethodTarget : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    if-ne v3, v1, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_2

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isFloating()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getStackId()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getStackId()I

    move-result v4

    if-ne v3, v4, :cond_5

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method public applyPostLayoutPolicyForRecenUI(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mIsRecentUI:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x82f

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHideStatusBar:Z

    :cond_0
    return-void
.end method

.method public applyPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .locals 6

    const/high16 v5, 0x4000000

    const/4 v2, 0x1

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v3, v2, :cond_0

    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v3

    if-nez v3, :cond_6

    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v3, :cond_1

    if-eqz v0, :cond_1

    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopApplicationWindowMode:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    :cond_1
    if-eqz v0, :cond_3

    const/high16 v3, 0x200000

    invoke-virtual {v1, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v1, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_2
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHideCenterbar:Z

    :cond_3
    :goto_1
    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7db

    if-eq v3, v4, :cond_4

    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7dc

    if-ne v3, v4, :cond_5

    :cond_4
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_5

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHidePenWindowController:Z

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getTargetAppTokenStackId()I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHidePenWindowControllerStackId:I

    :cond_5
    return-void

    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    :cond_7
    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    if-ne v3, v2, :cond_9

    invoke-virtual {v1, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_8

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHideCenterbar:Z

    :cond_8
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopFullScreenOpaqueWindowStates:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_9
    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopFullScreenOpaqueWindowStates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_1
.end method

.method public beginLayoutLw()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mCanBeForceHide:Z

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHideCenterbar:Z

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mStatusBarTransient:Z

    return-void
.end method

.method public beginPostLayoutPolicyLw()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHideStatusBar:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHidePenWindowController:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHidePenWindowControllerStackId:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopFullScreenOpaqueWindowStates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public checkAddPermission(I)I
    .locals 1

    const/16 v0, 0x8d4

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public closeMultiWindowTrayBar(Z)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_2

    :cond_0
    const-string v1, "MultiPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closeMultiWindowTrayBar() failed -> mMultiWindowTrayBar ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/mMultiWindowEditMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mIsMultiWindowTrayOpen:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$4;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$4;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-eqz p1, :cond_3

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mIsMultiWindowTrayOpen:Z

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "--- MultiWindow Policy ---"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCurrentInputMethodTarget="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public existInputMethodInScreen(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isDrawFinishedLw()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public finishPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 9

    const/4 v5, 0x0

    const/4 v8, 0x1

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->needHideTrayBar(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6, v8, v8, v8}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(ZZZ)Z

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowGuide:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowGuide:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowGuide:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6, v8, v8, v8}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(ZZZ)Z

    :cond_1
    :goto_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v6

    if-ne v6, v8, :cond_2

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isArrangedUpperSideInputMethod()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->isIsolatedSplitUsed()Z

    move-result v6

    if-nez v6, :cond_2

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHideCenterbar:Z

    if-nez v6, :cond_2

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v3

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v6, :cond_8

    move v2, v5

    :goto_1
    if-ne v3, v2, :cond_9

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->isArrangedUpperSideInputMethod()Z

    move-result v6

    if-eqz v6, :cond_9

    const/4 v1, 0x0

    :cond_2
    :goto_2
    if-eqz v1, :cond_b

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v6, :cond_a

    iget v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mEnableMultiWindowUISetting:I

    if-ne v6, v8, :cond_a

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$3;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$3;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_3
    if-eqz p1, :cond_4

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v6

    if-eqz v6, :cond_4

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHideCascade:Z

    :cond_4
    if-eqz p1, :cond_5

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_5

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHideCascade:Z

    :cond_5
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopFullScreenOpaqueWindowStates:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_6

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHideCascade:Z

    goto :goto_4

    :cond_7
    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6, v8}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    goto/16 :goto_0

    :cond_8
    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v2

    goto :goto_1

    :cond_9
    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_a
    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6, v5, v5, v8}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(ZZZ)Z

    goto :goto_3

    :cond_b
    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6, v5, v8, v8}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(ZZZ)Z

    goto :goto_3

    :cond_c
    return-void
.end method

.method public forceHideCenterBar(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHideCenterbar:Z

    return-void
.end method

.method public getFloatingStatusBarHeight(Landroid/view/WindowManagerPolicy$WindowState;)I
    .locals 7

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getTopFullWindowInSameTask()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v4, v1

    :goto_0
    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getSystemUiVisibility()I

    move-result v3

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v2, v6, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    and-int/lit8 v6, v2, 0x8

    if-eqz v6, :cond_2

    :cond_0
    :goto_1
    return v5

    :cond_1
    move-object v4, p1

    goto :goto_0

    :cond_2
    and-int/lit16 v6, v0, 0x400

    if-nez v6, :cond_3

    const/high16 v6, 0x4000000

    and-int/2addr v6, v0

    if-eqz v6, :cond_4

    :cond_3
    and-int/lit16 v6, v3, 0x100

    if-eqz v6, :cond_0

    and-int/lit16 v6, v0, 0x400

    if-nez v6, :cond_0

    :cond_4
    iget v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mStatusBarHeight:I

    goto :goto_1
.end method

.method public getFloatingWindowPadding(Landroid/view/WindowManagerPolicy$WindowState;)Landroid/graphics/Rect;
    .locals 3

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mFloatingPaddingTemp:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mFloatingPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mFloatingPaddingTemp:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->getFloatingStatusBarHeight(Landroid/view/WindowManagerPolicy$WindowState;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mFloatingPaddingTemp:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getGlobalSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;ILandroid/view/WindowManagerPolicy$WindowState;)I
    .locals 5

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    const/4 v2, 0x4

    if-eqz p1, :cond_3

    const/4 v1, 0x0

    if-eqz p3, :cond_2

    :try_start_0
    invoke-interface {p3}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_0

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_1

    :cond_0
    and-int/lit8 v3, p2, 0x4

    if-eqz v3, :cond_4

    :cond_1
    const/4 v1, 0x1

    :cond_2
    :goto_0
    if-nez v1, :cond_3

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/BarController;->isTransientShowing()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v2, 0x0

    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->notifySystemUiVisibility(I)V

    monitor-exit v4

    return v2

    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getMinimizeSize()I
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMinimizeSize:I

    return v0
.end method

.method public getScaleWindowResizableSize()I
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mScaleWindowResizableSize:I

    return v0
.end method

.method public handleLongPressOnRecent()Z
    .locals 8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportSimplificationUI(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isVzwSetupRunning()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v1

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTopFullscreenOpaqueWindowState()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->needHideTrayBar(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v3

    iget v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mEnableMultiWindowUISetting:I

    if-eqz v5, :cond_0

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->isUserSetupComplete()Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v3, :cond_4

    :cond_0
    const-string v2, "RecentsMultiWindow couldn\'t execute"

    sget-boolean v5, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  isDeviceProvisioned : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  TopFullscreenOpaqueWindowState : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTopFullscreenOpaqueWindowState()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  needHideTrayBar : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMobileKeyboardEnabled:Z

    if-eqz v5, :cond_2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v5, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$7;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$7;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;)V

    const-wide/16 v6, 0x0

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    const-string v5, "MultiPhoneWindowManager"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return v4

    :cond_4
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const-string v5, "recentapps"

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->startMultiWindowRecentsActivity()V

    const/4 v4, 0x1

    goto :goto_0
.end method

.method public inKeyguardRestrictedKeyInputMode()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isInputRestricted()Z

    move-result v0

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 5

    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    iput-object p3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    const-class v2, Landroid/view/WindowManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManagerInternal;

    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    iput-object p5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-object p4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.feature.multiwindow.recentui"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mIsRecentUI:Z

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.feature.multiwindow.simplificationui"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mIsTrayBarUI:Z

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowUIIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowUIIntent:Landroid/content/Intent;

    const-string v3, "com.sec.android.app.FlashBarService"

    const-string v4, "com.sec.android.app.FlashBarService.MultiWindowTrayService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$SettingsObserver;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$SettingsObserver;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mSettingsObserver:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$SettingsObserver;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mSettingsObserver:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$SettingsObserver;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$SettingsObserver;->observe()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiuserReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mStatusBarHeight:I

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public interceptKeyBeforeDispatching(ZIZLandroid/view/WindowManagerPolicy$WindowState;)I
    .locals 6

    const/4 v1, 0x0

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isHMTSupportAndConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_4

    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mEnableMultiWindowUISetting:I

    if-eqz v3, :cond_0

    const/4 v3, 0x7

    if-ne p2, v3, :cond_3

    if-nez p3, :cond_3

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mIsTrayBarUI:Z

    if-eqz v3, :cond_3

    invoke-virtual {p0, p4}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->toggleMultiWindowTray(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mConsumeBackKeyUp:Z

    const-string v3, "MultiPhoneWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MultiWindowTrayBar toggle / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mConsumeBackKeyUp:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mConsumeBackKeyUp:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLockTaskModeEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mConsumeBackKeyUp:Z

    if-eqz v3, :cond_0

    if-lez p2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_4
    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mEnableMultiWindowUISetting:I

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v3

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mConsumeBackKeyUp:Z

    if-eqz v3, :cond_5

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mConsumeBackKeyUp:Z

    move v1, v2

    goto :goto_0

    :cond_5
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->closeMultiWindowTrayBar(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.android.intent.action.BACK_KEY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move v1, v2

    goto :goto_0
.end method

.method public isEnabledTalkback()Z
    .locals 8

    const/16 v1, 0x3a

    const-string v0, "com.google.android.marvin.talkback"

    new-instance v5, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v6, 0x3a

    invoke-direct {v5, v6}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "enabled_accessibility_services"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v4, ""

    :cond_0
    invoke-virtual {v5, v4}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v6, "com.google.android.marvin.talkback"

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    :goto_0
    return v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public isForceHideCascade()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHideCascade:Z

    return v0
.end method

.method public isForceHideStatusBar()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHideStatusBar:Z

    return v0
.end method

.method public isSplitTopApplicationWindow()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopApplicationWindowMode:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopApplicationWindowMode:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStatusBarTransient()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mStatusBarTransient:Z

    return v0
.end method

.method public layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;IIIIIIIIIIIIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 23

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/android/internal/policy/impl/PolicyControl;->getWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v10

    iget v0, v5, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move/from16 v20, v0

    move/from16 v0, v20

    and-int/lit16 v4, v0, 0xf0

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PolicyControl;->getSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v17

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v19

    invoke-virtual {v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v18

    const/16 v20, 0x800

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v14

    iget v0, v5, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    move/from16 v20, v0

    and-int/lit8 v20, v20, 0x8

    if-eqz v20, :cond_7

    const/4 v3, 0x1

    :goto_0
    move/from16 v0, p4

    move/from16 v1, p5

    if-ge v0, v1, :cond_8

    const/4 v12, 0x1

    :goto_1
    if-eqz v19, :cond_9

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v20

    if-eqz v20, :cond_9

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mStatusBarTransient:Z

    :cond_0
    :goto_2
    if-nez p2, :cond_6

    if-nez v3, :cond_6

    iget v0, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v20, v0

    const v21, 0x1fffffff

    and-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->shouldMoveUpWindow(Landroid/view/WindowManagerPolicy$WindowState;Z)Z

    move-result v20

    if-eqz v20, :cond_1e

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getStackBounds()Landroid/graphics/Rect;

    move-result-object v16

    move-object/from16 v0, v16

    iget v8, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v16

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getScaleFactor()Landroid/graphics/PointF;

    move-result-object v15

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isFloating()Z

    move-result v20

    if-eqz v20, :cond_1

    if-eqz v18, :cond_f

    if-eqz v14, :cond_f

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getRequestedWidthLw()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    iget v0, v15, Landroid/graphics/PointF;->x:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    const/high16 v21, 0x3f000000    # 0.5f

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v9, v0

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getRequestedHeightLw()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    iget v0, v15, Landroid/graphics/PointF;->y:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    const/high16 v21, 0x3f000000    # 0.5f

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v7, v0

    :goto_3
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    move-result v21

    sub-int v21, v21, v9

    div-int/lit8 v21, v21, 0x2

    add-int v8, v20, v21

    :cond_1
    move/from16 v0, p12

    if-le v6, v0, :cond_6

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    if-gez v20, :cond_2

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p20

    iput v0, v1, Landroid/graphics/Rect;->top:I

    :cond_2
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isFloating()Z

    move-result v20

    if-nez v20, :cond_11

    if-eqz v12, :cond_11

    if-nez v18, :cond_11

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, p7

    if-ne v0, v1, :cond_11

    move/from16 v0, p5

    if-ge v7, v0, :cond_11

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    if-gez v20, :cond_3

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p18

    iput v0, v1, Landroid/graphics/Rect;->top:I

    :cond_3
    sub-int v20, p12, v7

    move/from16 v0, v20

    move-object/from16 v1, p17

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move/from16 v0, p12

    move-object/from16 v1, p18

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, p12

    move-object/from16 v1, p17

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    move-result v20

    move/from16 v0, v20

    move/from16 v1, p15

    if-ge v0, v1, :cond_10

    move-object/from16 v0, p17

    iput v8, v0, Landroid/graphics/Rect;->left:I

    add-int v20, v8, v9

    move/from16 v0, v20

    move-object/from16 v1, p17

    iput v0, v1, Landroid/graphics/Rect;->right:I

    :goto_4
    const/16 v20, 0x10

    move/from16 v0, v20

    if-eq v4, v0, :cond_4

    const/16 v20, 0x20

    move/from16 v0, v20

    if-ne v4, v0, :cond_5

    :cond_4
    move/from16 v0, p7

    move-object/from16 v1, p18

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    :cond_5
    iget v0, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v20, v0

    const/high16 v21, -0x80000000

    or-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :goto_5
    const/16 v20, 0x30

    move/from16 v0, v20

    if-eq v4, v0, :cond_1d

    if-nez v14, :cond_1d

    move/from16 v0, p10

    move-object/from16 v1, p21

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move/from16 v0, p11

    move-object/from16 v1, p21

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    :cond_6
    :goto_6
    return-void

    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_8
    const/4 v12, 0x0

    goto/16 :goto_1

    :cond_9
    if-eqz v18, :cond_0

    iget v0, v5, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    move/from16 v20, v0

    and-int/lit8 v20, v20, 0x10

    if-nez v20, :cond_b

    const/4 v11, 0x1

    :goto_7
    if-nez v11, :cond_c

    move-object/from16 v0, p17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->getFloatingStatusBarHeight(Landroid/view/WindowManagerPolicy$WindowState;)I

    move-result v21

    sub-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p17

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    :cond_a
    :goto_8
    const/16 v20, -0x2710

    move/from16 v0, v20

    move-object/from16 v1, p21

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move/from16 v0, v20

    move-object/from16 v1, p21

    iput v0, v1, Landroid/graphics/Rect;->left:I

    move/from16 v0, v20

    move-object/from16 v1, p20

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move/from16 v0, v20

    move-object/from16 v1, p20

    iput v0, v1, Landroid/graphics/Rect;->left:I

    move/from16 v0, v20

    move-object/from16 v1, p19

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move/from16 v0, v20

    move-object/from16 v1, p19

    iput v0, v1, Landroid/graphics/Rect;->left:I

    move/from16 v0, v20

    move-object/from16 v1, p18

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move/from16 v0, v20

    move-object/from16 v1, p18

    iput v0, v1, Landroid/graphics/Rect;->left:I

    const/16 v20, 0x2710

    move/from16 v0, v20

    move-object/from16 v1, p21

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, v20

    move-object/from16 v1, p21

    iput v0, v1, Landroid/graphics/Rect;->right:I

    move/from16 v0, v20

    move-object/from16 v1, p20

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, v20

    move-object/from16 v1, p20

    iput v0, v1, Landroid/graphics/Rect;->right:I

    move/from16 v0, v20

    move-object/from16 v1, p19

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, v20

    move-object/from16 v1, p19

    iput v0, v1, Landroid/graphics/Rect;->right:I

    move/from16 v0, v20

    move-object/from16 v1, p18

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, v20

    move-object/from16 v1, p18

    iput v0, v1, Landroid/graphics/Rect;->right:I

    goto/16 :goto_2

    :cond_b
    const/4 v11, 0x0

    goto :goto_7

    :cond_c
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isFloating()Z

    move-result v20

    if-nez v20, :cond_a

    if-eqz p2, :cond_d

    if-eqz v3, :cond_e

    :cond_d
    move-object/from16 v20, p1

    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p17

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->applyMultiWindowScaleFrame(Landroid/view/WindowManagerPolicy$WindowState;Landroid/graphics/Rect;)V

    goto :goto_8

    :cond_e
    move-object/from16 v20, p2

    goto :goto_9

    :cond_f
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getRequestedWidthLw()I

    move-result v9

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getRequestedHeightLw()I

    move-result v7

    goto/16 :goto_3

    :cond_10
    move/from16 v0, p13

    move-object/from16 v1, p17

    iput v0, v1, Landroid/graphics/Rect;->left:I

    add-int v20, p13, p15

    move/from16 v0, v20

    move-object/from16 v1, p17

    iput v0, v1, Landroid/graphics/Rect;->right:I

    goto/16 :goto_4

    :cond_11
    if-eqz v18, :cond_12

    add-int v20, v7, p8

    :goto_a
    move/from16 v0, v20

    move/from16 v1, p12

    if-ge v0, v1, :cond_15

    if-eqz v18, :cond_13

    if-eqz v14, :cond_13

    sub-int v20, p12, v7

    move/from16 v0, p8

    int-to-float v0, v0

    move/from16 v21, v0

    iget v0, v15, Landroid/graphics/PointF;->y:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    const/high16 v22, 0x3f000000    # 0.5f

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    sub-int v20, v20, v21

    div-int/lit8 v20, v20, 0x2

    add-int v20, v20, p8

    move/from16 v0, v20

    move-object/from16 v1, p20

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move/from16 v0, v20

    move-object/from16 v1, p17

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    mul-int/lit8 v21, v7, 0x1

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    iget v0, v15, Landroid/graphics/PointF;->y:F

    move/from16 v22, v0

    div-float v21, v21, v22

    const/high16 v22, 0x3f000000    # 0.5f

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    add-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p20

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, v20

    move-object/from16 v1, p17

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    :goto_b
    iget v0, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v20, v0

    const/high16 v21, 0x20000000

    or-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto/16 :goto_5

    :cond_12
    move/from16 v20, v7

    goto :goto_a

    :cond_13
    move/from16 v0, p3

    move-object/from16 v1, p18

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move/from16 v0, p3

    move-object/from16 v1, p17

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move/from16 v0, p12

    move-object/from16 v1, p18

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, p12

    move-object/from16 v1, p17

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    if-eqz v19, :cond_14

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isFloating()Z

    move-result v20

    if-eqz v20, :cond_14

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p17

    iput v0, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    move-result v21

    add-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p17

    iput v0, v1, Landroid/graphics/Rect;->right:I

    goto :goto_b

    :cond_14
    move-object/from16 v0, p17

    iput v8, v0, Landroid/graphics/Rect;->left:I

    add-int v20, v8, v9

    move/from16 v0, v20

    move-object/from16 v1, p17

    iput v0, v1, Landroid/graphics/Rect;->right:I

    goto :goto_b

    :cond_15
    if-eqz v18, :cond_17

    if-eqz v14, :cond_17

    move/from16 v0, p8

    move-object/from16 v1, p20

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move/from16 v0, p8

    move-object/from16 v1, p17

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    mul-int/lit8 v21, v7, 0x1

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    iget v0, v15, Landroid/graphics/PointF;->y:F

    move/from16 v22, v0

    div-float v21, v21, v22

    const/high16 v22, 0x3f000000    # 0.5f

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    add-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p17

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    const/16 v20, 0x10

    move/from16 v0, v20

    if-eq v4, v0, :cond_16

    move-object/from16 v0, p17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p20

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    :goto_c
    iget v0, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v20, v0

    const/high16 v21, 0x40000000    # 2.0f

    or-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto/16 :goto_5

    :cond_16
    sub-int v20, p12, p8

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mFloatingPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    iget v0, v15, Landroid/graphics/PointF;->y:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    sub-float v20, v20, v21

    const/high16 v21, 0x3f800000    # 1.0f

    mul-float v20, v20, v21

    iget v0, v15, Landroid/graphics/PointF;->y:F

    move/from16 v21, v0

    div-float v20, v20, v21

    const/high16 v21, 0x3f000000    # 0.5f

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    add-int v20, v20, p8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mFloatingPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    iget v0, v15, Landroid/graphics/PointF;->y:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    const/high16 v22, 0x3f000000    # 0.5f

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    add-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p20

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_c

    :cond_17
    if-eqz v18, :cond_1a

    :goto_d
    move/from16 v0, p8

    move-object/from16 v1, p20

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move/from16 v0, p8

    move-object/from16 v1, p18

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move/from16 v0, p8

    move-object/from16 v1, p17

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p17

    iput v8, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    add-int v20, v20, v9

    move/from16 v0, v20

    move-object/from16 v1, p17

    iput v0, v1, Landroid/graphics/Rect;->right:I

    if-eqz p22, :cond_1b

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x200

    move/from16 v20, v0

    if-eqz v20, :cond_1b

    iget v0, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_1b

    iget v0, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v20, v0

    const/16 v21, 0x7cf

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_1b

    add-int v20, p3, p5

    move/from16 v0, v20

    move-object/from16 v1, p18

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, v20

    move-object/from16 v1, p17

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    :goto_e
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isFloating()Z

    move-result v20

    if-eqz v20, :cond_18

    move/from16 v0, p12

    move-object/from16 v1, p18

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, p12

    move-object/from16 v1, p17

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, p13

    move-object/from16 v1, p18

    iput v0, v1, Landroid/graphics/Rect;->left:I

    add-int v20, p13, p15

    move/from16 v0, v20

    move-object/from16 v1, p18

    iput v0, v1, Landroid/graphics/Rect;->right:I

    :cond_18
    const/16 v20, 0x10

    move/from16 v0, v20

    if-eq v4, v0, :cond_19

    move/from16 v0, p7

    move-object/from16 v1, p20

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, p7

    move-object/from16 v1, p18

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    :cond_19
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isFloating()Z

    move-result v20

    if-eqz v20, :cond_1c

    iget v0, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v20, v0

    const/high16 v21, 0x40000000    # 2.0f

    or-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto/16 :goto_5

    :cond_1a
    const/16 p8, 0x0

    goto/16 :goto_d

    :cond_1b
    add-int v20, p14, p16

    move/from16 v0, v20

    move-object/from16 v1, p18

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, v20

    move-object/from16 v1, p17

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_e

    :cond_1c
    const/high16 v20, 0x40000000    # 2.0f

    move/from16 v0, v20

    iput v0, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto/16 :goto_5

    :cond_1d
    move-object/from16 v0, p21

    move-object/from16 v1, p20

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_6

    :cond_1e
    if-eqz v19, :cond_6

    if-eqz v12, :cond_6

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isFloating()Z

    move-result v20

    if-nez v20, :cond_6

    invoke-virtual {v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v20

    const/16 v21, 0xc

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v20

    if-eqz v20, :cond_6

    move-object/from16 v0, p18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, p9

    if-ge v0, v1, :cond_1f

    move/from16 v0, p9

    move-object/from16 v1, p18

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    :cond_1f
    move-object/from16 v0, p19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, p9

    if-ge v0, v1, :cond_20

    move/from16 v0, p9

    move-object/from16 v1, p19

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    :cond_20
    move-object/from16 v0, p20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, p9

    if-ge v0, v1, :cond_21

    move/from16 v0, p9

    move-object/from16 v1, p20

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    :cond_21
    move-object/from16 v0, p21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, p9

    if-ge v0, v1, :cond_6

    move/from16 v0, p9

    move-object/from16 v1, p21

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_6
.end method

.method public needForceHide(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Lcom/samsung/android/multiwindow/MultiWindowStyle;Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z
    .locals 7

    const/4 v6, 0x4

    const/4 v4, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_1

    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v5, v3, :cond_1

    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_1

    invoke-virtual {p3, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz p6, :cond_1

    invoke-virtual {p6, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    if-eqz p5, :cond_2

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v5

    if-nez v5, :cond_2

    iget v5, p5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x898

    if-eq v5, v6, :cond_0

    :cond_2
    invoke-virtual {p3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz p6, :cond_7

    invoke-virtual {p6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_3
    move v0, v3

    :goto_1
    if-eqz v0, :cond_b

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHideCascade:Z

    if-nez v5, :cond_0

    if-eqz p2, :cond_6

    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x3ee

    if-eq v5, v6, :cond_4

    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x3ef

    if-ne v5, v6, :cond_6

    :cond_4
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHidePenWindowController:Z

    if-eqz v5, :cond_5

    if-eqz p2, :cond_5

    iget v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHidePenWindowControllerStackId:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_5

    iget v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHidePenWindowControllerStackId:I

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getStackId()I

    move-result v6

    if-eq v5, v6, :cond_0

    :cond_5
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getTopPenWindowControllerInStack()Landroid/view/IApplicationToken;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v5

    if-eq v2, v5, :cond_6

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isTopPenWindowControllerVisibleInStack()Z

    move-result v5

    if-nez v5, :cond_0

    :cond_6
    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->keyguardOn()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mCanBeForceHide:Z

    if-nez v5, :cond_9

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v5

    if-nez v5, :cond_9

    move v3, v4

    goto :goto_0

    :cond_7
    move v0, v4

    goto :goto_1

    :cond_8
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mCanBeForceHide:Z

    if-nez v5, :cond_9

    move v3, v4

    goto :goto_0

    :cond_9
    const/high16 v1, 0x480000

    if-eqz p2, :cond_a

    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v5, v1

    if-eqz v5, :cond_a

    move v3, v4

    goto :goto_0

    :cond_a
    if-eqz p5, :cond_0

    iget v5, p5, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v5, v1

    if-eqz v5, :cond_0

    move v3, v4

    goto/16 :goto_0

    :cond_b
    move v3, v4

    goto/16 :goto_0
.end method

.method public needHideTrayBar(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 9

    const/4 v5, 0x1

    const-string v6, "true"

    const-string v7, "dev.knoxapp.running"

    const-string v8, "false"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v6

    if-nez v6, :cond_0

    :cond_2
    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    move-object v3, v2

    if-eqz p1, :cond_3

    iget v6, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v6, v5, :cond_3

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    :cond_3
    if-eqz v3, :cond_4

    iget v6, v3, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->hasChild()Z

    move-result v6

    if-eqz v6, :cond_0

    :cond_4
    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopFullScreenOpaqueWindowStates:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    and-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_0

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v6

    const/16 v7, 0x1000

    invoke-virtual {v6, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_0

    :cond_6
    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isKidsModeEnabled()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isEasyModeEnabled()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLockTaskModeEnabled()Z

    move-result v6

    if-nez v6, :cond_0

    :cond_7
    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_8

    iget v6, v1, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    and-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_0

    :cond_8
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method public notifySystemUiVisibility(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$6;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$6;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSystemReady(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    return-void
.end method

.method public prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .locals 1

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    :pswitch_0
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    :pswitch_1
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowGuide:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    const/4 v0, -0x7

    goto :goto_1

    :cond_0
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    :pswitch_3
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x898
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_1

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_2

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_3

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowGuide:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_0

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowGuide:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0
.end method

.method public setCanBeForceHide(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mCanBeForceHide:Z

    return-void
.end method

.method public setCurrentInputMethodTargetLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    const-string v0, "MultiPhoneWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Changed -> mCurrentInputMethodTarget : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setInitialDisplaySize()V
    .locals 3

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportStyleTransition(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mFloatingPadding:Landroid/graphics/Rect;

    const v2, 0x105022e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    :cond_0
    const v1, 0x105022d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMinimizeSize:I

    const v1, 0x1050241

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mScaleWindowResizableSize:I

    return-void
.end method

.method public setInputMethodWindow(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    const-string v0, "MultiPhoneWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Changed -> mInputMehtodWindow : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setMultiWindowTrayOpenState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mIsMultiWindowTrayOpen:Z

    return-void
.end method

.method public shouldEnableLayoutInsetsBySoftInput(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-interface {p2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_4

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    :goto_1
    invoke-interface {p2}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v3

    if-nez v3, :cond_5

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    move-object v0, p1

    goto :goto_1

    :cond_5
    invoke-interface {p2}, Landroid/view/WindowManagerPolicy$WindowState;->getStackId()I

    move-result v3

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getStackId()I

    move-result v4

    if-ne v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method startMultiWindowRecentsActivity()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$8;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$8;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stopDragDropService()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.intent.action.ACTION_RECENTS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public toggleMultiWindowTray(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->needHideTrayBar(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v2, "MultiPhoneWindowManager"

    const-string v3, "MultiWindowTrayBar couldn\'t execute"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowUIIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public toggleRecentApps()V
    .locals 3

    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mEnableMultiWindowUISetting:I

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mFirstRecentKeyClick:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mIsRecentUI:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mFirstRecentKeyClick:Z

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowUIIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.multiwindow.recentkey.start"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public updateMultiWindowTrayBar(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$5;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$5;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateSettings()V
    .locals 13

    const/4 v7, 0x0

    const/4 v1, 0x1

    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mIsRecentUI:Z

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportBezelUI(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mFirstMultiWindowSettingOn:Z

    :cond_1
    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mEnableMultiWindowUISetting:I

    const-string v9, "multi_window_enabled"

    const/4 v10, 0x0

    const/4 v11, -0x2

    invoke-static {v5, v9, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    iput v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mEnableMultiWindowUISetting:I

    const-string v9, "MultiPhoneWindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateSetting mEnableMultiWindowUISetting = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mEnableMultiWindowUISetting:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mFirstMultiWindowSettingOn:Z

    if-eqz v9, :cond_6

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mSystemReady:Z

    if-eqz v9, :cond_6

    iget v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mEnableMultiWindowUISetting:I

    if-ne v9, v4, :cond_2

    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportBezelUI(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_6

    :cond_2
    const/4 v2, 0x1

    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v6

    const-string v9, "2.0"

    const-string v10, "version"

    invoke-virtual {v6, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v10, "persona"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersonaManager;

    invoke-virtual {v3}, Landroid/os/PersonaManager;->getForegroundUser()I

    move-result v0

    const/16 v9, 0x64

    if-lt v0, v9, :cond_3

    const/4 v2, 0x0

    :cond_3
    if-eqz v2, :cond_6

    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "multi_window_tray_shown"

    const/4 v11, 0x1

    const/4 v12, -0x2

    invoke-static {v9, v10, v11, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    if-ne v9, v1, :cond_7

    :goto_0
    if-nez v1, :cond_4

    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "multi_window_tray_shown"

    const/4 v10, 0x1

    const/4 v11, -0x2

    invoke-static {v7, v9, v10, v11}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_4
    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTopFullscreenOpaqueWindowState()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->needHideTrayBar(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v1, 0x0

    :cond_5
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->updateMultiWindowTrayBar(Z)V

    iget-boolean v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mSystemBooted:Z

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$2;

    invoke-direct {v9, p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$2;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;)V

    invoke-virtual {v7, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6
    monitor-exit v8

    return-void

    :cond_7
    move v1, v7

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method public windowTypeToLayerLw(I)I
    .locals 1

    const/16 v0, 0x899

    if-ne p1, v0, :cond_0

    const/4 v0, 0x5

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x89a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x89b

    if-ne p1, v0, :cond_2

    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    :cond_2
    const/16 v0, 0x8d4

    if-ne p1, v0, :cond_3

    const/16 v0, 0xb

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method
