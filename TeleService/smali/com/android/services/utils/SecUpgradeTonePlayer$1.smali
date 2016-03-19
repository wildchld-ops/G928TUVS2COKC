.class Lcom/android/services/utils/SecUpgradeTonePlayer$1;
.super Landroid/os/Handler;
.source "SecUpgradeTonePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/utils/SecUpgradeTonePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/services/utils/SecUpgradeTonePlayer;


# direct methods
.method constructor <init>(Lcom/android/services/utils/SecUpgradeTonePlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/utils/SecUpgradeTonePlayer$1;->this$0:Lcom/android/services/utils/SecUpgradeTonePlayer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    const/4 v8, 0x1

    const/16 v7, 0x65

    const/4 v6, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    :try_start_0
    const-string v1, "vzw_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/services/utils/SecUpgradeTonePlayer$1;->this$0:Lcom/android/services/utils/SecUpgradeTonePlayer;

    new-instance v2, Landroid/media/ToneGenerator;

    const/4 v3, 0x0

    const/16 v4, 0x32

    invoke-direct {v2, v3, v4}, Landroid/media/ToneGenerator;-><init>(II)V

    # setter for: Lcom/android/services/utils/SecUpgradeTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v1, v2}, Lcom/android/services/utils/SecUpgradeTonePlayer;->access$002(Lcom/android/services/utils/SecUpgradeTonePlayer;Landroid/media/ToneGenerator;)Landroid/media/ToneGenerator;

    :goto_1
    sget-boolean v1, Lcom/android/services/utils/SecUpgradeTonePlayer;->mPlayStopped:Z

    if-eqz v1, :cond_1

    const-string v1, "vzw_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "feature_kor"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/services/utils/SecUpgradeTonePlayer$1;->this$0:Lcom/android/services/utils/SecUpgradeTonePlayer;

    # getter for: Lcom/android/services/utils/SecUpgradeTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v1}, Lcom/android/services/utils/SecUpgradeTonePlayer;->access$000(Lcom/android/services/utils/SecUpgradeTonePlayer;)Landroid/media/ToneGenerator;

    move-result-object v1

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Landroid/media/ToneGenerator;->startTone(I)Z

    :cond_2
    const/16 v1, 0x64

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x64

    add-long/2addr v2, v4

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/services/utils/SecUpgradeTonePlayer$1;->sendEmptyMessageAtTime(IJ)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to create ToneGenerator."

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v0, v2, v6

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/android/services/utils/SecUpgradeTonePlayer$1;->this$0:Lcom/android/services/utils/SecUpgradeTonePlayer;

    new-instance v2, Landroid/media/ToneGenerator;

    const/16 v3, 0xb

    const/16 v4, 0x32

    invoke-direct {v2, v3, v4}, Landroid/media/ToneGenerator;-><init>(II)V

    # setter for: Lcom/android/services/utils/SecUpgradeTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v1, v2}, Lcom/android/services/utils/SecUpgradeTonePlayer;->access$002(Lcom/android/services/utils/SecUpgradeTonePlayer;Landroid/media/ToneGenerator;)Landroid/media/ToneGenerator;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0, v7}, Lcom/android/services/utils/SecUpgradeTonePlayer$1;->sendEmptyMessage(I)Z

    iget-object v1, p0, Lcom/android/services/utils/SecUpgradeTonePlayer$1;->this$0:Lcom/android/services/utils/SecUpgradeTonePlayer;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    # setter for: Lcom/android/services/utils/SecUpgradeTonePlayer;->mEventTime:J
    invoke-static {v1, v2, v3}, Lcom/android/services/utils/SecUpgradeTonePlayer;->access$102(Lcom/android/services/utils/SecUpgradeTonePlayer;J)J

    const/16 v1, 0x67

    iget-object v2, p0, Lcom/android/services/utils/SecUpgradeTonePlayer$1;->this$0:Lcom/android/services/utils/SecUpgradeTonePlayer;

    # getter for: Lcom/android/services/utils/SecUpgradeTonePlayer;->mEventTime:J
    invoke-static {v2}, Lcom/android/services/utils/SecUpgradeTonePlayer;->access$100(Lcom/android/services/utils/SecUpgradeTonePlayer;)J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/services/utils/SecUpgradeTonePlayer$1;->sendEmptyMessageAtTime(IJ)Z

    iget-object v1, p0, Lcom/android/services/utils/SecUpgradeTonePlayer$1;->this$0:Lcom/android/services/utils/SecUpgradeTonePlayer;

    const/16 v2, 0x66

    # setter for: Lcom/android/services/utils/SecUpgradeTonePlayer;->mToneState:I
    invoke-static {v1, v2}, Lcom/android/services/utils/SecUpgradeTonePlayer;->access$202(Lcom/android/services/utils/SecUpgradeTonePlayer;I)I

    iget-object v1, p0, Lcom/android/services/utils/SecUpgradeTonePlayer$1;->this$0:Lcom/android/services/utils/SecUpgradeTonePlayer;

    # setter for: Lcom/android/services/utils/SecUpgradeTonePlayer;->mPlayCount:I
    invoke-static {v1, v6}, Lcom/android/services/utils/SecUpgradeTonePlayer;->access$302(Lcom/android/services/utils/SecUpgradeTonePlayer;I)I

    goto/16 :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/services/utils/SecUpgradeTonePlayer$1;->this$0:Lcom/android/services/utils/SecUpgradeTonePlayer;

    # getter for: Lcom/android/services/utils/SecUpgradeTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v1}, Lcom/android/services/utils/SecUpgradeTonePlayer;->access$000(Lcom/android/services/utils/SecUpgradeTonePlayer;)Landroid/media/ToneGenerator;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/services/utils/SecUpgradeTonePlayer$1;->this$0:Lcom/android/services/utils/SecUpgradeTonePlayer;

    # getter for: Lcom/android/services/utils/SecUpgradeTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v1}, Lcom/android/services/utils/SecUpgradeTonePlayer;->access$000(Lcom/android/services/utils/SecUpgradeTonePlayer;)Landroid/media/ToneGenerator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->stopTone()V

    iget-object v1, p0, Lcom/android/services/utils/SecUpgradeTonePlayer$1;->this$0:Lcom/android/services/utils/SecUpgradeTonePlayer;

    # getter for: Lcom/android/services/utils/SecUpgradeTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v1}, Lcom/android/services/utils/SecUpgradeTonePlayer;->access$000(Lcom/android/services/utils/SecUpgradeTonePlayer;)Landroid/media/ToneGenerator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    iget-object v1, p0, Lcom/android/services/utils/SecUpgradeTonePlayer$1;->this$0:Lcom/android/services/utils/SecUpgradeTonePlayer;

    const/4 v2, 0x0

    # setter for: Lcom/android/services/utils/SecUpgradeTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v1, v2}, Lcom/android/services/utils/SecUpgradeTonePlayer;->access$002(Lcom/android/services/utils/SecUpgradeTonePlayer;Landroid/media/ToneGenerator;)Landroid/media/ToneGenerator;

    iget-object v1, p0, Lcom/android/services/utils/SecUpgradeTonePlayer$1;->this$0:Lcom/android/services/utils/SecUpgradeTonePlayer;

    # operator++ for: Lcom/android/services/utils/SecUpgradeTonePlayer;->mPlayCount:I
    invoke-static {v1}, Lcom/android/services/utils/SecUpgradeTonePlayer;->access$308(Lcom/android/services/utils/SecUpgradeTonePlayer;)I

    :cond_4
    const-string v1, "vzw_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/services/utils/SecUpgradeTonePlayer$1;->this$0:Lcom/android/services/utils/SecUpgradeTonePlayer;

    # getter for: Lcom/android/services/utils/SecUpgradeTonePlayer;->mPlayCount:I
    invoke-static {v1}, Lcom/android/services/utils/SecUpgradeTonePlayer;->access$300(Lcom/android/services/utils/SecUpgradeTonePlayer;)I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x32

    add-long/2addr v2, v4

    invoke-virtual {p0, v7, v2, v3}, Lcom/android/services/utils/SecUpgradeTonePlayer$1;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_0

    :pswitch_3
    const-string v1, "vzw_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/services/utils/SecUpgradeTonePlayer$1;->this$0:Lcom/android/services/utils/SecUpgradeTonePlayer;

    iget-object v1, v1, Lcom/android/services/utils/SecUpgradeTonePlayer;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0, v7}, Lcom/android/services/utils/SecUpgradeTonePlayer$1;->sendEmptyMessage(I)Z

    iget-object v1, p0, Lcom/android/services/utils/SecUpgradeTonePlayer$1;->this$0:Lcom/android/services/utils/SecUpgradeTonePlayer;

    const/16 v2, 0x67

    # setter for: Lcom/android/services/utils/SecUpgradeTonePlayer;->mToneState:I
    invoke-static {v1, v2}, Lcom/android/services/utils/SecUpgradeTonePlayer;->access$202(Lcom/android/services/utils/SecUpgradeTonePlayer;I)I

    goto/16 :goto_0

    :pswitch_4
    :try_start_2
    iget-object v1, p0, Lcom/android/services/utils/SecUpgradeTonePlayer$1;->this$0:Lcom/android/services/utils/SecUpgradeTonePlayer;

    new-instance v2, Landroid/media/ToneGenerator;

    const/16 v3, 0xb

    const/16 v4, 0x32

    invoke-direct {v2, v3, v4}, Landroid/media/ToneGenerator;-><init>(II)V

    # setter for: Lcom/android/services/utils/SecUpgradeTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v1, v2}, Lcom/android/services/utils/SecUpgradeTonePlayer;->access$002(Lcom/android/services/utils/SecUpgradeTonePlayer;Landroid/media/ToneGenerator;)Landroid/media/ToneGenerator;

    iget-object v1, p0, Lcom/android/services/utils/SecUpgradeTonePlayer$1;->this$0:Lcom/android/services/utils/SecUpgradeTonePlayer;

    # getter for: Lcom/android/services/utils/SecUpgradeTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v1}, Lcom/android/services/utils/SecUpgradeTonePlayer;->access$000(Lcom/android/services/utils/SecUpgradeTonePlayer;)Landroid/media/ToneGenerator;

    move-result-object v1

    const/16 v2, 0x1c

    invoke-virtual {v1, v2}, Landroid/media/ToneGenerator;->startTone(I)Z

    const/16 v1, 0x64

    const-wide/16 v2, 0x12c

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/services/utils/SecUpgradeTonePlayer$1;->sendEmptyMessageDelayed(IJ)Z

    const/16 v1, 0x65

    const-wide/16 v2, 0x1d6

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/services/utils/SecUpgradeTonePlayer$1;->sendEmptyMessageDelayed(IJ)Z

    iget-object v1, p0, Lcom/android/services/utils/SecUpgradeTonePlayer$1;->this$0:Lcom/android/services/utils/SecUpgradeTonePlayer;

    const/16 v2, 0x68

    # setter for: Lcom/android/services/utils/SecUpgradeTonePlayer;->mToneState:I
    invoke-static {v1, v2}, Lcom/android/services/utils/SecUpgradeTonePlayer;->access$202(Lcom/android/services/utils/SecUpgradeTonePlayer;I)I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Failed to create ToneGenerator."

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v0, v2, v6

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
