.class final Lcom/android/services/telephony/TtyManager;
.super Ljava/lang/Object;
.source "TtyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/telephony/TtyManager$TtyBroadcastReceiver;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mPhone:Lcom/android/internal/telephony/Phone;

.field private mPrevStateMode:I

.field private final mReceiver:Lcom/android/services/telephony/TtyManager$TtyBroadcastReceiver;

.field private mRegistrationListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

.field private mTtyMode:I

.field private mUiTtyMode:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v5, Lcom/android/services/telephony/TtyManager$TtyBroadcastReceiver;

    invoke-direct {v5, p0, v8}, Lcom/android/services/telephony/TtyManager$TtyBroadcastReceiver;-><init>(Lcom/android/services/telephony/TtyManager;Lcom/android/services/telephony/TtyManager$1;)V

    iput-object v5, p0, Lcom/android/services/telephony/TtyManager;->mReceiver:Lcom/android/services/telephony/TtyManager$TtyBroadcastReceiver;

    const/4 v5, -0x1

    iput v5, p0, Lcom/android/services/telephony/TtyManager;->mUiTtyMode:I

    iput v6, p0, Lcom/android/services/telephony/TtyManager;->mPrevStateMode:I

    new-instance v5, Lcom/android/services/telephony/TtyManager$1;

    invoke-direct {v5, p0}, Lcom/android/services/telephony/TtyManager$1;-><init>(Lcom/android/services/telephony/TtyManager;)V

    iput-object v5, p0, Lcom/android/services/telephony/TtyManager;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/services/telephony/TtyManager$2;

    invoke-direct {v5, p0}, Lcom/android/services/telephony/TtyManager$2;-><init>(Lcom/android/services/telephony/TtyManager;)V

    iput-object v5, p0, Lcom/android/services/telephony/TtyManager;->mRegistrationListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

    iput-object p2, p0, Lcom/android/services/telephony/TtyManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iput-object p1, p0, Lcom/android/services/telephony/TtyManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v5, "vzw_volte_ui"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "att_volte_ui"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "tmo_volte_ui"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "mpcs_volte_ui"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "canada_volte_ui"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const-string v5, "register registerForRegisterStateChange"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p0, v5, v6}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/android/services/telephony/TtyManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v6, p0, Lcom/android/services/telephony/TtyManager;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x4

    invoke-interface {v5, v6, v7, v8}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    const/4 v5, 0x7

    invoke-static {v5, p1}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    if-eqz v2, :cond_3

    :try_start_0
    const-string v5, "call registerForRegisterStateChange"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p0, v5, v6}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/android/services/telephony/TtyManager;->mRegistrationListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

    invoke-interface {v2, v5}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->registerForRegisterStateChange(Lcom/samsung/commonimsinterface/imscommon/IIMSListener;)V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v5, "android.telecom.action.CURRENT_TTY_MODE_CHANGED"

    invoke-direct {v1, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v5, "android.telecom.action.TTY_PREFERRED_MODE_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/services/telephony/TtyManager;->mReceiver:Lcom/android/services/telephony/TtyManager$TtyBroadcastReceiver;

    invoke-virtual {p1, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v4, 0x0

    invoke-static {p1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->getCurrentTtyMode()I

    move-result v4

    :cond_2
    invoke-direct {p0, v4}, Lcom/android/services/telephony/TtyManager;->updateTtyMode(I)V

    invoke-direct {p0, v4}, Lcom/android/services/telephony/TtyManager;->updateUiTtyMode(I)V

    return-void

    :cond_3
    :try_start_1
    const-string v5, "fail registerForRegisterStateChange"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p0, v5, v6}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/services/telephony/TtyManager;)Lcom/android/internal/telephony/Phone;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/TtyManager;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$200(I)I
    .locals 1

    invoke-static {p0}, Lcom/android/services/telephony/TtyManager;->phoneModeToTelecomMode(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/services/telephony/TtyManager;)I
    .locals 1

    iget v0, p0, Lcom/android/services/telephony/TtyManager;->mTtyMode:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/services/telephony/TtyManager;)I
    .locals 1

    iget v0, p0, Lcom/android/services/telephony/TtyManager;->mPrevStateMode:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/services/telephony/TtyManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/services/telephony/TtyManager;->mPrevStateMode:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/services/telephony/TtyManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/TtyManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/services/telephony/TtyManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/TtyManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/services/telephony/TtyManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/services/telephony/TtyManager;->updateTtyMode(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/services/telephony/TtyManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/services/telephony/TtyManager;->updateUiTtyMode(I)V

    return-void
.end method

.method private static phoneModeToTelecomMode(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static telecomModeToPhoneMode(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateTtyMode(I)V
    .locals 5

    const/4 v4, 0x1

    const-string v0, "updateTtyMode %d -> %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/services/telephony/TtyManager;->mTtyMode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Lcom/android/services/telephony/TtyManager;->mTtyMode:I

    iget-object v0, p0, Lcom/android/services/telephony/TtyManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {p1}, Lcom/android/services/telephony/TtyManager;->telecomModeToPhoneMode(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/services/telephony/TtyManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->setTTYMode(ILandroid/os/Message;)V

    return-void
.end method

.method private updateUiTtyMode(I)V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "updateUiTtyMode %d -> %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/services/telephony/TtyManager;->mUiTtyMode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, Lcom/android/services/telephony/TtyManager;->mUiTtyMode:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/services/telephony/TtyManager;->mUiTtyMode:I

    iget-object v0, p0, Lcom/android/services/telephony/TtyManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {p1}, Lcom/android/services/telephony/TtyManager;->telecomModeToPhoneMode(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->setUiTTYMode(ILandroid/os/Message;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "ui tty mode didnt change"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
