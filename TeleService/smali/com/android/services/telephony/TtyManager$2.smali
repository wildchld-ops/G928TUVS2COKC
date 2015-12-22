.class Lcom/android/services/telephony/TtyManager$2;
.super Ljava/lang/Object;
.source "TtyManager.java"

# interfaces
.implements Lcom/samsung/commonimsinterface/imscommon/IIMSListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/TtyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/services/telephony/TtyManager;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/TtyManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/TtyManager$2;->this$0:Lcom/android/services/telephony/TtyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private onDataDisabled(I)V
    .locals 0

    return-void
.end method

.method private onRegistrationDone(Lcom/samsung/commonimsinterface/imscommon/IMSRegistrationInfo;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/services/telephony/TtyManager$2;->this$0:Lcom/android/services/telephony/TtyManager;

    const-string v1, "registered on IMS..."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/services/telephony/TtyManager$2;->this$0:Lcom/android/services/telephony/TtyManager;

    # getter for: Lcom/android/services/telephony/TtyManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/services/telephony/TtyManager;->access$600(Lcom/android/services/telephony/TtyManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/TtyManager$2;->this$0:Lcom/android/services/telephony/TtyManager;

    # getter for: Lcom/android/services/telephony/TtyManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/services/telephony/TtyManager;->access$600(Lcom/android/services/telephony/TtyManager;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public onReceive(IILcom/samsung/commonimsinterface/imscommon/IMSParameter;)V
    .locals 1

    sparse-switch p2, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    const-string v0, "registrationinfo"

    invoke-virtual {p3, v0}, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;->getParcelable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/commonimsinterface/imscommon/IMSRegistrationInfo;

    invoke-direct {p0, v0}, Lcom/android/services/telephony/TtyManager$2;->onRegistrationDone(Lcom/samsung/commonimsinterface/imscommon/IMSRegistrationInfo;)V

    goto :goto_0

    :sswitch_1
    const-string v0, "networktype"

    invoke-virtual {p3, v0}, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/services/telephony/TtyManager$2;->onDataDisabled(I)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3ec -> :sswitch_0
        0x3f5 -> :sswitch_1
    .end sparse-switch
.end method
