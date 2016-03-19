.class Lcom/android/phone/NetworkModeSpinner$MyHandler;
.super Landroid/os/Handler;
.source "NetworkModeSpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkModeSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkModeSpinner;


# direct methods
.method private constructor <init>(Lcom/android/phone/NetworkModeSpinner;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/NetworkModeSpinner;Lcom/android/phone/NetworkModeSpinner$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/NetworkModeSpinner$MyHandler;-><init>(Lcom/android/phone/NetworkModeSpinner;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/NetworkModeSpinner$MyHandler;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/NetworkModeSpinner$MyHandler;->updateState(I)V

    return-void
.end method

.method private handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    const/4 v4, 0x0

    aget v2, v3, v4

    iget-object v3, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->LOG_TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/NetworkModeSpinner;->access$000(Lcom/android/phone/NetworkModeSpinner;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get preferred network type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-direct {p0, v2}, Lcom/android/phone/NetworkModeSpinner$MyHandler;->updateState(I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    iget-object v3, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->LOG_TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/NetworkModeSpinner;->access$000(Lcom/android/phone/NetworkModeSpinner;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ArrayIndexOutOfBoundsException Caught"

    invoke-static {v3, v4, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->LOG_TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/NetworkModeSpinner;->access$000(Lcom/android/phone/NetworkModeSpinner;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get preferred network type, exception="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v3, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # invokes: Lcom/android/phone/NetworkModeSpinner;->setEnabledMenu(Z)V
    invoke-static {v3, v7}, Lcom/android/phone/NetworkModeSpinner;->access$2700(Lcom/android/phone/NetworkModeSpinner;Z)V

    goto :goto_0
.end method

.method private handleGetPreferredNetworkTypeResponseType2(Landroid/os/Message;)V
    .locals 7

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_2

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    check-cast v4, [I

    const/4 v5, 0x0

    aget v2, v4, v5

    iget-object v4, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->LOG_TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/NetworkModeSpinner;->access$000(Lcom/android/phone/NetworkModeSpinner;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleGetPreferredNetworkTypeResponseType2: modemNetworkMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v4}, Lcom/android/phone/NetworkModeSpinner;->access$1800(Lcom/android/phone/NetworkModeSpinner;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "preferred_network_mode"

    sget v6, Lcom/android/phone/NetworkModeSpinner;->sPreferredNetworkMode:I

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->LOG_TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/NetworkModeSpinner;->access$000(Lcom/android/phone/NetworkModeSpinner;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleGetPreferredNetworkTypeResponseType2: settingsNetworkMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_0

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    const/4 v4, 0x3

    if-eq v2, v4, :cond_0

    const/4 v4, 0x4

    if-eq v2, v4, :cond_0

    const/4 v4, 0x5

    if-eq v2, v4, :cond_0

    const/4 v4, 0x6

    if-eq v2, v4, :cond_0

    const/4 v4, 0x7

    if-eq v2, v4, :cond_0

    const/16 v4, 0x8

    if-eq v2, v4, :cond_0

    const/16 v4, 0x9

    if-eq v2, v4, :cond_0

    const/16 v4, 0xa

    if-eq v2, v4, :cond_0

    const/16 v4, 0xb

    if-eq v2, v4, :cond_0

    const/16 v4, 0xc

    if-ne v2, v4, :cond_4

    :cond_0
    iget-object v4, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->LOG_TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/NetworkModeSpinner;->access$000(Lcom/android/phone/NetworkModeSpinner;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleGetPreferredNetworkTypeResponse: if 1: modemNetworkMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v2, v3, :cond_1

    iget-object v4, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->LOG_TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/NetworkModeSpinner;->access$000(Lcom/android/phone/NetworkModeSpinner;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "handleGetPreferredNetworkTypeResponse: if 2: modemNetworkMode != settingsNetworkMode"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    iget-object v4, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->LOG_TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/NetworkModeSpinner;->access$000(Lcom/android/phone/NetworkModeSpinner;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleGetPreferredNetworkTypeResponseType2: if 2: settingsNetworkMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v4}, Lcom/android/phone/NetworkModeSpinner;->access$1800(Lcom/android/phone/NetworkModeSpinner;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "preferred_network_mode"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    iget-object v4, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # invokes: Lcom/android/phone/NetworkModeSpinner;->updatePreferredNetworkModeSummary(I)V
    invoke-static {v4, v2}, Lcom/android/phone/NetworkModeSpinner;->access$2500(Lcom/android/phone/NetworkModeSpinner;I)V

    iget-object v4, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # setter for: Lcom/android/phone/NetworkModeSpinner;->mNetworkType:I
    invoke-static {v4, v2}, Lcom/android/phone/NetworkModeSpinner;->access$802(Lcom/android/phone/NetworkModeSpinner;I)I

    iget-object v4, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    iget-object v5, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mNetworkType:I
    invoke-static {v5}, Lcom/android/phone/NetworkModeSpinner;->access$800(Lcom/android/phone/NetworkModeSpinner;)I

    move-result v5

    # setter for: Lcom/android/phone/NetworkModeSpinner;->mOldNetworkType:I
    invoke-static {v4, v5}, Lcom/android/phone/NetworkModeSpinner;->access$702(Lcom/android/phone/NetworkModeSpinner;I)I

    iget-object v4, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mValues:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/phone/NetworkModeSpinner;->access$1600(Lcom/android/phone/NetworkModeSpinner;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_3

    iget-object v4, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mListPopupWindow:Landroid/widget/ListPopupWindow;
    invoke-static {v4}, Lcom/android/phone/NetworkModeSpinner;->access$100(Lcom/android/phone/NetworkModeSpinner;)Landroid/widget/ListPopupWindow;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/ListPopupWindow;->setSelection(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v4, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->LOG_TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/NetworkModeSpinner;->access$000(Lcom/android/phone/NetworkModeSpinner;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleGetPreferredNetworkTypeResponseType2 invalid index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->LOG_TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/NetworkModeSpinner;->access$000(Lcom/android/phone/NetworkModeSpinner;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "handleGetPreferredNetworkTypeResponseType2: else: reset to default"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/NetworkModeSpinner$MyHandler;->resetNetworkModeToDefault()V

    goto :goto_0
.end method

.method private handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, -0x1

    const/4 v5, 0x0

    const/4 v2, 0x1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "feature_multisim"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->LOG_TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/NetworkModeSpinner;->access$000(Lcom/android/phone/NetworkModeSpinner;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set preferred network type done ar.exception :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mDisplayDataPreferredSlotChangeDialog:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mDisplayDataPreferredSlotChangeDialog:Z
    invoke-static {v7}, Lcom/android/phone/NetworkModeSpinner;->access$2800(Lcom/android/phone/NetworkModeSpinner;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_4

    # setter for: Lcom/android/phone/NetworkModeSpinner;->sSetEnabled:Z
    invoke-static {v2}, Lcom/android/phone/NetworkModeSpinner;->access$1902(Z)Z

    # setter for: Lcom/android/phone/NetworkModeSpinner;->sSetEnableForCrossMapping:Z
    invoke-static {v2}, Lcom/android/phone/NetworkModeSpinner;->access$2902(Z)Z

    iget-object v4, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->LOG_TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/NetworkModeSpinner;->access$000(Lcom/android/phone/NetworkModeSpinner;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set preferred network type, exception="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v4, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mPhones:[Lcom/android/internal/telephony/Phone;
    invoke-static {v4}, Lcom/android/phone/NetworkModeSpinner;->access$1000(Lcom/android/phone/NetworkModeSpinner;)[Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iget-object v6, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mActivePhoneId:I
    invoke-static {v6}, Lcom/android/phone/NetworkModeSpinner;->access$1100(Lcom/android/phone/NetworkModeSpinner;)I

    move-result v6

    aget-object v4, v4, v6

    invoke-virtual {p0, v5}, Lcom/android/phone/NetworkModeSpinner$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    iget-object v4, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # setter for: Lcom/android/phone/NetworkModeSpinner;->mDisplayDataPreferredSlotChangeDialog:Z
    invoke-static {v4, v5}, Lcom/android/phone/NetworkModeSpinner;->access$2802(Lcom/android/phone/NetworkModeSpinner;Z)Z

    # setter for: Lcom/android/phone/NetworkModeSpinner;->sChangeNetworkType_Step2:I
    invoke-static {v5}, Lcom/android/phone/NetworkModeSpinner;->access$1202(I)I

    iget-object v4, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    invoke-virtual {v4}, Lcom/android/phone/NetworkModeSpinner;->sendBroadcastButtonEnableIntent()V

    :cond_0
    :goto_0
    const-string v4, "cust_network_sel_menu4_o2"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    const-string v4, "menu_simplification"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v6, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    iget-object v4, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    invoke-virtual {v4}, Lcom/android/phone/NetworkModeSpinner;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    const-string v7, "button_data_enabled_key"

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    # setter for: Lcom/android/phone/NetworkModeSpinner;->mButtonDataEnabled:Landroid/preference/TwoStatePreference;
    invoke-static {v6, v4}, Lcom/android/phone/NetworkModeSpinner;->access$3102(Lcom/android/phone/NetworkModeSpinner;Landroid/preference/TwoStatePreference;)Landroid/preference/TwoStatePreference;

    :goto_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.sec.android.phone.action.DataEnable"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->LOG_TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/NetworkModeSpinner;->access$000(Lcom/android/phone/NetworkModeSpinner;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mNetworkType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mNetworkType:I
    invoke-static {v7}, Lcom/android/phone/NetworkModeSpinner;->access$800(Lcom/android/phone/NetworkModeSpinner;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v4, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mNetworkType:I
    invoke-static {v4}, Lcom/android/phone/NetworkModeSpinner;->access$800(Lcom/android/phone/NetworkModeSpinner;)I

    move-result v4

    if-ne v4, v2, :cond_b

    iget-object v4, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # invokes: Lcom/android/phone/NetworkModeSpinner;->setMobileDataEnabled(Z)V
    invoke-static {v4, v5}, Lcom/android/phone/NetworkModeSpinner;->access$2100(Lcom/android/phone/NetworkModeSpinner;Z)V

    iget-object v4, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mButtonDataEnabled:Landroid/preference/TwoStatePreference;
    invoke-static {v4}, Lcom/android/phone/NetworkModeSpinner;->access$3100(Lcom/android/phone/NetworkModeSpinner;)Landroid/preference/TwoStatePreference;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mButtonDataEnabled:Landroid/preference/TwoStatePreference;
    invoke-static {v4}, Lcom/android/phone/NetworkModeSpinner;->access$3100(Lcom/android/phone/NetworkModeSpinner;)Landroid/preference/TwoStatePreference;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    :cond_1
    iget-object v4, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mIsDisconnectingData:Z
    invoke-static {v4}, Lcom/android/phone/NetworkModeSpinner;->access$2200(Lcom/android/phone/NetworkModeSpinner;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # setter for: Lcom/android/phone/NetworkModeSpinner;->mIsDisconnectingData:Z
    invoke-static {v4, v5}, Lcom/android/phone/NetworkModeSpinner;->access$2202(Lcom/android/phone/NetworkModeSpinner;Z)Z

    iget-object v4, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # setter for: Lcom/android/phone/NetworkModeSpinner;->mTriggerChangeNetwork:Z
    invoke-static {v4, v5}, Lcom/android/phone/NetworkModeSpinner;->access$2302(Lcom/android/phone/NetworkModeSpinner;Z)Z

    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "mobile_data_enable"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_2
    sget-object v4, Lcom/android/phone/NetworkModeSpinner;->mPrevNetworkType:[I

    iget-object v6, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mNetworkType:I
    invoke-static {v6}, Lcom/android/phone/NetworkModeSpinner;->access$800(Lcom/android/phone/NetworkModeSpinner;)I

    move-result v6

    aput v6, v4, v5

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "mobile_data_enable"

    invoke-static {v4, v6, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_f

    :goto_3
    const-string v4, "data_enable"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/phone/NetworkModeSpinner;->access$2000(Lcom/android/phone/NetworkModeSpinner;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_3
    :goto_4
    return-void

    :cond_4
    # getter for: Lcom/android/phone/NetworkModeSpinner;->sChangeNetworkType_Step2:I
    invoke-static {}, Lcom/android/phone/NetworkModeSpinner;->access$1200()I

    move-result v4

    if-ne v4, v2, :cond_5

    iget-object v4, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->LOG_TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/NetworkModeSpinner;->access$000(Lcom/android/phone/NetworkModeSpinner;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleSetPreferredNetworkTypeResponse setPreferredNetworkType mActivePhoneId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mActivePhoneId:I
    invoke-static {v7}, Lcom/android/phone/NetworkModeSpinner;->access$1100(Lcom/android/phone/NetworkModeSpinner;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mNetworkTypeForStep2:I
    invoke-static {v7}, Lcom/android/phone/NetworkModeSpinner;->access$1300(Lcom/android/phone/NetworkModeSpinner;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mPhones:[Lcom/android/internal/telephony/Phone;
    invoke-static {v4}, Lcom/android/phone/NetworkModeSpinner;->access$1000(Lcom/android/phone/NetworkModeSpinner;)[Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iget-object v6, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mActivePhoneId:I
    invoke-static {v6}, Lcom/android/phone/NetworkModeSpinner;->access$1100(Lcom/android/phone/NetworkModeSpinner;)I

    move-result v6

    aget-object v4, v4, v6

    iget-object v6, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mNetworkTypeForStep2:I
    invoke-static {v6}, Lcom/android/phone/NetworkModeSpinner;->access$1300(Lcom/android/phone/NetworkModeSpinner;)I

    move-result v6

    iget-object v7, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mHandler:Lcom/android/phone/NetworkModeSpinner$MyHandler;
    invoke-static {v7}, Lcom/android/phone/NetworkModeSpinner;->access$900(Lcom/android/phone/NetworkModeSpinner;)Lcom/android/phone/NetworkModeSpinner$MyHandler;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/android/phone/NetworkModeSpinner$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    # setter for: Lcom/android/phone/NetworkModeSpinner;->sChangeNetworkType_Step2:I
    invoke-static {v5}, Lcom/android/phone/NetworkModeSpinner;->access$1202(I)I

    goto :goto_4

    :cond_5
    # setter for: Lcom/android/phone/NetworkModeSpinner;->sSetEnabled:Z
    invoke-static {v2}, Lcom/android/phone/NetworkModeSpinner;->access$1902(Z)Z

    # setter for: Lcom/android/phone/NetworkModeSpinner;->sSetEnableForCrossMapping:Z
    invoke-static {v2}, Lcom/android/phone/NetworkModeSpinner;->access$2902(Z)Z

    iget-object v4, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    invoke-virtual {v4}, Lcom/android/phone/NetworkModeSpinner;->sendBroadcastButtonEnableIntent()V

    iget-object v4, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->LOG_TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/NetworkModeSpinner;->access$000(Lcom/android/phone/NetworkModeSpinner;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "set preferred network type done"

    invoke-static {v4, v6, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v4, "support_safetycare"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getEmergencyModeMgr()Lcom/android/phone/EmergencyModeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/EmergencyModeManager;->getEmergencyMode()I

    move-result v4

    if-ne v4, v9, :cond_6

    const-string v4, "backup_network_pref_mode"

    invoke-static {v1, v4, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_6
    iget-object v4, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mDisplayDataPreferredSlotChangeDialog:Z
    invoke-static {v4}, Lcom/android/phone/NetworkModeSpinner;->access$2800(Lcom/android/phone/NetworkModeSpinner;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # setter for: Lcom/android/phone/NetworkModeSpinner;->mDisplayDataPreferredSlotChangeDialog:Z
    invoke-static {v4, v5}, Lcom/android/phone/NetworkModeSpinner;->access$2802(Lcom/android/phone/NetworkModeSpinner;Z)Z

    iget-object v4, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # invokes: Lcom/android/phone/NetworkModeSpinner;->displayDataPreferredSlotChangeDialog()V
    invoke-static {v4}, Lcom/android/phone/NetworkModeSpinner;->access$3000(Lcom/android/phone/NetworkModeSpinner;)V

    goto/16 :goto_0

    :cond_7
    iget-object v4, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # invokes: Lcom/android/phone/NetworkModeSpinner;->setEnabledMenu(Z)V
    invoke-static {v4, v2}, Lcom/android/phone/NetworkModeSpinner;->access$2700(Lcom/android/phone/NetworkModeSpinner;Z)V

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->LOG_TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/NetworkModeSpinner;->access$000(Lcom/android/phone/NetworkModeSpinner;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set preferred network type, exception="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v4, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v4}, Lcom/android/phone/NetworkModeSpinner;->access$1800(Lcom/android/phone/NetworkModeSpinner;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {p0, v5}, Lcom/android/phone/NetworkModeSpinner$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    goto/16 :goto_0

    :cond_8
    iget-object v4, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v4}, Lcom/android/phone/NetworkModeSpinner;->access$1800(Lcom/android/phone/NetworkModeSpinner;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "preferred_network_mode"

    iget-object v7, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mNetworkType:I
    invoke-static {v7}, Lcom/android/phone/NetworkModeSpinner;->access$800(Lcom/android/phone/NetworkModeSpinner;)I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v4, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mNetworkType:I
    invoke-static {v4}, Lcom/android/phone/NetworkModeSpinner;->access$800(Lcom/android/phone/NetworkModeSpinner;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/phone/NetworkModeSpinner$MyHandler;->updateState(I)V

    iget-object v4, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->LOG_TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/NetworkModeSpinner;->access$000(Lcom/android/phone/NetworkModeSpinner;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "set preferred network type done"

    invoke-static {v4, v6, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v4, "support_safetycare"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getEmergencyModeMgr()Lcom/android/phone/EmergencyModeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/EmergencyModeManager;->getEmergencyMode()I

    move-result v4

    if-ne v4, v9, :cond_9

    const-string v4, "backup_network_pref_mode"

    invoke-static {v1, v4, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_9
    const-string v4, "feature_chn"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v4}, Lcom/android/phone/NetworkModeSpinner;->access$1800(Lcom/android/phone/NetworkModeSpinner;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {p0, v5}, Lcom/android/phone/NetworkModeSpinner$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    goto/16 :goto_0

    :cond_a
    iget-object v6, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    iget-object v4, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    invoke-virtual {v4}, Lcom/android/phone/NetworkModeSpinner;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    const-string v7, "button_data_enabled_key"

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    # setter for: Lcom/android/phone/NetworkModeSpinner;->mButtonDataEnabled:Landroid/preference/TwoStatePreference;
    invoke-static {v6, v4}, Lcom/android/phone/NetworkModeSpinner;->access$3102(Lcom/android/phone/NetworkModeSpinner;Landroid/preference/TwoStatePreference;)Landroid/preference/TwoStatePreference;

    goto/16 :goto_1

    :cond_b
    iget-object v4, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->LOG_TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/NetworkModeSpinner;->access$000(Lcom/android/phone/NetworkModeSpinner;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mIsDisconnectingData = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mIsDisconnectingData:Z
    invoke-static {v7}, Lcom/android/phone/NetworkModeSpinner;->access$2200(Lcom/android/phone/NetworkModeSpinner;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mPrevNetworkType[0] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/phone/NetworkModeSpinner;->mPrevNetworkType:[I

    aget v7, v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v4, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mButtonDataEnabled:Landroid/preference/TwoStatePreference;
    invoke-static {v4}, Lcom/android/phone/NetworkModeSpinner;->access$3100(Lcom/android/phone/NetworkModeSpinner;)Landroid/preference/TwoStatePreference;

    move-result-object v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mButtonDataEnabled:Landroid/preference/TwoStatePreference;
    invoke-static {v4}, Lcom/android/phone/NetworkModeSpinner;->access$3100(Lcom/android/phone/NetworkModeSpinner;)Landroid/preference/TwoStatePreference;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    :cond_c
    iget-object v4, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mIsDisconnectingData:Z
    invoke-static {v4}, Lcom/android/phone/NetworkModeSpinner;->access$2200(Lcom/android/phone/NetworkModeSpinner;)Z

    move-result v4

    if-nez v4, :cond_d

    sget-object v4, Lcom/android/phone/NetworkModeSpinner;->mPrevNetworkType:[I

    aget v4, v4, v5

    if-ne v4, v2, :cond_e

    :cond_d
    iget-object v4, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # invokes: Lcom/android/phone/NetworkModeSpinner;->setMobileDataEnabled(Z)V
    invoke-static {v4, v2}, Lcom/android/phone/NetworkModeSpinner;->access$2100(Lcom/android/phone/NetworkModeSpinner;Z)V

    iget-object v4, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # setter for: Lcom/android/phone/NetworkModeSpinner;->mIsDisconnectingData:Z
    invoke-static {v4, v5}, Lcom/android/phone/NetworkModeSpinner;->access$2202(Lcom/android/phone/NetworkModeSpinner;Z)Z

    iget-object v4, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # setter for: Lcom/android/phone/NetworkModeSpinner;->mTriggerChangeNetwork:Z
    invoke-static {v4, v5}, Lcom/android/phone/NetworkModeSpinner;->access$2302(Lcom/android/phone/NetworkModeSpinner;Z)Z

    :cond_e
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "mobile_data_enable"

    invoke-static {v4, v6, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_f
    move v2, v5

    goto/16 :goto_3

    :cond_10
    iget-object v4, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mIsDisconnectingData:Z
    invoke-static {v4}, Lcom/android/phone/NetworkModeSpinner;->access$2200(Lcom/android/phone/NetworkModeSpinner;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # invokes: Lcom/android/phone/NetworkModeSpinner;->setMobileDataEnabled(Z)V
    invoke-static {v4, v2}, Lcom/android/phone/NetworkModeSpinner;->access$2100(Lcom/android/phone/NetworkModeSpinner;Z)V

    iget-object v4, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # setter for: Lcom/android/phone/NetworkModeSpinner;->mIsDisconnectingData:Z
    invoke-static {v4, v5}, Lcom/android/phone/NetworkModeSpinner;->access$2202(Lcom/android/phone/NetworkModeSpinner;Z)Z

    iget-object v4, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # setter for: Lcom/android/phone/NetworkModeSpinner;->mTriggerChangeNetwork:Z
    invoke-static {v4, v5}, Lcom/android/phone/NetworkModeSpinner;->access$2302(Lcom/android/phone/NetworkModeSpinner;Z)Z

    iget-object v4, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->LOG_TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/NetworkModeSpinner;->access$000(Lcom/android/phone/NetworkModeSpinner;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set default vale, mIsDisconnectingData = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mIsDisconnectingData:Z
    invoke-static {v6}, Lcom/android/phone/NetworkModeSpinner;->access$2200(Lcom/android/phone/NetworkModeSpinner;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_4
.end method

.method private handleSetPreferredNetworkTypeResponseType2(Landroid/os/Message;)V
    .locals 5

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v2, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->LOG_TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/NetworkModeSpinner;->access$000(Lcom/android/phone/NetworkModeSpinner;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetPreferredNetworkTypeResponseType2 set preferred network type done ar.exception :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # invokes: Lcom/android/phone/NetworkModeSpinner;->getValue()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/NetworkModeSpinner;->access$2600(Lcom/android/phone/NetworkModeSpinner;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/NetworkModeSpinner;->access$1800(Lcom/android/phone/NetworkModeSpinner;)Lcom/android/internal/telephony/Phone;

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
    iget-object v2, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->LOG_TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/NetworkModeSpinner;->access$000(Lcom/android/phone/NetworkModeSpinner;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "handleSetPreferredNetworkTypeResponseType2 getPreferredNetworkType"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/NetworkModeSpinner;->access$1800(Lcom/android/phone/NetworkModeSpinner;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/phone/NetworkModeSpinner$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    goto :goto_0
.end method

.method private resetNetworkModeToDefault()V
    .locals 4

    iget-object v1, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    sget v2, Lcom/android/phone/NetworkModeSpinner;->sPreferredNetworkMode:I

    # setter for: Lcom/android/phone/NetworkModeSpinner;->mNetworkType:I
    invoke-static {v1, v2}, Lcom/android/phone/NetworkModeSpinner;->access$802(Lcom/android/phone/NetworkModeSpinner;I)I

    iget-object v1, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    iget-object v2, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mNetworkType:I
    invoke-static {v2}, Lcom/android/phone/NetworkModeSpinner;->access$800(Lcom/android/phone/NetworkModeSpinner;)I

    move-result v2

    # setter for: Lcom/android/phone/NetworkModeSpinner;->mOldNetworkType:I
    invoke-static {v1, v2}, Lcom/android/phone/NetworkModeSpinner;->access$702(Lcom/android/phone/NetworkModeSpinner;I)I

    iget-object v1, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mValues:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/phone/NetworkModeSpinner;->access$1600(Lcom/android/phone/NetworkModeSpinner;)Ljava/util/ArrayList;

    move-result-object v1

    sget v2, Lcom/android/phone/NetworkModeSpinner;->sPreferredNetworkMode:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mListPopupWindow:Landroid/widget/ListPopupWindow;
    invoke-static {v1}, Lcom/android/phone/NetworkModeSpinner;->access$100(Lcom/android/phone/NetworkModeSpinner;)Landroid/widget/ListPopupWindow;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setSelection(I)V

    iget-object v1, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    iget-object v2, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->summaryString:[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/NetworkModeSpinner;->access$1700(Lcom/android/phone/NetworkModeSpinner;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/android/phone/NetworkModeSpinner;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v1, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/NetworkModeSpinner;->access$1800(Lcom/android/phone/NetworkModeSpinner;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    sget v3, Lcom/android/phone/NetworkModeSpinner;->sPreferredNetworkMode:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/NetworkModeSpinner;->access$1800(Lcom/android/phone/NetworkModeSpinner;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    sget v2, Lcom/android/phone/NetworkModeSpinner;->sPreferredNetworkMode:I

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/phone/NetworkModeSpinner$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->LOG_TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/NetworkModeSpinner;->access$000(Lcom/android/phone/NetworkModeSpinner;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetNetworkModeToDefault invalid index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateState(I)V
    .locals 11

    const/4 v10, -0x1

    const/16 v9, 0x9

    const/4 v8, 0x1

    const-string v5, "persist.radio.user.change"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v5, "TUR"

    const-string v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-nez v1, :cond_0

    if-ne p1, v9, :cond_0

    const/4 p1, 0x0

    :cond_0
    const-string v5, "jpn_change_network_mode_ui"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "persist.radio.setnwkmode"

    invoke-static {v5, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    iget-object v5, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->LOG_TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/phone/NetworkModeSpinner;->access$000(Lcom/android/phone/NetworkModeSpinner;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "original State : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ,setnwkmode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x3

    if-ne p1, v5, :cond_3

    if-ne v2, v9, :cond_3

    const/16 p1, 0x9

    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mValues:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/phone/NetworkModeSpinner;->access$1600(Lcom/android/phone/NetworkModeSpinner;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const-string v5, "ril_network_on"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    iget-boolean v5, v5, Lcom/android/phone/NetworkModeSpinner;->lteon:Z

    if-eqz v5, :cond_4

    const-string v5, "network_mode_list_lte"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # invokes: Lcom/android/phone/NetworkModeSpinner;->getLTEsummary()[Ljava/lang/String;
    invoke-static {v5}, Lcom/android/phone/NetworkModeSpinner;->access$3200(Lcom/android/phone/NetworkModeSpinner;)[Ljava/lang/String;

    move-result-object v4

    :goto_1
    const-string v5, "network_mode_cmcc"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->LOG_TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/phone/NetworkModeSpinner;->access$000(Lcom/android/phone/NetworkModeSpinner;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "network type from modem :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    invoke-virtual {v5}, Lcom/android/phone/NetworkModeSpinner;->isCmccSimAnd2gSim()Z

    move-result v5

    if-eqz v5, :cond_7

    if-ne p1, v9, :cond_7

    iget-object v5, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->LOG_TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/phone/NetworkModeSpinner;->access$000(Lcom/android/phone/NetworkModeSpinner;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "CMCC SIM card but it\'s 2g Sim, so display network mode as 3/2 auto"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iget-object v5, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mValues:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/phone/NetworkModeSpinner;->access$1600(Lcom/android/phone/NetworkModeSpinner;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    :cond_2
    :goto_2
    iget-object v5, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->LOG_TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/phone/NetworkModeSpinner;->access$000(Lcom/android/phone/NetworkModeSpinner;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateState type:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " selectedIndex:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v8}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v5, "NETWORK_MODE_NOT_SUPPORT_3G_ONLY_AND_2G_ONLY"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    if-ne p1, v8, :cond_9

    iget-object v5, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->LOG_TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/phone/NetworkModeSpinner;->access$000(Lcom/android/phone/NetworkModeSpinner;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Do not support 3G-only and 2G-only."

    invoke-static {v5, v6, v8}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v5, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    iget-object v6, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/phone/NetworkModeSpinner;->access$2000(Lcom/android/phone/NetworkModeSpinner;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0a0189

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/phone/NetworkModeSpinner;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # setter for: Lcom/android/phone/NetworkModeSpinner;->mNetworkType:I
    invoke-static {v5, p1}, Lcom/android/phone/NetworkModeSpinner;->access$802(Lcom/android/phone/NetworkModeSpinner;I)I

    iget-object v5, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # setter for: Lcom/android/phone/NetworkModeSpinner;->mOldNetworkType:I
    invoke-static {v5, p1}, Lcom/android/phone/NetworkModeSpinner;->access$702(Lcom/android/phone/NetworkModeSpinner;I)I

    iget-object v5, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mListPopupWindow:Landroid/widget/ListPopupWindow;
    invoke-static {v5}, Lcom/android/phone/NetworkModeSpinner;->access$100(Lcom/android/phone/NetworkModeSpinner;)Landroid/widget/ListPopupWindow;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/widget/ListPopupWindow;->setSelection(I)V

    :goto_3
    iget-object v5, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    iget-object v6, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mNetworkType:I
    invoke-static {v6}, Lcom/android/phone/NetworkModeSpinner;->access$800(Lcom/android/phone/NetworkModeSpinner;)I

    move-result v6

    # setter for: Lcom/android/phone/NetworkModeSpinner;->mOldNetworkType:I
    invoke-static {v5, v6}, Lcom/android/phone/NetworkModeSpinner;->access$702(Lcom/android/phone/NetworkModeSpinner;I)I

    :goto_4
    return-void

    :cond_3
    const/4 v5, 0x2

    if-ne p1, v5, :cond_1

    const/16 v5, 0xc

    if-ne v2, v5, :cond_1

    const/16 p1, 0xc

    goto/16 :goto_0

    :cond_4
    iget-object v5, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # invokes: Lcom/android/phone/NetworkModeSpinner;->get3Gsummary()[Ljava/lang/String;
    invoke-static {v5}, Lcom/android/phone/NetworkModeSpinner;->access$3300(Lcom/android/phone/NetworkModeSpinner;)[Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    :cond_5
    const-string v5, "network_mode_list_lte"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # invokes: Lcom/android/phone/NetworkModeSpinner;->getLTEsummary()[Ljava/lang/String;
    invoke-static {v5}, Lcom/android/phone/NetworkModeSpinner;->access$3200(Lcom/android/phone/NetworkModeSpinner;)[Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    :cond_6
    iget-object v5, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # invokes: Lcom/android/phone/NetworkModeSpinner;->get3Gsummary()[Ljava/lang/String;
    invoke-static {v5}, Lcom/android/phone/NetworkModeSpinner;->access$3300(Lcom/android/phone/NetworkModeSpinner;)[Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    :cond_7
    const-string v5, "network_mode_only_cmcc_card_support_4g"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    invoke-virtual {v5}, Lcom/android/phone/NetworkModeSpinner;->isChinaSimButNotCmccSim()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->LOG_TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/phone/NetworkModeSpinner;->access$000(Lcom/android/phone/NetworkModeSpinner;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "China SIM card but it\'s not CMCC SIM card, so display network mode as 2g only"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    goto/16 :goto_2

    :cond_8
    iget-object v5, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->LOG_TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/phone/NetworkModeSpinner;->access$000(Lcom/android/phone/NetworkModeSpinner;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "don\'t need to change type here"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_9
    array-length v5, v4

    if-ge v3, v5, :cond_a

    if-gez v3, :cond_f

    :cond_a
    iget-object v5, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->LOG_TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/phone/NetworkModeSpinner;->access$000(Lcom/android/phone/NetworkModeSpinner;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mode is not included in supported network mode, will be shown PREFERRED_NT_MODE mode"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v8}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v5, "ril_network_on"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    iget-boolean v5, v5, Lcom/android/phone/NetworkModeSpinner;->lteon:Z

    if-eqz v5, :cond_b

    const-string v5, "network_mode_list_lte"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    const-string v5, "remove_network_mode_lte"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b

    iget-object v5, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # setter for: Lcom/android/phone/NetworkModeSpinner;->mNetworkType:I
    invoke-static {v5, v9}, Lcom/android/phone/NetworkModeSpinner;->access$802(Lcom/android/phone/NetworkModeSpinner;I)I

    :goto_5
    iget-object v5, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mValues:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/phone/NetworkModeSpinner;->access$1600(Lcom/android/phone/NetworkModeSpinner;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mNetworkType:I
    invoke-static {v6}, Lcom/android/phone/NetworkModeSpinner;->access$800(Lcom/android/phone/NetworkModeSpinner;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const-string v5, "feature_kdi"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    if-ne v0, v10, :cond_e

    iget-object v5, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->LOG_TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/phone/NetworkModeSpinner;->access$000(Lcom/android/phone/NetworkModeSpinner;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "defaultIndex : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", do nothing"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v8}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_4

    :cond_b
    iget-object v5, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    sget v6, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    # setter for: Lcom/android/phone/NetworkModeSpinner;->mNetworkType:I
    invoke-static {v5, v6}, Lcom/android/phone/NetworkModeSpinner;->access$802(Lcom/android/phone/NetworkModeSpinner;I)I

    goto :goto_5

    :cond_c
    const-string v5, "network_mode_list_lte"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    const-string v5, "remove_network_mode_lte"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_d

    iget-object v5, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # setter for: Lcom/android/phone/NetworkModeSpinner;->mNetworkType:I
    invoke-static {v5, v9}, Lcom/android/phone/NetworkModeSpinner;->access$802(Lcom/android/phone/NetworkModeSpinner;I)I

    goto :goto_5

    :cond_d
    iget-object v5, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    sget v6, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    # setter for: Lcom/android/phone/NetworkModeSpinner;->mNetworkType:I
    invoke-static {v5, v6}, Lcom/android/phone/NetworkModeSpinner;->access$802(Lcom/android/phone/NetworkModeSpinner;I)I

    goto :goto_5

    :cond_e
    iget-object v5, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    aget-object v6, v4, v0

    invoke-virtual {v5, v6}, Lcom/android/phone/NetworkModeSpinner;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mListPopupWindow:Landroid/widget/ListPopupWindow;
    invoke-static {v5}, Lcom/android/phone/NetworkModeSpinner;->access$100(Lcom/android/phone/NetworkModeSpinner;)Landroid/widget/ListPopupWindow;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/widget/ListPopupWindow;->setSelection(I)V

    goto/16 :goto_3

    :cond_f
    iget-object v5, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # setter for: Lcom/android/phone/NetworkModeSpinner;->mNetworkType:I
    invoke-static {v5, p1}, Lcom/android/phone/NetworkModeSpinner;->access$802(Lcom/android/phone/NetworkModeSpinner;I)I

    const-string v5, "feature_multisim"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    iget-object v5, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # setter for: Lcom/android/phone/NetworkModeSpinner;->mOldNetworkType:I
    invoke-static {v5, p1}, Lcom/android/phone/NetworkModeSpinner;->access$702(Lcom/android/phone/NetworkModeSpinner;I)I

    # getter for: Lcom/android/phone/NetworkModeSpinner;->sSetEnabled:Z
    invoke-static {}, Lcom/android/phone/NetworkModeSpinner;->access$1900()Z

    move-result v5

    if-nez v5, :cond_12

    iget-object v5, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mActivePhoneId:I
    invoke-static {v5}, Lcom/android/phone/NetworkModeSpinner;->access$1100(Lcom/android/phone/NetworkModeSpinner;)I

    move-result v5

    if-nez v5, :cond_10

    iget-object v5, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    iget-object v6, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mValues:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/phone/NetworkModeSpinner;->access$1600(Lcom/android/phone/NetworkModeSpinner;)Ljava/util/ArrayList;

    move-result-object v6

    # getter for: Lcom/android/phone/NetworkModeSpinner;->sNetworkTypeSim0:I
    invoke-static {}, Lcom/android/phone/NetworkModeSpinner;->access$1400()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    aget-object v6, v4, v6

    invoke-virtual {v5, v6}, Lcom/android/phone/NetworkModeSpinner;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_10
    iget-object v5, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mActivePhoneId:I
    invoke-static {v5}, Lcom/android/phone/NetworkModeSpinner;->access$1100(Lcom/android/phone/NetworkModeSpinner;)I

    move-result v5

    if-ne v5, v8, :cond_11

    iget-object v5, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    iget-object v6, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mValues:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/phone/NetworkModeSpinner;->access$1600(Lcom/android/phone/NetworkModeSpinner;)Ljava/util/ArrayList;

    move-result-object v6

    # getter for: Lcom/android/phone/NetworkModeSpinner;->sNetworkTypeSim1:I
    invoke-static {}, Lcom/android/phone/NetworkModeSpinner;->access$1500()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    aget-object v6, v4, v6

    invoke-virtual {v5, v6}, Lcom/android/phone/NetworkModeSpinner;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_11
    iget-object v5, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    iget-object v6, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mValues:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/phone/NetworkModeSpinner;->access$1600(Lcom/android/phone/NetworkModeSpinner;)Ljava/util/ArrayList;

    move-result-object v6

    # getter for: Lcom/android/phone/NetworkModeSpinner;->sNetworkTypeSim2:I
    invoke-static {}, Lcom/android/phone/NetworkModeSpinner;->access$3400()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    aget-object v6, v4, v6

    invoke-virtual {v5, v6}, Lcom/android/phone/NetworkModeSpinner;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_12
    iget-object v5, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mListPopupWindow:Landroid/widget/ListPopupWindow;
    invoke-static {v5}, Lcom/android/phone/NetworkModeSpinner;->access$100(Lcom/android/phone/NetworkModeSpinner;)Landroid/widget/ListPopupWindow;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/ListPopupWindow;->setSelection(I)V

    iget-object v5, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    aget-object v6, v4, v3

    invoke-virtual {v5, v6}, Lcom/android/phone/NetworkModeSpinner;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_13
    iget-object v5, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    aget-object v6, v4, v3

    invoke-virtual {v5, v6}, Lcom/android/phone/NetworkModeSpinner;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mListPopupWindow:Landroid/widget/ListPopupWindow;
    invoke-static {v5}, Lcom/android/phone/NetworkModeSpinner;->access$100(Lcom/android/phone/NetworkModeSpinner;)Landroid/widget/ListPopupWindow;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/ListPopupWindow;->setSelection(I)V

    goto/16 :goto_3
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/NetworkModeSpinner;->access$000(Lcom/android/phone/NetworkModeSpinner;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MyHandler MESSAGE_GET_PREFERRED_NETWORK_TYPE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v0, "global_network_cdma_gsm_enable"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/phone/NetworkModeSpinner$MyHandler;->handleGetPreferredNetworkTypeResponseType2(Landroid/os/Message;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkModeSpinner$MyHandler;->handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/NetworkModeSpinner$MyHandler;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/NetworkModeSpinner;->access$000(Lcom/android/phone/NetworkModeSpinner;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MyHandler MESSAGE_SET_PREFERRED_NETWORK_TYPE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v0, "global_network_cdma_gsm_enable"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/phone/NetworkModeSpinner$MyHandler;->handleSetPreferredNetworkTypeResponseType2(Landroid/os/Message;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkModeSpinner$MyHandler;->handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
