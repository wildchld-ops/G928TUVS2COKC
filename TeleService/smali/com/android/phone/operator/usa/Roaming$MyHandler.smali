.class Lcom/android/phone/operator/usa/Roaming$MyHandler;
.super Landroid/os/Handler;
.source "Roaming.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/operator/usa/Roaming;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/usa/Roaming;


# direct methods
.method private constructor <init>(Lcom/android/phone/operator/usa/Roaming;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/usa/Roaming$MyHandler;->this$0:Lcom/android/phone/operator/usa/Roaming;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/operator/usa/Roaming;Lcom/android/phone/operator/usa/Roaming$1;)V
    .locals 0
    .param p1    # Lcom/android/phone/operator/usa/Roaming;
    .param p2    # Lcom/android/phone/operator/usa/Roaming$1;

    invoke-direct {p0, p1}, Lcom/android/phone/operator/usa/Roaming$MyHandler;-><init>(Lcom/android/phone/operator/usa/Roaming;)V

    return-void
.end method

.method private handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .locals 6
    .param p1    # Landroid/os/Message;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_1

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    const/4 v4, 0x0

    aget v1, v3, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetPreferredNetworkTypeResponse: modemNetworkMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/phone/operator/usa/Roaming;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/operator/usa/Roaming;->access$100(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/phone/operator/usa/Roaming$MyHandler;->this$0:Lcom/android/phone/operator/usa/Roaming;

    # getter for: Lcom/android/phone/operator/usa/Roaming;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/phone/operator/usa/Roaming;->access$200(Lcom/android/phone/operator/usa/Roaming;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    sget v5, Lcom/android/phone/operator/usa/Roaming;->preferredNetworkMode:I

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetPreferredNetworkTypeReponse: settingsNetworkMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/phone/operator/usa/Roaming;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/operator/usa/Roaming;->access$100(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    const/4 v3, 0x4

    if-eq v1, v3, :cond_0

    const/4 v3, 0x5

    if-eq v1, v3, :cond_0

    const/4 v3, 0x6

    if-eq v1, v3, :cond_0

    const/4 v3, 0x7

    if-ne v1, v3, :cond_2

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetPreferredNetworkTypeResponse: if 1: modemNetworkMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/phone/operator/usa/Roaming;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/operator/usa/Roaming;->access$100(Ljava/lang/String;)V

    if-eq v1, v2, :cond_1

    const-string v3, "handleGetPreferredNetworkTypeResponse: if 2: modemNetworkMode != settingsNetworkMode"

    # invokes: Lcom/android/phone/operator/usa/Roaming;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/operator/usa/Roaming;->access$100(Ljava/lang/String;)V

    move v2, v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetPreferredNetworkTypeResponse: if 2: settingsNetworkMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/phone/operator/usa/Roaming;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/operator/usa/Roaming;->access$100(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/phone/operator/usa/Roaming$MyHandler;->this$0:Lcom/android/phone/operator/usa/Roaming;

    # getter for: Lcom/android/phone/operator/usa/Roaming;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/phone/operator/usa/Roaming;->access$200(Lcom/android/phone/operator/usa/Roaming;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v3, "handleGetPreferredNetworkTypeResponse: else: reset to default"

    # invokes: Lcom/android/phone/operator/usa/Roaming;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/operator/usa/Roaming;->access$100(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/operator/usa/Roaming$MyHandler;->resetNetworkModeToDefault()V

    goto :goto_0
.end method

.method private handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .locals 4
    .param p1    # Landroid/os/Message;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/operator/usa/Roaming$MyHandler;->this$0:Lcom/android/phone/operator/usa/Roaming;

    # getter for: Lcom/android/phone/operator/usa/Roaming;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;
    invoke-static {v2}, Lcom/android/phone/operator/usa/Roaming;->access$300(Lcom/android/phone/operator/usa/Roaming;)Landroid/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/android/phone/operator/usa/Roaming$MyHandler;->this$0:Lcom/android/phone/operator/usa/Roaming;

    # getter for: Lcom/android/phone/operator/usa/Roaming;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/operator/usa/Roaming;->access$200(Lcom/android/phone/operator/usa/Roaming;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/phone/operator/usa/Roaming$MyHandler;->this$0:Lcom/android/phone/operator/usa/Roaming;

    # getter for: Lcom/android/phone/operator/usa/Roaming;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/operator/usa/Roaming;->access$200(Lcom/android/phone/operator/usa/Roaming;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/phone/operator/usa/Roaming$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    goto :goto_0
.end method

.method private resetNetworkModeToDefault()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/operator/usa/Roaming$MyHandler;->this$0:Lcom/android/phone/operator/usa/Roaming;

    # getter for: Lcom/android/phone/operator/usa/Roaming;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;
    invoke-static {v0}, Lcom/android/phone/operator/usa/Roaming;->access$300(Lcom/android/phone/operator/usa/Roaming;)Landroid/preference/ListPreference;

    move-result-object v0

    sget v1, Lcom/android/phone/operator/usa/Roaming;->preferredNetworkMode:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/operator/usa/Roaming$MyHandler;->this$0:Lcom/android/phone/operator/usa/Roaming;

    # getter for: Lcom/android/phone/operator/usa/Roaming;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/operator/usa/Roaming;->access$200(Lcom/android/phone/operator/usa/Roaming;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_network_mode"

    sget v2, Lcom/android/phone/operator/usa/Roaming;->preferredNetworkMode:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/phone/operator/usa/Roaming$MyHandler;->this$0:Lcom/android/phone/operator/usa/Roaming;

    # getter for: Lcom/android/phone/operator/usa/Roaming;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/operator/usa/Roaming;->access$200(Lcom/android/phone/operator/usa/Roaming;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    sget v1, Lcom/android/phone/operator/usa/Roaming;->preferredNetworkMode:I

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/phone/operator/usa/Roaming$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

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
    invoke-direct {p0, p1}, Lcom/android/phone/operator/usa/Roaming$MyHandler;->handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/phone/operator/usa/Roaming$MyHandler;->handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
