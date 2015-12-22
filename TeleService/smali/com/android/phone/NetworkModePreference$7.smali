.class Lcom/android/phone/NetworkModePreference$7;
.super Ljava/lang/Object;
.source "NetworkModePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NetworkModePreference;->handleNetworkModeChangeForMultiSIM()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkModePreference;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkModePreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/NetworkModePreference$7;->this$0:Lcom/android/phone/NetworkModePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference$7;->this$0:Lcom/android/phone/NetworkModePreference;

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference$7;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mNetworkType:I
    invoke-static {v1}, Lcom/android/phone/NetworkModePreference;->access$800(Lcom/android/phone/NetworkModePreference;)I

    move-result v1

    # setter for: Lcom/android/phone/NetworkModePreference;->mOldNetworkType:I
    invoke-static {v0, v1}, Lcom/android/phone/NetworkModePreference;->access$702(Lcom/android/phone/NetworkModePreference;I)I

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference$7;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mPhones:[Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/NetworkModePreference;->access$1000(Lcom/android/phone/NetworkModePreference;)[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference$7;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mActivePhoneId:I
    invoke-static {v1}, Lcom/android/phone/NetworkModePreference;->access$1100(Lcom/android/phone/NetworkModePreference;)I

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference$7;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mHandler:Lcom/android/phone/NetworkModePreference$MyHandler;
    invoke-static {v1}, Lcom/android/phone/NetworkModePreference;->access$900(Lcom/android/phone/NetworkModePreference;)Lcom/android/phone/NetworkModePreference$MyHandler;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/phone/NetworkModePreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    # setter for: Lcom/android/phone/NetworkModePreference;->sChangeNetworkType_Step2:I
    invoke-static {v4}, Lcom/android/phone/NetworkModePreference;->access$1202(I)I

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference$7;->this$0:Lcom/android/phone/NetworkModePreference;

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference$7;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mNetworkType:I
    invoke-static {v1}, Lcom/android/phone/NetworkModePreference;->access$800(Lcom/android/phone/NetworkModePreference;)I

    move-result v1

    # setter for: Lcom/android/phone/NetworkModePreference;->mNetworkTypeForStep2:I
    invoke-static {v0, v1}, Lcom/android/phone/NetworkModePreference;->access$1302(Lcom/android/phone/NetworkModePreference;I)I

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference$7;->this$0:Lcom/android/phone/NetworkModePreference;

    invoke-virtual {v0}, Lcom/android/phone/NetworkModePreference;->sendBroadcastDataButtonEnableIntent()V

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference$7;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mActivePhoneId:I
    invoke-static {v0}, Lcom/android/phone/NetworkModePreference;->access$1100(Lcom/android/phone/NetworkModePreference;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference$7;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mNetworkType:I
    invoke-static {v0}, Lcom/android/phone/NetworkModePreference;->access$800(Lcom/android/phone/NetworkModePreference;)I

    move-result v0

    # setter for: Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim0:I
    invoke-static {v0}, Lcom/android/phone/NetworkModePreference;->access$1402(I)I

    # setter for: Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim1:I
    invoke-static {v4}, Lcom/android/phone/NetworkModePreference;->access$1502(I)I

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference$7;->this$0:Lcom/android/phone/NetworkModePreference;

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference$7;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->summaryString:[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/NetworkModePreference;->access$1600(Lcom/android/phone/NetworkModePreference;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference$7;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim0:I
    invoke-static {}, Lcom/android/phone/NetworkModePreference;->access$1400()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/NetworkModePreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/phone/NetworkModePreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    const-string v0, "qcom_cross_mapping"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "feature_chn"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference$7;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/NetworkModePreference;->access$000(Lcom/android/phone/NetworkModePreference;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNetworkModeChangeForMultiSIM  QCOM_CROSS_MAPPING is not, CHN model mActivePhoneId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference$7;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mActivePhoneId:I
    invoke-static {v2}, Lcom/android/phone/NetworkModePreference;->access$1100(Lcom/android/phone/NetworkModePreference;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mNetworkType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference$7;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mNetworkType:I
    invoke-static {v2}, Lcom/android/phone/NetworkModePreference;->access$800(Lcom/android/phone/NetworkModePreference;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference$7;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/NetworkModePreference;->access$1700(Lcom/android/phone/NetworkModePreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_network_mode"

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference$7;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mActivePhoneId:I
    invoke-static {v2}, Lcom/android/phone/NetworkModePreference;->access$1100(Lcom/android/phone/NetworkModePreference;)I

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v0, v1, v2, v4}, Landroid/telephony/TelephonyManager;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference$7;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/NetworkModePreference;->access$1700(Lcom/android/phone/NetworkModePreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_network_mode"

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference$7;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mActivePhoneId:I
    invoke-static {v2}, Lcom/android/phone/NetworkModePreference;->access$1100(Lcom/android/phone/NetworkModePreference;)I

    move-result v2

    iget-object v3, p0, Lcom/android/phone/NetworkModePreference$7;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mNetworkType:I
    invoke-static {v3}, Lcom/android/phone/NetworkModePreference;->access$800(Lcom/android/phone/NetworkModePreference;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/telephony/TelephonyManager;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->printPreferredNetworkModeValue()V

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference$7;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mActivePhoneId:I
    invoke-static {v0}, Lcom/android/phone/NetworkModePreference;->access$1100(Lcom/android/phone/NetworkModePreference;)I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "persist.radio.user.change"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference$7;->this$0:Lcom/android/phone/NetworkModePreference;

    invoke-virtual {v0}, Lcom/android/phone/NetworkModePreference;->sendBroadcastButtonEnableIntent()V

    const/4 v0, 0x0

    # setter for: Lcom/android/phone/NetworkModePreference;->sSetEnabled:Z
    invoke-static {v0}, Lcom/android/phone/NetworkModePreference;->access$1802(Z)Z

    return-void

    :cond_1
    # setter for: Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim0:I
    invoke-static {v4}, Lcom/android/phone/NetworkModePreference;->access$1402(I)I

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference$7;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mNetworkType:I
    invoke-static {v0}, Lcom/android/phone/NetworkModePreference;->access$800(Lcom/android/phone/NetworkModePreference;)I

    move-result v0

    # setter for: Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim1:I
    invoke-static {v0}, Lcom/android/phone/NetworkModePreference;->access$1502(I)I

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference$7;->this$0:Lcom/android/phone/NetworkModePreference;

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference$7;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->summaryString:[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/NetworkModePreference;->access$1600(Lcom/android/phone/NetworkModePreference;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference$7;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim1:I
    invoke-static {}, Lcom/android/phone/NetworkModePreference;->access$1500()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/NetworkModePreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/phone/NetworkModePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_2
    const-string v0, "persist.radio.user.change"

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
