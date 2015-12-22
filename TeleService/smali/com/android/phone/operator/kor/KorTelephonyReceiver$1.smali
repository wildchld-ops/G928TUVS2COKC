.class Lcom/android/phone/operator/kor/KorTelephonyReceiver$1;
.super Landroid/os/Handler;
.source "KorTelephonyReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/operator/kor/KorTelephonyReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/kor/KorTelephonyReceiver;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/kor/KorTelephonyReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/kor/KorTelephonyReceiver$1;->this$0:Lcom/android/phone/operator/kor/KorTelephonyReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1    # Landroid/os/Message;

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getCallManager()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/phone/operator/kor/KorTelephonyReceiver$1;->this$0:Lcom/android/phone/operator/kor/KorTelephonyReceiver;

    # getter for: Lcom/android/phone/operator/kor/KorTelephonyReceiver;->mIsScreenOn:Z
    invoke-static {v1}, Lcom/android/phone/operator/kor/KorTelephonyReceiver;->access$000(Lcom/android/phone/operator/kor/KorTelephonyReceiver;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->notifyCallProtectionStatus(Z)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/operator/kor/KorTelephonyReceiver$1;->this$0:Lcom/android/phone/operator/kor/KorTelephonyReceiver;

    # invokes: Lcom/android/phone/operator/kor/KorTelephonyReceiver;->handleRoamNetworkChanged()V
    invoke-static {v1}, Lcom/android/phone/operator/kor/KorTelephonyReceiver;->access$100(Lcom/android/phone/operator/kor/KorTelephonyReceiver;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
