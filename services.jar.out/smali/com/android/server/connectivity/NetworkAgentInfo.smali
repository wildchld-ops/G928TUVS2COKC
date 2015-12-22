.class public Lcom/android/server/connectivity/NetworkAgentInfo;
.super Ljava/lang/Object;
.source "NetworkAgentInfo.java"


# static fields
.field private static final EXPLICITLY_SELECTED_NETWORK_SCORE:I = 0x64

.field private static final EXTRA_FEATURE_ID:Ljava/lang/String; = "cneFeatureId"

.field private static final EXTRA_FEATURE_PARAMETER:Ljava/lang/String; = "cneFeatureParameter"

.field private static final EXTRA_PARAMETER_VALUE:Ljava/lang/String; = "cneParameterValue"

.field private static final FEATURE_ID:I = 0x1

.field private static final FEATURE_OFF:I = 0x1

.field private static final FEATURE_ON:I = 0x2

.field private static final FEATURE_PARAM:I = 0x1

.field private static final UNVALIDATED_SCORE_PENALTY:I = 0x28


# instance fields
.field public final asyncChannel:Lcom/android/internal/util/AsyncChannel;

.field public clatd:Lcom/android/server/connectivity/Nat464Xlat;

.field public created:Z

.field private currentScore:I

.field public everValidated:Z

.field private isCneWqeEnabled:Z

.field public knoxProfile:Z

.field public lastValidated:Z

.field public linkProperties:Landroid/net/LinkProperties;

.field private mContext:Landroid/content/Context;

.field public final messenger:Landroid/os/Messenger;

.field public network:Landroid/net/Network;

.field public networkCapabilities:Landroid/net/NetworkCapabilities;

.field public networkInfo:Landroid/net/NetworkInfo;

.field public final networkLingered:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/NetworkRequest;",
            ">;"
        }
    .end annotation
.end field

.field public final networkMisc:Landroid/net/NetworkMisc;

.field public final networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;

.field public final networkRequests:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/net/NetworkRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Messenger;Lcom/android/internal/util/AsyncChannel;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ILandroid/content/Context;Landroid/os/Handler;Landroid/net/NetworkMisc;Landroid/net/NetworkRequest;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->isCneWqeEnabled:Z

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkLingered:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->messenger:Landroid/os/Messenger;

    iput-object p2, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iput-object p3, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    iput-object p4, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    iput-object p5, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iput p6, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->currentScore:I

    new-instance v1, Lcom/android/server/connectivity/NetworkMonitor;

    invoke-direct {v1, p7, p8, p0, p10}, Lcom/android/server/connectivity/NetworkMonitor;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkRequest;)V

    iput-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;

    iput-object p9, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    iput-object p7, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persist.cne.feature"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/connectivity/NetworkAgentInfo$1;

    invoke-direct {v2, p0}, Lcom/android/server/connectivity/NetworkAgentInfo$1;-><init>(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.quicinc.cne.CNE_PREFERENCE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v1, v1, Landroid/net/NetworkMisc;->knoxProfile:Z

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->knoxProfile:Z

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/connectivity/NetworkAgentInfo;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/connectivity/NetworkAgentInfo;->handlePrefChange(III)V

    return-void
.end method

.method private getCurrentScore(Z)I
    .locals 3

    iget v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->currentScore:I

    iget-boolean v2, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->isCneWqeEnabled:Z

    if-eqz v2, :cond_0

    move v1, v0

    :goto_0
    return v1

    :cond_0
    invoke-static {}, Landroid/net/wifi/WifiManager;->showWebBrowserAtCaptivePortal()Z

    move-result v2

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    if-nez v2, :cond_1

    if-nez p1, :cond_1

    add-int/lit8 v0, v0, -0x28

    :cond_1
    :goto_1
    if-gez v0, :cond_2

    const/4 v0, 0x0

    :cond_2
    move v1, v0

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v2, v2, Landroid/net/NetworkMisc;->explicitlySelected:Z

    if-eqz v2, :cond_1

    const/16 v0, 0x64

    goto :goto_1
.end method

.method private handlePrefChange(III)V
    .locals 2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    if-ne p2, v1, :cond_0

    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    iput-boolean v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->isCneWqeEnabled:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne p3, v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->isCneWqeEnabled:Z

    goto :goto_0
.end method


# virtual methods
.method public addRequest(Landroid/net/NetworkRequest;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    iget v1, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public getCurrentScore()I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore(Z)I

    move-result v0

    return v0
.end method

.method public getCurrentScoreAsValidated()I
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore(Z)I

    move-result v0

    return v0
.end method

.method public isVPN()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkAgentInfo ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    if-nez v0, :cond_0

    const-string/jumbo v0, "null"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-virtual {v0}, Landroid/net/Network;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public satisfies(Landroid/net/NetworkRequest;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCurrentScore(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->currentScore:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkAgentInfo{ ni{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}  network{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}  lp{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}  nc{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}  Score{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "everValidated{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}  lastValidated{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "created{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "explicitlySelected{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v1, v1, Landroid/net/NetworkMisc;->explicitlySelected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "} }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
