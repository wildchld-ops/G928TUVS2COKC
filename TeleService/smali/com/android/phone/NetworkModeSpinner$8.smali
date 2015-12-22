.class Lcom/android/phone/NetworkModeSpinner$8;
.super Ljava/lang/Object;
.source "NetworkModeSpinner.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NetworkModeSpinner;->handleNetworkModeChangeForMultiSIM()V
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

    iput-object p1, p0, Lcom/android/phone/NetworkModeSpinner$8;->this$0:Lcom/android/phone/NetworkModeSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/phone/NetworkModeSpinner$8;->this$0:Lcom/android/phone/NetworkModeSpinner;

    iget-object v2, p0, Lcom/android/phone/NetworkModeSpinner$8;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mNetworkType:I
    invoke-static {v2}, Lcom/android/phone/NetworkModeSpinner;->access$800(Lcom/android/phone/NetworkModeSpinner;)I

    move-result v2

    # setter for: Lcom/android/phone/NetworkModeSpinner;->mOldNetworkType:I
    invoke-static {v1, v2}, Lcom/android/phone/NetworkModeSpinner;->access$702(Lcom/android/phone/NetworkModeSpinner;I)I

    iget-object v1, p0, Lcom/android/phone/NetworkModeSpinner$8;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->LOG_TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/NetworkModeSpinner;->access$000(Lcom/android/phone/NetworkModeSpinner;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "handleNetworkModeChangeForMultiSIM setPreferredNetworkType"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/NetworkModeSpinner$8;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mPhones:[Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/NetworkModeSpinner;->access$1000(Lcom/android/phone/NetworkModeSpinner;)[Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkModeSpinner$8;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mActivePhoneId:I
    invoke-static {v2}, Lcom/android/phone/NetworkModeSpinner;->access$1100(Lcom/android/phone/NetworkModeSpinner;)I

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/phone/NetworkModeSpinner$8;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mHandler:Lcom/android/phone/NetworkModeSpinner$MyHandler;
    invoke-static {v2}, Lcom/android/phone/NetworkModeSpinner;->access$900(Lcom/android/phone/NetworkModeSpinner;)Lcom/android/phone/NetworkModeSpinner$MyHandler;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/phone/NetworkModeSpinner$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    # setter for: Lcom/android/phone/NetworkModeSpinner;->sChangeNetworkType_Step2:I
    invoke-static {v4}, Lcom/android/phone/NetworkModeSpinner;->access$1202(I)I

    iget-object v1, p0, Lcom/android/phone/NetworkModeSpinner$8;->this$0:Lcom/android/phone/NetworkModeSpinner;

    iget-object v2, p0, Lcom/android/phone/NetworkModeSpinner$8;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mNetworkType:I
    invoke-static {v2}, Lcom/android/phone/NetworkModeSpinner;->access$800(Lcom/android/phone/NetworkModeSpinner;)I

    move-result v2

    # setter for: Lcom/android/phone/NetworkModeSpinner;->mNetworkTypeForStep2:I
    invoke-static {v1, v2}, Lcom/android/phone/NetworkModeSpinner;->access$1302(Lcom/android/phone/NetworkModeSpinner;I)I

    iget-object v1, p0, Lcom/android/phone/NetworkModeSpinner$8;->this$0:Lcom/android/phone/NetworkModeSpinner;

    invoke-virtual {v1}, Lcom/android/phone/NetworkModeSpinner;->sendBroadcastDataButtonEnableIntent()V

    iget-object v1, p0, Lcom/android/phone/NetworkModeSpinner$8;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mActivePhoneId:I
    invoke-static {v1}, Lcom/android/phone/NetworkModeSpinner;->access$1100(Lcom/android/phone/NetworkModeSpinner;)I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/NetworkModeSpinner$8;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mNetworkType:I
    invoke-static {v1}, Lcom/android/phone/NetworkModeSpinner;->access$800(Lcom/android/phone/NetworkModeSpinner;)I

    move-result v1

    # setter for: Lcom/android/phone/NetworkModeSpinner;->sNetworkTypeSim0:I
    invoke-static {v1}, Lcom/android/phone/NetworkModeSpinner;->access$1402(I)I

    # setter for: Lcom/android/phone/NetworkModeSpinner;->sNetworkTypeSim1:I
    invoke-static {v4}, Lcom/android/phone/NetworkModeSpinner;->access$1502(I)I

    iget-object v1, p0, Lcom/android/phone/NetworkModeSpinner$8;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mValues:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/phone/NetworkModeSpinner;->access$1600(Lcom/android/phone/NetworkModeSpinner;)Ljava/util/ArrayList;

    move-result-object v1

    # getter for: Lcom/android/phone/NetworkModeSpinner;->sNetworkTypeSim0:I
    invoke-static {}, Lcom/android/phone/NetworkModeSpinner;->access$1400()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/android/phone/NetworkModeSpinner$8;->this$0:Lcom/android/phone/NetworkModeSpinner;

    iget-object v2, p0, Lcom/android/phone/NetworkModeSpinner$8;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->summaryString:[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/NetworkModeSpinner;->access$1700(Lcom/android/phone/NetworkModeSpinner;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/android/phone/NetworkModeSpinner;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    const-string v1, "qcom_cross_mapping"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "feature_chn"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "feature_hktw"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/phone/NetworkModeSpinner$8;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->LOG_TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/NetworkModeSpinner;->access$000(Lcom/android/phone/NetworkModeSpinner;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleNetworkModeChangeForMultiSIM  QCOM_CROSS_MAPPING is not, CHN model mActivePhoneId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/NetworkModeSpinner$8;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mActivePhoneId:I
    invoke-static {v3}, Lcom/android/phone/NetworkModeSpinner;->access$1100(Lcom/android/phone/NetworkModeSpinner;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mNetworkType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/NetworkModeSpinner$8;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mNetworkType:I
    invoke-static {v3}, Lcom/android/phone/NetworkModeSpinner;->access$800(Lcom/android/phone/NetworkModeSpinner;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v1, p0, Lcom/android/phone/NetworkModeSpinner$8;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/NetworkModeSpinner;->access$1800(Lcom/android/phone/NetworkModeSpinner;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    iget-object v3, p0, Lcom/android/phone/NetworkModeSpinner$8;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mActivePhoneId:I
    invoke-static {v3}, Lcom/android/phone/NetworkModeSpinner;->access$1100(Lcom/android/phone/NetworkModeSpinner;)I

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-static {v1, v2, v3, v4}, Landroid/telephony/TelephonyManager;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v1, p0, Lcom/android/phone/NetworkModeSpinner$8;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/NetworkModeSpinner;->access$1800(Lcom/android/phone/NetworkModeSpinner;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    iget-object v3, p0, Lcom/android/phone/NetworkModeSpinner$8;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mActivePhoneId:I
    invoke-static {v3}, Lcom/android/phone/NetworkModeSpinner;->access$1100(Lcom/android/phone/NetworkModeSpinner;)I

    move-result v3

    iget-object v4, p0, Lcom/android/phone/NetworkModeSpinner$8;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mNetworkType:I
    invoke-static {v4}, Lcom/android/phone/NetworkModeSpinner;->access$800(Lcom/android/phone/NetworkModeSpinner;)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Landroid/telephony/TelephonyManager;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->printPreferredNetworkModeValue()V

    iget-object v1, p0, Lcom/android/phone/NetworkModeSpinner$8;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mActivePhoneId:I
    invoke-static {v1}, Lcom/android/phone/NetworkModeSpinner;->access$1100(Lcom/android/phone/NetworkModeSpinner;)I

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "persist.radio.user.change"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/phone/NetworkModeSpinner$8;->this$0:Lcom/android/phone/NetworkModeSpinner;

    invoke-virtual {v1}, Lcom/android/phone/NetworkModeSpinner;->sendBroadcastButtonEnableIntent()V

    const/4 v1, 0x0

    # setter for: Lcom/android/phone/NetworkModeSpinner;->sSetEnabled:Z
    invoke-static {v1}, Lcom/android/phone/NetworkModeSpinner;->access$1902(Z)Z

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/phone/NetworkModeSpinner$8;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->LOG_TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/NetworkModeSpinner;->access$000(Lcom/android/phone/NetworkModeSpinner;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleNetworkModeChangeForMultiSIM Invalid Index for SIM0 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    # setter for: Lcom/android/phone/NetworkModeSpinner;->sNetworkTypeSim0:I
    invoke-static {v4}, Lcom/android/phone/NetworkModeSpinner;->access$1402(I)I

    iget-object v1, p0, Lcom/android/phone/NetworkModeSpinner$8;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mNetworkType:I
    invoke-static {v1}, Lcom/android/phone/NetworkModeSpinner;->access$800(Lcom/android/phone/NetworkModeSpinner;)I

    move-result v1

    # setter for: Lcom/android/phone/NetworkModeSpinner;->sNetworkTypeSim1:I
    invoke-static {v1}, Lcom/android/phone/NetworkModeSpinner;->access$1502(I)I

    iget-object v1, p0, Lcom/android/phone/NetworkModeSpinner$8;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mValues:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/phone/NetworkModeSpinner;->access$1600(Lcom/android/phone/NetworkModeSpinner;)Ljava/util/ArrayList;

    move-result-object v1

    # getter for: Lcom/android/phone/NetworkModeSpinner;->sNetworkTypeSim1:I
    invoke-static {}, Lcom/android/phone/NetworkModeSpinner;->access$1500()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_4

    iget-object v1, p0, Lcom/android/phone/NetworkModeSpinner$8;->this$0:Lcom/android/phone/NetworkModeSpinner;

    iget-object v2, p0, Lcom/android/phone/NetworkModeSpinner$8;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->summaryString:[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/NetworkModeSpinner;->access$1700(Lcom/android/phone/NetworkModeSpinner;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/android/phone/NetworkModeSpinner;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/phone/NetworkModeSpinner$8;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->LOG_TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/NetworkModeSpinner;->access$000(Lcom/android/phone/NetworkModeSpinner;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleNetworkModeChangeForMultiSIM Invalid Index for SIM1 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    const-string v1, "persist.radio.user.change"

    const-string v2, "2"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
