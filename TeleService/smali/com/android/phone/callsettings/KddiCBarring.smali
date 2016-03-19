.class public Lcom/android/phone/callsettings/KddiCBarring;
.super Ljava/lang/Object;
.source "KddiCBarring.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/KddiCBarring$4;,
        Lcom/android/phone/callsettings/KddiCBarring$AppState;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAppState:Lcom/android/phone/callsettings/KddiCBarring$AppState;

.field private mCBVisible:Z

.field private mData:Ljava/lang/String;

.field private mListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/callsettings/CBarringMessageListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkServiceHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mProgress:Landroid/app/ProgressDialog;

.field mToast:Landroid/widget/Toast;

.field responseCBHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/phone/callsettings/KddiCBarring;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/callsettings/KddiCBarring;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/KddiCBarring;->mListenerList:Ljava/util/List;

    iput-boolean v3, p0, Lcom/android/phone/callsettings/KddiCBarring;->mCBVisible:Z

    iput-object v2, p0, Lcom/android/phone/callsettings/KddiCBarring;->mProgress:Landroid/app/ProgressDialog;

    iput-object v2, p0, Lcom/android/phone/callsettings/KddiCBarring;->mData:Ljava/lang/String;

    new-instance v0, Lcom/android/phone/callsettings/KddiCBarring$1;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/KddiCBarring$1;-><init>(Lcom/android/phone/callsettings/KddiCBarring;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/KddiCBarring;->responseCBHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/callsettings/KddiCBarring$2;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/KddiCBarring$2;-><init>(Lcom/android/phone/callsettings/KddiCBarring;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/KddiCBarring;->mNetworkServiceHandler:Landroid/os/Handler;

    sget-object v0, Lcom/android/phone/callsettings/KddiCBarring;->LOG_TAG:Ljava/lang/String;

    const-string v1, "constructor "

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/KddiCBarring;->mToast:Landroid/widget/Toast;

    sget-object v0, Lcom/android/phone/callsettings/KddiCBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/KddiCBarring$AppState;

    iput-object v0, p0, Lcom/android/phone/callsettings/KddiCBarring;->mAppState:Lcom/android/phone/callsettings/KddiCBarring$AppState;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/KddiCBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/KddiCBarring;->mListenerList:Ljava/util/List;

    iput-boolean v3, p0, Lcom/android/phone/callsettings/KddiCBarring;->mCBVisible:Z

    iput-object v2, p0, Lcom/android/phone/callsettings/KddiCBarring;->mProgress:Landroid/app/ProgressDialog;

    iput-object v2, p0, Lcom/android/phone/callsettings/KddiCBarring;->mData:Ljava/lang/String;

    new-instance v0, Lcom/android/phone/callsettings/KddiCBarring$1;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/KddiCBarring$1;-><init>(Lcom/android/phone/callsettings/KddiCBarring;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/KddiCBarring;->responseCBHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/callsettings/KddiCBarring$2;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/KddiCBarring$2;-><init>(Lcom/android/phone/callsettings/KddiCBarring;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/KddiCBarring;->mNetworkServiceHandler:Landroid/os/Handler;

    sget-object v0, Lcom/android/phone/callsettings/KddiCBarring;->LOG_TAG:Ljava/lang/String;

    const-string v1, "constructor(activity) "

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/KddiCBarring;->mToast:Landroid/widget/Toast;

    sget-object v0, Lcom/android/phone/callsettings/KddiCBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/KddiCBarring$AppState;

    iput-object v0, p0, Lcom/android/phone/callsettings/KddiCBarring;->mAppState:Lcom/android/phone/callsettings/KddiCBarring$AppState;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/KddiCBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    iput-object p1, p0, Lcom/android/phone/callsettings/KddiCBarring;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/callsettings/KddiCBarring;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCBarring;->mData:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/phone/callsettings/KddiCBarring;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/KddiCBarring;->mData:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/phone/callsettings/KddiCBarring;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/callsettings/KddiCBarring;->hideProgressDialog()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/callsettings/KddiCBarring;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCBarring;->mNetworkServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/phone/callsettings/KddiCBarring;)Lcom/android/internal/telephony/Phone;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/phone/callsettings/KddiCBarring;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/callsettings/KddiCBarring;Landroid/os/AsyncResult;I)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/phone/callsettings/KddiCBarring;->handleSetCBMessage(Landroid/os/AsyncResult;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/phone/callsettings/KddiCBarring;Lcom/android/phone/callsettings/KddiCBarring$AppState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/KddiCBarring;->setAppState(Lcom/android/phone/callsettings/KddiCBarring$AppState;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/callsettings/KddiCBarring;Lcom/android/phone/callsettings/KddiCBarring$AppState;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/phone/callsettings/KddiCBarring;->setAppState(Lcom/android/phone/callsettings/KddiCBarring$AppState;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/callsettings/KddiCBarring;Landroid/os/AsyncResult;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/KddiCBarring;->handleQueryCBMessage(Landroid/os/AsyncResult;)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/phone/callsettings/KddiCBarring;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCBarring;->mListenerList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/callsettings/KddiCBarring;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/KddiCBarring;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/callsettings/KddiCBarring;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/KddiCBarring;->displayToast(Ljava/lang/String;)V

    return-void
.end method

.method private deleteBusyDialog()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/callsettings/KddiCBarring;->mCBVisible:Z

    const-string v0, "deleteBusyDialog"

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/KddiCBarring;->log(Ljava/lang/String;)V

    return-void
.end method

.method private displayToast(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCBarring;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCBarring;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCBarring;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method private handleQueryCBMessage(Landroid/os/AsyncResult;)I
    .locals 8

    const/16 v4, 0xc8

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleQueryCBMessage() ar:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v6}, Lcom/android/phone/callsettings/KddiCBarring;->log(Ljava/lang/String;Z)V

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_1

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v3, :cond_0

    sget-object v3, Lcom/android/phone/callsettings/KddiCBarring;->LOG_TAG:Ljava/lang/String;

    const-string v4, "CommandExceptionError = FDN"

    invoke-static {v3, v4, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    const/16 v3, 0x384

    :goto_0
    return v3

    :cond_0
    sget-object v3, Lcom/android/phone/callsettings/KddiCBarring;->LOG_TAG:Ljava/lang/String;

    const-string v5, "CommandExceptionError = EXCEPTION"

    invoke-static {v3, v5, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    :cond_1
    move v3, v4

    goto :goto_0

    :cond_2
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v2, v3

    check-cast v2, [I

    if-eqz v2, :cond_4

    array-length v3, v2

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleQueryCBMessage() ints.length:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v5, v2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v6}, Lcom/android/phone/callsettings/KddiCBarring;->log(Ljava/lang/String;Z)V

    const/4 v1, 0x0

    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_3

    const-string v3, "ints["

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "]:"

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aget v5, v2, v1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/KddiCBarring;->log(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    aget v3, v2, v7

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleQueryCBMessage() SERVICE_CLASS_VOICE:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v2, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v6}, Lcom/android/phone/callsettings/KddiCBarring;->log(Ljava/lang/String;Z)V

    :cond_4
    :goto_2
    const/16 v3, 0x64

    goto :goto_0

    :cond_5
    aget v3, v2, v7

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleQueryCBMessage() :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v2, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v6}, Lcom/android/phone/callsettings/KddiCBarring;->log(Ljava/lang/String;Z)V

    goto :goto_2

    :cond_6
    move v3, v4

    goto/16 :goto_0
.end method

.method private handleSetCBMessage(Landroid/os/AsyncResult;I)I
    .locals 5

    const/4 v4, 0x1

    const/16 v2, 0xc8

    const/16 v1, 0x64

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSetCBMessage() ar:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v4}, Lcom/android/phone/callsettings/KddiCBarring;->log(Ljava/lang/String;Z)V

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_2

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SIM_PUK2:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_1

    const-string v1, "SIM_PUK2"

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/KddiCBarring;->displayToast(Ljava/lang/String;)V

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    if-nez p2, :cond_4

    const-string v2, "handleSetCBMessage() has been processed ACTIVATE"

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/KddiCBarring;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    if-ne p2, v4, :cond_5

    const-string v2, "handleSetCBMessage() has been processed DEACTIVATE"

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/KddiCBarring;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const/4 v2, 0x2

    if-ne p2, v2, :cond_6

    const-string v2, "handleSetCBMessage() has been processed CANCELALL"

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/KddiCBarring;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const/4 v2, 0x3

    if-ne p2, v2, :cond_0

    const-string v2, "handleSetCBMessage() has been processed CONFIRM"

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/KddiCBarring;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    const v3, 0x7f0a0323

    invoke-virtual {v2, v3}, Lcom/android/phone/PhoneGlobals;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/KddiCBarring;->displayToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private hideProgressDialog()V
    .locals 3

    const-string v1, "hideProgressDialog() mProgress.isShowing():"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/phone/callsettings/KddiCBarring;->log(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/phone/callsettings/KddiCBarring;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/KddiCBarring;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/callsettings/KddiCBarring;->mProgress:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/KddiCBarring;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/KddiCBarring;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/callsettings/KddiCBarring;->mProgress:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-object v1, Lcom/android/phone/callsettings/KddiCBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/KddiCBarring$AppState;

    iput-object v1, p0, Lcom/android/phone/callsettings/KddiCBarring;->mAppState:Lcom/android/phone/callsettings/KddiCBarring$AppState;

    :cond_1
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideProgressDialog() IllegalArgumentException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/KddiCBarring;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/phone/callsettings/KddiCBarring;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1

    sget-object v0, Lcom/android/phone/callsettings/KddiCBarring;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.method private setAppState(Lcom/android/phone/callsettings/KddiCBarring$AppState;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v2, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAppState."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/phone/callsettings/KddiCBarring;->log(Ljava/lang/String;Z)V

    sget-object v0, Lcom/android/phone/callsettings/KddiCBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/KddiCBarring$AppState;

    if-ne p1, v0, :cond_0

    const-string v0, "setAppState: illegal error state without reason."

    invoke-direct {p0, v0, v2}, Lcom/android/phone/callsettings/KddiCBarring;->log(Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/android/phone/callsettings/KddiCBarring;->hideProgressDialog()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal error state without reason."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/16 v0, 0x64

    invoke-direct {p0, p1, v0}, Lcom/android/phone/callsettings/KddiCBarring;->setAppState(Lcom/android/phone/callsettings/KddiCBarring$AppState;I)V

    return-void
.end method

.method private setAppState(Lcom/android/phone/callsettings/KddiCBarring$AppState;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v3, 0x1

    sget-object v0, Lcom/android/phone/callsettings/KddiCBarring;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAppState() mAppState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/KddiCBarring;->mAppState:Lcom/android/phone/callsettings/KddiCBarring$AppState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,requestedState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",msgStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCBarring;->mAppState:Lcom/android/phone/callsettings/KddiCBarring$AppState;

    if-ne p1, v0, :cond_0

    const-string v0, "setAppState: requestedState same as current state. ignoring."

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/KddiCBarring;->log(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/phone/callsettings/KddiCBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/KddiCBarring$AppState;

    if-ne p1, v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAppState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCBVisible : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/callsettings/KddiCBarring;->mCBVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/KddiCBarring;->log(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/phone/callsettings/KddiCBarring;->mCBVisible:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/phone/callsettings/KddiCBarring;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCBVisible : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/callsettings/KddiCBarring;->mCBVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " so, we try remove busy dialog"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/callsettings/KddiCBarring;->deleteBusyDialog()V

    :cond_1
    iget-boolean v0, p0, Lcom/android/phone/callsettings/KddiCBarring;->mCBVisible:Z

    if-eqz v0, :cond_2

    sparse-switch p2, :sswitch_data_0

    :goto_1
    iput-object p1, p0, Lcom/android/phone/callsettings/KddiCBarring;->mAppState:Lcom/android/phone/callsettings/KddiCBarring$AppState;

    goto :goto_0

    :sswitch_0
    invoke-direct {p0}, Lcom/android/phone/callsettings/KddiCBarring;->deleteBusyDialog()V

    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/KddiCBarring;->showDialog(I)V

    goto :goto_1

    :sswitch_1
    const/16 v0, 0x320

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/KddiCBarring;->showDialog(I)V

    goto :goto_1

    :sswitch_2
    invoke-direct {p0}, Lcom/android/phone/callsettings/KddiCBarring;->deleteBusyDialog()V

    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/KddiCBarring;->showDialog(I)V

    goto :goto_1

    :sswitch_3
    invoke-direct {p0}, Lcom/android/phone/callsettings/KddiCBarring;->deleteBusyDialog()V

    const/16 v0, 0x190

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/KddiCBarring;->showDialog(I)V

    goto :goto_1

    :sswitch_4
    invoke-direct {p0}, Lcom/android/phone/callsettings/KddiCBarring;->deleteBusyDialog()V

    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/KddiCBarring;->showDialog(I)V

    goto :goto_1

    :sswitch_5
    invoke-direct {p0}, Lcom/android/phone/callsettings/KddiCBarring;->deleteBusyDialog()V

    const/16 v0, 0x258

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/KddiCBarring;->showDialog(I)V

    goto :goto_1

    :sswitch_6
    invoke-direct {p0}, Lcom/android/phone/callsettings/KddiCBarring;->deleteBusyDialog()V

    const/16 v0, 0x2bc

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/KddiCBarring;->showDialog(I)V

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/android/phone/callsettings/KddiCBarring;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCBVisible : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/callsettings/KddiCBarring;->mCBVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " so, skip displaying dialog"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-direct {p0}, Lcom/android/phone/callsettings/KddiCBarring;->deleteBusyDialog()V

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAppState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/KddiCBarring;->mAppState:Lcom/android/phone/callsettings/KddiCBarring$AppState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/android/phone/callsettings/KddiCBarring;->log(Ljava/lang/String;Z)V

    sget-object v0, Lcom/android/phone/callsettings/KddiCBarring$4;->$SwitchMap$com$android$phone$callsettings$KddiCBarring$AppState:[I

    iget-object v1, p0, Lcom/android/phone/callsettings/KddiCBarring;->mAppState:Lcom/android/phone/callsettings/KddiCBarring$AppState;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/KddiCBarring$AppState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_4
    :goto_2
    iput-object p1, p0, Lcom/android/phone/callsettings/KddiCBarring;->mAppState:Lcom/android/phone/callsettings/KddiCBarring$AppState;

    goto/16 :goto_0

    :pswitch_0
    sget-object v0, Lcom/android/phone/callsettings/KddiCBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/KddiCBarring$AppState;

    if-eq p1, v0, :cond_4

    invoke-direct {p0}, Lcom/android/phone/callsettings/KddiCBarring;->hideProgressDialog()V

    const-string v0, "setAppState: illegal transition from NETWORK_ERROR"

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/KddiCBarring;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from NETWORK_ERROR"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAppState: displaying busy dialog, reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/KddiCBarring;->log(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/phone/callsettings/KddiCBarring;->mCBVisible:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/android/phone/callsettings/KddiCBarring$AppState;->INITIAL_QUERY:Lcom/android/phone/callsettings/KddiCBarring$AppState;

    if-ne p1, v0, :cond_5

    const/16 v0, 0x384

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/KddiCBarring;->showDialog(I)V

    goto :goto_2

    :cond_5
    sget-object v0, Lcom/android/phone/callsettings/KddiCBarring$AppState;->BUSY_NETWORK_CONNECT:Lcom/android/phone/callsettings/KddiCBarring$AppState;

    if-ne p1, v0, :cond_4

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/KddiCBarring;->showDialog(I)V

    goto :goto_2

    :cond_6
    sget-object v0, Lcom/android/phone/callsettings/KddiCBarring;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCBVisible : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/callsettings/KddiCBarring;->mCBVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " so, skip displaying dialog"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :pswitch_2
    sget-object v0, Lcom/android/phone/callsettings/KddiCBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/KddiCBarring$AppState;

    if-eq p1, v0, :cond_7

    invoke-direct {p0}, Lcom/android/phone/callsettings/KddiCBarring;->hideProgressDialog()V

    const-string v0, "setAppState: illegal transition from INITIAL_QUERY"

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/KddiCBarring;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from INITIAL_QUERY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    invoke-direct {p0}, Lcom/android/phone/callsettings/KddiCBarring;->deleteBusyDialog()V

    goto :goto_2

    :pswitch_3
    sget-object v0, Lcom/android/phone/callsettings/KddiCBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/KddiCBarring$AppState;

    if-eq p1, v0, :cond_8

    invoke-direct {p0}, Lcom/android/phone/callsettings/KddiCBarring;->hideProgressDialog()V

    const-string v0, "setAppState: illegal transition from BUSY_NETWORK_CONNECT"

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/KddiCBarring;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from BUSY_NETWORK_CONNECT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    invoke-direct {p0}, Lcom/android/phone/callsettings/KddiCBarring;->deleteBusyDialog()V

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x12c -> :sswitch_2
        0x190 -> :sswitch_3
        0x1f4 -> :sswitch_4
        0x258 -> :sswitch_5
        0x320 -> :sswitch_1
        0x384 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showProgressDialog(I)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "showProgressDialog. :"

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/KddiCBarring;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCBarring;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCBarring;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCBarring;->mProgress:Landroid/app/ProgressDialog;

    if-nez v0, :cond_3

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/phone/callsettings/KddiCBarring;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/KddiCBarring;->mProgress:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCBarring;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-ne p1, v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCBarring;->mProgress:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/phone/callsettings/KddiCBarring;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00ea

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCBarring;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCBarring;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCBarring;->mProgress:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/phone/callsettings/KddiCBarring;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00e9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showProgressDialog mProgress.isShowing() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/KddiCBarring;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/callsettings/KddiCBarring;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCBarring;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCBarring;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/android/phone/callsettings/KddiCBarring;->LOG_TAG:Ljava/lang/String;

    const-string v1, "showProgressDialog, Activity is not resumed."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public deregisterCBarringMessageListener(Lcom/android/phone/callsettings/CBarringMessageListener;)V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCBarring;->mListenerList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCBarring;->mListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/callsettings/KddiCBarring;->LOG_TAG:Ljava/lang/String;

    const-string v1, "deregisterCBarringMessageListener() "

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCBarring;->mListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public registerCBarringMessageListener(Lcom/android/phone/callsettings/CBarringMessageListener;)V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCBarring;->mListenerList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCBarring;->mListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/phone/callsettings/KddiCBarring;->LOG_TAG:Ljava/lang/String;

    const-string v1, "registerCBarringMessageListener() "

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCBarring;->mListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public requestCommand(IILjava/lang/String;)V
    .locals 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/phone/callsettings/KddiCBarring;->mProgress:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/KddiCBarring;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/phone/callsettings/KddiCBarring;->LOG_TAG:Ljava/lang/String;

    const-string v2, "so busy requestCommand() "

    invoke-static {v1, v2, v0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/android/phone/callsettings/KddiCBarring;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestCommand() cmd : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cbAction :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " iCBNumber :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/KddiCBarring;->showProgressDialog(I)V

    packed-switch p1, :pswitch_data_0

    sget-object v1, Lcom/android/phone/callsettings/KddiCBarring;->LOG_TAG:Ljava/lang/String;

    const-string v2, "requestCommand default "

    invoke-static {v1, v2, v0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/callsettings/KddiCBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    if-ne p2, v0, :cond_1

    :goto_1
    iget-object v2, p0, Lcom/android/phone/callsettings/KddiCBarring;->responseCBHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/android/phone/callsettings/KddiCBarring;->responseCBHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->setACBarring(ZLandroid/os/Message;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/callsettings/KddiCBarring;->responseCBHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/android/phone/callsettings/KddiCBarring;->responseCBHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getACBarring(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/callsettings/KddiCBarring;->responseCBHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/android/phone/callsettings/KddiCBarring;->responseCBHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getICBarring(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/callsettings/KddiCBarring;->responseCBHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/android/phone/callsettings/KddiCBarring;->responseCBHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p2, p3, v1}, Lcom/android/internal/telephony/Phone;->setICBarring(ILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setCommad(IILjava/lang/String;)V
    .locals 6

    const/4 v5, 0x1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-gtz v2, :cond_2

    sget-object v2, Lcom/android/phone/callsettings/KddiCBarring$AppState;->INITIAL_QUERY:Lcom/android/phone/callsettings/KddiCBarring$AppState;

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/KddiCBarring;->setAppState(Lcom/android/phone/callsettings/KddiCBarring$AppState;)V

    iget-object v2, p0, Lcom/android/phone/callsettings/KddiCBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    sget-object v2, Lcom/android/phone/callsettings/KddiCBarring;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCallBarring() radioState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    if-nez v1, :cond_0

    sget-object v2, Lcom/android/phone/callsettings/KddiCBarring;->LOG_TAG:Ljava/lang/String;

    const-string v3, "STATE_IN_SERVICE"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/phone/callsettings/KddiCBarring;->requestCommand(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/android/phone/callsettings/KddiCBarring;->hideProgressDialog()V

    sget-object v2, Lcom/android/phone/callsettings/KddiCBarring;->LOG_TAG:Ljava/lang/String;

    const-string v3, "illegal transition from NETWORK_ERROR"

    invoke-static {v2, v3, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    sget-object v2, Lcom/android/phone/callsettings/KddiCBarring;->LOG_TAG:Ljava/lang/String;

    const-string v3, "STATE_POWER_OFF"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/phone/callsettings/KddiCBarring;->LOG_TAG:Ljava/lang/String;

    const-string v3, "onCreate: radio not ready, waiting for signal."

    invoke-static {v2, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/callsettings/KddiCBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v3, p0, Lcom/android/phone/callsettings/KddiCBarring;->mNetworkServiceHandler:Landroid/os/Handler;

    const/16 v4, 0x64

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/android/phone/callsettings/KddiCBarring;->LOG_TAG:Ljava/lang/String;

    const-string v3, "MSG_EXCEPTION"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/phone/callsettings/KddiCBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/KddiCBarring$AppState;

    const/16 v3, 0xc8

    invoke-direct {p0, v2, v3}, Lcom/android/phone/callsettings/KddiCBarring;->setAppState(Lcom/android/phone/callsettings/KddiCBarring$AppState;I)V

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/android/phone/callsettings/KddiCBarring;->LOG_TAG:Ljava/lang/String;

    const-string v3, "setDisplayMode: radio is off!"

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    sget-object v2, Lcom/android/phone/callsettings/KddiCBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/KddiCBarring$AppState;

    const/16 v3, 0x320

    invoke-direct {p0, v2, v3}, Lcom/android/phone/callsettings/KddiCBarring;->setAppState(Lcom/android/phone/callsettings/KddiCBarring$AppState;I)V

    goto :goto_0
.end method

.method protected showDialog(I)V
    .locals 5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showDialog. dialogId :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/KddiCBarring;->log(Ljava/lang/String;)V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/phone/callsettings/KddiCBarring;->mCBVisible:Z

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    const v2, 0x7f0a00e8

    sparse-switch p1, :sswitch_data_1

    const v1, 0x7f0a00ed

    :goto_1
    invoke-direct {p0}, Lcom/android/phone/callsettings/KddiCBarring;->hideProgressDialog()V

    iget-object v3, p0, Lcom/android/phone/callsettings/KddiCBarring;->mActivity:Landroid/app/Activity;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/callsettings/KddiCBarring;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->isResumed()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/phone/callsettings/KddiCBarring;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/phone/callsettings/KddiCBarring;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/phone/callsettings/KddiCBarring;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/phone/callsettings/KddiCBarring;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0282

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    new-instance v4, Lcom/android/phone/callsettings/KddiCBarring$3;

    invoke-direct {v4, p0}, Lcom/android/phone/callsettings/KddiCBarring$3;-><init>(Lcom/android/phone/callsettings/KddiCBarring;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :sswitch_1
    const v1, 0x7f0a00ec

    goto :goto_1

    :sswitch_2
    const v1, 0x7f0a00ee

    goto :goto_1

    :sswitch_3
    const v1, 0x7f0a031d

    goto :goto_1

    :sswitch_4
    const v1, 0x7f0a031e

    goto :goto_1

    :sswitch_5
    const v1, 0x7f0a031f

    goto :goto_1

    :sswitch_6
    const v2, 0x7f0a027b

    const v1, 0x7f0a030b

    goto :goto_1

    :cond_0
    sget-object v3, Lcom/android/phone/callsettings/KddiCBarring;->LOG_TAG:Ljava/lang/String;

    const-string v4, "showDialog, Activity is not resumed."

    invoke-static {v3, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x12c -> :sswitch_0
        0x190 -> :sswitch_0
        0x1f4 -> :sswitch_0
        0x258 -> :sswitch_0
        0x2bc -> :sswitch_0
        0x320 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x12c -> :sswitch_1
        0x190 -> :sswitch_3
        0x1f4 -> :sswitch_4
        0x258 -> :sswitch_5
        0x2bc -> :sswitch_6
        0x320 -> :sswitch_2
    .end sparse-switch
.end method
