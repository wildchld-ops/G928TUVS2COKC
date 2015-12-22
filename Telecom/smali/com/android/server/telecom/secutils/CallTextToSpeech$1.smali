.class Lcom/android/server/telecom/secutils/CallTextToSpeech$1;
.super Landroid/os/Handler;
.source "CallTextToSpeech.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/secutils/CallTextToSpeech;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/secutils/CallTextToSpeech;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$1;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    const-string v0, "CallTextToSpeech"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$1;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    # operator-- for: Lcom/android/server/telecom/secutils/CallTextToSpeech;->mCurrentRingtoneVolume:I
    invoke-static {v0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$010(Lcom/android/server/telecom/secutils/CallTextToSpeech;)I

    const-string v0, "CallTextToSpeech"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FADE_OUT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$1;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    # getter for: Lcom/android/server/telecom/secutils/CallTextToSpeech;->mCurrentRingtoneVolume:I
    invoke-static {v2}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$000(Lcom/android/server/telecom/secutils/CallTextToSpeech;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$1;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    # getter for: Lcom/android/server/telecom/secutils/CallTextToSpeech;->mCurrentRingtoneVolume:I
    invoke-static {v0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$000(Lcom/android/server/telecom/secutils/CallTextToSpeech;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$1;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    # getter for: Lcom/android/server/telecom/secutils/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$100(Lcom/android/server/telecom/secutils/CallTextToSpeech;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    :goto_1
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$1;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    # getter for: Lcom/android/server/telecom/secutils/CallTextToSpeech;->mCurrentRingtoneVolume:I
    invoke-static {v0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$000(Lcom/android/server/telecom/secutils/CallTextToSpeech;)I

    move-result v0

    if-lez v0, :cond_2

    const/16 v0, 0xc8

    iget-object v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$1;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    # getter for: Lcom/android/server/telecom/secutils/CallTextToSpeech;->mFadeOutUpdateDelay:I
    invoke-static {v1}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$200(Lcom/android/server/telecom/secutils/CallTextToSpeech;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/telecom/secutils/CallTextToSpeech$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$1;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    # getter for: Lcom/android/server/telecom/secutils/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$100(Lcom/android/server/telecom/secutils/CallTextToSpeech;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$1;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    # getter for: Lcom/android/server/telecom/secutils/CallTextToSpeech;->mCurrentRingtoneVolume:I
    invoke-static {v1}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$000(Lcom/android/server/telecom/secutils/CallTextToSpeech;)I

    move-result v1

    invoke-virtual {v0, v4, v1, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_1

    :cond_2
    # getter for: Lcom/android/server/telecom/secutils/CallTextToSpeech;->mInstance:Lcom/android/server/telecom/secutils/CallTextToSpeech;
    invoke-static {}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$300()Lcom/android/server/telecom/secutils/CallTextToSpeech;

    move-result-object v0

    if-eqz v0, :cond_0

    # getter for: Lcom/android/server/telecom/secutils/CallTextToSpeech;->mInstance:Lcom/android/server/telecom/secutils/CallTextToSpeech;
    invoke-static {}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$300()Lcom/android/server/telecom/secutils/CallTextToSpeech;

    move-result-object v0

    # invokes: Lcom/android/server/telecom/secutils/CallTextToSpeech;->makeIncomingTTS()V
    invoke-static {v0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$400(Lcom/android/server/telecom/secutils/CallTextToSpeech;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$1;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    # operator++ for: Lcom/android/server/telecom/secutils/CallTextToSpeech;->mCurrentRingtoneVolume:I
    invoke-static {v0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$008(Lcom/android/server/telecom/secutils/CallTextToSpeech;)I

    const-string v0, "CallTextToSpeech"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FADE_IN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$1;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    # getter for: Lcom/android/server/telecom/secutils/CallTextToSpeech;->mCurrentRingtoneVolume:I
    invoke-static {v2}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$000(Lcom/android/server/telecom/secutils/CallTextToSpeech;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$1;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    # getter for: Lcom/android/server/telecom/secutils/CallTextToSpeech;->mCurrentRingtoneVolume:I
    invoke-static {v0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$000(Lcom/android/server/telecom/secutils/CallTextToSpeech;)I

    move-result v0

    if-ne v0, v5, :cond_3

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$1;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    # getter for: Lcom/android/server/telecom/secutils/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$100(Lcom/android/server/telecom/secutils/CallTextToSpeech;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    :goto_2
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$1;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    # getter for: Lcom/android/server/telecom/secutils/CallTextToSpeech;->mCurrentRingtoneVolume:I
    invoke-static {v0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$000(Lcom/android/server/telecom/secutils/CallTextToSpeech;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$1;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    # getter for: Lcom/android/server/telecom/secutils/CallTextToSpeech;->mOriginRingVolume:I
    invoke-static {v1}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$500(Lcom/android/server/telecom/secutils/CallTextToSpeech;)I

    move-result v1

    if-ge v0, v1, :cond_4

    const/16 v0, 0x64

    iget-object v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$1;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    # getter for: Lcom/android/server/telecom/secutils/CallTextToSpeech;->mFadeInUpdateDelay:I
    invoke-static {v1}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$600(Lcom/android/server/telecom/secutils/CallTextToSpeech;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/telecom/secutils/CallTextToSpeech$1;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$1;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    # getter for: Lcom/android/server/telecom/secutils/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$100(Lcom/android/server/telecom/secutils/CallTextToSpeech;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$1;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    # getter for: Lcom/android/server/telecom/secutils/CallTextToSpeech;->mCurrentRingtoneVolume:I
    invoke-static {v1}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$000(Lcom/android/server/telecom/secutils/CallTextToSpeech;)I

    move-result v1

    invoke-virtual {v0, v4, v1, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$1;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    # getter for: Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsRepeatCount:I
    invoke-static {v0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$700(Lcom/android/server/telecom/secutils/CallTextToSpeech;)I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$1;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    # operator++ for: Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsRepeatCount:I
    invoke-static {v0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$708(Lcom/android/server/telecom/secutils/CallTextToSpeech;)I

    const/16 v0, 0x12c

    const-wide/16 v2, 0x5dc

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/telecom/secutils/CallTextToSpeech$1;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_5
    # getter for: Lcom/android/server/telecom/secutils/CallTextToSpeech;->mInstance:Lcom/android/server/telecom/secutils/CallTextToSpeech;
    invoke-static {}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$300()Lcom/android/server/telecom/secutils/CallTextToSpeech;

    move-result-object v0

    if-eqz v0, :cond_0

    # getter for: Lcom/android/server/telecom/secutils/CallTextToSpeech;->mInstance:Lcom/android/server/telecom/secutils/CallTextToSpeech;
    invoke-static {}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$300()Lcom/android/server/telecom/secutils/CallTextToSpeech;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->stopTts()V

    goto/16 :goto_0

    :sswitch_2
    # getter for: Lcom/android/server/telecom/secutils/CallTextToSpeech;->mInstance:Lcom/android/server/telecom/secutils/CallTextToSpeech;
    invoke-static {}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$300()Lcom/android/server/telecom/secutils/CallTextToSpeech;

    move-result-object v0

    if-eqz v0, :cond_0

    # getter for: Lcom/android/server/telecom/secutils/CallTextToSpeech;->mInstance:Lcom/android/server/telecom/secutils/CallTextToSpeech;
    invoke-static {}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$300()Lcom/android/server/telecom/secutils/CallTextToSpeech;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$1;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    # getter for: Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsId:I
    invoke-static {v1}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$800(Lcom/android/server/telecom/secutils/CallTextToSpeech;)I

    move-result v1

    # invokes: Lcom/android/server/telecom/secutils/CallTextToSpeech;->speakTts(I)V
    invoke-static {v0, v1}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$900(Lcom/android/server/telecom/secutils/CallTextToSpeech;I)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0xc8 -> :sswitch_0
        0x12c -> :sswitch_2
    .end sparse-switch
.end method
