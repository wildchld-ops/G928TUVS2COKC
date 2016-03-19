.class public Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "LGTNetworkAutoRebootProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$RebootProgress;
    }
.end annotation


# instance fields
.field public context:Landroid/content/Context;

.field private isDisableRoamingMultiIMSI:Z

.field private mAlertDialg:Landroid/app/AlertDialog;

.field mClickListener:Landroid/content/DialogInterface$OnClickListener;

.field mDialogHandler:Landroid/os/Handler;

.field private mDialogType:I

.field private mIsLteRoamingOn:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneGlobals:Lcom/android/phone/PhoneGlobals;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRebootProgress:Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$RebootProgress;

.field private mSetAutoSequence:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mSetDefaultHandler:Landroid/os/Handler;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;

    iput-object v2, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mRebootProgress:Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$RebootProgress;

    iput-object v2, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    iput-object v2, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mAlertDialg:Landroid/app/AlertDialog;

    iput-boolean v1, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mIsLteRoamingOn:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->isDisableRoamingMultiIMSI:Z

    iput v1, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mDialogType:I

    new-instance v0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$1;

    invoke-direct {v0, p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$1;-><init>(Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;)V

    iput-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetDefaultHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$2;

    invoke-direct {v0, p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$2;-><init>(Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;)V

    iput-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mDialogHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$3;

    invoke-direct {v0, p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$3;-><init>(Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;)V

    iput-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method private DoSetAutoSequence()V
    .locals 3

    iget-object v1, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->doInit()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->setDefaultFplmn()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->setDefaultLoci()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->setDefaultPsloci()V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->setDefaultEpsloci()V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->setDefaultLociAll()V

    goto :goto_0

    :pswitch_6
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->setDefaultEfRoaming()V

    goto :goto_0

    :pswitch_7
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->setNetworkSelectionModeAutomatic()V

    goto :goto_0

    :pswitch_8
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->setBandModeAuto()V

    goto :goto_0

    :pswitch_9
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->setPreferredNetworkType()V

    goto :goto_0

    :pswitch_a
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->reboot()V

    goto :goto_0

    :pswitch_b
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->doProgressDialogFinish()V

    goto :goto_0

    :pswitch_c
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->setRadioPowerOn()V

    goto :goto_0

    :pswitch_d
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->doActivityFinish()V

    goto :goto_0

    :pswitch_e
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->showDomesticIncomePopup()V

    goto :goto_0

    :pswitch_f
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->showMccChangePopup()V

    goto :goto_0

    :pswitch_10
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->setLteModeOn()V

    goto :goto_0

    :pswitch_11
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->imsiStatusChangeNotiForResetAll()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_c
        :pswitch_b
        :pswitch_e
        :pswitch_f
        :pswitch_d
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->DoSetAutoSequence()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->checkInitState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mAlertDialg:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mAlertDialg:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mIsLteRoamingOn:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->doActivityFinish()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->isDisableRoamingMultiIMSI:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mDialogType:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->reboot()V

    return-void
.end method

.method private checkInitState()Z
    .locals 5

    iget-object v2, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    const-string v2, "LGTProgressDialog "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", simState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private doActivityFinish()V
    .locals 2

    const-string v0, "LGTProgressDialog "

    const-string v1, "doActivityFinish"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->finish()V

    invoke-direct {p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->DoSetAutoSequence()V

    return-void
.end method

.method private doInit()V
    .locals 6

    iget-object v1, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetDefaultHandler:Landroid/os/Handler;

    const/16 v2, 0xd

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private doProgressDialogFinish()V
    .locals 2

    const-string v0, "LGTProgressDialog "

    const-string v1, "doProgressDialogFinish"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mRebootProgress:Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$RebootProgress;

    invoke-virtual {v0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$RebootProgress;->finish()V

    invoke-direct {p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->DoSetAutoSequence()V

    return-void
.end method

.method private imsiStatusChangeNotiForResetAll()V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->sendImsiStatusChangeNotiForResetAll()V

    invoke-direct {p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->DoSetAutoSequence()V

    return-void
.end method

.method private reboot()V
    .locals 4

    const-string v0, "LGTProgressDialog "

    const-string v1, "reboot"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "roaming_auto_setting"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetDefaultHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-direct {p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->DoSetAutoSequence()V

    return-void
.end method

.method private requestSystemKeyEvent(IZ)Z
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mWindowManager:Landroid/view/IWindowManager;

    invoke-virtual {p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "LGTProgressDialog "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestSystemKeyEvent - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private sendImsiStatusChangeNotiForNoWait()V
    .locals 7

    const-string v4, "LGTProgressDialog "

    const-string v5, "sendImsiStatusChangeNotiForResetAll!!! SEND 0x10"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v3, 0x5

    const/16 v4, 0x16

    :try_start_0
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v4, 0x2f

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/16 v4, 0x10

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v4, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    :goto_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v2

    goto :goto_0

    :catchall_0
    move-exception v4

    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    throw v4

    :catch_3
    move-exception v2

    goto :goto_0
.end method

.method private sendImsiStatusChangeNotiForResetAll()V
    .locals 7

    const-string v4, "LGTProgressDialog "

    const-string v5, "sendImsiStatusChangeNotiForResetAll!!! SEND 0x00"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v3, 0x5

    const/16 v4, 0x16

    :try_start_0
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v4, 0x2f

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v4, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    :goto_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v2

    goto :goto_0

    :catchall_0
    move-exception v4

    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    throw v4

    :catch_3
    move-exception v2

    goto :goto_0
.end method

.method private setAuto()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->DoSetAutoSequence()V

    return-void
.end method

.method private setAutoDisableMultiImsi()V
    .locals 7

    const/16 v6, 0xc

    const/16 v5, 0x9

    const/16 v4, 0x8

    const/4 v3, 0x7

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mDialogType:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->DoSetAutoSequence()V

    return-void

    :cond_1
    iget v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mDialogType:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mDialogType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->isDisableRoamingMultiIMSI:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Lcom/android/services/telephony/common/SystemDBInterface;->setRoamingAutoSetting(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private setBandModeAuto()V
    .locals 10

    const-string v6, "LGTProgressDialog "

    const-string v7, "setAutoBandMode"

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;

    iget-object v6, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetDefaultHandler:Landroid/os/Handler;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-string v6, "kor_phone_via_chip"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "preferred_network_mode"

    sget v8, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v4, 0x8

    const/16 v6, 0x16

    :try_start_0
    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v6, 0x13

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-interface {v6, v7, v5}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v3

    const-string v6, "LGTProgressDialog "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SetBand- Exception(finally) : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v3

    :try_start_2
    const-string v6, "LGTProgressDialog "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SetBand- Exception : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_3

    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_3
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v3

    const-string v6, "LGTProgressDialog "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SetBand- Exception(finally) : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v6

    if-eqz v1, :cond_4

    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :cond_5
    :goto_1
    throw v6

    :catch_3
    move-exception v3

    const-string v7, "LGTProgressDialog "

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SetBand- Exception(finally) : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setDefaultEfRoaming()V
    .locals 10

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v5, "LGTProgressDialog "

    const-string v6, "setDefaultEfRoaming"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v5, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetDefaultHandler:Landroid/os/Handler;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    new-array v4, v8, [B

    aput-byte v7, v4, v7

    const/4 v3, 0x0

    :try_start_0
    const-class v5, Lcom/android/internal/telephony/IccCard;

    const-string v6, "setRoaming"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v5, "LGTProgressDialog "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NoSuchMethodException - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetDefaultHandler:Landroid/os/Handler;

    invoke-virtual {v5, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v5, "LGTProgressDialog "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IllegalArgumentException - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetDefaultHandler:Landroid/os/Handler;

    invoke-virtual {v5, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v5, "LGTProgressDialog "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IllegalAccessException - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetDefaultHandler:Landroid/os/Handler;

    invoke-virtual {v5, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catch_3
    move-exception v0

    const-string v5, "LGTProgressDialog "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "InvocationTargetException - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetDefaultHandler:Landroid/os/Handler;

    invoke-virtual {v5, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private setDefaultEpsloci()V
    .locals 11

    const-string v6, "LGTProgressDialog "

    const-string v7, "setDefaultEpsloci"

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v6, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetDefaultHandler:Landroid/os/Handler;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-string v1, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000001"

    invoke-static {v1}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v5, 0x0

    :try_start_0
    const-class v6, Lcom/android/internal/telephony/IccCard;

    const-string v7, "setEPSLOCI"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v8, 0x1

    aput-object v3, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    return-void

    :catch_0
    move-exception v2

    const-string v6, "LGTProgressDialog "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NoSuchMethodException - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetDefaultHandler:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catch_1
    move-exception v2

    const-string v6, "LGTProgressDialog "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IllegalArgumentException - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetDefaultHandler:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catch_2
    move-exception v2

    const-string v6, "LGTProgressDialog "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IllegalAccessException - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetDefaultHandler:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catch_3
    move-exception v2

    const-string v6, "LGTProgressDialog "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "InvocationTargetException - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetDefaultHandler:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private setDefaultFplmn()V
    .locals 11

    const/4 v8, 0x1

    const-string v6, "LGTProgressDialog "

    const-string v7, "setDefualtFplmn"

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v6, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetDefaultHandler:Landroid/os/Handler;

    invoke-virtual {v6, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-string v1, "54F08054F050FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"

    invoke-static {v1}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v5, 0x0

    :try_start_0
    const-class v6, Lcom/android/internal/telephony/IccCard;

    const-string v7, "setFPLMN"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v8, 0x1

    aput-object v3, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    return-void

    :catch_0
    move-exception v2

    const-string v6, "LGTProgressDialog "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NoSuchMethodException - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetDefaultHandler:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catch_1
    move-exception v2

    const-string v6, "LGTProgressDialog "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IllegalArgumentException - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetDefaultHandler:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catch_2
    move-exception v2

    const-string v6, "LGTProgressDialog "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IllegalAccessException - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetDefaultHandler:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catch_3
    move-exception v2

    const-string v6, "LGTProgressDialog "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "InvocationTargetException - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetDefaultHandler:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private setDefaultLoci()V
    .locals 11

    const/4 v8, 0x2

    const-string v6, "LGTProgressDialog "

    const-string v7, "setDefaultLoci"

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v6, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetDefaultHandler:Landroid/os/Handler;

    invoke-virtual {v6, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-string v1, "FFFFFFFFFFFFFF0000FF01"

    invoke-static {v1}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v5, 0x0

    :try_start_0
    const-class v6, Lcom/android/internal/telephony/IccCard;

    const-string v7, "setLOCI"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v8, 0x1

    aput-object v3, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    return-void

    :catch_0
    move-exception v2

    const-string v6, "LGTProgressDialog "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NoSuchMethodException - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetDefaultHandler:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catch_1
    move-exception v2

    const-string v6, "LGTProgressDialog "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IllegalArgumentException - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetDefaultHandler:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catch_2
    move-exception v2

    const-string v6, "LGTProgressDialog "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IllegalAccessException - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetDefaultHandler:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catch_3
    move-exception v2

    const-string v6, "LGTProgressDialog "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "InvocationTargetException - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetDefaultHandler:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private setDefaultLociAll()V
    .locals 18

    const-string v13, "LGTProgressDialog "

    const-string v14, "setDefaultLociAll"

    invoke-static {v13, v14}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetDefaultHandler:Landroid/os/Handler;

    const/4 v14, 0x5

    invoke-virtual {v13, v14}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    const-string v5, "FFFFFFFFFFFFFF0000FF01"

    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v11, 0x0

    const-string v6, "FFFFFFFFFFFFFFFFFFFF0000FF01"

    invoke-static {v6}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v12, 0x0

    const-string v4, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000001"

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v10, 0x0

    :try_start_0
    const-class v13, Lcom/android/internal/telephony/IccCard;

    const-string v14, "setPSLOCI"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v3, v14, v15

    invoke-virtual {v12, v13, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-class v13, Lcom/android/internal/telephony/IccCard;

    const-string v14, "setLOCI"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v13

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v2, v14, v15

    const/4 v15, 0x1

    aput-object v8, v14, v15

    invoke-virtual {v11, v13, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    return-void

    :catch_0
    move-exception v7

    const-string v13, "LGTProgressDialog "

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "NoSuchMethodException - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetDefaultHandler:Landroid/os/Handler;

    invoke-virtual {v13, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catch_1
    move-exception v7

    const-string v13, "LGTProgressDialog "

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "IllegalArgumentException - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetDefaultHandler:Landroid/os/Handler;

    invoke-virtual {v13, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catch_2
    move-exception v7

    const-string v13, "LGTProgressDialog "

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "IllegalAccessException - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetDefaultHandler:Landroid/os/Handler;

    invoke-virtual {v13, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catch_3
    move-exception v7

    const-string v13, "LGTProgressDialog "

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "InvocationTargetException - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetDefaultHandler:Landroid/os/Handler;

    invoke-virtual {v13, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method

.method private setDefaultPsloci()V
    .locals 11

    const-string v6, "LGTProgressDialog "

    const-string v7, "setDefaultPsloci"

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v6, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetDefaultHandler:Landroid/os/Handler;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-string v1, "FFFFFFFFFFFFFFFFFFFF0000FF01"

    invoke-static {v1}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v5, 0x0

    :try_start_0
    const-class v6, Lcom/android/internal/telephony/IccCard;

    const-string v7, "setPSLOCI"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v8, 0x1

    aput-object v3, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    return-void

    :catch_0
    move-exception v2

    const-string v6, "LGTProgressDialog "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NoSuchMethodException - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetDefaultHandler:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catch_1
    move-exception v2

    const-string v6, "LGTProgressDialog "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IllegalArgumentException - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetDefaultHandler:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catch_2
    move-exception v2

    const-string v6, "LGTProgressDialog "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IllegalAccessException - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetDefaultHandler:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catch_3
    move-exception v2

    const-string v6, "LGTProgressDialog "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "InvocationTargetException - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetDefaultHandler:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private setLteModeOn()V
    .locals 4

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lte_mode_on"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    const-string v2, "ril.simtype"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->DoSetAutoSequence()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setNetworkSelectionModeAutomatic()V
    .locals 4

    const-string v2, "LGTProgressDialog "

    const-string v3, " networkSelectAuto !! "

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetDefaultHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->sendImsiStatusChangeNotiForNoWait()V

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    return-void
.end method

.method private setPreferredNetworkType()V
    .locals 4

    const-string v2, "LGTProgressDialog "

    const-string v3, "setPreferredNetworkType"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetDefaultHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    sget v2, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    invoke-interface {v1, v2, v0}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    return-void
.end method

.method private setRadioPowerOn()V
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "LGTProgressDialog "

    const-string v3, "setRadioPowerOn"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    :goto_0
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->DoSetAutoSequence()V

    return-void

    :cond_1
    const-string v1, "LGTProgressDialog "

    const-string v2, "Not set radio power on in Air plane mode on!"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showDomesticIncomePopup()V
    .locals 2

    const-string v0, "LGTProgressDialog "

    const-string v1, "showDomesticIncomePopup"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mDialogHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-direct {p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->DoSetAutoSequence()V

    return-void
.end method

.method private showMccChangePopup()V
    .locals 2

    const-string v0, "LGTProgressDialog "

    const-string v1, "showMccChangePopup"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mDialogHandler:Landroid/os/Handler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-direct {p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->DoSetAutoSequence()V

    return-void
.end method

.method private transDialgoTypeStringToInt(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "RESET"

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MCC"

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "DOMESTIC"

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->context:Landroid/content/Context;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mWindowManager:Landroid/view/IWindowManager;

    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "DialogType"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "DialogType"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->transDialgoTypeStringToInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mDialogType:I

    :goto_0
    const-string v2, "LGTProgressDialog "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DialogType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mDialogType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x1a

    invoke-direct {p0, v2, v6}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->requestSystemKeyEvent(IZ)Z

    const/4 v2, 0x3

    invoke-direct {p0, v2, v6}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->requestSystemKeyEvent(IZ)Z

    const/16 v2, 0xbb

    invoke-direct {p0, v2, v6}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->requestSystemKeyEvent(IZ)Z

    invoke-virtual {p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->setupAlert()V

    iput-boolean v5, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mIsLteRoamingOn:Z

    iget-boolean v2, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->isDisableRoamingMultiIMSI:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->setAutoDisableMultiImsi()V

    :goto_1
    iget-boolean v2, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->isDisableRoamingMultiIMSI:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mDialogType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    new-instance v2, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$RebootProgress;

    invoke-direct {v2, p0, v7}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$RebootProgress;-><init>(Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$1;)V

    iput-object v2, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mRebootProgress:Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$RebootProgress;

    iget-object v2, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mRebootProgress:Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$RebootProgress;

    new-array v3, v5, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$RebootProgress;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_2
    return-void

    :cond_0
    iput v5, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mDialogType:I

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->setAuto()V

    goto :goto_1

    :cond_2
    const-string v2, "LGTProgressDialog "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Don\'t draw progress with DialogType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mDialogType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    new-instance v2, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$RebootProgress;

    invoke-direct {v2, p0, v7}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$RebootProgress;-><init>(Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$1;)V

    iput-object v2, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mRebootProgress:Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$RebootProgress;

    iget-object v2, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mRebootProgress:Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$RebootProgress;

    new-array v3, v5, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$RebootProgress;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    :cond_0
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    const-string v1, "LGTProgressDialog "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ignore back key keyCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/android/internal/app/AlertActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :sswitch_0
    const-string v1, "LGTProgressDialog "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ignore camera key keyCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1b -> :sswitch_0
        0x50 -> :sswitch_0
        0xa8 -> :sswitch_0
        0xa9 -> :sswitch_0
        0x126 -> :sswitch_0
        0x12a -> :sswitch_0
        0x12b -> :sswitch_0
        0x12c -> :sswitch_0
        0x12d -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "LGTProgressDialog "

    const-string v1, " onPause!! "

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    return-void
.end method
