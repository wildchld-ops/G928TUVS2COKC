.class Lcom/sec/android/app/launcher/activities/LauncherApp$2;
.super Landroid/database/ContentObserver;
.source "LauncherApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/activities/LauncherApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/LauncherApp;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/LauncherApp;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/LauncherApp$2;->this$0:Lcom/sec/android/app/launcher/activities/LauncherApp;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherApp$2;->this$0:Lcom/sec/android/app/launcher/activities/LauncherApp;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "home_and_apps_mode"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    # getter for: Lcom/sec/android/app/launcher/activities/LauncherApp;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mHomeModeObserver onChange, mHomeOnlyModeEnabled : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherApp;->mHomeOnlyModeEnabled:Z
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->access$400()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isHomeOnlySetting : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherApp;->mHomeOnlyModeEnabled:Z
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->access$400()Z

    move-result v3

    if-eq v3, v0, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherApp$2;->this$0:Lcom/sec/android/app/launcher/activities/LauncherApp;

    invoke-virtual {v3, v0}, Lcom/sec/android/app/launcher/activities/LauncherApp;->writeHomeOnlyModeEnabled(Z)V

    invoke-static {}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->getInstance()Lcom/sec/android/app/launcher/providers/LauncherProvider;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getInstance()Lcom/sec/android/app/launcher/providers/PageSettingsProvider;

    move-result-object v2

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->modeSwitch(Z)Z

    invoke-virtual {v2, v0}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->modeSwitch(Z)Z

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->recreate()V

    :cond_1
    return-void
.end method
