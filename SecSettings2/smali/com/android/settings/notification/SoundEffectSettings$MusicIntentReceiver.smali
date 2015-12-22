.class Lcom/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SoundEffectSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/SoundEffectSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MusicIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/SoundEffectSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/notification/SoundEffectSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/android/settings/notification/SoundEffectSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/notification/SoundEffectSettings;Lcom/android/settings/notification/SoundEffectSettings$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;-><init>(Lcom/android/settings/notification/SoundEffectSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v7, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-ne v6, v10, :cond_2

    if-eq v5, v9, :cond_0

    if-nez v5, :cond_2

    :cond_0
    iget-object v7, p0, Lcom/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/android/settings/notification/SoundEffectSettings;

    # setter for: Lcom/android/settings/notification/SoundEffectSettings;->mCurrentAudioPath:I
    invoke-static {v7, v10}, Lcom/android/settings/notification/SoundEffectSettings;->access$002(Lcom/android/settings/notification/SoundEffectSettings;I)I

    :cond_1
    :goto_0
    # getter for: Lcom/android/settings/notification/SoundEffectSettings;->PREFS:[Lcom/android/settings/notification/SettingPref;
    invoke-static {}, Lcom/android/settings/notification/SoundEffectSettings;->access$200()[Lcom/android/settings/notification/SettingPref;

    move-result-object v1

    array-length v3, v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_9

    aget-object v4, v1, v2

    iget-object v7, p0, Lcom/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/android/settings/notification/SoundEffectSettings;

    iget-object v8, p0, Lcom/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/android/settings/notification/SoundEffectSettings;

    # getter for: Lcom/android/settings/notification/SoundEffectSettings;->mCurrentAudioPath:I
    invoke-static {v8}, Lcom/android/settings/notification/SoundEffectSettings;->access$000(Lcom/android/settings/notification/SoundEffectSettings;)I

    move-result v8

    invoke-virtual {v7, v4, v8}, Lcom/android/settings/notification/SoundEffectSettings;->setAudioPath(Lcom/android/settings/notification/SettingPref;I)V

    iget-object v7, p0, Lcom/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/android/settings/notification/SoundEffectSettings;

    # getter for: Lcom/android/settings/notification/SoundEffectSettings;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/settings/notification/SoundEffectSettings;->access$300(Lcom/android/settings/notification/SoundEffectSettings;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/android/settings/notification/SettingPref;->update(Landroid/content/Context;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    if-eqz v6, :cond_3

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    :cond_3
    iget-object v7, p0, Lcom/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/android/settings/notification/SoundEffectSettings;

    # getter for: Lcom/android/settings/notification/SoundEffectSettings;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v7}, Lcom/android/settings/notification/SoundEffectSettings;->access$100(Lcom/android/settings/notification/SoundEffectSettings;)Landroid/media/AudioManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v7

    if-ne v7, v9, :cond_4

    iget-object v7, p0, Lcom/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/android/settings/notification/SoundEffectSettings;

    # setter for: Lcom/android/settings/notification/SoundEffectSettings;->mCurrentAudioPath:I
    invoke-static {v7, v9}, Lcom/android/settings/notification/SoundEffectSettings;->access$002(Lcom/android/settings/notification/SoundEffectSettings;I)I

    goto :goto_0

    :cond_4
    iget-object v7, p0, Lcom/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/android/settings/notification/SoundEffectSettings;

    # setter for: Lcom/android/settings/notification/SoundEffectSettings;->mCurrentAudioPath:I
    invoke-static {v7, v8}, Lcom/android/settings/notification/SoundEffectSettings;->access$002(Lcom/android/settings/notification/SoundEffectSettings;I)I

    goto :goto_0

    :cond_5
    const-string v7, "android.bluetooth.a2dp.profile.action.PLAYING_STATE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const/16 v7, 0xa

    if-ne v6, v7, :cond_1

    iget-object v7, p0, Lcom/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/android/settings/notification/SoundEffectSettings;

    # setter for: Lcom/android/settings/notification/SoundEffectSettings;->mCurrentAudioPath:I
    invoke-static {v7, v10}, Lcom/android/settings/notification/SoundEffectSettings;->access$002(Lcom/android/settings/notification/SoundEffectSettings;I)I

    goto :goto_0

    :cond_6
    const-string v7, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/android/settings/notification/SoundEffectSettings;

    invoke-virtual {v7}, Lcom/android/settings/notification/SoundEffectSettings;->isAudioPathEarjack()Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/android/settings/notification/SoundEffectSettings;

    # setter for: Lcom/android/settings/notification/SoundEffectSettings;->mCurrentAudioPath:I
    invoke-static {v7, v9}, Lcom/android/settings/notification/SoundEffectSettings;->access$002(Lcom/android/settings/notification/SoundEffectSettings;I)I

    goto :goto_0

    :cond_7
    iget-object v7, p0, Lcom/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/android/settings/notification/SoundEffectSettings;

    invoke-virtual {v7}, Lcom/android/settings/notification/SoundEffectSettings;->isAudioPathBTHeadphone()Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/android/settings/notification/SoundEffectSettings;

    # setter for: Lcom/android/settings/notification/SoundEffectSettings;->mCurrentAudioPath:I
    invoke-static {v7, v10}, Lcom/android/settings/notification/SoundEffectSettings;->access$002(Lcom/android/settings/notification/SoundEffectSettings;I)I

    goto :goto_0

    :cond_8
    iget-object v7, p0, Lcom/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/android/settings/notification/SoundEffectSettings;

    # setter for: Lcom/android/settings/notification/SoundEffectSettings;->mCurrentAudioPath:I
    invoke-static {v7, v8}, Lcom/android/settings/notification/SoundEffectSettings;->access$002(Lcom/android/settings/notification/SoundEffectSettings;I)I

    goto :goto_0

    :cond_9
    return-void
.end method
