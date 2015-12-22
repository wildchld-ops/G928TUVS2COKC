.class public final Lcom/android/incallui/TelecomAdapter;
.super Ljava/lang/Object;
.source "TelecomAdapter.java"


# static fields
.field private static sInstance:Lcom/android/incallui/TelecomAdapter;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPhone:Landroid/telecom/Phone;

.field private mSecInCallAdapter:Lcom/android/services/telephony/common/ISecInCallAdapter;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/incallui/TelecomAdapter;
    .locals 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    sget-object v0, Lcom/android/incallui/TelecomAdapter;->sInstance:Lcom/android/incallui/TelecomAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/TelecomAdapter;

    invoke-direct {v0}, Lcom/android/incallui/TelecomAdapter;-><init>()V

    sput-object v0, Lcom/android/incallui/TelecomAdapter;->sInstance:Lcom/android/incallui/TelecomAdapter;

    :cond_0
    sget-object v0, Lcom/android/incallui/TelecomAdapter;->sInstance:Lcom/android/incallui/TelecomAdapter;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTelecommCallById(Ljava/lang/String;)Landroid/telecom/Call;
    .locals 2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/incallui/CallList;->getCallById(Ljava/lang/String;)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getTelecommCall()Landroid/telecom/Call;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method addCall()V
    .locals 5

    iget-object v3, p0, Lcom/android/incallui/TelecomAdapter;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.DIAL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "add_call_mode"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    const-string v3, "Sending the add Call intent"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/BaseInCallComponent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, v2}, Lcom/android/incallui/BaseInCallComponent;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/incallui/TelecomAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "Activity for adding calls isn\'t found."

    invoke-static {p0, v3, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public answerCall(Ljava/lang/String;I)V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/TelecomAdapter;->mPhone:Landroid/telecom/Phone;

    if-eqz v1, :cond_5

    invoke-direct {p0, p1}, Lcom/android/incallui/TelecomAdapter;->getTelecommCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "concept_usa_common"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "concept_canada_common"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    const-string v1, "concept_usa_att"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "concept_canada_common"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->hasActiveCall()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_2

    if-eqz p2, :cond_2

    const/4 p2, 0x3

    :cond_2
    :goto_0
    invoke-virtual {v0, p2}, Landroid/telecom/Call;->answer(I)V

    :goto_1
    return-void

    :cond_3
    const-string v1, "incoming_call_widget_for_volte"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p2, 0x3

    goto :goto_0

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error answerCall, call not in call list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v1, "error answerCall, mPhone is null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method canAddCall()Z
    .locals 1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->canAddCallForVoLTE()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/TelecomAdapter;->mPhone:Landroid/telecom/Phone;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/TelecomAdapter;->mPhone:Landroid/telecom/Phone;

    invoke-virtual {v0}, Landroid/telecom/Phone;->canAddCall()Z

    move-result v0

    goto :goto_0
.end method

.method public clearPhone()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/TelecomAdapter;->mPhone:Landroid/telecom/Phone;

    return-void
.end method

.method public clearSecInCallAdapter()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/services/telephony/common/ISecInCallAdapter;

    return-void
.end method

.method public disconnectCall(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/TelecomAdapter;->mPhone:Landroid/telecom/Phone;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/incallui/TelecomAdapter;->getTelecommCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/incallui/TelecomAdapter;->getTelecommCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call;->disconnect()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "error disconnectCall, mPhone is null"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public explicitCallTransfer(Ljava/lang/String;)V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/services/telephony/common/ISecInCallAdapter;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/services/telephony/common/ISecInCallAdapter;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ISecInCallAdapter;->explicitCallTransfer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "explicitCallTransfer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getMWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/services/telephony/common/ISecInCallAdapter;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/services/telephony/common/ISecInCallAdapter;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ISecInCallAdapter;->getMWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMWindowStyle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNameFromSDN(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/services/telephony/common/ISecInCallAdapter;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/services/telephony/common/ISecInCallAdapter;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ISecInCallAdapter;->getNameFromSDN(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    :cond_0
    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getParticipantsCount()I
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/services/telephony/common/ISecInCallAdapter;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/services/telephony/common/ISecInCallAdapter;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ISecInCallAdapter;->getParticipantsCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getParticipantsCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method holdCall(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/TelecomAdapter;->mPhone:Landroid/telecom/Phone;

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/incallui/TelecomAdapter;->getTelecommCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/incallui/TelecomAdapter;->getTelecommCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call;->hold()V

    iget-object v0, p0, Lcom/android/incallui/TelecomAdapter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/TelecomAdapter;->mContext:Landroid/content/Context;

    const-string v1, "com.android.incallui"

    const-string v2, "HOLD"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/secutils/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "tmo_echolocate_logger"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;->HOLD_PRESSED:Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;

    invoke-virtual {v2}, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/TelecomAdapter;->senduiCallState(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "error holdCall, mPhone is null"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isBluetoothAvailable()Z
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/services/telephony/common/ISecInCallAdapter;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/services/telephony/common/ISecInCallAdapter;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ISecInCallAdapter;->isBluetoothAvailable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isBluetoothAvailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPenWindow()Z
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/services/telephony/common/ISecInCallAdapter;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/services/telephony/common/ISecInCallAdapter;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ISecInCallAdapter;->isPenWindow()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPenWindow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isRoamingArea()Z
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/services/telephony/common/ISecInCallAdapter;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/services/telephony/common/ISecInCallAdapter;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ISecInCallAdapter;->isRoamingArea()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRoamingArea: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method merge(Ljava/lang/String;)V
    .locals 4

    iget-object v2, p0, Lcom/android/incallui/TelecomAdapter;->mPhone:Landroid/telecom/Phone;

    if-eqz v2, :cond_2

    invoke-direct {p0, p1}, Lcom/android/incallui/TelecomAdapter;->getTelecommCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-direct {p0, p1}, Lcom/android/incallui/TelecomAdapter;->getTelecommCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call;->getConferenceableCalls()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Call;

    invoke-virtual {v0, v2}, Landroid/telecom/Call;->conference(Landroid/telecom/Call;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/telecom/Call$Details;->can(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/telecom/Call;->mergeConference()V

    goto :goto_0

    :cond_2
    const-string v2, "error merge, mPhone is null."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public mute(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/TelecomAdapter;->mPhone:Landroid/telecom/Phone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/TelecomAdapter;->mPhone:Landroid/telecom/Phone;

    invoke-virtual {v0, p1}, Landroid/telecom/Phone;->setMuted(Z)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "error mute, mPhone is null"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public notifyInCallUIWindowFocus(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/services/telephony/common/ISecInCallAdapter;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/services/telephony/common/ISecInCallAdapter;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ISecInCallAdapter;->notifyInCallUIWindowFocus(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyInCallUIWindowFocus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onNewIncomingRcsSession(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method phoneAccountSelected(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/TelecomAdapter;->mPhone:Landroid/telecom/Phone;

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/incallui/TelecomAdapter;->getTelecommCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/incallui/TelecomAdapter;->getTelecommCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/telecom/Call;->phoneAccountSelected(Landroid/telecom/PhoneAccountHandle;Z)V

    :goto_0
    if-nez p2, :cond_0

    const-string v0, "error phoneAccountSelected, accountHandle is null"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "error phoneAccountSelected, mAdapter is null"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method playDtmfTone(Ljava/lang/String;C)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/TelecomAdapter;->mPhone:Landroid/telecom/Phone;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/incallui/TelecomAdapter;->getTelecommCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/incallui/TelecomAdapter;->getTelecommCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Call;->playDtmfTone(C)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "error playDtmfTone, mPhone is null"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method postDialContinue(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/TelecomAdapter;->mPhone:Landroid/telecom/Phone;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/incallui/TelecomAdapter;->getTelecommCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/incallui/TelecomAdapter;->getTelecommCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Call;->postDialContinue(Z)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "error postDialContinue, mPhone is null"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public rejectCall(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/TelecomAdapter;->mPhone:Landroid/telecom/Phone;

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/incallui/TelecomAdapter;->getTelecommCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/incallui/TelecomAdapter;->getTelecommCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3}, Landroid/telecom/Call;->reject(ZLjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error rejectCall, call not in call list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "error rejectCall, mPhone is null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public requestModifyCall(Lcom/android/incallui/Call;I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/services/telephony/common/ISecInCallAdapter;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/services/telephony/common/ISecInCallAdapter;

    invoke-static {p1}, Lcom/android/incallui/InCallUtils;->getConnectionCallId(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/android/services/telephony/common/ISecInCallAdapter;->requestModifyCall(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestRcsObserver(II)V
    .locals 1

    const-string v0, "requestRcsObserver called::"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/TelecomAdapter;->mPhone:Landroid/telecom/Phone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/TelecomAdapter;->mPhone:Landroid/telecom/Phone;

    invoke-virtual {v0, p1, p2}, Landroid/telecom/Phone;->requestRcsObserver(II)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "error observer, mPhone is null"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public respondModifyCall(Lcom/android/incallui/Call;ZLjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/services/telephony/common/ISecInCallAdapter;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/services/telephony/common/ISecInCallAdapter;

    invoke-static {p1}, Lcom/android/incallui/InCallUtils;->getConnectionCallId(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Lcom/android/services/telephony/common/ISecInCallAdapter;->respondModifyCall(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public senduiCallState(Ljava/lang/String;I)V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/services/telephony/common/ISecInCallAdapter;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/services/telephony/common/ISecInCallAdapter;

    invoke-interface {v1, p1, p2}, Lcom/android/services/telephony/common/ISecInCallAdapter;->senduiCallState(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "senduiCallState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method separateCall(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/TelecomAdapter;->mPhone:Landroid/telecom/Phone;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/incallui/TelecomAdapter;->getTelecommCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/incallui/TelecomAdapter;->getTelecommCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call;->splitFromConference()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "error separateCall, mPhone is null."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAudioRoute(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/TelecomAdapter;->mPhone:Landroid/telecom/Phone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/TelecomAdapter;->mPhone:Landroid/telecom/Phone;

    invoke-virtual {v0, p1}, Landroid/telecom/Phone;->setAudioRoute(I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "error setAudioRoute, mPhone is null"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCallProtectionValue(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/TelecomAdapter;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCallProtectionValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.ACTION_CALL_PROTECTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "block"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/incallui/TelecomAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method setContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/TelecomAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setMWindowStyle()V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/services/telephony/common/ISecInCallAdapter;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/services/telephony/common/ISecInCallAdapter;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ISecInCallAdapter;->setMWindowStyle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMWindowStyle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPenWindow(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/services/telephony/common/ISecInCallAdapter;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/services/telephony/common/ISecInCallAdapter;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ISecInCallAdapter;->setPenWindow(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPenWindow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPhone(Landroid/telecom/Phone;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/TelecomAdapter;->mPhone:Landroid/telecom/Phone;

    return-void
.end method

.method public setReportSpamNumber(Ljava/lang/String;)V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/services/telephony/common/ISecInCallAdapter;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/services/telephony/common/ISecInCallAdapter;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ISecInCallAdapter;->setReportSpamNumber(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setReportSpamNumber: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setSecInCallAdapter(Lcom/android/services/telephony/common/ISecInCallAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/services/telephony/common/ISecInCallAdapter;

    return-void
.end method

.method public setYellowPageName(Ljava/lang/String;)V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/services/telephony/common/ISecInCallAdapter;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/services/telephony/common/ISecInCallAdapter;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ISecInCallAdapter;->setYellowPageName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getYellowPageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public shouldVibrate()Z
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/services/telephony/common/ISecInCallAdapter;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/services/telephony/common/ISecInCallAdapter;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ISecInCallAdapter;->shouldVibrate()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldVibrate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public silentRinger()V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/services/telephony/common/ISecInCallAdapter;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/services/telephony/common/ISecInCallAdapter;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ISecInCallAdapter;->silentRinger()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "silentRinger : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method stopDtmfTone(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/TelecomAdapter;->mPhone:Landroid/telecom/Phone;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/incallui/TelecomAdapter;->getTelecommCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/incallui/TelecomAdapter;->getTelecommCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call;->stopDtmfTone()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "error stopDtmfTone, mPhone is null"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public storeSpeakerState(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/services/telephony/common/ISecInCallAdapter;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/services/telephony/common/ISecInCallAdapter;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ISecInCallAdapter;->storeSpeakerState(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "storeSpeakerState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method swap(Ljava/lang/String;)V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/TelecomAdapter;->mPhone:Landroid/telecom/Phone;

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/incallui/TelecomAdapter;->getTelecommCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/incallui/TelecomAdapter;->getTelecommCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/telecom/Call$Details;->can(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/incallui/TelecomAdapter;->holdCall(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "Error swap, mPhone is null."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method turnOffProximitySensor(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/TelecomAdapter;->mPhone:Landroid/telecom/Phone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/TelecomAdapter;->mPhone:Landroid/telecom/Phone;

    invoke-virtual {v0, p1}, Landroid/telecom/Phone;->setProximitySensorOff(Z)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "error setProximitySensorOff, mPhone is null"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public turnOnBluetooth(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/services/telephony/common/ISecInCallAdapter;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/services/telephony/common/ISecInCallAdapter;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ISecInCallAdapter;->turnOnBluetooth(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "turnOnBluetooth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method turnOnProximitySensor()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/TelecomAdapter;->mPhone:Landroid/telecom/Phone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/TelecomAdapter;->mPhone:Landroid/telecom/Phone;

    invoke-virtual {v0}, Landroid/telecom/Phone;->setProximitySensorOn()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "error setProximitySensorOn, mPhone is null"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unholdCall(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/TelecomAdapter;->mPhone:Landroid/telecom/Phone;

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/incallui/TelecomAdapter;->getTelecommCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/incallui/TelecomAdapter;->getTelecommCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call;->unhold()V

    const-string v0, "tmo_echolocate_logger"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;->UNHOLD_PRESSED:Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;

    invoke-virtual {v2}, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/TelecomAdapter;->senduiCallState(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "error unholdCall, mPhone is null"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public wasVTSpeakerOn()Z
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/services/telephony/common/ISecInCallAdapter;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/services/telephony/common/ISecInCallAdapter;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ISecInCallAdapter;->wasVTSpeakerOn()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wasVTSpeakerOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
