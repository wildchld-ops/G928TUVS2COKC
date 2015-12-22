.class Lcom/android/settings/simcardstatus/SimCardStatus$1;
.super Landroid/os/Handler;
.source "SimCardStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/simcardstatus/SimCardStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/simcardstatus/SimCardStatus;


# direct methods
.method constructor <init>(Lcom/android/settings/simcardstatus/SimCardStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/simcardstatus/SimCardStatus$1;->this$0:Lcom/android/settings/simcardstatus/SimCardStatus;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "SimCardStatus"

    const-string v1, "MESSAGE_UPDATE_LIST -> updateSimStatus()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/simcardstatus/SimCardStatus$1;->this$0:Lcom/android/settings/simcardstatus/SimCardStatus;

    # invokes: Lcom/android/settings/simcardstatus/SimCardStatus;->updateSimStatus()V
    invoke-static {v0}, Lcom/android/settings/simcardstatus/SimCardStatus;->access$000(Lcom/android/settings/simcardstatus/SimCardStatus;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
