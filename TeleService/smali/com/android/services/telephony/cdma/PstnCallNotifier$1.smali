.class Lcom/android/services/telephony/cdma/PstnCallNotifier$1;
.super Landroid/os/Handler;
.source "PstnCallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/cdma/PstnCallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/services/telephony/cdma/PstnCallNotifier;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/cdma/PstnCallNotifier;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/cdma/PstnCallNotifier$1;->this$0:Lcom/android/services/telephony/cdma/PstnCallNotifier;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    iget-object v0, p0, Lcom/android/services/telephony/cdma/PstnCallNotifier$1;->this$0:Lcom/android/services/telephony/cdma/PstnCallNotifier;

    # invokes: Lcom/android/services/telephony/cdma/PstnCallNotifier;->handlePhoneStateChanged()V
    invoke-static {v0}, Lcom/android/services/telephony/cdma/PstnCallNotifier;->access$000(Lcom/android/services/telephony/cdma/PstnCallNotifier;)V

    goto :goto_0

    :sswitch_2
    const-string v0, "PstnCallNotifier"

    const-string v1, "RINGING... (new)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/services/telephony/cdma/PstnCallNotifier$1;->this$0:Lcom/android/services/telephony/cdma/PstnCallNotifier;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    # invokes: Lcom/android/services/telephony/cdma/PstnCallNotifier;->handleNewRingingConnection(Landroid/os/AsyncResult;)V
    invoke-static {v1, v0}, Lcom/android/services/telephony/cdma/PstnCallNotifier;->access$100(Lcom/android/services/telephony/cdma/PstnCallNotifier;Landroid/os/AsyncResult;)V

    goto :goto_0

    :sswitch_3
    const-string v0, "PstnCallNotifier"

    const-string v1, "DISCONNECT"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/services/telephony/cdma/PstnCallNotifier$1;->this$0:Lcom/android/services/telephony/cdma/PstnCallNotifier;

    # invokes: Lcom/android/services/telephony/cdma/PstnCallNotifier;->handleDisconnect()V
    invoke-static {v0}, Lcom/android/services/telephony/cdma/PstnCallNotifier;->access$200(Lcom/android/services/telephony/cdma/PstnCallNotifier;)V

    goto :goto_0

    :sswitch_4
    const-string v0, "PstnCallNotifier"

    const-string v1, "Received PHONE_STATE_SIGNALINFO event"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/services/telephony/cdma/PstnCallNotifier$1;->this$0:Lcom/android/services/telephony/cdma/PstnCallNotifier;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    # invokes: Lcom/android/services/telephony/cdma/PstnCallNotifier;->handleSignalInfo(Landroid/os/AsyncResult;)V
    invoke-static {v1, v0}, Lcom/android/services/telephony/cdma/PstnCallNotifier;->access$300(Lcom/android/services/telephony/cdma/PstnCallNotifier;Landroid/os/AsyncResult;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x7 -> :sswitch_4
        0x1233 -> :sswitch_0
    .end sparse-switch
.end method
