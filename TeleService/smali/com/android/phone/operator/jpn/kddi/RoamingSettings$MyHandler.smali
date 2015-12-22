.class Lcom/android/phone/operator/jpn/kddi/RoamingSettings$MyHandler;
.super Landroid/os/Handler;
.source "RoamingSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/operator/jpn/kddi/RoamingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/jpn/kddi/RoamingSettings;


# direct methods
.method private constructor <init>(Lcom/android/phone/operator/jpn/kddi/RoamingSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings$MyHandler;->this$0:Lcom/android/phone/operator/jpn/kddi/RoamingSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/operator/jpn/kddi/RoamingSettings;Lcom/android/phone/operator/jpn/kddi/RoamingSettings$1;)V
    .locals 0
    .param p1    # Lcom/android/phone/operator/jpn/kddi/RoamingSettings;
    .param p2    # Lcom/android/phone/operator/jpn/kddi/RoamingSettings$1;

    invoke-direct {p0, p1}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings$MyHandler;-><init>(Lcom/android/phone/operator/jpn/kddi/RoamingSettings;)V

    return-void
.end method

.method private handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .locals 9
    .param p1    # Landroid/os/Message;

    const/4 v8, 0x3

    const/16 v7, 0x9

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_3

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    check-cast v4, [I

    const/4 v5, 0x0

    aget v1, v4, v5

    iget-object v4, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings$MyHandler;->this$0:Lcom/android/phone/operator/jpn/kddi/RoamingSettings;

    # getter for: Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v4}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->access$000(Lcom/android/phone/operator/jpn/kddi/RoamingSettings;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "preferred_network_mode"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v1, :cond_0

    const/4 v4, 0x1

    if-eq v1, v4, :cond_0

    const/4 v4, 0x2

    if-eq v1, v4, :cond_0

    if-eq v1, v8, :cond_0

    const/4 v4, 0x4

    if-eq v1, v4, :cond_0

    const/4 v4, 0x5

    if-eq v1, v4, :cond_0

    const/4 v4, 0x6

    if-eq v1, v4, :cond_0

    const/4 v4, 0x7

    if-eq v1, v4, :cond_0

    const/16 v4, 0x8

    if-eq v1, v4, :cond_0

    if-eq v1, v7, :cond_0

    const/16 v4, 0xa

    if-eq v1, v4, :cond_0

    const/16 v4, 0xb

    if-eq v1, v4, :cond_0

    const/16 v4, 0xc

    if-ne v1, v4, :cond_4

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleGetPreferredNetworkTypeResponse: if 1: modemNetworkMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->access$400(Ljava/lang/String;)V

    if-eq v1, v3, :cond_1

    const-string v4, "handleGetPreferredNetworkTypeResponse: if 2: modemNetworkMode != settingsNetworkMode"

    # invokes: Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->access$400(Ljava/lang/String;)V

    move v3, v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleGetPreferredNetworkTypeResponse: if 2: settingsNetworkMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->access$400(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings$MyHandler;->this$0:Lcom/android/phone/operator/jpn/kddi/RoamingSettings;

    # getter for: Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v4}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->access$000(Lcom/android/phone/operator/jpn/kddi/RoamingSettings;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "preferred_network_mode"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    const-string v4, "preferred_change_by_mobile_data_exceptional_case"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "persist.radio.setnwkmode"

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    # getter for: Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->access$500()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "original State : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,setnwkmode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v3, v8, :cond_2

    if-ne v2, v7, :cond_2

    const/16 v3, 0x9

    :cond_2
    iget-object v4, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings$MyHandler;->this$0:Lcom/android/phone/operator/jpn/kddi/RoamingSettings;

    # getter for: Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mRoamingNetworkMode:Landroid/preference/ListPreference;
    invoke-static {v4}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->access$100(Lcom/android/phone/operator/jpn/kddi/RoamingSettings;)Landroid/preference/ListPreference;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleGetPreferredNetworkTypeResponse: settingsNetworkMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->access$400(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    const-string v4, "handleGetPreferredNetworkTypeResponse: else: reset to default"

    # invokes: Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->access$400(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings$MyHandler;->resetNetworkModeToDefault()V

    goto :goto_0
.end method

.method private handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .locals 7
    .param p1    # Landroid/os/Message;

    const/4 v6, 0x0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings$MyHandler;->this$0:Lcom/android/phone/operator/jpn/kddi/RoamingSettings;

    # getter for: Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mRoamingNetworkMode:Landroid/preference/ListPreference;
    invoke-static {v4}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->access$100(Lcom/android/phone/operator/jpn/kddi/RoamingSettings;)Landroid/preference/ListPreference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v4, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings$MyHandler;->this$0:Lcom/android/phone/operator/jpn/kddi/RoamingSettings;

    # getter for: Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->prefs:Landroid/content/SharedPreferences;
    invoke-static {v4}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->access$600(Lcom/android/phone/operator/jpn/kddi/RoamingSettings;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "japan_system_select_key"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    move v1, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSetPreferredNetworkTypeResponse: buttonNetworkMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->access$400(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings$MyHandler;->this$0:Lcom/android/phone/operator/jpn/kddi/RoamingSettings;

    # getter for: Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v4}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->access$000(Lcom/android/phone/operator/jpn/kddi/RoamingSettings;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "preferred_network_mode"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings$MyHandler;->this$0:Lcom/android/phone/operator/jpn/kddi/RoamingSettings;

    # getter for: Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v4}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->access$000(Lcom/android/phone/operator/jpn/kddi/RoamingSettings;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {p0, v6}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    goto :goto_0
.end method

.method private resetNetworkModeToDefault()V
    .locals 3

    const/16 v2, 0x9

    iget-object v0, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings$MyHandler;->this$0:Lcom/android/phone/operator/jpn/kddi/RoamingSettings;

    # getter for: Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mRoamingNetworkMode:Landroid/preference/ListPreference;
    invoke-static {v0}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->access$100(Lcom/android/phone/operator/jpn/kddi/RoamingSettings;)Landroid/preference/ListPreference;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings$MyHandler;->this$0:Lcom/android/phone/operator/jpn/kddi/RoamingSettings;

    # getter for: Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->access$000(Lcom/android/phone/operator/jpn/kddi/RoamingSettings;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_network_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "preferred_change_by_mobile_data_exceptional_case"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "persist.radio.setnwkmode"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings$MyHandler;->this$0:Lcom/android/phone/operator/jpn/kddi/RoamingSettings;

    # getter for: Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->access$000(Lcom/android/phone/operator/jpn/kddi/RoamingSettings;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1    # Landroid/os/Message;

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings$MyHandler;->handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings$MyHandler;->handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
