.class public Lcom/android/phone/ota/InCallUiState;
.super Ljava/lang/Object;
.source "InCallUiState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/ota/InCallUiState$ProgressIndicationType;,
        Lcom/android/phone/ota/InCallUiState$InCallScreenMode;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/phone/ota/InCallUiState;


# instance fields
.field public inCallScreenMode:Lcom/android/phone/ota/InCallUiState$InCallScreenMode;

.field private mContext:Landroid/content/Context;

.field private mPendingCallStatusCode:Lcom/android/phone/Constants$CallStatusCode;

.field private progressIndication:Lcom/android/phone/ota/InCallUiState$ProgressIndicationType;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/phone/ota/InCallUiState$InCallScreenMode;->UNDEFINED:Lcom/android/phone/ota/InCallUiState$InCallScreenMode;

    iput-object v0, p0, Lcom/android/phone/ota/InCallUiState;->inCallScreenMode:Lcom/android/phone/ota/InCallUiState$InCallScreenMode;

    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    iput-object v0, p0, Lcom/android/phone/ota/InCallUiState;->mPendingCallStatusCode:Lcom/android/phone/Constants$CallStatusCode;

    sget-object v0, Lcom/android/phone/ota/InCallUiState$ProgressIndicationType;->NONE:Lcom/android/phone/ota/InCallUiState$ProgressIndicationType;

    iput-object v0, p0, Lcom/android/phone/ota/InCallUiState;->progressIndication:Lcom/android/phone/ota/InCallUiState$ProgressIndicationType;

    iput-object p1, p0, Lcom/android/phone/ota/InCallUiState;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static init(Landroid/content/Context;)Lcom/android/phone/ota/InCallUiState;
    .locals 4
    .param p0    # Landroid/content/Context;

    const-class v1, Lcom/android/phone/ota/InCallUiState;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/phone/ota/InCallUiState;->sInstance:Lcom/android/phone/ota/InCallUiState;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/ota/InCallUiState;

    invoke-direct {v0, p0}, Lcom/android/phone/ota/InCallUiState;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/phone/ota/InCallUiState;->sInstance:Lcom/android/phone/ota/InCallUiState;

    :goto_0
    sget-object v0, Lcom/android/phone/ota/InCallUiState;->sInstance:Lcom/android/phone/ota/InCallUiState;

    monitor-exit v1

    return-object v0

    :cond_0
    const-string v0, "InCallUiState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/ota/InCallUiState;->sInstance:Lcom/android/phone/ota/InCallUiState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
