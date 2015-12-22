.class Landroid/media/AudioService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method constructor <init>(Landroid/media/AudioService;)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    # getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Landroid/media/AudioService;->access$4600(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mode_ringer_streams_affected"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    # getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Landroid/media/AudioService;->access$4600(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dock_audio_media_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    # getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Landroid/media/AudioService;->access$4600(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "theme_touch_sound"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    # getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Landroid/media/AudioService;->access$4600(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sidesync_source_connect"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    # getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Landroid/media/AudioService;->access$4600(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "def_tactileassist_enable"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    # getter for: Landroid/media/AudioService;->GLOBAL_EFFECT_ENABLED:Z
    invoke-static {}, Landroid/media/AudioService;->access$9200()Z

    move-result v0

    if-eqz v0, :cond_0

    # getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Landroid/media/AudioService;->access$4600(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "hearing_musiccheck"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    # getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Landroid/media/AudioService;->access$4600(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sound_alive_effect"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    # getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Landroid/media/AudioService;->access$4600(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "k2hd_effect"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    # getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Landroid/media/AudioService;->access$4600(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "tube_amp_effect"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    # getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Landroid/media/AudioService;->access$4600(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enabled_accessibility_s_talkback"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v3, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;
    invoke-static {v3}, Landroid/media/AudioService;->access$8400(Landroid/media/AudioService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    invoke-virtual {v4}, Landroid/media/AudioService;->updateRingerModeAffectedStreams()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    iget-object v5, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    invoke-virtual {v5}, Landroid/media/AudioService;->getRingerModeInternal()I

    move-result v5

    const/4 v6, 0x0

    # invokes: Landroid/media/AudioService;->setRingerModeInt(IZ)V
    invoke-static {v4, v5, v6}, Landroid/media/AudioService;->access$7700(Landroid/media/AudioService;IZ)V

    :cond_0
    iget-object v4, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    iget-object v5, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v5}, Landroid/media/AudioService;->access$4600(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v5

    # invokes: Landroid/media/AudioService;->readDockAudioSettings(Landroid/content/ContentResolver;)V
    invoke-static {v4, v5}, Landroid/media/AudioService;->access$12800(Landroid/media/AudioService;Landroid/content/ContentResolver;)V

    iget-object v4, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    const/4 v5, 0x0

    # invokes: Landroid/media/AudioService;->checkAndSetThemeSound(Z)V
    invoke-static {v4, v5}, Landroid/media/AudioService;->access$12900(Landroid/media/AudioService;Z)V

    iget-object v4, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v4}, Landroid/media/AudioService;->access$4600(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "def_tactileassist_enable"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "audioParam;auto_haptic_enable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    # getter for: Landroid/media/AudioService;->GLOBAL_EFFECT_ENABLED:Z
    invoke-static {}, Landroid/media/AudioService;->access$9200()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mMySoundEnabled:I
    invoke-static {v4}, Landroid/media/AudioService;->access$9300(Landroid/media/AudioService;)I

    move-result v4

    iget-object v5, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v5}, Landroid/media/AudioService;->access$4600(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "hearing_musiccheck"

    const/4 v7, 0x0

    const/4 v8, -0x2

    invoke-static {v5, v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-eq v4, v5, :cond_2

    iget-object v4, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    iget-object v5, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v5}, Landroid/media/AudioService;->access$4600(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "hearing_musiccheck"

    const/4 v7, 0x0

    const/4 v8, -0x2

    invoke-static {v5, v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    # setter for: Landroid/media/AudioService;->mMySoundEnabled:I
    invoke-static {v4, v5}, Landroid/media/AudioService;->access$9302(Landroid/media/AudioService;I)I

    iget-object v4, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    iget-object v5, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mMySoundEnabled:I
    invoke-static {v5}, Landroid/media/AudioService;->access$9300(Landroid/media/AudioService;)I

    move-result v5

    # invokes: Landroid/media/AudioService;->setGlobalMySound(I)V
    invoke-static {v4, v5}, Landroid/media/AudioService;->access$9400(Landroid/media/AudioService;I)V

    :cond_1
    :goto_0
    iget-object v4, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    iget-object v5, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v5}, Landroid/media/AudioService;->access$4600(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "enabled_accessibility_s_talkback"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v1, :cond_5

    :goto_1
    # setter for: Landroid/media/AudioService;->mIsTalkBackEnabled:Z
    invoke-static {v4, v1}, Landroid/media/AudioService;->access$13002(Landroid/media/AudioService;Z)Z

    monitor-exit v3

    return-void

    :cond_2
    iget-object v4, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundAliveEnabled:I
    invoke-static {v4}, Landroid/media/AudioService;->access$9500(Landroid/media/AudioService;)I

    move-result v4

    iget-object v5, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v5}, Landroid/media/AudioService;->access$4600(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "sound_alive_effect"

    const/4 v7, 0x0

    const/4 v8, -0x2

    invoke-static {v5, v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-eq v4, v5, :cond_3

    iget-object v4, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    iget-object v5, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v5}, Landroid/media/AudioService;->access$4600(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "sound_alive_effect"

    const/4 v7, 0x0

    const/4 v8, -0x2

    invoke-static {v5, v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    # setter for: Landroid/media/AudioService;->mSoundAliveEnabled:I
    invoke-static {v4, v5}, Landroid/media/AudioService;->access$9502(Landroid/media/AudioService;I)I

    iget-object v4, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    iget-object v5, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundAliveEnabled:I
    invoke-static {v5}, Landroid/media/AudioService;->access$9500(Landroid/media/AudioService;)I

    move-result v5

    # invokes: Landroid/media/AudioService;->setGlobalSoundAlive(I)V
    invoke-static {v4, v5}, Landroid/media/AudioService;->access$9600(Landroid/media/AudioService;I)V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    :try_start_1
    iget-object v4, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mK2HDEnabled:I
    invoke-static {v4}, Landroid/media/AudioService;->access$9700(Landroid/media/AudioService;)I

    move-result v4

    iget-object v5, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v5}, Landroid/media/AudioService;->access$4600(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "k2hd_effect"

    const/4 v7, 0x0

    const/4 v8, -0x2

    invoke-static {v5, v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-eq v4, v5, :cond_4

    iget-object v4, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    iget-object v5, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v5}, Landroid/media/AudioService;->access$4600(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "k2hd_effect"

    const/4 v7, 0x0

    const/4 v8, -0x2

    invoke-static {v5, v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    # setter for: Landroid/media/AudioService;->mK2HDEnabled:I
    invoke-static {v4, v5}, Landroid/media/AudioService;->access$9702(Landroid/media/AudioService;I)I

    iget-object v4, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    iget-object v5, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mK2HDEnabled:I
    invoke-static {v5}, Landroid/media/AudioService;->access$9700(Landroid/media/AudioService;)I

    move-result v5

    # invokes: Landroid/media/AudioService;->setGlobalK2HD(I)V
    invoke-static {v4, v5}, Landroid/media/AudioService;->access$9800(Landroid/media/AudioService;I)V

    goto/16 :goto_0

    :cond_4
    iget-object v4, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mTubeAmpEnabled:I
    invoke-static {v4}, Landroid/media/AudioService;->access$9900(Landroid/media/AudioService;)I

    move-result v4

    iget-object v5, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v5}, Landroid/media/AudioService;->access$4600(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "tube_amp_effect"

    const/4 v7, 0x0

    const/4 v8, -0x2

    invoke-static {v5, v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    iget-object v5, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v5}, Landroid/media/AudioService;->access$4600(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "tube_amp_effect"

    const/4 v7, 0x0

    const/4 v8, -0x2

    invoke-static {v5, v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    # setter for: Landroid/media/AudioService;->mTubeAmpEnabled:I
    invoke-static {v4, v5}, Landroid/media/AudioService;->access$9902(Landroid/media/AudioService;I)I

    iget-object v4, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    iget-object v5, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mTubeAmpEnabled:I
    invoke-static {v5}, Landroid/media/AudioService;->access$9900(Landroid/media/AudioService;)I

    move-result v5

    # invokes: Landroid/media/AudioService;->setGlobalTubeAmp(I)V
    invoke-static {v4, v5}, Landroid/media/AudioService;->access$10000(Landroid/media/AudioService;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :cond_5
    move v1, v2

    goto/16 :goto_1
.end method
