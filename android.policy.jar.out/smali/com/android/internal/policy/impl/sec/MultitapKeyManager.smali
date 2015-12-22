.class public Lcom/android/internal/policy/impl/sec/MultitapKeyManager;
.super Ljava/lang/Object;
.source "MultitapKeyManager.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final SAFE_DEBUG:Z

.field private static final SEC_DOUBLE_TAP_TIMEOUT:I = 0xaa

.field private static final TAG:Ljava/lang/String; = "MultitapKeyManager"


# instance fields
.field mHandler:Landroid/os/Handler;

.field private mHomeConsumed:Z

.field private mHomeDoubleEventTime:J

.field private mHomeDoubleTapPending:Z

.field private final mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field private mHomeFakeTripleTapPending:Z

.field private mHomeTripleTapPending:Z

.field private final mHomeTripleTapTimeoutRunnable:Ljava/lang/Runnable;

.field mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field private mPowerConsumed:Z

.field private mPowerDoubleTapPending:Z

.field private mPowerDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field private mPowerTripleEventTime:J

.field private mPowerTripleTapPending:Z

.field private mPowerTripleTapReady:Z

.field private mPowerTripleTapTimeoutRunnable:Ljava/lang/Runnable;

.field mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->SAFE_DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHandler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeDoubleTapPending:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeTripleTapPending:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeFakeTripleTapPending:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeConsumed:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerDoubleTapPending:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerTripleTapPending:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerTripleTapReady:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerConsumed:Z

    iput-wide v2, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerTripleEventTime:J

    iput-wide v2, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeDoubleEventTime:J

    new-instance v0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/MultitapKeyManager$1;-><init>(Lcom/android/internal/policy/impl/sec/MultitapKeyManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/MultitapKeyManager$2;-><init>(Lcom/android/internal/policy/impl/sec/MultitapKeyManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeTripleTapTimeoutRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/MultitapKeyManager$3;-><init>(Lcom/android/internal/policy/impl/sec/MultitapKeyManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/MultitapKeyManager$4;-><init>(Lcom/android/internal/policy/impl/sec/MultitapKeyManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerTripleTapTimeoutRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-object p2, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/sec/MultitapKeyManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeDoubleTapPending:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/sec/MultitapKeyManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeDoubleTapPending:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/sec/MultitapKeyManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeTripleTapPending:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/sec/MultitapKeyManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeTripleTapPending:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/sec/MultitapKeyManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeFakeTripleTapPending:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/sec/MultitapKeyManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeFakeTripleTapPending:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/sec/MultitapKeyManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerDoubleTapPending:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/sec/MultitapKeyManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerDoubleTapPending:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/sec/MultitapKeyManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerTripleTapPending:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/sec/MultitapKeyManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerTripleTapReady:Z

    return p1
.end method

.method private handleDoubleTapOnPower()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerConsumed:Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->callAccessibilityScreenCurtain()V

    return-void
.end method

.method private handleTripleTapOnHome()V
    .locals 3

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeConsumed:Z

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isEasyOneHandEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->getEasyOneHandPkgVersion(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isEasyOneHandRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1, v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->updateEasyOneHandState(ZZZ)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0, v2, v2, v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->updateEasyOneHandState(ZZZ)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->sendBroadcastForAccessibility()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->callAccessibilityTalkbackMode()V

    goto :goto_0
.end method

.method private handleTripleTapOnPower()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerConsumed:Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->sendBroadcastForSafetyAssurance()V

    return-void
.end method


# virtual methods
.method public dispatchMultitapKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->dispatchMultitapKeyEvent(Landroid/view/KeyEvent;Z)Z

    move-result v0

    return v0
.end method

.method public dispatchMultitapKeyEvent(Landroid/view/KeyEvent;Z)Z
    .locals 12

    const-wide/16 v6, 0xaa

    const-wide/16 v10, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_2

    move v0, v3

    :goto_0
    sparse-switch v1, :sswitch_data_0

    :cond_0
    move v3, v4

    :cond_1
    :goto_1
    return v3

    :cond_2
    move v0, v4

    goto :goto_0

    :sswitch_0
    if-nez v0, :cond_6

    iput-wide v10, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeDoubleEventTime:J

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeConsumed:Z

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeFakeTripleTapPending:Z

    if-nez v5, :cond_3

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeConsumed:Z

    goto :goto_1

    :cond_3
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeTripleTapPending:Z

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeFakeTripleTapPending:Z

    if-eqz v4, :cond_5

    :cond_4
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeTripleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeTripleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sget-boolean v4, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->SAFE_DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "MultitapKeyManager"

    const-string v5, "Home tripletap timeout runnable posted!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeDoubleTapPending:Z

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sget-boolean v4, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->SAFE_DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "MultitapKeyManager"

    const-string v5, "Home doubletap timeout runnable posted!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    if-nez v2, :cond_0

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeConsumed:Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeDoubleEventTime:J

    cmp-long v5, v6, v8

    if-gez v5, :cond_8

    sget-boolean v4, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->SAFE_DEBUG:Z

    if-eqz v4, :cond_7

    const-string v4, "MultitapKeyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Home doubletap wakeup time="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " first="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeDoubleEventTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iput-wide v10, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeDoubleEventTime:J

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->handleDoubleTapOnHome()V

    goto/16 :goto_1

    :cond_8
    if-eqz p2, :cond_9

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    const-wide/16 v6, 0x154

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeDoubleEventTime:J

    sget-boolean v4, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->SAFE_DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "MultitapKeyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Home doubletap first event time="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeDoubleEventTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_9
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeDoubleTapPending:Z

    if-eqz v5, :cond_b

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeDoubleTapPending:Z

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isTripleTapOnHomeEnabled()Z

    move-result v4

    if-eqz v4, :cond_a

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeTripleTapPending:Z

    goto/16 :goto_1

    :cond_a
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeFakeTripleTapPending:Z

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->handleDoubleTapOnHome()V

    goto/16 :goto_1

    :cond_b
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeTripleTapPending:Z

    if-eqz v5, :cond_0

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeTripleTapPending:Z

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeTripleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->handleTripleTapOnHome()V

    goto/16 :goto_1

    :sswitch_1
    if-nez v0, :cond_e

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerConsumed:Z

    if-eqz v5, :cond_c

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerConsumed:Z

    goto/16 :goto_1

    :cond_c
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isSafetyAssuranceEnabled()Z

    move-result v5

    if-eqz v5, :cond_d

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerTripleTapPending:Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v5

    int-to-long v8, v5

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerTripleEventTime:J

    sget-boolean v5, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->SAFE_DEBUG:Z

    if-eqz v5, :cond_d

    const-string v5, "MultitapKeyManager"

    const-string v6, "Power tripletap timeout posted!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isDoubleTapOnPowerEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    if-nez p2, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerDoubleTapPending:Z

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sget-boolean v4, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->SAFE_DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "MultitapKeyManager"

    const-string v5, "Power doubletap timeout runnable posted!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_e
    if-nez v2, :cond_0

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerConsumed:Z

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerTripleTapPending:Z

    if-eqz v5, :cond_f

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerTripleTapPending:Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerTripleEventTime:J

    cmp-long v5, v6, v8

    if-gez v5, :cond_11

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerTripleTapReady:Z

    if-eqz v5, :cond_10

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerTripleTapReady:Z

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->handleTripleTapOnPower()V

    :cond_f
    :goto_2
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerDoubleTapPending:Z

    if-eqz v5, :cond_0

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerDoubleTapPending:Z

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->handleDoubleTapOnPower()V

    goto/16 :goto_1

    :cond_10
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerTripleTapReady:Z

    goto :goto_2

    :cond_11
    const-string v5, "MultitapKeyManager"

    const-string v6, "mPowerTripleTap is timeout"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerTripleTapReady:Z

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x1a -> :sswitch_1
    .end sparse-switch
.end method

.method public handleDoubleTapOnHome()V
    .locals 3

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getKnoxCustomManager()Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSealedState()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "MultitapKeyManager"

    const-string v2, "Home doubletap block in Sealed mode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isKidsModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "MultitapKeyManager"

    const-string v2, "Home doubletap block in kidsmode and container only mode"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isEnableAccessControl(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "MultitapKeyManager"

    const-string v2, "Home doubletap block in access control"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLockTaskModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "MultitapKeyManager"

    const-string v2, "Home doubletap block in LockTaskMode enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isCurrentUserSetupComplete()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "MultitapKeyManager"

    const-string v2, "Home doubletap block in UserSetup not complete"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isSimLocked()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "MultitapKeyManager"

    const-string v2, "Home doubletap block in SimLock"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isCarrierLocked()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "MultitapKeyManager"

    const-string v2, "Home doubletap block in CarrierLock"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeConsumed:Z

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->launchDoubleTapOnHomeCommand()V

    goto :goto_0
.end method

.method public isHomeConsumed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeConsumed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeTripleTapPending:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
