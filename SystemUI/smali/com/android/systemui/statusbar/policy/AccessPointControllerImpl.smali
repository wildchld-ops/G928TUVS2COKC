.class public Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;
.super Ljava/lang/Object;
.source "AccessPointControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$Receiver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final EXTRA_START_CONNECT_SSID:Ljava/lang/String; = "wifi_start_connect_ssid"

.field private static final ICONS:[I

.field private static final TAG:Ljava/lang/String; = "AccessPointController"


# instance fields
.field private final mByStrength:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUser:I

.field private mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

.field private final mReceiver:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$Receiver;

.field private mScanning:Z

.field private final mUserManager:Landroid/os/UserManager;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "AccessPointController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->DEBUG:Z

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->ICONS:[I

    return-void

    :array_0
    .array-data 4
        0x7f02023b
        0x7f020243
        0x7f020244
        0x7f020245
        0x7f020246
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$Receiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$Receiver;-><init>(Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mReceiver:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$Receiver;

    new-instance v0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    new-instance v0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$2;-><init>(Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mByStrength:Ljava/util/Comparator;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCurrentUser:I

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->updateAccessPoints()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mScanning:Z

    return p1
.end method

.method private fireAcccessPointsCallback([Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;)V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;->onAccessPointsChanged([Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private fireSettingsIntentCallback(Landroid/content/Intent;)V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;->onSettingsActivityTriggered(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getConfiguredNetworksBySsid()Landroid/util/ArrayMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    sget-object v3, Landroid/util/ArrayMap;->EMPTY:Landroid/util/ArrayMap;

    :cond_1
    return-object v3

    :cond_2
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->trimDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private getConnectedNetworkId(Landroid/net/wifi/WifiInfo;)I
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static trimDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v2, 0x22

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private updateAccessPoints()V
    .locals 15

    iget-object v12, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->getConnectedNetworkId(Landroid/net/wifi/WifiInfo;)I

    move-result v4

    sget-boolean v12, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->DEBUG:Z

    if-eqz v12, :cond_0

    const-string v12, "AccessPointController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "connectedNetworkId: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v12, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v8

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->getConfiguredNetworksBySsid()Landroid/util/ArrayMap;

    move-result-object v3

    sget-boolean v12, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->DEBUG:Z

    if-eqz v12, :cond_1

    const-string v12, "AccessPointController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "scanResults: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    invoke-direct {v1, v12}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/ScanResult;

    if-eqz v7, :cond_2

    iget-object v9, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    invoke-virtual {v10, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    invoke-virtual {v10, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    iget v12, v7, Landroid/net/wifi/ScanResult;->level:I

    sget-object v13, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->ICONS:[I

    array-length v13, v13

    invoke-static {v12, v13}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v6

    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;-><init>()V

    if-eqz v2, :cond_6

    const/4 v12, 0x1

    :goto_1
    iput-boolean v12, v0, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;->isConfigured:Z

    if-eqz v2, :cond_7

    iget v12, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    :goto_2
    iput v12, v0, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;->networkId:I

    iput-object v9, v0, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;->ssid:Ljava/lang/String;

    iget v12, v0, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;->networkId:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_3

    iget v12, v0, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;->networkId:I

    if-eq v12, v4, :cond_4

    :cond_3
    iget v12, v0, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;->networkId:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_8

    if-eqz v11, :cond_8

    iget-object v12, v0, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v11}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->trimDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    :cond_4
    const/4 v12, 0x1

    :goto_3
    iput-boolean v12, v0, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;->isConnected:Z

    iget-boolean v12, v0, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;->isConnected:Z

    if-eqz v12, :cond_9

    iget-object v12, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    if-eqz v12, :cond_9

    :goto_4
    sget-object v12, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->ICONS:[I

    iget v13, v0, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;->level:I

    aget v12, v12, v13

    iput v12, v0, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;->iconId:I

    iget-object v12, v7, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v13, "WEP"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    iget-object v12, v7, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v13, "PSK"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    iget-object v12, v7, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v13, "EAP"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_a

    :cond_5
    const/4 v12, 0x1

    :goto_5
    iput-boolean v12, v0, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;->hasSecurity:Z

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    const/4 v12, 0x0

    goto :goto_1

    :cond_7
    const/4 v12, -0x1

    goto :goto_2

    :cond_8
    const/4 v12, 0x0

    goto :goto_3

    :cond_9
    iput v6, v0, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;->level:I

    goto :goto_4

    :cond_a
    const/4 v12, 0x0

    goto :goto_5

    :cond_b
    iget-object v12, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mByStrength:Ljava/util/Comparator;

    invoke-static {v1, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    new-array v12, v12, [Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;

    invoke-interface {v1, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;

    invoke-direct {p0, v12}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->fireAcccessPointsCallback([Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;)V

    return-void
.end method


# virtual methods
.method public addAccessPointCallback(Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "AccessPointController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addCallback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mReceiver:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$Receiver;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$Receiver;->setListening(Z)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public canConfigWifi()Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mUserManager:Landroid/os/UserManager;

    const-string v1, "no_config_wifi"

    new-instance v2, Landroid/os/UserHandle;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCurrentUser:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public connect(Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;)Z
    .locals 6

    const/4 v2, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v2

    :cond_0
    sget-boolean v3, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "AccessPointController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connect networkId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;->networkId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget v3, p1, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;->networkId:I

    if-gez v3, :cond_3

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;->hasSecurity:Z

    if-eqz v3, :cond_2

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.WIFI_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "wifi_start_connect_ssid"

    iget-object v3, p1, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->fireSettingsIntentCallback(Landroid/content/Intent;)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->set(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v3, v0, v4}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v4, p1, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;->networkId:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v3, v4, v5}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0
.end method

.method public onUserSwitched(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCurrentUser:I

    return-void
.end method

.method public removeAccessPointCallback(Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "AccessPointController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeCallback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mReceiver:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$Receiver;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$Receiver;->setListening(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public scanForAccessPoints()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mScanning:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "AccessPointController"

    const-string v1, "scan!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mScanning:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->updateAccessPoints()V

    goto :goto_0
.end method

.method setNetworkController(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    return-void
.end method
