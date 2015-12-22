.class public Lcom/android/server/LSManager;
.super Landroid/os/storage/sensitive/SDServiceAPI$Stub;
.source "LSManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LSManager$SetPasswordInThread;,
        Lcom/android/server/LSManager$SetLockedInThread;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DKEK_PATH_NAME:Ljava/lang/String; = "ss_lsm.d"

.field private static final FLAG_SIZE:I = 0x4

.field private static final ID_LENGTH:I = 0x24

.field private static final KEYPAIR_PATH_NAME:Ljava/lang/String; = "ss_lsm.k"

.field private static final KEY_STORE_DIR:Ljava/lang/String; = "/efs/"

.field private static final LOCK_EVENT_DELAY:I = 0x309

.field private static final PSPACER_LEN:I = 0x40

.field private static final SET_STATE_LOCKED:I = 0x1

.field private static final SET_STATE_NOT_LOCKED:I = 0x0

.field private static final SS_AUTH_TAG_LEN:I = 0x10

.field private static final SS_IV_LEN:I = 0xc

.field private static final UINT32_T_SIZE:I = 0x4

.field private static lockedState:Z

.field private static final mDefaultPassword:[B

.field private static passwordProtected:Z

.field private static passwordReady:Z

.field private static ready:Z

.field private static secureStorageLSM:Landroid/os/storage/sensitive/SecureStorageLSM;

.field private static setLockedExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static setPasswordExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field private TAG:Ljava/lang/String;

.field private askeypair:[B

.field private dkek:[B

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mProvider:Landroid/os/storage/sensitive/SensitiveDataProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/LSManager;->ready:Z

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move v3, v2

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v1, Lcom/android/server/LSManager;->setPasswordExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move v3, v2

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v1, Lcom/android/server/LSManager;->setLockedExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    sput-boolean v0, Lcom/android/server/LSManager;->lockedState:Z

    sput-boolean v0, Lcom/android/server/LSManager;->passwordProtected:Z

    sput-boolean v0, Lcom/android/server/LSManager;->passwordReady:Z

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/LSManager;->mDefaultPassword:[B

    return-void

    :array_0
    .array-data 1
        -0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x3dt
        -0x58t
        -0x77t
        -0x6dt
        0x5at
        -0x4ft
        -0x5at
        -0x54t
        -0x19t
        0x58t
        0x21t
        0x2ft
        -0xdt
        0x6bt
        0x27t
        0x76t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x79t
        -0x59t
        0x4ft
        -0x12t
        -0x6et
        -0x49t
        -0x6ft
        0x48t
        -0x47t
        -0x3et
        0x66t
        0x10t
        0xct
        -0x25t
        0x3t
        -0x2t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Landroid/os/storage/sensitive/SDServiceAPI$Stub;-><init>()V

    iput-object v4, p0, Lcom/android/server/LSManager;->mContext:Landroid/content/Context;

    iput-object v4, p0, Lcom/android/server/LSManager;->mProvider:Landroid/os/storage/sensitive/SensitiveDataProvider;

    new-instance v0, Lcom/android/server/LSManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/LSManager$1;-><init>(Lcom/android/server/LSManager;)V

    iput-object v0, p0, Lcom/android/server/LSManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v0, "LSManager"

    iput-object v0, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/LSManager;->askeypair:[B

    iput-object v4, p0, Lcom/android/server/LSManager;->dkek:[B

    iget-object v0, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v1, "Start LSManager."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "LSManager constructor was started..."

    invoke-direct {p0, v0}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/LSManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/LSManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "Hey! mContext is null :("

    invoke-direct {p0, v0}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/LSManager;->lockLSM()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/storage/sensitive/SecureStorageLSM;->getInstance()Landroid/os/storage/sensitive/SecureStorageLSM;

    move-result-object v0

    sput-object v0, Lcom/android/server/LSManager;->secureStorageLSM:Landroid/os/storage/sensitive/SecureStorageLSM;

    const-string/jumbo v0, "lets try to initialize SS"

    invoke-direct {p0, v0}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/LSManager;->secureStorageLSM:Landroid/os/storage/sensitive/SecureStorageLSM;

    invoke-virtual {v0}, Landroid/os/storage/sensitive/SecureStorageLSM;->initialize()I

    move-result v0

    if-ne v0, v2, :cond_1

    invoke-direct {p0, v2}, Lcom/android/server/LSManager;->setReady(Z)V

    const-string v0, "SS is initialized"

    invoke-direct {p0, v0}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v1, "SS is ready!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/storage/sensitive/SensitiveDataProvider;

    iget-object v1, p0, Lcom/android/server/LSManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/os/storage/sensitive/SensitiveDataProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/LSManager;->mProvider:Landroid/os/storage/sensitive/SensitiveDataProvider;

    iget-object v0, p0, Lcom/android/server/LSManager;->mProvider:Landroid/os/storage/sensitive/SensitiveDataProvider;

    if-nez v0, :cond_2

    const-string v0, "Bad things happening, mProvider is null :("

    invoke-direct {p0, v0}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/LSManager;->lockLSM()V

    goto :goto_0

    :cond_1
    const-string v0, "SS initialization failed"

    invoke-direct {p0, v0}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v1, "SS is not ready at the beginning..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "ss_lsm.k"

    invoke-direct {p0, v0}, Lcom/android/server/LSManager;->readDataFromFile(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LSManager;->askeypair:[B

    const-string/jumbo v0, "ss_lsm.d"

    invoke-direct {p0, v0}, Lcom/android/server/LSManager;->readDataFromFile(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LSManager;->dkek:[B

    iget-object v0, p0, Lcom/android/server/LSManager;->askeypair:[B

    if-nez v0, :cond_3

    const-string v0, "askeypair is absent on startup."

    invoke-direct {p0, v0}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/android/server/LSManager;->dkek:[B

    if-nez v0, :cond_4

    const-string v0, "dkek is absent on startup."

    invoke-direct {p0, v0}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/android/server/LSManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/LSManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/server/LSManager;->setLocked()V

    const-string v0, "LSManager is constructed."

    invoke-direct {p0, v0}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/LSManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/LSManager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/LSManager;->passwordIsProtectedInKeyguardManager()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/LSManager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/LSManager;->isReady()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100()[B
    .locals 1

    sget-object v0, Lcom/android/server/LSManager;->mDefaultPassword:[B

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/LSManager;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/LSManager;->reEncryptSecretWithPassword([B)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/LSManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/LSManager;->setPasswordProtected(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/LSManager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/LSManager;->passwordIsReady()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/LSManager;)[B
    .locals 1

    iget-object v0, p0, Lcom/android/server/LSManager;->dkek:[B

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/LSManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/LSManager;->generateSecret()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/LSManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1

    sget-object v0, Lcom/android/server/LSManager;->setPasswordExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/LSManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/LSManager;->setLockedState(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/LSManager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/LSManager;->isLockedState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/LSManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/LSManager;->setPasswordReady(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/LSManager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/LSManager;->passwordIsProtected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/LSManager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/LSManager;->secretIsReady()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800()Landroid/os/storage/sensitive/SecureStorageLSM;
    .locals 1

    sget-object v0, Lcom/android/server/LSManager;->secureStorageLSM:Landroid/os/storage/sensitive/SecureStorageLSM;

    return-object v0
.end method

.method public static bs2l(Ljava/util/BitSet;)J
    .locals 6

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v4, 0x1

    shl-long/2addr v4, v0

    :goto_1
    add-long/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x0

    goto :goto_1

    :cond_1
    return-wide v2
.end method

.method private debugLog(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private debugLogBlob(Ljava/lang/String;[B)V
    .locals 0

    return-void
.end method

.method private decryptData(Landroid/os/storage/sensitive/SensitiveDataParcel;)[B
    .locals 14

    const/16 v13, 0x24

    const/4 v12, 0x0

    const/4 v7, 0x0

    const-string v9, "decryptData"

    invoke-direct {p0, v9}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/LSManager;->passwordIsProtected()Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "Decryption is not allowed."

    invoke-direct {p0, v9}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    :goto_0
    return-object v7

    :cond_0
    invoke-direct {p0}, Lcom/android/server/LSManager;->isLockedState()Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "Can not decrypt in locked state"

    invoke-direct {p0, v9}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v9, "Not locked, let\'s do it!"

    invoke-direct {p0, v9}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/storage/sensitive/SensitiveDataParcel;->getData()[B

    move-result-object v0

    const-string v1, ""

    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-direct {v2, v0, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "data :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v0

    int-to-long v10, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    const-string v5, ""

    :try_start_1
    new-instance v6, Ljava/lang/String;

    const/4 v9, 0x0

    const/16 v10, 0x24

    invoke-static {v0, v9, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-direct {v6, v9, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v6

    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "kid :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/android/server/LSManager;->reEncryptDataKey(Ljava/lang/String;)V

    :try_start_2
    iget-object v9, p0, Lcom/android/server/LSManager;->mProvider:Landroid/os/storage/sensitive/SensitiveDataProvider;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/os/storage/sensitive/SensitiveDataProvider;->open(I)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2

    iget-object v9, p0, Lcom/android/server/LSManager;->mProvider:Landroid/os/storage/sensitive/SensitiveDataProvider;

    invoke-virtual {p1}, Landroid/os/storage/sensitive/SensitiveDataParcel;->getClient()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v5}, Landroid/os/storage/sensitive/SensitiveDataProvider;->read(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    iget-object v9, p0, Lcom/android/server/LSManager;->mProvider:Landroid/os/storage/sensitive/SensitiveDataProvider;

    invoke-virtual {v9}, Landroid/os/storage/sensitive/SensitiveDataProvider;->close()V

    if-nez v4, :cond_2

    const-string/jumbo v9, "header is null :("

    invoke-direct {p0, v9}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v3

    iget-object v9, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v10, "Error: Unsupported encoding exception."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v3

    iget-object v9, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v10, "Error: Unsupported encoding exception."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    const-string v9, "Opening Android DB error..."

    invoke-direct {p0, v9}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    array-length v9, v0

    add-int/lit8 v9, v9, -0x24

    array-length v10, v4

    add-int/2addr v9, v10

    new-array v8, v9, [B

    array-length v9, v4

    add-int/lit8 v9, v9, -0x4

    invoke-static {v4, v12, v8, v12, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v9, v4

    add-int/lit8 v9, v9, -0x4

    array-length v10, v0

    add-int/lit8 v10, v10, -0x24

    invoke-static {v0, v13, v8, v9, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v9, v4

    add-int/lit8 v9, v9, -0x4

    array-length v10, v4

    add-int/lit8 v10, v10, -0x4

    array-length v11, v0

    add-int/2addr v10, v11

    add-int/lit8 v10, v10, -0x24

    const/4 v11, 0x4

    invoke-static {v4, v9, v8, v10, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    sget-object v9, Lcom/android/server/LSManager;->secureStorageLSM:Landroid/os/storage/sensitive/SecureStorageLSM;

    invoke-virtual {v9, v8}, Landroid/os/storage/sensitive/SecureStorageLSM;->decrypt([B)[B

    move-result-object v7

    goto/16 :goto_0
.end method

.method private encryptData(Landroid/os/storage/sensitive/SensitiveDataParcel;)[B
    .locals 21

    const-string v3, "encryptData"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/LSManager;->passwordIsProtected()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/LSManager;->passwordIsProtectedInKeyguardManager()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "Encryption is not allowed."

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    const/16 v19, 0x0

    :goto_0
    return-object v19

    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v15

    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {v15}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    :goto_1
    new-instance v13, Ljava/util/BitSet;

    const/16 v3, 0x20

    invoke-direct {v13, v3}, Ljava/util/BitSet;-><init>(I)V

    const/16 v16, 0x0

    const-string v3, "Checking parcel..."

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    if-nez p1, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v4, "Parcel is null "

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x0

    goto :goto_0

    :catch_0
    move-exception v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v4, "Error: Unsupported encoding exception."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/storage/sensitive/SensitiveDataParcel;->getData()[B

    move-result-object v3

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v4, "Parcel.getData() is null "

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x0

    goto :goto_0

    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/LSManager;->isLockedState()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Ljava/util/BitSet;->set(I)V

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/LSManager;->askeypair:[B

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v20

    move/from16 v0, v20

    new-array v3, v0, [B

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/16 v3, 0xc

    new-array v3, v3, [B

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/16 v3, 0x10

    new-array v3, v3, [B

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v20

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v17

    move/from16 v0, v20

    new-array v3, v0, [B

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-object/from16 v0, v18

    array-length v3, v0

    add-int/lit8 v3, v3, 0xc

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const-string v3, "bb.put(public_key)"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const-string/jumbo v3, "lockedState - encrypted = secureStorageLSM.encrypt"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    sget-object v3, Lcom/android/server/LSManager;->secureStorageLSM:Landroid/os/storage/sensitive/SecureStorageLSM;

    invoke-virtual/range {p1 .. p1}, Landroid/os/storage/sensitive/SensitiveDataParcel;->getData()[B

    move-result-object v4

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v3, v4, v5, v0}, Landroid/os/storage/sensitive/SecureStorageLSM;->encrypt([B[BI)[B

    move-result-object v12

    :goto_2
    if-nez v12, :cond_4

    const-string v3, "Encryption error..."

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    const/16 v19, 0x0

    goto/16 :goto_0

    :cond_3
    const-string v3, "encrypted = secureStorageLSM.encrypt"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    sget-object v3, Lcom/android/server/LSManager;->secureStorageLSM:Landroid/os/storage/sensitive/SecureStorageLSM;

    invoke-virtual/range {p1 .. p1}, Landroid/os/storage/sensitive/SensitiveDataParcel;->getData()[B

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [B

    move/from16 v0, v16

    invoke-virtual {v3, v4, v5, v0}, Landroid/os/storage/sensitive/SecureStorageLSM;->encrypt([B[BI)[B

    move-result-object v12

    goto :goto_2

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "size of encrypted is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v12

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    const-string v3, "encrypted "

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v12}, Lcom/android/server/LSManager;->debugLogBlob(Ljava/lang/String;[B)V

    invoke-static {v12}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v11

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v11, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    shr-int/lit8 v14, v3, 0x10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Header size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    add-int/lit8 v3, v14, 0x4

    new-array v8, v3, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v12, v3, v8, v4, v14}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v3, v12

    add-int/lit8 v3, v3, -0x4

    const/4 v4, 0x4

    invoke-static {v12, v3, v8, v14, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/LSManager;->mProvider:Landroid/os/storage/sensitive/SensitiveDataProvider;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/storage/sensitive/SensitiveDataProvider;->open(I)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/LSManager;->mProvider:Landroid/os/storage/sensitive/SensitiveDataProvider;

    invoke-virtual/range {p1 .. p1}, Landroid/os/storage/sensitive/SensitiveDataParcel;->getClient()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13}, Lcom/android/server/LSManager;->bs2l(Ljava/util/BitSet;)J

    move-result-wide v6

    invoke-virtual/range {v3 .. v8}, Landroid/os/storage/sensitive/SensitiveDataProvider;->write(Ljava/lang/String;Ljava/lang/String;J[B)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/LSManager;->mProvider:Landroid/os/storage/sensitive/SensitiveDataProvider;

    invoke-virtual {v3}, Landroid/os/storage/sensitive/SensitiveDataProvider;->close()V

    array-length v3, v12

    add-int/lit8 v4, v14, 0x4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x24

    new-array v0, v3, [B

    move-object/from16 v19, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeData :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v15}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x24

    move-object/from16 v0, v19

    invoke-static {v9, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/16 v3, 0x24

    array-length v4, v12

    add-int/lit8 v5, v14, 0x4

    sub-int/2addr v4, v5

    move-object/from16 v0, v19

    invoke-static {v12, v14, v0, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto/16 :goto_0

    :catch_1
    move-exception v10

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    const-string v3, "Opening Android DB error..."

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    const/16 v19, 0x0

    goto/16 :goto_0
.end method

.method private generateSecret()V
    .locals 10

    const/4 v9, 0x0

    const-string/jumbo v6, "gen_keypair NATIVE"

    invoke-direct {p0, v6}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    sget-object v6, Lcom/android/server/LSManager;->secureStorageLSM:Landroid/os/storage/sensitive/SecureStorageLSM;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/os/storage/sensitive/SecureStorageLSM;->gen_keypair([B)[B

    move-result-object v4

    if-nez v4, :cond_0

    const-string/jumbo v6, "gen_keypair failed :( ..."

    invoke-direct {p0, v6}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/LSManager;->lockLSM()V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v6, "rezult"

    invoke-direct {p0, v6, v4}, Lcom/android/server/LSManager;->debugLogBlob(Ljava/lang/String;[B)V

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "rezult.length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bb.capacity: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "wks: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    new-array v6, v5, [B

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/16 v6, 0xc

    new-array v6, v6, [B

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/16 v6, 0x10

    new-array v6, v6, [B

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "priv_len: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "pub_len: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    new-array v6, v2, [B

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-array v6, v3, [B

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dkek_len: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    new-array v6, v1, [B

    iput-object v6, p0, Lcom/android/server/LSManager;->dkek:[B

    iget-object v6, p0, Lcom/android/server/LSManager;->dkek:[B

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const-string v6, "dkek"

    iget-object v7, p0, Lcom/android/server/LSManager;->dkek:[B

    invoke-direct {p0, v6, v7}, Lcom/android/server/LSManager;->debugLogBlob(Ljava/lang/String;[B)V

    array-length v6, v4

    iget-object v7, p0, Lcom/android/server/LSManager;->dkek:[B

    array-length v7, v7

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x4

    new-array v6, v6, [B

    iput-object v6, p0, Lcom/android/server/LSManager;->askeypair:[B

    iget-object v6, p0, Lcom/android/server/LSManager;->askeypair:[B

    array-length v7, v4

    iget-object v8, p0, Lcom/android/server/LSManager;->dkek:[B

    array-length v8, v8

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x4

    invoke-static {v4, v9, v6, v9, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    const-string v6, "askeypair"

    iget-object v7, p0, Lcom/android/server/LSManager;->askeypair:[B

    invoke-direct {p0, v6, v7}, Lcom/android/server/LSManager;->debugLogBlob(Ljava/lang/String;[B)V

    invoke-direct {p0}, Lcom/android/server/LSManager;->updateKeypairAndDKEK()V

    goto/16 :goto_0
.end method

.method private isLockedState()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/LSManager;->lockedState:Z

    return v0
.end method

.method private isReady()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/LSManager;->ready:Z

    return v0
.end method

.method public static l2bs(J)Ljava/util/BitSet;
    .locals 6

    const-wide/16 v4, 0x0

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    const/4 v1, 0x0

    :goto_0
    cmp-long v2, p0, v4

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x2

    rem-long v2, p0, v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    ushr-long/2addr p0, v2

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private lockLSM()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "Locking LSM, sory :/"

    invoke-direct {p0, v0}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/android/server/LSManager;->setReady(Z)V

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/android/server/LSManager;->dkek:[B

    return-void
.end method

.method private passwordIsProtected()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/LSManager;->passwordProtected:Z

    return v0
.end method

.method private passwordIsProtectedInKeyguardManager()Z
    .locals 4

    const/4 v1, 0x1

    const-string v2, "Let\'s check if passwordIsProtected.."

    invoke-direct {p0, v2}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/LSManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Is password protected."

    invoke-direct {p0, v2}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/android/server/LSManager;->setPasswordProtected(Z)V

    invoke-direct {p0}, Lcom/android/server/LSManager;->isLockedState()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/LSManager;->setLocked()V

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private passwordIsReady()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/LSManager;->passwordReady:Z

    return v0
.end method

.method private reEncryptDataKey(Ljava/lang/String;)V
    .locals 10

    const-string v7, "Reencrypt start"

    invoke-direct {p0, v7}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/LSManager;->askeypair:[B

    if-nez v7, :cond_1

    const-string v7, "askeypair is null."

    invoke-direct {p0, v7}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x0

    new-instance v2, Ljava/util/BitSet;

    const/16 v7, 0x20

    invoke-direct {v2, v7}, Ljava/util/BitSet;-><init>(I)V

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Ljava/util/BitSet;->set(I)V

    if-nez p1, :cond_3

    :goto_1
    if-eqz v3, :cond_2

    array-length v7, v3

    if-nez v7, :cond_4

    :cond_2
    const-string v7, "Have nothing to re_encrypt."

    invoke-direct {p0, v7}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :try_start_0
    iget-object v7, p0, Lcom/android/server/LSManager;->mProvider:Landroid/os/storage/sensitive/SensitiveDataProvider;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/os/storage/sensitive/SensitiveDataProvider;->open(I)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v7, p0, Lcom/android/server/LSManager;->mProvider:Landroid/os/storage/sensitive/SensitiveDataProvider;

    invoke-static {v2}, Lcom/android/server/LSManager;->bs2l(Ljava/util/BitSet;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9, p1}, Landroid/os/storage/sensitive/SensitiveDataProvider;->get_keys_by_flag_and_uuid(JLjava/lang/String;)[B

    move-result-object v3

    iget-object v7, p0, Lcom/android/server/LSManager;->mProvider:Landroid/os/storage/sensitive/SensitiveDataProvider;

    invoke-virtual {v7}, Landroid/os/storage/sensitive/SensitiveDataProvider;->close()V

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    const-string v7, "Opening Android DB error..."

    invoke-direct {p0, v7}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v7, p0, Lcom/android/server/LSManager;->askeypair:[B

    array-length v7, v7

    add-int/lit8 v7, v7, 0x40

    array-length v8, v3

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0xa

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/16 v7, 0x40

    new-array v7, v7, [B

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v7, p0, Lcom/android/server/LSManager;->askeypair:[B

    array-length v7, v7

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v7, p0, Lcom/android/server/LSManager;->askeypair:[B

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const-string v7, "Go to TZ"

    invoke-direct {p0, v7}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bb size: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    const-string v7, "askeypair and key set (sending to TZ)"

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/server/LSManager;->debugLogBlob(Ljava/lang/String;[B)V

    sget-object v7, Lcom/android/server/LSManager;->secureStorageLSM:Landroid/os/storage/sensitive/SecureStorageLSM;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/storage/sensitive/SecureStorageLSM;->keys_re_encrypt([B)[B

    move-result-object v6

    if-eqz v6, :cond_0

    const-string/jumbo v7, "rezult : "

    invoke-direct {p0, v7, v6}, Lcom/android/server/LSManager;->debugLogBlob(Ljava/lang/String;[B)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    const-string v7, "Update."

    invoke-direct {p0, v7}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bb size after wrap: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Keylen: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    new-array v7, v4, [B

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    array-length v7, v3

    if-eqz v7, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    new-array v5, v7, [B

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Keys size : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v5

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    :try_start_1
    iget-object v7, p0, Lcom/android/server/LSManager;->mProvider:Landroid/os/storage/sensitive/SensitiveDataProvider;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/os/storage/sensitive/SensitiveDataProvider;->open(I)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v7, p0, Lcom/android/server/LSManager;->mProvider:Landroid/os/storage/sensitive/SensitiveDataProvider;

    invoke-virtual {v7, v5}, Landroid/os/storage/sensitive/SensitiveDataProvider;->update_keys([B)V

    iget-object v7, p0, Lcom/android/server/LSManager;->mProvider:Landroid/os/storage/sensitive/SensitiveDataProvider;

    invoke-virtual {v7}, Landroid/os/storage/sensitive/SensitiveDataProvider;->close()V

    goto/16 :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    const-string v7, "Opening Android DB error..."

    invoke-direct {p0, v7}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private reEncryptSecretWithPassword([B)V
    .locals 9

    const/16 v8, 0x40

    const/4 v7, 0x0

    const-string v6, "Re_encrypt asympair and dkek!"

    invoke-direct {p0, v6}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/LSManager;->secretIsReady()Z

    move-result v6

    if-nez v6, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v6, p0, Lcom/android/server/LSManager;->askeypair:[B

    array-length v6, v6

    add-int/lit8 v6, v6, 0x40

    add-int/lit8 v6, v6, 0xa

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    new-array v3, v8, [B

    array-length v4, p1

    if-le v4, v8, :cond_1

    const/16 v4, 0x40

    :cond_1
    invoke-static {p1, v7, v3, v7, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-static {v3, v7}, Ljava/util/Arrays;->fill([BB)V

    iget-object v6, p0, Lcom/android/server/LSManager;->askeypair:[B

    array-length v6, v6

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v6, p0, Lcom/android/server/LSManager;->askeypair:[B

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bb size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    const-string v6, "Go to TZ"

    invoke-direct {p0, v6}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    sget-object v6, Lcom/android/server/LSManager;->secureStorageLSM:Landroid/os/storage/sensitive/SecureStorageLSM;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/storage/sensitive/SecureStorageLSM;->dkek_re_encrypt([B)[B

    move-result-object v5

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    new-array v6, v1, [B

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    if-nez v5, :cond_2

    const-string v6, "dkek_re_encrypt failed :( ..."

    invoke-direct {p0, v6}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    const-string v6, "Update."

    invoke-direct {p0, v6}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bb size after wrap: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Keylen: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/LSManager;->askeypair:[B

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const-string/jumbo v6, "re-encrypted askeypair"

    iget-object v7, p0, Lcom/android/server/LSManager;->askeypair:[B

    invoke-direct {p0, v6, v7}, Lcom/android/server/LSManager;->debugLogBlob(Ljava/lang/String;[B)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DKEKlen: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/LSManager;->dkek:[B

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const-string/jumbo v6, "re-encrypted dkek"

    iget-object v7, p0, Lcom/android/server/LSManager;->dkek:[B

    invoke-direct {p0, v6, v7}, Lcom/android/server/LSManager;->debugLogBlob(Ljava/lang/String;[B)V

    invoke-direct {p0}, Lcom/android/server/LSManager;->updateKeypairAndDKEK()V

    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/android/server/LSManager;->setPasswordReady(Z)V

    goto/16 :goto_0
.end method

.method private readDataFromFile(Ljava/lang/String;)[B
    .locals 9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "readData from /efs/ for file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    const-string v6, "/efs/"

    invoke-direct {v4, v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v6

    new-array v0, v6, [B

    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    if-nez v5, :cond_0

    const/4 v0, 0x0

    :cond_0
    if-eqz v3, :cond_1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    const-string v6, "Nothing to return :|"

    invoke-direct {p0, v6}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    :cond_2
    move-object v6, v0

    :cond_3
    :goto_1
    return-object v6

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_2
    :try_start_3
    iget-object v6, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " file open error."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v6, 0x0

    if-eqz v2, :cond_3

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v1

    :goto_3
    :try_start_5
    iget-object v6, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " file read error."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v2, :cond_1

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v2, :cond_4

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_4
    :goto_5
    throw v6

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catchall_1
    move-exception v6

    move-object v2, v3

    goto :goto_4

    :catch_6
    move-exception v1

    move-object v2, v3

    goto :goto_3

    :catch_7
    move-exception v1

    move-object v2, v3

    goto :goto_2
.end method

.method private secretIsReady()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/LSManager;->dkek:[B

    if-nez v1, :cond_2

    const-string v1, "dkek is null"

    invoke-direct {p0, v1}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/LSManager;->askeypair:[B

    if-nez v1, :cond_3

    const-string v1, "askeypair is null"

    invoke-direct {p0, v1}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    :goto_1
    return v0

    :cond_2
    iget-object v1, p0, Lcom/android/server/LSManager;->dkek:[B

    array-length v1, v1

    if-nez v1, :cond_0

    const-string v1, "dkek.length is 0"

    invoke-direct {p0, v1}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/server/LSManager;->askeypair:[B

    array-length v1, v1

    if-nez v1, :cond_1

    const-string v1, "askeypair.length is 0"

    invoke-direct {p0, v1}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setLockedState(Z)V
    .locals 0

    sput-boolean p1, Lcom/android/server/LSManager;->lockedState:Z

    return-void
.end method

.method private setPasswordProtected(Z)V
    .locals 0

    sput-boolean p1, Lcom/android/server/LSManager;->passwordProtected:Z

    return-void
.end method

.method private setPasswordReady(Z)V
    .locals 0

    sput-boolean p1, Lcom/android/server/LSManager;->passwordReady:Z

    return-void
.end method

.method private setReady(Z)V
    .locals 0

    sput-boolean p1, Lcom/android/server/LSManager;->ready:Z

    return-void
.end method

.method private updateDataInFile(Ljava/lang/String;[B)V
    .locals 7

    new-instance v3, Ljava/io/File;

    const-string v4, "/efs/"

    invoke-direct {v3, v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_1
    :try_start_3
    iget-object v4, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " file open error."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    :goto_2
    :try_start_5
    iget-object v4, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " file write error."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_0

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v1, :cond_1

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_1
    :goto_4
    throw v4

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catchall_1
    move-exception v4

    move-object v1, v2

    goto :goto_3

    :catch_6
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catch_7
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :cond_2
    move-object v1, v2

    goto :goto_0
.end method

.method private updateKeypairAndDKEK()V
    .locals 2

    const-string/jumbo v0, "update_keypair"

    invoke-direct {p0, v0}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    const-string/jumbo v0, "ss_lsm.k"

    iget-object v1, p0, Lcom/android/server/LSManager;->askeypair:[B

    invoke-direct {p0, v0, v1}, Lcom/android/server/LSManager;->updateDataInFile(Ljava/lang/String;[B)V

    const-string/jumbo v0, "update_dkek"

    invoke-direct {p0, v0}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    const-string/jumbo v0, "ss_lsm.d"

    iget-object v1, p0, Lcom/android/server/LSManager;->dkek:[B

    invoke-direct {p0, v0, v1}, Lcom/android/server/LSManager;->updateDataInFile(Ljava/lang/String;[B)V

    return-void
.end method


# virtual methods
.method public processParcel(Landroid/os/storage/sensitive/SensitiveDataParcel;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v1, "processParcel"

    invoke-direct {p0, v1}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/LSManager;->setPasswordExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v1

    if-gtz v1, :cond_0

    sget-object v1, Lcom/android/server/LSManager;->setLockedExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v1

    if-lez v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v2, "Busy..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/LSManager;->isReady()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p1, :cond_1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/os/storage/sensitive/SensitiveDataParcel;->getOperation()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/LSManager;->encryptData(Landroid/os/storage/sensitive/SensitiveDataParcel;)[B

    move-result-object v0

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/server/LSManager;->decryptData(Landroid/os/storage/sensitive/SensitiveDataParcel;)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v2, "Secure Storage not accesible. SensitiveData API disabled."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setLocked()V
    .locals 3

    const-string v0, "Set Locked."

    invoke-direct {p0, v0}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/LSManager;->setLockedExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/android/server/LSManager$SetLockedInThread;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/LSManager$SetLockedInThread;-><init>(Lcom/android/server/LSManager;Lcom/android/server/LSManager$1;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setPassword([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "setPassword"

    invoke-direct {p0, v0}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/LSManager;->setPasswordExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/android/server/LSManager$SetPasswordInThread;

    invoke-direct {v1, p0, p1}, Lcom/android/server/LSManager$SetPasswordInThread;-><init>(Lcom/android/server/LSManager;[B)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public systemReady()V
    .locals 1

    const-string v0, "Do something JNI related here."

    invoke-direct {p0, v0}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    return-void
.end method
