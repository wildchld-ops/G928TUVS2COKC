.class public final Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;
.super Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;
.source "CoverAuthenticator.java"

# interfaces
.implements Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;
.implements Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$NfcRestrictionPolicyListener;
.implements Lcom/samsung/accessory/manager/authentication/CertBlacklister$CertBlacklistListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;,
        Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;
    }
.end annotation


# static fields
.field private static final ACCESSORY_MANAGER_PERMISSION:Ljava/lang/String; = "com.samsung.accessory.manager.permission.AUTHENTICATION_CONTROL"

.field private static final ACTION_AUTHENTICATION_RESULT:Ljava/lang/String; = "com.samsung.accessory.manager.action.AUTHENTICATION_RESULT"

.field private static final ACTION_AUTHENTICATION_START:Ljava/lang/String; = "com.samsung.accessory.manager.action.START_AUTHENTICATION"

.field private static final ACTION_AUTHENTICATION_STATE_REPLY:Ljava/lang/String; = "com.samsung.accessory.manager.action.AUTHENTICATION_STATE_REPLY"

.field private static final ACTION_AUTHENTICATION_STATE_REQUEST:Ljava/lang/String; = "com.samsung.accessory.manager.action.AUTHENTICATION_STATE_REQUEST"

.field private static final ACTION_NFC_SERVICE_STARTED:Ljava/lang/String; = "com.sec.android.nfc.AUTH_READY"

.field private static final AUTH_PREPARE_TIMEOUT:J = 0x6978L

.field private static final AUTH_SCHEDULE_INTERVAL:J = 0x44aa200L

.field private static final AUTH_TIMEOUT:J = 0x2710L

.field private static final CHARGING_AUTH_INTERVAL:J = 0x5265c00L

.field static final COVER_ATTACH:I = 0x1

.field static final COVER_DETACH:I = 0x0

.field static final COVER_NOT_SUPPORT:I = -0x1

.field private static final DBG:Z

.field private static final ERROR_RESTART_TIME_MS:I = 0xc8

.field private static final ERROR_RESTART_TIME_MS_TIMEOUT:I = 0x12c

.field private static final FUZZ_TIMES:I = 0xdbba00

.field private static final MAX_RETRY_WHEN_CONNECTIVITY_BUSY:I = 0x2

.field private static final MSG_AUTH_FORCE_UNVERIFY:I = 0x6

.field private static final MSG_AUTH_RESPONSE:I = 0x3

.field private static final MSG_AUTH_START:I = 0x2

.field private static final MSG_AUTH_STOP:I = 0x4

.field private static final MSG_AUTH_TIMEOUT:I = 0x5

.field private static final MSG_INITIALIZE:I = 0x1

.field private static final PowerConnected:I = 0x1

.field private static final PowerDisconnected:I = 0x0

.field private static final RUN_SCHEDULED_AUTH_ACTION:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static final TYPE_COVER_ATTACHED:I = 0x1

.field private static final TYPE_ON_FIRST_BOOT:I = 0x2

.field private static final TYPE_RESTRICTION_CHANGED:I = 0x4

.field private static final TYPE_SCHEDULED_WHEN_CHARGING:I = 0x3

.field private static USE_SCHEDULED_AUTHENTICATION:Z = false

.field private static USE_SCHEDULED_AUTHENTICATION_WEHN_CHARGING:Z = false

.field private static final VDBG:Z = true


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAuthAlarmSet:Z

.field private mAuthType:I

.field final mAuthenticationHistory:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

.field mBatteryStateReceiver:Landroid/content/BroadcastReceiver;

.field mBlacklister:Lcom/samsung/accessory/manager/authentication/CertBlacklister;

.field mBootCompleted:Z

.field private mContext:Landroid/content/Context;

.field mCoverAttachedWhenNanos:J

.field private mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

.field mCoverAuthStateFile:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

.field private mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

.field mCoverManager:Lcom/samsung/android/cover/ICoverManager;

.field private mCurrentPowerSouce:I

.field mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

.field mFactoryIntent:Landroid/content/Intent;

.field mFactoryReceiver:Landroid/content/BroadcastReceiver;

.field mFactoryTestRequested:Z

.field private final mInputManager:Lcom/android/server/input/InputManagerService;

.field mIsFactoryBinary:Z

.field volatile mIsShutingdown:Z

.field private mLastAttachTime:J

.field private volatile mLastAuthenticationTime:J

.field mLastCoverState:Lcom/samsung/android/cover/CoverState;

.field private mLastDetachTime:J

.field mNfcServiceReady:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field volatile mPreparing:Z

.field mRestrictionPolicyOberver:Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;

.field final mResult:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/samsung/accessory/manager/authentication/AuthenticationResult;",
            ">;"
        }
    .end annotation
.end field

.field private mRetryCounterWhenBusy:I

.field mRunAuthIntent:Landroid/app/PendingIntent;

.field private mSafetyDetachTimeoutWakeLock:Landroid/os/PowerManager$WakeLock;

.field mScheduledAuthReceiver:Landroid/content/BroadcastReceiver;

.field mSystemReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-class v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->DBG:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    invoke-virtual {v3}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".action.AUTHENTICATION_INTERVAL_ELAPSED"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->RUN_SCHEDULED_AUTH_ACTION:Ljava/lang/String;

    sput-boolean v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->USE_SCHEDULED_AUTHENTICATION:Z

    sput-boolean v2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->USE_SCHEDULED_AUTHENTICATION_WEHN_CHARGING:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;Landroid/os/Looper;Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;)V
    .locals 5

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;-><init>()V

    iput-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSystemReady:Z

    iput-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mNfcServiceReady:Z

    iput-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mBootCompleted:Z

    iput-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsShutingdown:Z

    iput-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPreparing:Z

    iput-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsFactoryBinary:Z

    iput-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryTestRequested:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthType:I

    iput v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentPowerSouce:I

    iput-wide v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastAuthenticationTime:J

    iput-wide v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastAttachTime:J

    iput-wide v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastDetachTime:J

    iput-wide v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAttachedWhenNanos:J

    iput v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRetryCounterWhenBusy:I

    iput-object v4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryIntent:Landroid/content/Intent;

    iput-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthAlarmSet:Z

    iput-object v4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastCoverState:Lcom/samsung/android/cover/CoverState;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mResult:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthenticationHistory:Ljava/util/LinkedList;

    iput-object v4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    new-instance v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$7;

    invoke-direct {v0, p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$7;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mScheduledAuthReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$8;

    invoke-direct {v0, p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$8;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mBatteryStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$11;

    invoke-direct {v0, p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$11;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mInputManager:Lcom/android/server/input/InputManagerService;

    iput-object p4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    new-instance v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    invoke-direct {v0, p0, p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->DBG:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->initialize()V

    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->handleAuthResponse(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->isAuthenticationBlocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->stopAuthentication(J)V

    return-void
.end method

.method static synthetic access$1400(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->handleAuthStart()V

    return-void
.end method

.method static synthetic access$1500(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->stopAuthAlarm()V

    return-void
.end method

.method static synthetic access$1600(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;ZZLcom/samsung/accessory/manager/authentication/cover/CoverInfo;Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->setCoverVerified(ZZLcom/samsung/accessory/manager/authentication/cover/CoverInfo;Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastAttachTime:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->getCoverSwitchState()I

    move-result v0

    return v0
.end method

.method static synthetic access$2000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->RUN_SCHEDULED_AUTH_ACTION:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastAuthenticationTime:J

    return-wide v0
.end method

.method static synthetic access$2102(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastAuthenticationTime:J

    return-wide p1
.end method

.method static synthetic access$2200()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->USE_SCHEDULED_AUTHENTICATION_WEHN_CHARGING:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)I
    .locals 1

    iget v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentPowerSouce:I

    return v0
.end method

.method static synthetic access$2302(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentPowerSouce:I

    return p1
.end method

.method static synthetic access$2700(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->sendFactoryResult()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;
    .locals 1

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->scheduleAuthenticationTimeOuts(J)V

    return-void
.end method

.method static synthetic access$602(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthType:I

    return p1
.end method

.method static synthetic access$702(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRetryCounterWhenBusy:I

    return p1
.end method

.method static synthetic access$800(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;ZJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->startAuthentication(ZJ)V

    return-void
.end method

.method private declared-synchronized getCoverManager()Lcom/samsung/android/cover/ICoverManager;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_0

    const-string v0, "cover"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cover/ICoverManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "warning: no COVER_MANAGER_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getCoverSwitchState()I
    .locals 4

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v1, -0x1

    const/16 v2, -0x100

    const/16 v3, 0x1b

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v0

    return v0
.end method

.method private handleAuthResponse(Landroid/os/Message;)V
    .locals 21

    sget-object v4, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "handleAuthResponse"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsFactoryBinary:Z

    if-nez v4, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->getCoverSwitchState()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_1

    sget-boolean v4, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->DBG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    const-string v5, "This is unlikely indicates that cover is detached while authenticating"

    invoke-static {v4, v5}, Landroid/util/Slog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mResult:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getResultBundle()Landroid/os/Bundle;

    move-result-object v11

    const-string/jumbo v4, "reason"

    invoke-virtual {v11, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->addRecord(I)V

    sget-object v4, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "auth reason = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsFactoryBinary:Z

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryTestRequested:Z

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryTestRequested:Z

    invoke-direct/range {p0 .. p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->sendFactoryResult()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-interface {v4, v5}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;->stop(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    :cond_2
    new-instance v12, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getExtraId()[B

    move-result-object v4

    invoke-direct {v12, v4}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;-><init>([B)V

    if-nez v10, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mBlacklister:Lcom/samsung/accessory/manager/authentication/CertBlacklister;

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getPublicKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->isThisKeyBlacklisted(Ljava/lang/String;)Z

    move-result v16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mBlacklister:Lcom/samsung/accessory/manager/authentication/CertBlacklister;

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getStringManagerURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->isThisKeyBlacklisted(Ljava/lang/String;)Z

    move-result v17

    invoke-virtual {v12}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->isValid()Z

    move-result v4

    if-eqz v4, :cond_5

    if-nez v16, :cond_5

    if-nez v17, :cond_5

    const/16 v20, 0x1

    :goto_1
    const/16 v18, 0x1

    :cond_3
    :goto_2
    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v13, v12, v2}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->setCoverVerified(ZZLcom/samsung/accessory/manager/authentication/cover/CoverInfo;Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->stopAuthentication(J)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    :cond_5
    sget-object v4, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Is ID valid ? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v12}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->isValid()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isKeyBlocked ? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isPackageBlocked? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    const/4 v4, 0x1

    if-ne v10, v4, :cond_7

    const/16 v18, 0x1

    goto :goto_2

    :cond_7
    const/16 v4, 0xb

    if-eq v10, v4, :cond_8

    const/16 v4, 0x1e

    if-ne v10, v4, :cond_9

    :cond_8
    sget-object v4, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    const-string v5, "do nothing.."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_9
    const/16 v4, 0x1f

    if-ne v10, v4, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->removeAuthenticationTimeOuts()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->removeMessages(I)V

    goto :goto_2

    :cond_a
    const/16 v4, 0xc

    if-ne v10, v4, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->removeAuthenticationTimeOuts()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->removeMessages(I)V

    const/16 v18, 0x1

    goto/16 :goto_2

    :cond_b
    const/16 v4, 0xd

    if-ne v10, v4, :cond_d

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRetryCounterWhenBusy:I

    const/4 v5, 0x2

    if-ge v4, v5, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRetryCounterWhenBusy:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRetryCounterWhenBusy:I

    const/4 v5, 0x1

    const-wide/16 v6, 0x2710

    const-wide/16 v8, 0x1388

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->startAuthentication(ZJJ)V

    goto/16 :goto_2

    :cond_c
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRetryCounterWhenBusy:I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->removeAuthenticationTimeOuts()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->removeMessages(I)V

    const/16 v18, 0x1

    goto/16 :goto_2

    :cond_d
    const/16 v4, 0x14

    if-eq v10, v4, :cond_e

    const/16 v4, 0x15

    if-eq v10, v4, :cond_e

    const/16 v4, 0x16

    if-eq v10, v4, :cond_e

    const/16 v4, 0x17

    if-eq v10, v4, :cond_e

    const/16 v4, 0x18

    if-eq v10, v4, :cond_e

    const/16 v4, 0x20

    if-eq v10, v4, :cond_e

    const/16 v4, 0xa

    if-eq v10, v4, :cond_e

    const/16 v4, 0x5a

    if-ne v10, v4, :cond_3

    :cond_e
    const/16 v4, 0x16

    if-eq v10, v4, :cond_f

    const/16 v4, 0xa

    if-ne v10, v4, :cond_10

    :cond_f
    const-wide/16 v14, 0x12c

    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v14, v15}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->startAuthentication(ZJ)V

    goto/16 :goto_2

    :cond_10
    const-wide/16 v14, 0xc8

    goto :goto_3
.end method

.method private handleAuthStart()V
    .locals 7

    const/4 v6, 0x7

    const/4 v5, 0x1

    sget-object v3, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "handleAuthStart"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-boolean v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsFactoryBinary:Z

    if-nez v3, :cond_1

    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->getCoverSwitchState()I

    move-result v3

    if-ge v3, v5, :cond_1

    sget-boolean v3, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->DBG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    const-string v4, "This is unlikely indicates that cover is detached while starting auth"

    invoke-static {v3, v4}, Landroid/util/Slog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-interface {v3, v4}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;->getSessionState(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)I

    move-result v2

    if-eq v2, v6, :cond_2

    if-eq v2, v5, :cond_2

    sget-object v3, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "session is busy"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    :cond_2
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-interface {v3, v4}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;->getSessionState(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)I

    move-result v3

    if-ne v3, v6, :cond_3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "connectivity_type"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iput-object p0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    invoke-interface {v3, v1, v5}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;->start(Landroid/os/Message;Z)V

    :goto_1
    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    invoke-interface {v3, v1, v5}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;->start(Landroid/os/Message;Z)V

    goto :goto_1
.end method

.method private initialize()V
    .locals 8

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    const-string v1, "Initialize cover authenticator"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsFactoryBinary:Z

    new-instance v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    invoke-direct {v0, p0, v5}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$1;)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthStateFile:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthStateFile:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->readFile()V

    new-instance v0, Lcom/samsung/accessory/manager/authentication/CertBlacklister;

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/accessory/manager/authentication/CertBlacklister;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mBlacklister:Lcom/samsung/accessory/manager/authentication/CertBlacklister;

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mBlacklister:Lcom/samsung/accessory/manager/authentication/CertBlacklister;

    invoke-virtual {v0, p0}, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->setCertBlacklistListener(Lcom/samsung/accessory/manager/authentication/CertBlacklister$CertBlacklistListener;)V

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mBlacklister:Lcom/samsung/accessory/manager/authentication/CertBlacklister;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->readFile()V

    new-instance v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRestrictionPolicyOberver:Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRestrictionPolicyOberver:Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;

    invoke-virtual {v0, p0}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->setNfcRestrictionPolicyListener(Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$NfcRestrictionPolicyListener;)V

    sget-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "nfc restriction policy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->isAuthenticatonAllowed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPowerManager:Landroid/os/PowerManager;

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPowerManager:Landroid/os/PowerManager;

    sget-object v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v7, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPowerManager:Landroid/os/PowerManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "DetachTimeoutWakeLock"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSafetyDetachTimeoutWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSafetyDetachTimeoutWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAlarmManager:Landroid/app/AlarmManager;

    sget-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->USE_SCHEDULED_AUTHENTICATION:Z

    if-eqz v0, :cond_1

    new-instance v6, Landroid/content/Intent;

    sget-object v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->RUN_SCHEDULED_AUTH_ACTION:Ljava/lang/String;

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {v6, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    invoke-static {v0, v4, v6, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRunAuthIntent:Landroid/app/PendingIntent;

    new-instance v3, Landroid/content/IntentFilter;

    sget-object v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->RUN_SCHEDULED_AUTH_ACTION:Ljava/lang/String;

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mScheduledAuthReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v4, "com.samsung.accessory.manager.permission.AUTHENTICATION_CONTROL"

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_1
    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "com.samsung.accessory.manager.action.AUTHENTICATION_STATE_REQUEST"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "com.samsung.accessory.manager.action.START_AUTHENTICATION"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v4, "com.samsung.accessory.manager.permission.AUTHENTICATION_CONTROL"

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$5;

    invoke-direct {v1, p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$5;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "com.sec.android.nfc.AUTH_READY"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$6;

    invoke-direct {v1, p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$6;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->registerBatteryReceiver()V

    iput-boolean v7, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSystemReady:Z

    return-void
.end method

.method private isAuthenticationBlocked()Z
    .locals 6

    const/4 v1, 0x0

    iget v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentPowerSouce:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->addRecord(I)V

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mBlacklister:Lcom/samsung/accessory/manager/authentication/CertBlacklister;

    invoke-virtual {v2}, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->isAuthenticationBlocked()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    sget-boolean v2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->DBG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    const-string v3, "Authentication is blocked"

    invoke-static {v2, v3}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->isAuthenticatonAllowed()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->getBlockedType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    :cond_3
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    new-instance v3, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$4;

    invoke-direct {v3, p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$4;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_1
    sget-boolean v2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->DBG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Authentication is blocked.. type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->setCoverVerifiedAlt()V

    goto :goto_1
.end method

.method private registerBatteryReceiver()V
    .locals 3

    iget-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsFactoryBinary:Z

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mBatteryStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private scheduleAuthenticationTimeOuts(J)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->removeAuthenticationTimeOuts()V

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private sendFactoryResult()V
    .locals 5

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryIntent:Landroid/content/Intent;

    if-nez v2, :cond_0

    sget-object v2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "factory intent is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mResult:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    if-eqz v1, :cond_4

    new-instance v0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;

    invoke-virtual {v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getExtraId()[B

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;-><init>([B)V

    invoke-virtual {v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getReason()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->isValid()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "OK"

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->getSn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->getCoverId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->setCoverResultForIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryIntent:Landroid/content/Intent;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getReason()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->isValid()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "NG_ID"

    const-string v3, ""

    const-string v4, ""

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->setCoverResultForIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getReason()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    const-string v2, "NG_KEY"

    const-string v3, ""

    const-string v4, ""

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->setCoverResultForIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v2, "NG_NFC"

    const-string v3, ""

    const-string v4, ""

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->setCoverResultForIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v2, "NG_NFC"

    const-string v3, ""

    const-string v4, ""

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->setCoverResultForIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setCoverResultForIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryIntent:Landroid/content/Intent;

    const-string/jumbo v2, "result_factory"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryIntent:Landroid/content/Intent;

    const-string/jumbo v2, "serial_factory"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryIntent:Landroid/content/Intent;

    const-string/jumbo v2, "id_factory"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->getCoverSwitchState()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    const-string v0, "OK"

    :goto_0
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryIntent:Landroid/content/Intent;

    const-string v2, "attachInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastAttachTime:J

    invoke-virtual {p0, v4, v5}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->getDateFromUTC(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryIntent:Landroid/content/Intent;

    const-string v2, "detachInfo"

    iget-wide v4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastDetachTime:J

    invoke-virtual {p0, v4, v5}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->getDateFromUTC(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void

    :cond_0
    const-string v0, "NG"

    goto :goto_0
.end method

.method private setCoverVerified(ZZLcom/samsung/accessory/manager/authentication/cover/CoverInfo;Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v3, -0x1

    const/4 v5, 0x1

    new-instance v0, Lcom/samsung/android/cover/CoverState;

    invoke-direct {v0}, Lcom/samsung/android/cover/CoverState;-><init>()V

    invoke-virtual {v0, p2}, Lcom/samsung/android/cover/CoverState;->setFakeCover(Z)V

    if-eqz p1, :cond_5

    invoke-virtual {v0, v5}, Lcom/samsung/android/cover/CoverState;->setAttachState(Z)V

    invoke-virtual {p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->getColor()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/cover/CoverState;->setColor(I)V

    invoke-virtual {p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->getModel()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/cover/CoverState;->setModel(I)V

    invoke-virtual {p4}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getStringManagerURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/cover/CoverState;->setSmartCoverAppUri(Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getByteArrayExtraData()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/cover/CoverState;->setSmartCoverCookie([B)V

    invoke-virtual {p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->getSmapp()I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->getType()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/cover/CoverState;->setType(I)V

    invoke-virtual {p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->getSn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/cover/CoverState;->setSerialNumber(Ljava/lang/String;)V

    :goto_0
    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastCoverState:Lcom/samsung/android/cover/CoverState;

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/input/InputManagerService;->setCoverVerify(I)V

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/PowerManager;->setCoverType(I)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->applyCoverVerifiedState(ZLcom/samsung/android/cover/CoverState;)Z

    iget v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthType:I

    if-eq v2, v5, :cond_0

    iget v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthType:I

    if-ne v2, v6, :cond_2

    :cond_0
    sget-boolean v2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->DBG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "coverInfo.getUrl: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->getUrl()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.applinker.REQUEST_LINK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->getUrl()I

    move-result v2

    if-ne v2, v5, :cond_4

    const-string v2, "DEVICE_TYPE"

    const-string v3, "cover"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "URI"

    invoke-virtual {p4}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getByteArrayManagerURI()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    :goto_1
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_2
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthStateFile:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    invoke-virtual {p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->getId()[B

    move-result-object v3

    invoke-virtual {p4}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getByteArrayManagerURI()[B

    move-result-object v4

    invoke-virtual {p4}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getByteArrayExtraData()[B

    move-result-object v5

    # invokes: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->writeFile([B[B[B)V
    invoke-static {v2, v3, v4, v5}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->access$900(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;[B[B[B)V

    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->startAuthAlarm()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastAuthenticationTime:J

    :goto_2
    return-void

    :cond_3
    const/16 v2, 0xff

    invoke-virtual {v0, v2}, Lcom/samsung/android/cover/CoverState;->setType(I)V

    goto/16 :goto_0

    :cond_4
    const-string v2, "URI"

    new-array v3, v6, [B

    fill-array-data v3, :array_0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v2, v3}, Lcom/android/server/input/InputManagerService;->setCoverVerify(I)V

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2, v3}, Landroid/os/PowerManager;->setCoverType(I)V

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastCoverState:Lcom/samsung/android/cover/CoverState;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/cover/CoverState;->setAttachState(Z)V

    :cond_6
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {p0, p1, v2}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->applyCoverVerifiedState(ZLcom/samsung/android/cover/CoverState;)Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastCoverState:Lcom/samsung/android/cover/CoverState;

    goto :goto_2

    :array_0
    .array-data 1
        0x1t
        0x0t
    .end array-data
.end method

.method private setCoverVerifiedAlt()V
    .locals 4

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    sget-boolean v2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->DBG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setCoverVerifiedAlt"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthStateFile:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    iget-object v2, v2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mId:[B

    invoke-direct {v0, v2}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;-><init>([B)V

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->isValid()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    invoke-direct {v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;-><init>()V

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthStateFile:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    iget-object v2, v2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mUri:[B

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthStateFile:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    iget-object v2, v2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mUri:[B

    invoke-virtual {v1, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setManagerURI([B)V

    :cond_1
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthStateFile:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    iget-object v2, v2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mExtraData:[B

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthStateFile:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    iget-object v2, v2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mExtraData:[B

    invoke-virtual {v1, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setExtraData([B)V

    :cond_2
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->setCoverVerified(ZZLcom/samsung/accessory/manager/authentication/cover/CoverInfo;Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    :goto_0
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :cond_3
    sget-object v2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    const-string v3, "Id is not valid.."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startAuthAlarm()V
    .locals 8

    iget-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthAlarmSet:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->USE_SCHEDULED_AUTHENTICATION:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->DBG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    const-string v4, "Schedule an authentication alarm"

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthAlarmSet:Z

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/32 v6, 0x44aa200

    add-long/2addr v4, v6

    const v1, 0xdbba00

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v1

    int-to-long v6, v1

    add-long v2, v4, v6

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRunAuthIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v4, v2, v3, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :cond_1
    return-void
.end method

.method private startAuthentication(ZJ)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSystemReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mNfcServiceReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsShutingdown:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->removeMessages(I)V

    if-eqz p1, :cond_2

    const-wide/16 v0, 0x6978

    invoke-direct {p0, v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->scheduleAuthenticationTimeOuts(J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPreparing:Z

    :cond_2
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2, p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private startAuthentication(ZJJ)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSystemReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mNfcServiceReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsShutingdown:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->removeMessages(I)V

    if-eqz p1, :cond_2

    invoke-direct {p0, p2, p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->scheduleAuthenticationTimeOuts(J)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p4, p5}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private stopAuthAlarm()V
    .locals 2

    sget-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopAuthAlarm"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthAlarmSet:Z

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRunAuthIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private stopAuthentication(J)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->removeAuthenticationTimeOuts()V

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method addRecord(I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthenticationHistory:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x3c

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthenticationHistory:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthenticationHistory:Ljava/util/LinkedList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentPowerSouce:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public applyCoverVerifiedState(ZLcom/samsung/android/cover/CoverState;)Z
    .locals 4

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->getCoverManager()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v2, v3, p1, p2}, Lcom/samsung/android/cover/ICoverManager;->notifySmartCoverAttachStateChanged(JZLcom/samsung/android/cover/CoverState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    :catch_0
    move-exception v1

    sget-object v2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException in notifySmartCoverAttachStateChanged: "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    const-string v2, " Current CoverAuthenticator state:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mResult:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  auth reason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getReason()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  auth uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getStringManagerURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  auth extra data = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getStringExtraData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    const-string v2, "  Historical authentication: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthenticationHistory:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthenticationHistory:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mFactoryTestRequested = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryTestRequested:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mLastAuthenticationTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastAuthenticationTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  isAuthenticatonAllowed? = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->isAuthenticatonAllowed()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  getBlockedType? = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->getBlockedType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  isAuthenticationBlocked? = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mBlacklister:Lcom/samsung/accessory/manager/authentication/CertBlacklister;

    invoke-virtual {v3}, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->isAuthenticationBlocked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mLastAttachTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastAttachTime:J

    invoke-static {v4, v5}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mLastDetachTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastDetachTime:J

    invoke-static {v4, v5}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getDateFromUTC(J)Ljava/lang/String;
    .locals 5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const-string v1, "%ty-%tm-%td %tH:%tM:%tS.%tL"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    const/4 v3, 0x3

    aput-object v0, v2, v3

    const/4 v3, 0x4

    aput-object v0, v2, v3

    const/4 v3, 0x5

    aput-object v0, v2, v3

    const/4 v3, 0x6

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public onAuthenticationBlocked(Z)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->startAuthentication(ZJ)V

    goto :goto_0
.end method

.method public onAuthenticationComplted(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onAuthenticationStarted()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    new-instance v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$2;

    invoke-direct {v1, p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$2;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAuthenticationStarting(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    new-instance v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$1;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAuthenticationStopped(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    new-instance v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$3;

    invoke-direct {v1, p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$3;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCertBlacklistChanged()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    new-instance v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$10;

    invoke-direct {v1, p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$10;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCoverAttached(JZ)V
    .locals 9

    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    iget-boolean v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsFactoryBinary:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSystemReady:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mNfcServiceReady:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p3, :cond_2

    iput v4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthType:I

    iput-wide p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAttachedWhenNanos:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastAttachTime:J

    invoke-direct {p0, v4, v6, v7}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->startAuthentication(ZJ)V

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAttachedWhenNanos:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAttachedWhenNanos:J

    sub-long v2, p1, v2

    const-wide/32 v4, 0x1dcd6500

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    const-wide/16 v0, 0x1f4

    :cond_3
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSafetyDetachTimeoutWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastDetachTime:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->stopAuthentication(J)V

    goto :goto_0
.end method

.method public onNfcRestrictionPolicyChanged(Z)V
    .locals 3

    sget-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onNfcRestrictionPolicyChanged = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    new-instance v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$9;

    invoke-direct {v1, p0, p1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$9;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;Z)V

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method removeAuthenticationTimeOuts()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPreparing:Z

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->removeMessages(I)V

    return-void
.end method

.method public systemReady()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->sendEmptyMessage(I)Z

    return-void
.end method
