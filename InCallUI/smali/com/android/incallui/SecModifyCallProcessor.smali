.class public Lcom/android/incallui/SecModifyCallProcessor;
.super Ljava/lang/Object;
.source "SecModifyCallProcessor.java"


# static fields
.field private static mCallChargeState:Z

.field private static sSecModifyCallProcessor:Lcom/android/incallui/SecModifyCallProcessor;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mIncomingCallType:I

.field private mIsShowingModifyCallPromptDialog:Z

.field private mModifyCallPromptDialog:Landroid/app/AlertDialog;

.field private mRequestModifyCallType:I

.field private mResponseModifyCallType:I

.field private mUpgradeDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/SecModifyCallProcessor;->mCallChargeState:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/SecModifyCallProcessor;->mIsShowingModifyCallPromptDialog:Z

    iput v1, p0, Lcom/android/incallui/SecModifyCallProcessor;->mRequestModifyCallType:I

    iput v1, p0, Lcom/android/incallui/SecModifyCallProcessor;->mResponseModifyCallType:I

    iput v1, p0, Lcom/android/incallui/SecModifyCallProcessor;->mIncomingCallType:I

    new-instance v0, Lcom/android/incallui/SecModifyCallProcessor$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/SecModifyCallProcessor$1;-><init>(Lcom/android/incallui/SecModifyCallProcessor;)V

    iput-object v0, p0, Lcom/android/incallui/SecModifyCallProcessor;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/SecModifyCallProcessor;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecModifyCallProcessor;->mModifyCallPromptDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/incallui/SecModifyCallProcessor;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecModifyCallProcessor;->mModifyCallPromptDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/incallui/SecModifyCallProcessor;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/SecModifyCallProcessor;->mIncomingCallType:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/incallui/SecModifyCallProcessor;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/SecModifyCallProcessor;->updateIncomingModifyCall(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/incallui/SecModifyCallProcessor;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecModifyCallProcessor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private dismissInCallMenu()V
    .locals 1

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secui/SecUiAdapter;->dismissInCallMenu()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/incallui/SecModifyCallProcessor;
    .locals 2

    const-class v1, Lcom/android/incallui/SecModifyCallProcessor;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/incallui/SecModifyCallProcessor;->sSecModifyCallProcessor:Lcom/android/incallui/SecModifyCallProcessor;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/SecModifyCallProcessor;

    invoke-direct {v0}, Lcom/android/incallui/SecModifyCallProcessor;-><init>()V

    sput-object v0, Lcom/android/incallui/SecModifyCallProcessor;->sSecModifyCallProcessor:Lcom/android/incallui/SecModifyCallProcessor;

    :cond_0
    sget-object v0, Lcom/android/incallui/SecModifyCallProcessor;->sSecModifyCallProcessor:Lcom/android/incallui/SecModifyCallProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private hideDialpadForModifyCall()V
    .locals 1

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secui/SecUiAdapter;->hideDialpadForModifyCall()V

    return-void
.end method

.method private onIncomingModifyCall(I)V
    .locals 4

    const-string v1, "SecModifyCallProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onIncomingModifyCall() callType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const-string v1, "us_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "canada_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    if-nez p1, :cond_3

    const/4 v0, 0x1

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/secservice/SecVideoCallManager;->getInstance()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/secservice/SecVideoCallManager;->getInstance()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/android/incallui/secservice/SecVideoCallManager;->onNotifyMediaEvent(I)V

    :cond_2
    return-void

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/incallui/SecModifyCallProcessor;->updateModifyProgressingCalltype(I)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/BaseInCallComponent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/BaseInCallComponent;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/incallui/BaseInCallComponent;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->forceWakeUpScreen(Landroid/content/Context;)V

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_2

    invoke-direct {p0, p1}, Lcom/android/incallui/SecModifyCallProcessor;->updateIncomingModifyCall(I)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/BaseInCallComponent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/BaseInCallComponent;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/incallui/BaseInCallComponent;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->forceWakeUpScreen(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private onResultModifyCallRequest(ILjava/lang/String;)V
    .locals 3

    const-string v0, "SecModifyCallProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResultModifyCallRequest() callType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/incallui/SecModifyCallProcessor;->updateModifyCallRequest()V

    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/BaseInCallComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/BaseInCallComponent;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->forceWakeUpScreen(Landroid/content/Context;)V

    const-string v0, "SecModifyCallProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResultModifyCallRequest - Error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/SecModifyCallProcessor;->updateCallButtons()V

    :cond_0
    return-void
.end method

.method private updateCallButtons()V
    .locals 4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/secui/SecUiAdapter;->updateCallButtons(Lcom/android/incallui/Call;)V

    return-void
.end method

.method private updateCoverScreenForModifyCall(Z)V
    .locals 1

    const-string v0, "ui_for_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getCoverScreen()Lcom/android/incallui/accessory/CoverScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getCoverScreen()Lcom/android/incallui/accessory/CoverScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/accessory/CoverScreen;->updateModifyCallGuide(Z)V

    :cond_0
    return-void
.end method

.method private updateIncomingModifyCall(I)V
    .locals 9

    const/4 v8, 0x0

    const/16 v5, 0x66

    const/16 v7, 0x65

    const/4 v6, 0x0

    const-string v3, "SecModifyCallProcessor"

    const-string v4, "updateIncomingModifyCall()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/incallui/SecModifyCallProcessor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/SecModifyCallProcessor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "SecModifyCallProcessor"

    const-string v4, "activity is not started"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/incallui/SecModifyCallProcessor;->mIncomingCallType:I

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/incallui/InCallPresenter;->bringToForeground(Z)V

    iget-object v3, p0, Lcom/android/incallui/SecModifyCallProcessor;->mHandler:Landroid/os/Handler;

    invoke-static {v3, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    iget-object v3, p0, Lcom/android/incallui/SecModifyCallProcessor;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void

    :cond_1
    const-string v3, "automatic_answering_machine"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->hasLiveCall()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/SecModifyCallProcessor;->rejectModifyCall()V

    invoke-virtual {p0, v6}, Lcom/android/incallui/SecModifyCallProcessor;->setIsShowingModifyCallDialog(Z)V

    const-string v3, "SecModifyCallProcessor"

    const-string v4, "rejectModifyCall - call in Answering message"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/incallui/SecModifyCallProcessor;->mIncomingCallType:I

    iget-object v3, p0, Lcom/android/incallui/SecModifyCallProcessor;->mModifyCallPromptDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_3

    const-string v3, "SecModifyCallProcessor"

    const-string v4, "- DISMISSING mModifyCallPromptDialog."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/incallui/SecModifyCallProcessor;->mModifyCallPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v8}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v3, p0, Lcom/android/incallui/SecModifyCallProcessor;->mModifyCallPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v8, p0, Lcom/android/incallui/SecModifyCallProcessor;->mModifyCallPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v6}, Lcom/android/incallui/SecModifyCallProcessor;->setIsShowingModifyCallDialog(Z)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/SecModifyCallProcessor;->dismissUpgradeDialog()V

    const-string v3, "common_vt"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "SecModifyCallProcessor"

    const-string v4, "updateIncomingModifyCall."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/incallui/InCallPresenter;->bringToForeground(Z)V

    :cond_4
    const-string v3, "canada_volte_ui"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "SecModifyCallProcessor"

    const-string v4, "CANADA_VOLTE_UI updateIncomingModifyCall."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->hasLiveCall()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/secui/SecCall;->getType()I

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/SecModifyCallProcessor;->acceptModifyCall()V

    goto/16 :goto_0

    :cond_5
    const-string v2, "Accept modify call request?"

    const-string v3, "feature_ktt"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "SecModifyCallProcessor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateIncomingModifyCall() mCallChargeState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/incallui/SecModifyCallProcessor;->mCallChargeState:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v3, Lcom/android/incallui/SecModifyCallProcessor;->mCallChargeState:Z

    if-eqz v3, :cond_8

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/BaseInCallComponent;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/incallui/BaseInCallComponent;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d025f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/BaseInCallComponent;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/incallui/BaseInCallComponent;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/InCallUtils;->forceWakeUpScreen(Landroid/content/Context;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/BaseInCallComponent;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/incallui/BaseInCallComponent;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0d0129

    new-instance v5, Lcom/android/incallui/SecModifyCallProcessor$3;

    invoke-direct {v5, p0}, Lcom/android/incallui/SecModifyCallProcessor$3;-><init>(Lcom/android/incallui/SecModifyCallProcessor;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0d01fb

    new-instance v5, Lcom/android/incallui/SecModifyCallProcessor$2;

    invoke-direct {v5, p0}, Lcom/android/incallui/SecModifyCallProcessor$2;-><init>(Lcom/android/incallui/SecModifyCallProcessor;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/SecModifyCallProcessor;->mModifyCallPromptDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/android/incallui/SecModifyCallProcessor;->mModifyCallPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecModifyCallProcessor;->setDialogDimEffect(Landroid/app/AlertDialog;)V

    iget-object v3, p0, Lcom/android/incallui/SecModifyCallProcessor;->mModifyCallPromptDialog:Landroid/app/AlertDialog;

    new-instance v4, Lcom/android/incallui/SecModifyCallProcessor$4;

    invoke-direct {v4, p0}, Lcom/android/incallui/SecModifyCallProcessor$4;-><init>(Lcom/android/incallui/SecModifyCallProcessor;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const-string v3, "tablet_device"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/incallui/SecModifyCallProcessor;->mModifyCallPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    :cond_6
    iget-object v3, p0, Lcom/android/incallui/SecModifyCallProcessor;->mModifyCallPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v3, p0, Lcom/android/incallui/SecModifyCallProcessor;->mModifyCallPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecModifyCallProcessor;->setIsShowingModifyCallDialog(Z)V

    iget-object v3, p0, Lcom/android/incallui/SecModifyCallProcessor;->mHandler:Landroid/os/Handler;

    invoke-static {v3, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    iget-object v3, p0, Lcom/android/incallui/SecModifyCallProcessor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/incallui/SecModifyCallProcessor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    :cond_7
    iget-object v3, p0, Lcom/android/incallui/SecModifyCallProcessor;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x4e20

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_8
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/BaseInCallComponent;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/incallui/BaseInCallComponent;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0260

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :cond_9
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/BaseInCallComponent;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/incallui/BaseInCallComponent;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0236

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1
.end method

.method private updateModifyCallRequest()V
    .locals 2

    const-string v0, "SecModifyCallProcessor"

    const-string v1, "updateModifyCallRequest()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/incallui/SecModifyCallProcessor;->dismissUpgradeDialog()V

    return-void
.end method

.method private updateModifyProgressingCalltype(I)V
    .locals 3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/incallui/secui/SecCall;->setModifyProgressingType(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public acceptModifyCall()V
    .locals 2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasLiveCall()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/SecModifyCallProcessor;->respondModifyCall(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public checkAndUpdateModifyDummyState()V
    .locals 7

    const/16 v6, 0xa

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/secui/SecCall;->getHoldStateOfTheOtherParty()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_0
    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/secui/SecCall;->getModifyProgressingType()I

    move-result v4

    if-ne v4, v6, :cond_2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->hasIncomingCall()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->hasOutgoingCall()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    invoke-virtual {v1}, Lcom/android/incallui/Call;->cancelModifyRequestDummyType()V

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v4

    invoke-virtual {v4, v3, v3}, Lcom/android/incallui/secui/SecUiAdapter;->showVideoStateMessage(ZI)V

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/secui/SecCall;->getModifyProgressingType()I

    move-result v4

    if-ne v4, v6, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->cancelModifyRequestDummyType()V

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v4

    invoke-virtual {v4, v3, v3}, Lcom/android/incallui/secui/SecUiAdapter;->showVideoStateMessage(ZI)V

    :cond_3
    return-void

    :cond_4
    move v2, v3

    goto :goto_0
.end method

.method public dismissModifyCallDialog()V
    .locals 2

    const-string v0, "SecModifyCallProcessor"

    const-string v1, "dismissModifyCallDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/SecModifyCallProcessor;->mModifyCallPromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecModifyCallProcessor;->mModifyCallPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecModifyCallProcessor;->mModifyCallPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/SecModifyCallProcessor;->mModifyCallPromptDialog:Landroid/app/AlertDialog;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecModifyCallProcessor;->setIsShowingModifyCallDialog(Z)V

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/SecModifyCallProcessor;->mIncomingCallType:I

    return-void
.end method

.method public dismissUpgradeDialog()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecModifyCallProcessor;->mUpgradeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecModifyCallProcessor;->mUpgradeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SecModifyCallProcessor"

    const-string v1, "DISMISSING mUpgradeDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/SecModifyCallProcessor;->mUpgradeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/services/telephony/common/SystemDBInterface;->setModifyInProgress(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/SecModifyCallProcessor;->mUpgradeDialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public isShowingModifyCallDialog()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/SecModifyCallProcessor;->mModifyCallPromptDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecModifyCallProcessor;->mModifyCallPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-boolean v1, p0, Lcom/android/incallui/SecModifyCallProcessor;->mIsShowingModifyCallPromptDialog:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isShowingUpgradeDialog()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/SecModifyCallProcessor;->mUpgradeDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecModifyCallProcessor;->mUpgradeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onModifyCall(ZILjava/lang/String;)V
    .locals 4

    const-string v1, "SecModifyCallProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onModifyCall - isIncoming : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " callType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    invoke-direct {p0, p2}, Lcom/android/incallui/SecModifyCallProcessor;->onIncomingModifyCall(I)V

    :goto_0
    const-string v1, "common_volte"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const-string v2, "call"

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/incallui/SecModifyCallProcessor;->hideDialpadForModifyCall()V

    invoke-direct {p0}, Lcom/android/incallui/SecModifyCallProcessor;->dismissInCallMenu()V

    return-void

    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/android/incallui/SecModifyCallProcessor;->onResultModifyCallRequest(ILjava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public rejectModifyCall()V
    .locals 3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->hasLiveCall()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secui/SecCall;->getModifyProgressingType()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->cancelModifyRequestDummyType()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/incallui/SecModifyCallProcessor;->respondModifyCall(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public requestModifyCall(I)Z
    .locals 9

    const v5, 0x7f0d0334

    const/16 v8, 0x7d9

    const/4 v7, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/SecModifyCallProcessor;->dismissUpgradeDialog()V

    const-string v4, "dcm_volte_popup_message"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez p1, :cond_0

    const v4, 0x7f0d0333

    invoke-static {v4}, Lcom/android/incallui/InCallUtils;->displayToast(I)V

    :cond_0
    const-string v4, "concept_jpn_dcm"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->checkPrimaryEmergencyCall()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/BaseInCallComponent;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/incallui/BaseInCallComponent;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0399

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/BaseInCallComponent;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/incallui/BaseInCallComponent;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0d0129

    new-instance v6, Lcom/android/incallui/SecModifyCallProcessor$5;

    invoke-direct {v6, p0}, Lcom/android/incallui/SecModifyCallProcessor$5;-><init>(Lcom/android/incallui/SecModifyCallProcessor;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    :goto_0
    return v3

    :cond_1
    const-string v4, "feature_kor"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/BaseInCallComponent;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/incallui/BaseInCallComponent;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "feature_ktt"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "SecModifyCallProcessor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "requestModifyCall () mCallChargeState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/incallui/SecModifyCallProcessor;->mCallChargeState:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v4, Lcom/android/incallui/SecModifyCallProcessor;->mCallChargeState:Z

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/BaseInCallComponent;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/incallui/BaseInCallComponent;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d025e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_2
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/BaseInCallComponent;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/incallui/BaseInCallComponent;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/SecModifyCallProcessor;->mUpgradeDialog:Landroid/app/AlertDialog;

    const-string v4, "tablet_device"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/incallui/SecModifyCallProcessor;->mUpgradeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/Window;->setType(I)V

    :cond_3
    iget-object v4, p0, Lcom/android/incallui/SecModifyCallProcessor;->mUpgradeDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v4}, Lcom/android/incallui/SecModifyCallProcessor;->setDialogDimEffect(Landroid/app/AlertDialog;)V

    iget-object v4, p0, Lcom/android/incallui/SecModifyCallProcessor;->mUpgradeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    iget-object v3, p0, Lcom/android/incallui/SecModifyCallProcessor;->mUpgradeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    :cond_4
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/incallui/SecModifyCallProcessor;->updateModifyProgressingCalltype(I)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v7}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v3

    invoke-virtual {v3, v0, p1}, Lcom/android/incallui/TelecomAdapter;->requestModifyCall(Lcom/android/incallui/Call;I)Z

    move-result v3

    goto/16 :goto_0

    :cond_5
    const-string v4, "concept_jpn_dcm"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/BaseInCallComponent;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/incallui/BaseInCallComponent;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/BaseInCallComponent;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/incallui/BaseInCallComponent;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/SecModifyCallProcessor;->mUpgradeDialog:Landroid/app/AlertDialog;

    const-string v4, "tablet_device"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/incallui/SecModifyCallProcessor;->mUpgradeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/Window;->setType(I)V

    :cond_6
    iget-object v4, p0, Lcom/android/incallui/SecModifyCallProcessor;->mUpgradeDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v4}, Lcom/android/incallui/SecModifyCallProcessor;->setDialogDimEffect(Landroid/app/AlertDialog;)V

    invoke-static {v7}, Lcom/android/services/telephony/common/SystemDBInterface;->setModifyInProgress(Z)V

    iget-object v4, p0, Lcom/android/incallui/SecModifyCallProcessor;->mUpgradeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    iget-object v3, p0, Lcom/android/incallui/SecModifyCallProcessor;->mUpgradeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    goto :goto_1
.end method

.method public requestVideoShare(Z)V
    .locals 1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasLiveCall()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecModifyCallProcessor;->requestModifyCall(I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecModifyCallProcessor;->requestModifyCall(I)Z

    goto :goto_0
.end method

.method public respondModifyCall(ZLjava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/incallui/TelecomAdapter;->respondModifyCall(Lcom/android/incallui/Call;ZLjava/lang/String;)V

    return-void
.end method

.method public setCallCharge(Z)V
    .locals 3

    const-string v0, "SecModifyCallProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCallCharge () chargePart = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean p1, Lcom/android/incallui/SecModifyCallProcessor;->mCallChargeState:Z

    return-void
.end method

.method public setDialogDimEffect(Landroid/app/AlertDialog;)V
    .locals 3

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v1, 0x3e99999a    # 0.3f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method public setIsShowingModifyCallDialog(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/SecModifyCallProcessor;->mIsShowingModifyCallPromptDialog:Z

    invoke-direct {p0, p1}, Lcom/android/incallui/SecModifyCallProcessor;->updateCoverScreenForModifyCall(Z)V

    return-void
.end method

.method public showModifyCallDialogIfNeeded()V
    .locals 2

    const/4 v1, -0x1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasLiveCall()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/incallui/SecModifyCallProcessor;->mIncomingCallType:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/incallui/SecModifyCallProcessor;->mIncomingCallType:I

    invoke-direct {p0, v0}, Lcom/android/incallui/SecModifyCallProcessor;->updateIncomingModifyCall(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput v1, p0, Lcom/android/incallui/SecModifyCallProcessor;->mIncomingCallType:I

    goto :goto_0
.end method
