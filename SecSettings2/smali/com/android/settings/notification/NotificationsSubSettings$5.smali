.class final Lcom/android/settings/notification/NotificationsSubSettings$5;
.super Lcom/android/settings/notification/SettingPref;
.source "NotificationsSubSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/NotificationsSubSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method varargs constructor <init>(ILjava/lang/String;Ljava/lang/String;I[I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/settings/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    return-void
.end method


# virtual methods
.method protected setSetting(Landroid/content/Context;I)Z
    .locals 2

    if-eqz p2, :cond_0

    # getter for: Lcom/android/settings/notification/NotificationsSubSettings;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {}, Lcom/android/settings/notification/NotificationsSubSettings;->access$500()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->loadSoundEffects()V

    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/notification/SettingPref;->setSetting(Landroid/content/Context;I)Z

    move-result v0

    return v0

    :cond_0
    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    # getter for: Lcom/android/settings/notification/NotificationsSubSettings;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {}, Lcom/android/settings/notification/NotificationsSubSettings;->access$500()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->unloadSoundEffects()V

    goto :goto_0
.end method
