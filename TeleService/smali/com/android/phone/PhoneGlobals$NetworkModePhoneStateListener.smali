.class Lcom/android/phone/PhoneGlobals$NetworkModePhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "PhoneGlobals.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneGlobals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkModePhoneStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneGlobals;


# direct methods
.method public constructor <init>(Lcom/android/phone/PhoneGlobals;I)V
    .locals 0
    .param p2    # I

    iput-object p1, p0, Lcom/android/phone/PhoneGlobals$NetworkModePhoneStateListener;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 2
    .param p1    # I

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals$NetworkModePhoneStateListener;->this$0:Lcom/android/phone/PhoneGlobals;

    # getter for: Lcom/android/phone/PhoneGlobals;->mEmergencyModeMgr:Lcom/android/phone/EmergencyModeManager;
    invoke-static {v0}, Lcom/android/phone/PhoneGlobals;->access$1200(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/EmergencyModeManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/phone/EmergencyModeManager;->mIsDisconnectingData:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "PhoneApp"

    const-string v1, "onDataConnectionStateChanged.."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals$NetworkModePhoneStateListener;->this$0:Lcom/android/phone/PhoneGlobals;

    # getter for: Lcom/android/phone/PhoneGlobals;->mEmergencyModeMgr:Lcom/android/phone/EmergencyModeManager;
    invoke-static {v0}, Lcom/android/phone/PhoneGlobals;->access$1200(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/EmergencyModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/EmergencyModeManager;->changeNetworkType()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 7
    .param p1    # Landroid/telephony/ServiceState;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "volte_settings_in_mobile_networks"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/phone/PhoneGlobals$NetworkModePhoneStateListener;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsCommon;->getInternationalVoicecallTypeValue(Landroid/content/ContentResolver;)I

    move-result v1

    iget-object v4, p0, Lcom/android/phone/PhoneGlobals$NetworkModePhoneStateListener;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/CallFeaturesSetting;->getVoiceCallTypeValue(Landroid/content/ContentResolver;)I

    move-result v3

    const-string v4, "PhoneApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onServiceStateChanged, isRoaming: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mPreviousRoaming: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/PhoneGlobals$NetworkModePhoneStateListener;->this$0:Lcom/android/phone/PhoneGlobals;

    # getter for: Lcom/android/phone/PhoneGlobals;->mPreviousRoaming:I
    invoke-static {v6}, Lcom/android/phone/PhoneGlobals;->access$1500(Lcom/android/phone/PhoneGlobals;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "PhoneApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "internationalVoicecallType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", voiceCallTypeValue: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x7

    iget-object v5, p0, Lcom/android/phone/PhoneGlobals$NetworkModePhoneStateListener;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    if-eqz v0, :cond_5

    iget-object v4, p0, Lcom/android/phone/PhoneGlobals$NetworkModePhoneStateListener;->this$0:Lcom/android/phone/PhoneGlobals;

    # getter for: Lcom/android/phone/PhoneGlobals;->mPreviousRoaming:I
    invoke-static {v4}, Lcom/android/phone/PhoneGlobals;->access$1500(Lcom/android/phone/PhoneGlobals;)I

    move-result v4

    if-eq v2, v4, :cond_5

    if-nez v2, :cond_3

    if-nez v1, :cond_2

    invoke-interface {v0}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->manualRegister()V

    :goto_1
    iget-object v4, p0, Lcom/android/phone/PhoneGlobals$NetworkModePhoneStateListener;->this$0:Lcom/android/phone/PhoneGlobals;

    # setter for: Lcom/android/phone/PhoneGlobals;->mPreviousRoaming:I
    invoke-static {v4, v2}, Lcom/android/phone/PhoneGlobals;->access$1502(Lcom/android/phone/PhoneGlobals;I)I

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_2
    invoke-interface {v0}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->manualDeregister()V

    goto :goto_1

    :cond_3
    if-nez v3, :cond_4

    invoke-interface {v0}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->manualRegister()V

    goto :goto_1

    :cond_4
    invoke-interface {v0}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->manualDeregister()V

    goto :goto_1

    :cond_5
    const-string v4, "PhoneApp"

    const-string v5, "onServiceStateChanged, failed to get interfaceForGeneral.."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
