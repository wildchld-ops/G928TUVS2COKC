.class Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;
.super Landroid/telephony/PhoneStateListener;
.source "NetworkControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    const-string v1, "StatusBar.NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCallStateChanged state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iput p1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneState:I

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mShowFakeRssiIcon:Z

    if-eqz v1, :cond_1

    const-string v1, "ril.simtype"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    const-string v2, "ril.ims.pre_regstate"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    # setter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEmgcCallState:Z
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$502(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)Z

    const/4 v1, 0x2

    if-ne p1, v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEmgcCallState:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$500(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Z

    move-result v1

    if-ne v1, v6, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # setter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mKeepFakeState:Z
    invoke-static {v1, v6}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$602(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v2

    # setter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mFakeSignalStrength:I
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$702(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)I

    :goto_0
    const-string v1, "StatusBar.NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mKeepFakeState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mKeepFakeState:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$600(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mEmgcCallState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEmgcCallState:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$500(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isCdma()Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1300(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isCdmaLTE()Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1400(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eq v0, v6, :cond_4

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getUpdateDataNetType()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1100(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateTelephonySignalStrength()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$000(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUseDisabledDataIcon:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataIcon()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->sendRefreshViewsMessage()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    :cond_4
    return-void

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$800(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$800(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x47

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mKeepFakeDuration:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$900(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public onDataActivity(I)V
    .locals 3

    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataActivity: direction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iput p1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataActivity:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataIcon()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->sendRefreshViewsMessage()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 3

    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataConnectionStateChanged: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBootDataSvcAcquired:Z

    if-nez v0, :cond_0

    const-string v0, "StatusBar.NetworkController"

    const-string v1, "!@Boot: Data SVC is acquired"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBootDataSvcAcquired:Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iput p1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iput p2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUsePureSignalCluster:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateTelephonySignalStrength()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$000(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getUpdateDataNetType()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1100(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataIcon()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->sendRefreshViewsMessage()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v1, "StatusBar.NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceStateChanged voiceState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dataState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBootVoiceSvcAcquired:Z

    if-nez v1, :cond_0

    const-string v1, "StatusBar.NetworkController"

    const-string v2, "!@Boot: Voice SVC is acquired"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iput-boolean v4, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBootVoiceSvcAcquired:Z

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iput-object p1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v3

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->radioTechnologyToNetworkType(I)I
    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$200(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)I

    move-result v2

    iput v2, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const-string v1, "StatusBar.NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceStateChanged mDataNetType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget v3, v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v1, "ro.config.combined_signal"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperator:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->getOperatorFromString(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->TMO:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isCtcCard()Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$300(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getDataServiceState()I
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$400(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v2

    iput v2, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataServiceState:I

    :cond_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Message_CbChannelNb4DisplayInStatusBar"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.mms.CB_CLEAR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_4
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mShowFakeRssiIcon:Z

    if-eqz v1, :cond_5

    const-string v1, "ril.simtype"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    const-string v2, "ril.ims.pre_regstate"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    # setter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEmgcCallState:Z
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$502(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEmgcCallState:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$500(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Z

    move-result v1

    if-ne v1, v4, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # setter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mKeepFakeState:Z
    invoke-static {v1, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$602(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v2

    # setter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mFakeSignalStrength:I
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$702(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)I

    :goto_0
    const-string v1, "StatusBar.NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mKeepFakeState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mKeepFakeState:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$600(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mEmgcCallState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEmgcCallState:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$500(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshOperatorLogoView()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1000(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateTelephonySignalStrength()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$000(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getUpdateDataNetType()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1100(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataIcon()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->sendRefreshViewsMessage()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    return-void

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$800(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$800(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x47

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mKeepFakeDuration:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$900(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 4

    const-string v1, "StatusBar.NetworkController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSignalStrengthsChanged signalStrength="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iput-object p1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateTelephonySignalStrength()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$000(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->sendRefreshViewsMessage()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " level="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
