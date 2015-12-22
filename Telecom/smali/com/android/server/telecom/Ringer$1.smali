.class Lcom/android/server/telecom/Ringer$1;
.super Landroid/os/Handler;
.source "Ringer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/Ringer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/Ringer;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/Ringer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/Ringer$1;->this$0:Lcom/android/server/telecom/Ringer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    const/4 v1, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    const-string v0, "-start flash..s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/Ringer$1;->this$0:Lcom/android/server/telecom/Ringer;

    iget-object v0, v0, Lcom/android/server/telecom/Ringer;->mFlashNoti:Lcom/android/server/telecom/secutils/FlashNoti;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/FlashNoti;->checkTorchLight()V

    goto :goto_0

    :sswitch_1
    const-string v0, "-start envent stop"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/Ringer$1;->this$0:Lcom/android/server/telecom/Ringer;

    iget-object v0, v0, Lcom/android/server/telecom/Ringer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/Ringer$1;->this$0:Lcom/android/server/telecom/Ringer;

    iget-object v0, v0, Lcom/android/server/telecom/Ringer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    iget-object v0, p0, Lcom/android/server/telecom/Ringer$1;->this$0:Lcom/android/server/telecom/Ringer;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/telecom/Ringer;->mRingtone:Landroid/media/Ringtone;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_0
        0x1e -> :sswitch_1
    .end sparse-switch
.end method
