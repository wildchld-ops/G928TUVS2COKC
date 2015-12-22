.class public Lcom/android/systemui/twscreenmanager/TwScreenManagerService;
.super Landroid/app/Service;
.source "TwScreenManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/twscreenmanager/TwScreenManagerService$TwScreenManagerBinder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TwScreenManagerService"


# instance fields
.field private final binder:Landroid/os/IBinder;

.field private final debug:Z

.field mContext:Landroid/content/Context;

.field mItent:Landroid/content/Intent;

.field private mTwSwitchModeView:Lcom/android/systemui/twscreenmanager/TwSwitchModeView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/twscreenmanager/TwScreenManagerService;->debug:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/twscreenmanager/TwScreenManagerService;->mTwSwitchModeView:Lcom/android/systemui/twscreenmanager/TwSwitchModeView;

    new-instance v0, Lcom/android/systemui/twscreenmanager/TwScreenManagerService$TwScreenManagerBinder;

    invoke-direct {v0, p0}, Lcom/android/systemui/twscreenmanager/TwScreenManagerService$TwScreenManagerBinder;-><init>(Lcom/android/systemui/twscreenmanager/TwScreenManagerService;)V

    iput-object v0, p0, Lcom/android/systemui/twscreenmanager/TwScreenManagerService;->binder:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/twscreenmanager/TwScreenManagerService;->binder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    iput-object p0, p0, Lcom/android/systemui/twscreenmanager/TwScreenManagerService;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v1, p0, Lcom/android/systemui/twscreenmanager/TwScreenManagerService;->mTwSwitchModeView:Lcom/android/systemui/twscreenmanager/TwSwitchModeView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/twscreenmanager/TwScreenManagerService;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/twscreenmanager/TwScreenManagerService;->mTwSwitchModeView:Lcom/android/systemui/twscreenmanager/TwSwitchModeView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/twscreenmanager/TwScreenManagerService;->mTwSwitchModeView:Lcom/android/systemui/twscreenmanager/TwSwitchModeView;

    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 13

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/16 v1, 0x438

    const/16 v2, 0x780

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;IIIIZII)Landroid/graphics/Bitmap;

    move-result-object v9

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/16 v1, 0x438

    const/16 v2, 0x780

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget v7, Landroid/view/SurfaceControl;->BUILT_IN_DISPLAY_ID_SUB:I

    invoke-static/range {v0 .. v7}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;IIIIZII)Landroid/graphics/Bitmap;

    move-result-object v10

    iput-object p1, p0, Lcom/android/systemui/twscreenmanager/TwScreenManagerService;->mItent:Landroid/content/Intent;

    if-nez v9, :cond_0

    :cond_0
    if-nez v10, :cond_1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/twscreenmanager/TwScreenManagerService;->mTwSwitchModeView:Lcom/android/systemui/twscreenmanager/TwSwitchModeView;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;

    iget-object v1, p0, Lcom/android/systemui/twscreenmanager/TwScreenManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/twscreenmanager/TwScreenManagerService;->mTwSwitchModeView:Lcom/android/systemui/twscreenmanager/TwSwitchModeView;

    iget-object v0, p0, Lcom/android/systemui/twscreenmanager/TwScreenManagerService;->mTwSwitchModeView:Lcom/android/systemui/twscreenmanager/TwSwitchModeView;

    invoke-virtual {v0, v9}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->setScreenShotMain(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/systemui/twscreenmanager/TwScreenManagerService;->mTwSwitchModeView:Lcom/android/systemui/twscreenmanager/TwSwitchModeView;

    invoke-virtual {v0, v10}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->setScreenShotSub(Landroid/graphics/Bitmap;)V

    new-instance v8, Landroid/view/WindowManager$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x1

    invoke-direct {v8, v0, v1}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    const/16 v0, 0x7d8

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v0, 0x400

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v0, 0x1

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    const-string v0, "TwSwitchModeView"

    invoke-virtual {v8, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v11

    new-instance v12, Landroid/view/WindowManagerImpl;

    invoke-direct {v12, v11}, Landroid/view/WindowManagerImpl;-><init>(Landroid/view/Display;)V

    iget-object v0, p0, Lcom/android/systemui/twscreenmanager/TwScreenManagerService;->mTwSwitchModeView:Lcom/android/systemui/twscreenmanager/TwSwitchModeView;

    invoke-virtual {v12, v0, v8}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    invoke-super/range {p0 .. p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    const/4 v0, 0x2

    return v0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/twscreenmanager/TwScreenManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    invoke-virtual {p0}, Lcom/android/systemui/twscreenmanager/TwScreenManagerService;->onDestroy()V

    goto :goto_0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
