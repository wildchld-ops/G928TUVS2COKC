.class public Lcom/android/settings/accessibility/MagnifierService;
.super Landroid/app/Service;
.source "MagnifierService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/MagnifierService$DetectBinder;,
        Lcom/android/settings/accessibility/MagnifierService$MyReceiver;
    }
.end annotation


# instance fields
.field private ViewCoverType:I

.field private isScoverClosed:Z

.field mAccessibilityMagnifierObserver:Landroid/database/ContentObserver;

.field mContext:Landroid/content/Context;

.field private mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

.field private mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

.field mDetectBinder:Lcom/android/settings/accessibility/MagnifierService$DetectBinder;

.field mHoverScaleObserver:Landroid/database/ContentObserver;

.field mMagnifierSurfaceView:Lcom/android/settings/accessibility/MagnifierSurfaceView;

.field private mReceiver:Lcom/android/settings/accessibility/MagnifierService$MyReceiver;

.field private mScover:Lcom/samsung/android/sdk/cover/Scover;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput-object v2, p0, Lcom/android/settings/accessibility/MagnifierService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/settings/accessibility/MagnifierService$DetectBinder;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/MagnifierService$DetectBinder;-><init>(Lcom/android/settings/accessibility/MagnifierService;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/MagnifierService;->mDetectBinder:Lcom/android/settings/accessibility/MagnifierService$DetectBinder;

    iput v1, p0, Lcom/android/settings/accessibility/MagnifierService;->ViewCoverType:I

    new-instance v0, Lcom/android/settings/accessibility/MagnifierService$MyReceiver;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/accessibility/MagnifierService$MyReceiver;-><init>(Lcom/android/settings/accessibility/MagnifierService;Lcom/android/settings/accessibility/MagnifierService$1;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/MagnifierService;->mReceiver:Lcom/android/settings/accessibility/MagnifierService$MyReceiver;

    iput-boolean v1, p0, Lcom/android/settings/accessibility/MagnifierService;->isScoverClosed:Z

    new-instance v0, Lcom/android/settings/accessibility/MagnifierService$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/MagnifierService$1;-><init>(Lcom/android/settings/accessibility/MagnifierService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/MagnifierService;->mAccessibilityMagnifierObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/accessibility/MagnifierService$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/MagnifierService$2;-><init>(Lcom/android/settings/accessibility/MagnifierService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/MagnifierService;->mHoverScaleObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$102(Lcom/android/settings/accessibility/MagnifierService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/accessibility/MagnifierService;->isScoverClosed:Z

    return p1
.end method


# virtual methods
.method public getTypeOfCover()I
    .locals 4

    const/4 v2, 0x2

    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/MagnifierService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v2

    :cond_0
    return v2
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierService;->mDetectBinder:Lcom/android/settings/accessibility/MagnifierService$DetectBinder;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-boolean v0, p0, Lcom/android/settings/accessibility/MagnifierService;->isScoverClosed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierService;->mMagnifierSurfaceView:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/MagnifierSurfaceView;->configurationChange()V

    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/MagnifierService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accessibility/MagnifierService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/settings/accessibility/MagnifierSurfaceView;

    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/accessibility/MagnifierSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/accessibility/MagnifierService;->mMagnifierSurfaceView:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "finger_magnifier"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/accessibility/MagnifierService;->mAccessibilityMagnifierObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hover_zoom_value"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/accessibility/MagnifierService;->mHoverScaleObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v1, Lcom/samsung/android/sdk/cover/Scover;

    invoke-direct {v1}, Lcom/samsung/android/sdk/cover/Scover;-><init>()V

    iput-object v1, p0, Lcom/android/settings/accessibility/MagnifierService;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierService;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/MagnifierService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/cover/Scover;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/MagnifierService;->getTypeOfCover()I

    move-result v1

    iput v1, p0, Lcom/android/settings/accessibility/MagnifierService;->ViewCoverType:I

    new-instance v1, Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/MagnifierService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/accessibility/MagnifierService;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    new-instance v1, Lcom/android/settings/accessibility/MagnifierService$3;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/MagnifierService$3;-><init>(Lcom/android/settings/accessibility/MagnifierService;)V

    iput-object v1, p0, Lcom/android/settings/accessibility/MagnifierService;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/SsdkUnsupportedException;->printStackTrace()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierService;->mMagnifierSurfaceView:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierService;->mMagnifierSurfaceView:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    invoke-virtual {v1}, Lcom/android/settings/accessibility/MagnifierSurfaceView;->removeView()V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierService;->mAccessibilityMagnifierObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierService;->mHoverScaleObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierService;->mReceiver:Lcom/android/settings/accessibility/MagnifierService$MyReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierService;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierService;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierService;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/cover/ScoverManager;->unregisterListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportPenUsp10(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "air_button_onoff"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierService;->mMagnifierSurfaceView:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/MagnifierSurfaceView;->showView()V

    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierService;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierService;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierService;->mReceiver:Lcom/android/settings/accessibility/MagnifierService$MyReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.samsung.android.app.accesscontrol.PAUSE_MAGNIFIER"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    return v0
.end method

.method public onUpdate()V
    .locals 5

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "hover_zoom_magnifier_size"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "hover_zoom_value"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierService;->mMagnifierSurfaceView:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    invoke-virtual {v2, v0, v1}, Lcom/android/settings/accessibility/MagnifierSurfaceView;->update(II)V

    return-void
.end method
