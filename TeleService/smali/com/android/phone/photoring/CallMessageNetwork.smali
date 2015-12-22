.class public final Lcom/android/phone/photoring/CallMessageNetwork;
.super Ljava/lang/Object;
.source "CallMessageNetwork.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/photoring/CallMessageNetwork$9;,
        Lcom/android/phone/photoring/CallMessageNetwork$DownloadThread;
    }
.end annotation


# static fields
.field private static sMe:Lcom/android/phone/photoring/CallMessageNetwork;


# instance fields
.field private downThread:Ljava/lang/Thread;

.field private mContext:Landroid/content/Context;

.field private final mHttpResponseHandler:Landroid/os/Handler;

.field private mListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/photoring/ICallMessageNetworkListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/photoring/CallMessageNetwork;->sMe:Lcom/android/phone/photoring/CallMessageNetwork;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/photoring/CallMessageNetwork;->downThread:Ljava/lang/Thread;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/photoring/CallMessageNetwork;->mListenerList:Ljava/util/List;

    new-instance v0, Lcom/android/phone/photoring/CallMessageNetwork$1;

    invoke-direct {v0, p0}, Lcom/android/phone/photoring/CallMessageNetwork$1;-><init>(Lcom/android/phone/photoring/CallMessageNetwork;)V

    iput-object v0, p0, Lcom/android/phone/photoring/CallMessageNetwork;->mHttpResponseHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/phone/photoring/CallMessageNetwork;->mContext:Landroid/content/Context;

    return-void
.end method

.method private AES256_Decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1    # Ljava/lang/String;

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/android/phone/photoring/http/AES256Cipher;->decrypt(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AES256_Decrypt] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/photoring/CallMessageNetwork;->englog(Ljava/lang/String;)V

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private AES256_Encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1    # Ljava/lang/String;

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/android/phone/photoring/http/AES256Cipher;->encrypt(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AES256_Encrypt] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/photoring/CallMessageNetwork;->englog(Ljava/lang/String;)V

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/phone/photoring/CallMessageNetwork;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/android/phone/photoring/CallMessageNetwork;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/phone/photoring/CallMessageNetwork;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/photoring/CallMessageNetwork;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/phone/photoring/CallMessageNetwork;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/phone/photoring/CallMessageNetwork;->AES256_Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/photoring/CallMessageNetwork;)Ljava/util/List;
    .locals 1
    .param p0    # Lcom/android/phone/photoring/CallMessageNetwork;

    iget-object v0, p0, Lcom/android/phone/photoring/CallMessageNetwork;->mListenerList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/photoring/CallMessageNetwork;Ljava/util/LinkedHashMap;)V
    .locals 0
    .param p0    # Lcom/android/phone/photoring/CallMessageNetwork;
    .param p1    # Ljava/util/LinkedHashMap;

    invoke-direct {p0, p1}, Lcom/android/phone/photoring/CallMessageNetwork;->getBaseParameters(Ljava/util/LinkedHashMap;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/photoring/CallMessageNetwork;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/phone/photoring/CallMessageNetwork;

    iget-object v0, p0, Lcom/android/phone/photoring/CallMessageNetwork;->mHttpResponseHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/photoring/CallMessageNetwork;Ljava/lang/String;)Z
    .locals 1
    .param p0    # Lcom/android/phone/photoring/CallMessageNetwork;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/phone/photoring/CallMessageNetwork;->isVideoContent(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/phone/photoring/CallMessageNetwork;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/phone/photoring/CallMessageNetwork;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/phone/photoring/CallMessageNetwork;->AES256_Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/photoring/CallMessageNetwork;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/phone/photoring/CallMessageNetwork;

    invoke-direct {p0}, Lcom/android/phone/photoring/CallMessageNetwork;->getUserCTN()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private englog(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/phone/photoring/CallMessageNetwork;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private getBaseParameters(Ljava/util/LinkedHashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/phone/photoring/CallMessageNetwork;->getUserCTN()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "user_ctn"

    invoke-direct {p0, v0}, Lcom/android/phone/photoring/CallMessageNetwork;->AES256_Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v1, "user_device_id"

    invoke-direct {p0}, Lcom/android/phone/photoring/CallMessageNetwork;->getDeviceID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/photoring/CallMessageNetwork;->AES256_Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "user_device_type"

    const-string v2, "A"

    invoke-virtual {p1, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "app_type"

    const-string v2, "OEM"

    invoke-virtual {p1, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "device_model"

    invoke-direct {p0}, Lcom/android/phone/photoring/CallMessageNetwork;->getDeviceModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private getDeviceID()Ljava/lang/String;
    .locals 12

    iget-object v6, p0, Lcom/android/phone/photoring/CallMessageNetwork;->mContext:Landroid/content/Context;

    const-string v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/photoring/CallMessageNetwork;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "android_id"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v8

    int-to-long v8, v8

    const/16 v10, 0x20

    shl-long/2addr v8, v10

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v10

    int-to-long v10, v10

    or-long/2addr v8, v10

    invoke-direct {v1, v6, v7, v8, v9}, Ljava/util/UUID;-><init>(JJ)V

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDeviceID : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/photoring/CallMessageNetwork;->englog(Ljava/lang/String;)V

    return-object v2
.end method

.method private getDeviceModel()Ljava/lang/String;
    .locals 3

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDeviceModel : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/photoring/CallMessageNetwork;->englog(Ljava/lang/String;)V

    return-object v0
.end method

.method private getUserCTN()Ljava/lang/String;
    .locals 6

    const/4 v5, 0x3

    const/4 v0, 0x3

    iget-object v3, p0, Lcom/android/phone/photoring/CallMessageNetwork;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "+82"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "+82"

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUserCTN : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/photoring/CallMessageNetwork;->englog(Ljava/lang/String;)V

    return-object v2
.end method

.method static init(Landroid/content/Context;)Lcom/android/phone/photoring/CallMessageNetwork;
    .locals 4
    .param p0    # Landroid/content/Context;

    const-class v1, Lcom/android/phone/photoring/CallMessageNetwork;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/phone/photoring/CallMessageNetwork;->sMe:Lcom/android/phone/photoring/CallMessageNetwork;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/photoring/CallMessageNetwork;

    invoke-direct {v0, p0}, Lcom/android/phone/photoring/CallMessageNetwork;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/phone/photoring/CallMessageNetwork;->sMe:Lcom/android/phone/photoring/CallMessageNetwork;

    :goto_0
    sget-object v0, Lcom/android/phone/photoring/CallMessageNetwork;->sMe:Lcom/android/phone/photoring/CallMessageNetwork;

    monitor-exit v1

    return-object v0

    :cond_0
    const-string v0, "CallMessageNetwork"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/photoring/CallMessageNetwork;->sMe:Lcom/android/phone/photoring/CallMessageNetwork;

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

.method private isVideoContent(Ljava/lang/String;)Z
    .locals 5
    .param p1    # Ljava/lang/String;

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move v3, v2

    :goto_0
    return v3

    :cond_0
    const/16 v4, 0x2e

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "mp4"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "avi"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "mkv"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "3pg"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    move v3, v2

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    const-string v0, "CallMessageNetwork"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public deregisterCallMessageNetworkListener(Lcom/android/phone/photoring/ICallMessageNetworkListener;)V
    .locals 1
    .param p1    # Lcom/android/phone/photoring/ICallMessageNetworkListener;

    iget-object v0, p0, Lcom/android/phone/photoring/CallMessageNetwork;->mListenerList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/photoring/CallMessageNetwork;->mListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/photoring/CallMessageNetwork;->mListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public downloadContent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/phone/photoring/CallMessageNetwork;->interruptDownload()V

    new-instance v0, Lcom/android/phone/photoring/CallMessageNetwork$DownloadThread;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/phone/photoring/CallMessageNetwork$DownloadThread;-><init>(Lcom/android/phone/photoring/CallMessageNetwork;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/photoring/CallMessageNetwork;->downThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/phone/photoring/CallMessageNetwork;->downThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public getAlertInfo()Ljava/lang/String;
    .locals 8

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/phone/photoring/PhotoringUtil;->getContentUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "isB2C=0"

    invoke-static {}, Lcom/android/phone/photoring/PhotoringUtil;->getChgUrl()Ljava/lang/String;

    move-result-object v0

    const-string v5, "service_type=1"

    const-string v3, "downloadable=1"

    const-string v6, "chg_url=\"%s\""

    const-string v7, "%s"

    if-eqz v0, :cond_1

    :goto_0
    invoke-virtual {v6, v7, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getAlertInfo: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/photoring/CallMessageNetwork;->englog(Ljava/lang/String;)V

    return-object v4

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getCallMessageCall(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    new-instance v0, Lcom/android/phone/photoring/CallMessageNetwork$5;

    invoke-direct {v0, p0, p1}, Lcom/android/phone/photoring/CallMessageNetwork$5;-><init>(Lcom/android/phone/photoring/CallMessageNetwork;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/phone/photoring/CallMessageNetwork$5;->start()V

    return-void
.end method

.method public getCallMessageChgCall()V
    .locals 1

    new-instance v0, Lcom/android/phone/photoring/CallMessageNetwork$7;

    invoke-direct {v0, p0}, Lcom/android/phone/photoring/CallMessageNetwork$7;-><init>(Lcom/android/phone/photoring/CallMessageNetwork;)V

    invoke-virtual {v0}, Lcom/android/phone/photoring/CallMessageNetwork$7;->start()V

    return-void
.end method

.method public getCallMessageChgCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;

    new-instance v0, Lcom/android/phone/photoring/CallMessageNetwork$6;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/phone/photoring/CallMessageNetwork$6;-><init>(Lcom/android/phone/photoring/CallMessageNetwork;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/phone/photoring/CallMessageNetwork$6;->start()V

    return-void
.end method

.method public getContentSpecCall()V
    .locals 1

    new-instance v0, Lcom/android/phone/photoring/CallMessageNetwork$2;

    invoke-direct {v0, p0}, Lcom/android/phone/photoring/CallMessageNetwork$2;-><init>(Lcom/android/phone/photoring/CallMessageNetwork;)V

    invoke-virtual {v0}, Lcom/android/phone/photoring/CallMessageNetwork$2;->start()V

    return-void
.end method

.method public interruptDownload()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/CallMessageNetwork;->downThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/photoring/CallMessageNetwork;->downThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "thread interrupt"

    invoke-direct {p0, v0}, Lcom/android/phone/photoring/CallMessageNetwork;->englog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/photoring/CallMessageNetwork;->downThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/photoring/CallMessageNetwork;->downThread:Ljava/lang/Thread;

    :cond_0
    return-void
.end method

.method public registerCallMessageNetworkListener(Lcom/android/phone/photoring/ICallMessageNetworkListener;)V
    .locals 1
    .param p1    # Lcom/android/phone/photoring/ICallMessageNetworkListener;

    iget-object v0, p0, Lcom/android/phone/photoring/CallMessageNetwork;->mListenerList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/photoring/CallMessageNetwork;->mListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/photoring/CallMessageNetwork;->mListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setRealtimeServiceInfoCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;

    new-instance v0, Lcom/android/phone/photoring/CallMessageNetwork$4;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/phone/photoring/CallMessageNetwork$4;-><init>(Lcom/android/phone/photoring/CallMessageNetwork;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/phone/photoring/CallMessageNetwork$4;->start()V

    return-void
.end method

.method public uploadContentCall(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    new-instance v0, Lcom/android/phone/photoring/CallMessageNetwork$3;

    invoke-direct {v0, p0, p1}, Lcom/android/phone/photoring/CallMessageNetwork$3;-><init>(Lcom/android/phone/photoring/CallMessageNetwork;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/phone/photoring/CallMessageNetwork$3;->start()V

    return-void
.end method
