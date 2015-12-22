.class Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$AdapterStateChangedHandler;
.super Ljava/lang/Object;
.source "NfcConnectivity.java"

# interfaces
.implements Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterStateChangedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;


# direct methods
.method private constructor <init>(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$AdapterStateChangedHandler;->this$0:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$AdapterStateChangedHandler;-><init>(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, -0x1

    const-string v1, "android.nfc.extra.ADAPTER_STATE"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    # getter for: Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_ADAPTER_STATE_CHANGED state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$AdapterStateChangedHandler;->this$0:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;

    # setter for: Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mState:I
    invoke-static {v1, v0}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->access$402(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;I)I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v1, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$AdapterStateChangedHandler;->this$0:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;

    const/4 v2, 0x3

    # invokes: Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->sendStateChanged(I)V
    invoke-static {v1, v2}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->access$300(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;I)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$AdapterStateChangedHandler;->this$0:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;

    # getter for: Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mEnableRequest:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v1}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->access$200(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$AdapterStateChangedHandler;->this$0:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;

    const/4 v2, 0x0

    # invokes: Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->enableInternal(Z)Z
    invoke-static {v1, v2}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->access$500(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;Z)Z

    :cond_1
    :pswitch_3
    iget-object v1, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$AdapterStateChangedHandler;->this$0:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;

    # getter for: Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mPrevState:I
    invoke-static {v1}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->access$600(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;)I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$AdapterStateChangedHandler;->this$0:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;

    const/4 v2, 0x2

    # invokes: Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->sendStateChanged(I)V
    invoke-static {v1, v2}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->access$300(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;I)V

    iget-object v1, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$AdapterStateChangedHandler;->this$0:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;

    # setter for: Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mPrevState:I
    invoke-static {v1, v4}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->access$602(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;I)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
