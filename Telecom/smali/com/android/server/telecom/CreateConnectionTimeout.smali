.class final Lcom/android/server/telecom/CreateConnectionTimeout;
.super Landroid/telephony/PhoneStateListener;
.source "CreateConnectionTimeout.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mCall:Lcom/android/server/telecom/Call;

.field private final mConnectionService:Lcom/android/server/telecom/ConnectionServiceWrapper;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mIsCallTimedOut:Z

.field private mIsRegistered:Z

.field private final mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/telecom/PhoneAccountRegistrar;Lcom/android/server/telecom/ConnectionServiceWrapper;Lcom/android/server/telecom/Call;)V
    .locals 1

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/telecom/CreateConnectionTimeout;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/telecom/CreateConnectionTimeout;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/telecom/CreateConnectionTimeout;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    iput-object p3, p0, Lcom/android/server/telecom/CreateConnectionTimeout;->mConnectionService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    iput-object p4, p0, Lcom/android/server/telecom/CreateConnectionTimeout;->mCall:Lcom/android/server/telecom/Call;

    return-void
.end method

.method private getTimeoutLengthMillis(Landroid/telephony/ServiceState;)J
    .locals 2

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/CreateConnectionTimeout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/Timeouts;->getEmergencyCallTimeoutRadioOffMillis(Landroid/content/ContentResolver;)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/CreateConnectionTimeout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/Timeouts;->getEmergencyCallTimeoutMillis(Landroid/content/ContentResolver;)J

    move-result-wide v0

    goto :goto_0
.end method

.method static isCallBeingPlaced(Lcom/android/server/telecom/Call;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v1

    if-eqz v1, :cond_0

    if-eq v1, v0, :cond_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isConnectedToWifi()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/telecom/CreateConnectionTimeout;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method isCallTimedOut()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/telecom/CreateConnectionTimeout;->mIsCallTimedOut:Z

    return v0
.end method

.method isTimeoutNeededForCall(Ljava/util/Collection;Landroid/telecom/PhoneAccountHandle;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;",
            "Landroid/telecom/PhoneAccountHandle;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/telecom/CreateConnectionTimeout;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/telecom/CreateConnectionTimeout;->mCall:Lcom/android/server/telecom/Call;

    invoke-virtual {v2}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/telecom/TelephonyUtil;->shouldProcessAsEmergency(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/server/telecom/CreateConnectionTimeout;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    invoke-virtual {v1}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getSimCallManager()Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/telecom/CreateConnectionTimeout;->isConnectedToWifi()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "isTimeoutNeededForCall, returning true"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v0}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/telecom/CreateConnectionTimeout;->getTimeoutLengthMillis(Landroid/telephony/ServiceState;)J

    move-result-wide v0

    iget-boolean v2, p0, Lcom/android/server/telecom/CreateConnectionTimeout;->mIsRegistered:Z

    if-nez v2, :cond_0

    const-string v0, "onServiceStateChanged, timeout no longer registered, skipping"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    const-string v2, "onServiceStateChanged, timeout set to %d, skipping"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {p0, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-nez v2, :cond_2

    const-string v0, "onServiceStateChanged, cellular service available, skipping"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/server/telecom/CreateConnectionTimeout;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method registerTimeout()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "registerTimeout"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v3, p0, Lcom/android/server/telecom/CreateConnectionTimeout;->mIsRegistered:Z

    iget-object v0, p0, Lcom/android/server/telecom/CreateConnectionTimeout;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p0, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    invoke-virtual {v0, p0, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public run()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/telecom/CreateConnectionTimeout;->mIsRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/CreateConnectionTimeout;->mCall:Lcom/android/server/telecom/Call;

    invoke-static {v0}, Lcom/android/server/telecom/CreateConnectionTimeout;->isCallBeingPlaced(Lcom/android/server/telecom/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "run, call timed out, calling disconnect"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/telecom/CreateConnectionTimeout;->mIsCallTimedOut:Z

    iget-object v0, p0, Lcom/android/server/telecom/CreateConnectionTimeout;->mConnectionService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    iget-object v1, p0, Lcom/android/server/telecom/CreateConnectionTimeout;->mCall:Lcom/android/server/telecom/Call;

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/ConnectionServiceWrapper;->disconnect(Lcom/android/server/telecom/Call;)V

    :cond_0
    return-void
.end method

.method unregisterTimeout()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "unregisterTimeout"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v2, p0, Lcom/android/server/telecom/CreateConnectionTimeout;->mIsRegistered:Z

    iget-object v0, p0, Lcom/android/server/telecom/CreateConnectionTimeout;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
