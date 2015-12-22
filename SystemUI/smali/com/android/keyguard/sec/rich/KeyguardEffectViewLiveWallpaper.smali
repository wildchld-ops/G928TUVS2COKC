.class public Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;
.super Landroid/widget/FrameLayout;
.source "KeyguardEffectViewLiveWallpaper.java"

# interfaces
.implements Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;


# static fields
.field private static final FINISH_INIT_DELAY:I = 0x3e8

.field private static final MSG_CONNECTION_DISCONNECT:I = 0x1

.field private static final MSG_SET_VISIBILITY:I

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final SETTING_LOCKSCREEN_LIVEWALLPAPER_CLASS_NAME:Ljava/lang/String;

.field private final SETTING_LOCKSCREEN_LIVEWALLPAPER_PACKAGE_NAME:Ljava/lang/String;

.field private mConnection:Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;

.field private final mContext:Landroid/content/Context;

.field private mFinishInitHandler:Landroid/os/Handler;

.field mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mIsHidden:Z

.field private mIsNotInitialized:Z

.field private mIsScreenTurnedOn:Z

.field private mIsShowing:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "KeyguardEffectViewLiveWallpaper"

    sput-object v0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;-><init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;-><init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;Z)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "just_lock_livewallpaper_package_name"

    iput-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->SETTING_LOCKSCREEN_LIVEWALLPAPER_PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "just_lock_livewallpaper_class_name"

    iput-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->SETTING_LOCKSCREEN_LIVEWALLPAPER_CLASS_NAME:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mIsScreenTurnedOn:Z

    iput-boolean v1, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mIsShowing:Z

    iput-boolean v1, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mIsHidden:Z

    iput-boolean v2, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mIsNotInitialized:Z

    new-instance v0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper$1;-><init>(Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mFinishInitHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper$2;-><init>(Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iput-object p1, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;)Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mConnection:Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;)Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mConnection:Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;

    return-object p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mFinishInitHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private changeVisibility()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mConnection:Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mConnection:Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->isShowingAndLcdOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->setVisibility(Z)V

    goto :goto_0
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

.method private makeConnection()V
    .locals 9

    const/4 v8, 0x0

    const/4 v6, -0x2

    iget-object v4, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mConnection:Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "just_lock_livewallpaper_package_name"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "just_lock_livewallpaper_class_name"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.service.wallpaper.WallpaperService"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v4, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;

    iget-object v5, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v1, p0}, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/view/View;)V

    iput-object v4, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mConnection:Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;

    :cond_3
    iget-object v4, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v2

    sget-object v4, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "show = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mConnection:Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;

    if-eqz v4, :cond_1

    if-nez v2, :cond_4

    iget-object v4, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mConnection:Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;

    invoke-virtual {v4}, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->isServiceConnected()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mConnection:Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;

    invoke-virtual {v4}, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->connect()Z

    :cond_4
    iget-boolean v4, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mIsNotInitialized:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mConnection:Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;

    invoke-virtual {v4}, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->isServiceConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    iput-boolean v8, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mIsNotInitialized:Z

    iget-object v4, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mConnection:Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->setVisibility(Z)V

    iget-object v4, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mFinishInitHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    sget-object v0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->TAG:Ljava/lang/String;

    const-string v1, "cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mIsShowing:Z

    invoke-direct {p0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->changeVisibility()V

    return-void
.end method

.method public getUnlockDelay()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public handleHoverEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
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
    .locals 0

    return-void
.end method

.method public isShowingAndLcdOn()Z
    .locals 3

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v0

    iget-boolean v2, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mIsHidden:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mIsScreenTurnedOn:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mIsShowing:Z

    if-eqz v2, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x0

    :cond_1
    return v1
.end method

.method protected onAttachedToWindow()V
    .locals 3

    sget-object v0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->TAG:Ljava/lang/String;

    const-string v1, "attached"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    sget-object v0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mConnection = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mConnection:Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mKeyguardManager.isKeyguardLocked() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mConnection:Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->show()V

    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    sget-object v0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->TAG:Ljava/lang/String;

    const-string v1, "detached"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mConnection:Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->cleanUp()V

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mConnection:Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->disconnect()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mConnection:Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;

    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public playLockSound()V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 2

    sget-object v0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->TAG:Ljava/lang/String;

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->makeConnection()V

    return-void
.end method

.method public screenTurnedOff()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->TAG:Ljava/lang/String;

    const-string v1, "screen off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mIsScreenTurnedOn:Z

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mFinishInitHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mFinishInitHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->changeVisibility()V

    return-void
.end method

.method public screenTurnedOn()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->TAG:Ljava/lang/String;

    const-string v1, "screen on"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mIsScreenTurnedOn:Z

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mFinishInitHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mFinishInitHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->changeVisibility()V

    return-void
.end method

.method public setContextualWallpaper(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public setHidden(Z)V
    .locals 3

    sget-object v0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set hidden = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mIsHidden:Z

    invoke-direct {p0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->changeVisibility()V

    return-void
.end method

.method public show()V
    .locals 2

    sget-object v0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->TAG:Ljava/lang/String;

    const-string v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mIsShowing:Z

    invoke-direct {p0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->makeConnection()V

    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public update()V
    .locals 4

    iget-object v1, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v0

    sget-object v1, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mConnection:Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->isShowingAndLcdOn()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mConnection:Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->isServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->TAG:Ljava/lang/String;

    const-string v2, "reconnect"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mConnection:Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->connect()Z

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->changeVisibility()V

    :cond_1
    return-void
.end method

.method public updateAfterCreation()V
    .locals 0

    return-void
.end method
