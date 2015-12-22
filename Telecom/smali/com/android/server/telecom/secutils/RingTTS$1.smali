.class Lcom/android/server/telecom/secutils/RingTTS$1;
.super Landroid/os/Handler;
.source "RingTTS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/secutils/RingTTS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/secutils/RingTTS;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/secutils/RingTTS;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/secutils/RingTTS$1;->this$0:Lcom/android/server/telecom/secutils/RingTTS;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/RingTTS$1;->this$0:Lcom/android/server/telecom/secutils/RingTTS;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/RingTTS$1;->this$0:Lcom/android/server/telecom/secutils/RingTTS;

    # getter for: Lcom/android/server/telecom/secutils/RingTTS;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/telecom/secutils/RingTTS;->access$100(Lcom/android/server/telecom/secutils/RingTTS;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->getInstance(Landroid/content/Context;I)Lcom/android/server/telecom/secutils/CallTextToSpeech;

    move-result-object v1

    # setter for: Lcom/android/server/telecom/secutils/RingTTS;->mCallTextToSpeech:Lcom/android/server/telecom/secutils/CallTextToSpeech;
    invoke-static {v0, v1}, Lcom/android/server/telecom/secutils/RingTTS;->access$002(Lcom/android/server/telecom/secutils/RingTTS;Lcom/android/server/telecom/secutils/CallTextToSpeech;)Lcom/android/server/telecom/secutils/CallTextToSpeech;

    iget-object v0, p0, Lcom/android/server/telecom/secutils/RingTTS$1;->this$0:Lcom/android/server/telecom/secutils/RingTTS;

    # getter for: Lcom/android/server/telecom/secutils/RingTTS;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/RingTTS;->access$200(Lcom/android/server/telecom/secutils/RingTTS;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/RingTTS$1;->this$0:Lcom/android/server/telecom/secutils/RingTTS;

    # getter for: Lcom/android/server/telecom/secutils/RingTTS;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/RingTTS;->access$200(Lcom/android/server/telecom/secutils/RingTTS;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/telecom/secutils/RingTTS$1;->this$0:Lcom/android/server/telecom/secutils/RingTTS;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/RingTTS$1;->this$0:Lcom/android/server/telecom/secutils/RingTTS;

    # getter for: Lcom/android/server/telecom/secutils/RingTTS;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/telecom/secutils/RingTTS;->access$100(Lcom/android/server/telecom/secutils/RingTTS;)Landroid/content/Context;

    move-result-object v1

    const-string v2, " "

    invoke-static {v1, v3, v2}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->getInstance(Landroid/content/Context;ILjava/lang/String;)Lcom/android/server/telecom/secutils/CallTextToSpeech;

    move-result-object v1

    # setter for: Lcom/android/server/telecom/secutils/RingTTS;->mCallTextToSpeech:Lcom/android/server/telecom/secutils/CallTextToSpeech;
    invoke-static {v0, v1}, Lcom/android/server/telecom/secutils/RingTTS;->access$002(Lcom/android/server/telecom/secutils/RingTTS;Lcom/android/server/telecom/secutils/CallTextToSpeech;)Lcom/android/server/telecom/secutils/CallTextToSpeech;

    iget-object v0, p0, Lcom/android/server/telecom/secutils/RingTTS$1;->this$0:Lcom/android/server/telecom/secutils/RingTTS;

    # getter for: Lcom/android/server/telecom/secutils/RingTTS;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/RingTTS;->access$200(Lcom/android/server/telecom/secutils/RingTTS;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/RingTTS$1;->this$0:Lcom/android/server/telecom/secutils/RingTTS;

    # getter for: Lcom/android/server/telecom/secutils/RingTTS;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/RingTTS;->access$200(Lcom/android/server/telecom/secutils/RingTTS;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
