.class Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;
.super Landroid/telephony/PhoneStateListener;
.source "MSimNetworkControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->mSubId:I

    # invokes: Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getPhoneId(I)I
    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->access$000(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCallState:[I

    aput p1, v3, v2

    const-string v3, "StatusBar.MSimNetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCallStateChanged received on getPhoneId :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "call.emergency.dial"

    invoke-static {v3, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v3, "StatusBar.MSimNetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCallStateChanged DialingEmergencyCall = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq p1, v8, :cond_0

    if-ne p1, v6, :cond_3

    :cond_0
    if-eqz v0, :cond_3

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mIsOneCP:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsDialingEmergencyCall:[Z

    aput-boolean v6, v3, v2

    const-string v3, "StatusBar.MSimNetworkController"

    const-string v4, "onCallStateChanged DialingEmergencyCall"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mIsCTCDSDS:Z

    if-eqz v3, :cond_4

    if-eq p1, v8, :cond_1

    if-ne p1, v6, :cond_4

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsDSDSlimited:[Z

    aput-boolean v6, v3, v2

    :goto_1
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CTC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshSignalIconForCTCRoamingCall()V
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->access$800(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;)V

    :cond_2
    return-void

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsDialingEmergencyCall:[Z

    aput-boolean v7, v3, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsDSDSlimited:[Z

    aput-boolean v7, v3, v2

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget v3, v3, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateTelephonySignalStrength(I)V
    invoke-static {v3, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getUpdateDataNetType(I)V
    invoke-static {v3, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->access$500(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public onDataActivity(I)V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->mSubId:I

    # invokes: Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getPhoneId(I)I
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->access$000(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;I)I

    move-result v0

    const-string v1, "StatusBar.MSimNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDataActivity received on getPhoneId :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "direction="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataActivity:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataActivity:[I

    aput p1, v1, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iput p1, v1, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataActivity:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateDataIcon(I)V
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->access$600(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    :cond_0
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->mSubId:I

    # invokes: Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getPhoneId(I)I
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->access$000(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;I)I

    move-result v0

    const-string v1, "StatusBar.MSimNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDataConnectionStateChanged received on getPhoneId :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " subid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->mSubId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mBootDataSvcAcquired:Z

    if-nez v1, :cond_0

    const-string v1, "StatusBar.MSimNetworkController"

    const-string v2, "!@Boot: Data SVC is acquired"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mBootDataSvcAcquired:Z

    :cond_0
    const-string v1, "StatusBar.MSimNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDataConnectionStateChanged getDefaultDataSubId :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->mSubId:I

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iput p1, v1, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataState:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iput p2, v1, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataStateDual:[I

    aput p1, v1, v0

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mClusterForCHN:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataState:[I

    aput p1, v1, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataNetType:[I

    aput p2, v1, v0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getUpdateDataNetType(I)V
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->access$500(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateDataIcon(I)V
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->access$600(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->mSubId:I

    # invokes: Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getPhoneId(I)I
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->access$000(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;I)I

    move-result v5

    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceStateChanged received on getPhoneId :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mBootVoiceSvcAcquired:Z

    if-nez v0, :cond_0

    const-string v0, "StatusBar.MSimNetworkController"

    const-string v1, "!@Boot: Voice SVC is acquired"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mBootVoiceSvcAcquired:Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aput-object p1, v0, v5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->access$200(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;)I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_ConfigPsOnlyList"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "ro.config.combined_signal"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsCtcCard:[Z

    aget-boolean v0, v0, v5

    if-nez v0, :cond_1

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isPsOnly(I)Z
    invoke-static {v0, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->access$300(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataServiceState:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    aput v1, v0, v5

    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Combining data service state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataServiceState:[I

    aget v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for signal"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataIconForCHN:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataNetType:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    # invokes: Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->radioTechnologyToNetworkType(I)I
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->access$400(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;I)I

    move-result v1

    aput v1, v0, v5

    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceStateChanged radioType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataNetType:[I

    aget v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateTelephonySignalStrength(I)V
    invoke-static {v0, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getUpdateDataNetType(I)V
    invoke-static {v0, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->access$500(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateDataIcon(I)V
    invoke-static {v0, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->access$600(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowSpn:[Z

    aget-boolean v1, v1, v5

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSpn:[Ljava/lang/String;

    aget-object v2, v2, v5

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowPlmn:[Z

    aget-boolean v3, v3, v5

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPlmn:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateCarrierText(I)V
    invoke-static {v0, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->access$700(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 4

    const-string v1, "StatusBar.MSimNetworkController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSignalStrengthsChanged received on getPhoneId :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->mSubId:I

    # invokes: Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getPhoneId(I)I
    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->access$000(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "signalStrength="

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

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->mSubId:I

    # invokes: Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getPhoneId(I)I
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->access$000(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;I)I

    move-result v1

    aput-object p1, v0, v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->mSubId:I

    # invokes: Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getPhoneId(I)I
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->access$000(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;I)I

    move-result v1

    # invokes: Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateTelephonySignalStrength(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->mSubId:I

    # invokes: Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getPhoneId(I)I
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->access$000(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

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
