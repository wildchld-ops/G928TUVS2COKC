.class Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$1;
.super Landroid/os/Handler;
.source "LGTUwaCallServiceMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$1;->this$0:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1    # Landroid/os/Message;

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$1;->this$0:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;

    # invokes: Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->onPhoneStateChanged()V
    invoke-static {v0}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->access$000(Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$1;->this$0:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    # invokes: Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->onDisconnect(Landroid/os/AsyncResult;)V
    invoke-static {v1, v0}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->access$100(Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;Landroid/os/AsyncResult;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$1;->this$0:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;

    # getter for: Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->speakerOnOff:Z
    invoke-static {}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->access$200()Z

    move-result v1

    # invokes: Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->actionTurnOnSpeker(Z)V
    invoke-static {v0, v1}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->access$300(Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
