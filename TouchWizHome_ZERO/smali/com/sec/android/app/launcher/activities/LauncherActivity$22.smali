.class Lcom/sec/android/app/launcher/activities/LauncherActivity$22;
.super Landroid/content/BroadcastReceiver;
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
.method constructor <init>(Lcom/sec/android/app/launcher/activities/LauncherActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$22;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "android.intent.action.WALLPAPER_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LauncherActivity"

    const-string v1, "WallpaperChangeReceiver - Wallpaper Changed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$22;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->changeWallPaperInThread()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$22;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    iget-boolean v0, v0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->SUPPORT_TILT_WALLPAPER:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$22;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    iget-boolean v0, v0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWallpaperTiltSettingEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/utils/GyroForShadow;->changeTiltXYRange()V

    goto :goto_0
.end method
