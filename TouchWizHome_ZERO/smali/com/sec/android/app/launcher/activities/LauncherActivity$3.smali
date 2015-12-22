.class Lcom/sec/android/app/launcher/activities/LauncherActivity$3;
.super Landroid/database/ContentObserver;
.source "LauncherActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/activities/LauncherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/LauncherActivity;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$3;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 8

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v4, 0x1

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$3;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    iget-boolean v3, v3, Lcom/sec/android/app/launcher/activities/LauncherActivity;->SUPPORT_TILT_WALLPAPER:Z

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$3;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "wallpaper_tilt_status"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$3;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    if-eqz v2, :cond_4

    move v3, v4

    :goto_1
    iput-boolean v3, v5, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWallpaperTiltSettingEnabled:Z

    const-string v3, "LauncherActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "wallpaperTiltSettingChanged ContentObserver {...}::onChange() TiltEnable setting value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / mWallpaperTiltSettingEnabled : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$3;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    iget-boolean v6, v6, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWallpaperTiltSettingEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$3;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    iget-object v3, v3, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mTiltWallpaperScroller:Lcom/sec/android/app/launcher/utils/WallpaperScroller;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$3;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    new-instance v5, Lcom/sec/android/app/launcher/utils/WallpaperScroller;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->gInstance:Lcom/sec/android/app/launcher/activities/LauncherActivity;
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$100()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/sec/android/app/launcher/utils/WallpaperScroller;-><init>(Landroid/content/Context;)V

    iput-object v5, v3, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mTiltWallpaperScroller:Lcom/sec/android/app/launcher/utils/WallpaperScroller;

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$3;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$3;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mActivityRoot:Landroid/view/ViewGroup;
    invoke-static {v5}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$300(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v5

    # setter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWindowToken:Landroid/os/IBinder;
    invoke-static {v3, v5}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$202(Lcom/sec/android/app/launcher/activities/LauncherActivity;Landroid/os/IBinder;)Landroid/os/IBinder;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$3;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    iget-boolean v3, v3, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWallpaperTiltSettingEnabled:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$3;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWindowToken:Landroid/os/IBinder;
    invoke-static {v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$200(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$3;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$3;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    # setter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWindowToken:Landroid/os/IBinder;
    invoke-static {v3, v5}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$202(Lcom/sec/android/app/launcher/activities/LauncherActivity;Landroid/os/IBinder;)Landroid/os/IBinder;

    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$3;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWindowToken:Landroid/os/IBinder;
    invoke-static {v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$200(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$3;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    iget-object v3, v3, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mTiltWallpaperScroller:Lcom/sec/android/app/launcher/utils/WallpaperScroller;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$3;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    iget-object v3, v3, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mTiltWallpaperScroller:Lcom/sec/android/app/launcher/utils/WallpaperScroller;

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$3;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWindowToken:Landroid/os/IBinder;
    invoke-static {v5}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$200(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sec/android/app/launcher/utils/WallpaperScroller;->setWindowToken(Landroid/os/IBinder;)V

    :goto_2
    sget-boolean v3, Lcom/sec/android/app/launcher/activities/LauncherApp;->SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD:Z

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/sec/android/app/launcher/utils/GyroForShadow;->changeTiltXYRange()V

    goto/16 :goto_0

    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_5
    const-string v3, "LauncherActivity"

    const-string v5, "[wallpaperTiltSettingChanged] wallpaperscroller - mWindowToken is null"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$3;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    iget-object v3, v3, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mTiltWallpaperScroller:Lcom/sec/android/app/launcher/utils/WallpaperScroller;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/launcher/utils/WallpaperScroller;->resume(Z)V

    goto/16 :goto_0

    :cond_7
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$3;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    iget-object v3, v3, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mTiltWallpaperScroller:Lcom/sec/android/app/launcher/utils/WallpaperScroller;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/utils/WallpaperScroller;->pause()V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$3;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWindowToken:Landroid/os/IBinder;
    invoke-static {v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$200(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_0

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->gInstance:Lcom/sec/android/app/launcher/activities/LauncherActivity;
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$100()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v3

    invoke-static {v3}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$3;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWindowToken:Landroid/os/IBinder;
    invoke-static {v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$200(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3, v7, v7}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V

    goto/16 :goto_0
.end method
