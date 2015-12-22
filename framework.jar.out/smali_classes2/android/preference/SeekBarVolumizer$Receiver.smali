.class final Landroid/preference/SeekBarVolumizer$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "SeekBarVolumizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/SeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field private mListening:Z

.field final synthetic this$0:Landroid/preference/SeekBarVolumizer;


# direct methods
.method private constructor <init>(Landroid/preference/SeekBarVolumizer;)V
    .locals 0

    iput-object p1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/preference/SeekBarVolumizer;Landroid/preference/SeekBarVolumizer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/preference/SeekBarVolumizer$Receiver;-><init>(Landroid/preference/SeekBarVolumizer;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x1

    const/16 v5, 0x8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mStreamType:I
    invoke-static {v3}, Landroid/preference/SeekBarVolumizer;->access$400(Landroid/preference/SeekBarVolumizer;)I

    move-result v3

    if-eq v3, v5, :cond_0

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # invokes: Landroid/preference/SeekBarVolumizer;->updateSlider()V
    invoke-static {v3}, Landroid/preference/SeekBarVolumizer;->access$500(Landroid/preference/SeekBarVolumizer;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    iget-object v4, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v4}, Landroid/preference/SeekBarVolumizer;->access$800(Landroid/preference/SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v4

    # setter for: Landroid/preference/SeekBarVolumizer;->mRingerMode:I
    invoke-static {v3, v4}, Landroid/preference/SeekBarVolumizer;->access$702(Landroid/preference/SeekBarVolumizer;I)I

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mStreamType:I
    invoke-static {v3}, Landroid/preference/SeekBarVolumizer;->access$400(Landroid/preference/SeekBarVolumizer;)I

    move-result v3

    if-eq v3, v5, :cond_0

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # invokes: Landroid/preference/SeekBarVolumizer;->updateSlider()V
    invoke-static {v3}, Landroid/preference/SeekBarVolumizer;->access$500(Landroid/preference/SeekBarVolumizer;)V

    goto :goto_0

    :cond_2
    const-string v3, "com.samsung.intent.action.DEFAULT_CS_SIM_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    # getter for: Landroid/preference/SeekBarVolumizer;->DUAL_SIM:Z
    invoke-static {}, Landroid/preference/SeekBarVolumizer;->access$900()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v1

    if-ne v1, v6, :cond_3

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    iget-object v4, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/preference/SeekBarVolumizer;->access$600(Landroid/preference/SeekBarVolumizer;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v5}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v4

    # setter for: Landroid/preference/SeekBarVolumizer;->mActualRingtoneUri:Landroid/net/Uri;
    invoke-static {v3, v4}, Landroid/preference/SeekBarVolumizer;->access$1002(Landroid/preference/SeekBarVolumizer;Landroid/net/Uri;)Landroid/net/Uri;

    goto :goto_0

    :cond_3
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    iget-object v4, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/preference/SeekBarVolumizer;->access$600(Landroid/preference/SeekBarVolumizer;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v4

    # setter for: Landroid/preference/SeekBarVolumizer;->mActualRingtoneUri:Landroid/net/Uri;
    invoke-static {v3, v4}, Landroid/preference/SeekBarVolumizer;->access$1002(Landroid/preference/SeekBarVolumizer;Landroid/net/Uri;)Landroid/net/Uri;

    goto :goto_0

    :cond_4
    const-string v3, "com.android.systemui.action.dnd_off"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v3}, Landroid/preference/SeekBarVolumizer;->isSamplePlaying()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v3}, Landroid/preference/SeekBarVolumizer;->stopSample()V

    goto :goto_0
.end method

.method public setListening(Z)V
    .locals 2

    iget-boolean v1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->mListening:Z

    if-ne v1, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->mListening:Z

    if-eqz p1, :cond_1

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.intent.action.DEFAULT_CS_SIM_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.systemui.action.dnd_off"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/preference/SeekBarVolumizer;->access$600(Landroid/preference/SeekBarVolumizer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/preference/SeekBarVolumizer;->access$600(Landroid/preference/SeekBarVolumizer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method
