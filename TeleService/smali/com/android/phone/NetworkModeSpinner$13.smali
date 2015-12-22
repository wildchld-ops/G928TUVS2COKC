.class Lcom/android/phone/NetworkModeSpinner$13;
.super Ljava/lang/Object;
.source "NetworkModeSpinner.java"

# interfaces
.implements Lcom/samsung/commonimsinterface/imscommon/IIMSListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkModeSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkModeSpinner;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkModeSpinner;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/NetworkModeSpinner$13;->this$0:Lcom/android/phone/NetworkModeSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private ChangeNetworkMode()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/phone/NetworkModeSpinner$13$2;

    invoke-direct {v1, p0}, Lcom/android/phone/NetworkModeSpinner$13$2;-><init>(Lcom/android/phone/NetworkModeSpinner$13;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/phone/NetworkModeSpinner$13;)V
    .locals 0
    .param p0    # Lcom/android/phone/NetworkModeSpinner$13;

    invoke-direct {p0}, Lcom/android/phone/NetworkModeSpinner$13;->ChangeNetworkMode()V

    return-void
.end method


# virtual methods
.method public onReceive(IILcom/samsung/commonimsinterface/imscommon/IMSParameter;)V
    .locals 6
    .param p1    # I
    .param p2    # I
    .param p3    # Lcom/samsung/commonimsinterface/imscommon/IMSParameter;

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/phone/NetworkModeSpinner$13;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->LOG_TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/NetworkModeSpinner;->access$000(Lcom/android/phone/NetworkModeSpinner;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive token:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    packed-switch p2, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/NetworkModeSpinner$13;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v1}, Lcom/android/phone/NetworkModeSpinner;->access$3700(Lcom/android/phone/NetworkModeSpinner;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    # setter for: Lcom/android/phone/NetworkModeSpinner;->mImsDereg:Z
    invoke-static {v4}, Lcom/android/phone/NetworkModeSpinner;->access$3802(Z)Z

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    if-ne v0, v4, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/phone/NetworkModeSpinner$13;->this$0:Lcom/android/phone/NetworkModeSpinner;

    const/4 v2, 0x0

    # invokes: Lcom/android/phone/NetworkModeSpinner;->setMobileDataEnabled(Z)V
    invoke-static {v1, v2}, Lcom/android/phone/NetworkModeSpinner;->access$2100(Lcom/android/phone/NetworkModeSpinner;Z)V

    iget-object v1, p0, Lcom/android/phone/NetworkModeSpinner$13;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # setter for: Lcom/android/phone/NetworkModeSpinner;->mIsDisconnectingData:Z
    invoke-static {v1, v4}, Lcom/android/phone/NetworkModeSpinner;->access$2202(Lcom/android/phone/NetworkModeSpinner;Z)Z

    const-string v1, "network_selection_delay"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-ne v0, v4, :cond_1

    iget-object v1, p0, Lcom/android/phone/NetworkModeSpinner$13;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->LOG_TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/NetworkModeSpinner;->access$000(Lcom/android/phone/NetworkModeSpinner;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Currently Data is connecting!"

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v1, p0, Lcom/android/phone/NetworkModeSpinner$13;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mHandler:Lcom/android/phone/NetworkModeSpinner$MyHandler;
    invoke-static {v1}, Lcom/android/phone/NetworkModeSpinner;->access$900(Lcom/android/phone/NetworkModeSpinner;)Lcom/android/phone/NetworkModeSpinner$MyHandler;

    move-result-object v1

    new-instance v2, Lcom/android/phone/NetworkModeSpinner$13$1;

    invoke-direct {v2, p0}, Lcom/android/phone/NetworkModeSpinner$13$1;-><init>(Lcom/android/phone/NetworkModeSpinner$13;)V

    const-wide/16 v4, 0x2710

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/phone/NetworkModeSpinner$MyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/phone/NetworkModeSpinner$13;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # setter for: Lcom/android/phone/NetworkModeSpinner;->mTriggerChangeNetwork:Z
    invoke-static {v1, v4}, Lcom/android/phone/NetworkModeSpinner;->access$2302(Lcom/android/phone/NetworkModeSpinner;Z)Z

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/phone/NetworkModeSpinner$13;->ChangeNetworkMode()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3ec
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
