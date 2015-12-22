.class final Lcom/android/server/telecom/PhoneStateBroadcaster;
.super Lcom/android/server/telecom/CallsManagerListenerBase;
.source "PhoneStateBroadcaster.java"


# instance fields
.field private bFirstCreate:Z

.field private mCall:Lcom/android/server/telecom/Call;

.field private final mCallsManager:Lcom/android/server/telecom/CallsManager;

.field private mCurrentState:I

.field private final mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;


# direct methods
.method public constructor <init>(Lcom/android/server/telecom/CallsManager;Landroid/telephony/TelephonyManager;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/server/telecom/CallsManagerListenerBase;-><init>()V

    iput v3, p0, Lcom/android/server/telecom/PhoneStateBroadcaster;->mCurrentState:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/telecom/PhoneStateBroadcaster;->mCall:Lcom/android/server/telecom/Call;

    iput-boolean v3, p0, Lcom/android/server/telecom/PhoneStateBroadcaster;->bFirstCreate:Z

    const-string v0, "telephony.registry"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/PhoneStateBroadcaster;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    iput-object p1, p0, Lcom/android/server/telecom/PhoneStateBroadcaster;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    iget-object v0, p0, Lcom/android/server/telecom/PhoneStateBroadcaster;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    if-nez v0, :cond_0

    const-string v0, "TelephonyRegistry is null"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/PhoneStateBroadcaster;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/PhoneStateBroadcaster;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    new-array v1, v4, [I

    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/CallsManager;->getFirstCallWithState([I)Lcom/android/server/telecom/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/PhoneStateBroadcaster;->mCall:Lcom/android/server/telecom/Call;

    iput-boolean v4, p0, Lcom/android/server/telecom/PhoneStateBroadcaster;->bFirstCreate:Z

    iget-object v0, p0, Lcom/android/server/telecom/PhoneStateBroadcaster;->mCall:Lcom/android/server/telecom/Call;

    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/telecom/PhoneStateBroadcaster;->sendPhoneStateChangedBroadcast(Lcom/android/server/telecom/Call;I)V

    :cond_1
    return-void
.end method

.method private sendPhoneStateChangedBroadcast(Lcom/android/server/telecom/Call;I)V
    .locals 5

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/android/server/telecom/PhoneStateBroadcaster;->bFirstCreate:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/server/telecom/PhoneStateBroadcaster;->mCurrentState:I

    if-ne p2, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    iput p2, p0, Lcom/android/server/telecom/PhoneStateBroadcaster;->mCurrentState:I

    iput-boolean v4, p0, Lcom/android/server/telecom/PhoneStateBroadcaster;->bFirstCreate:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/android/server/telecom/PhoneStateBroadcaster;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/telecom/PhoneStateBroadcaster;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v1, p2, v0}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCallState(ILjava/lang/String;)V

    const-string v0, "Broadcasted state change: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/telecom/PhoneStateBroadcaster;->mCurrentState:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "RemoteException when notifying TelephonyRegistry of call state change."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public onCallAdded(Lcom/android/server/telecom/Call;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/telecom/PhoneStateBroadcaster;->sendPhoneStateChangedBroadcast(Lcom/android/server/telecom/Call;I)V

    :cond_0
    return-void
.end method

.method public onCallRemoved(Lcom/android/server/telecom/Call;)V
    .locals 3

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v1

    iget-object v0, v1, Lcom/android/server/telecom/CallsManager;->mCalledListenerForRemove:Lcom/android/server/telecom/CallsManager$CalledListener;

    sget-object v2, Lcom/android/server/telecom/CallsManager$CalledListener;->PHONESTATE:Lcom/android/server/telecom/CallsManager$CalledListener;

    if-ne v0, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v1}, Lcom/android/server/telecom/CallsManager;->hasRingingCall()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    :cond_1
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/android/server/telecom/PhoneStateBroadcaster;->sendPhoneStateChangedBroadcast(Lcom/android/server/telecom/Call;I)V

    sget-object v0, Lcom/android/server/telecom/CallsManager$CalledListener;->PHONESTATE:Lcom/android/server/telecom/CallsManager$CalledListener;

    iput-object v0, v1, Lcom/android/server/telecom/CallsManager;->mCalledListenerForRemove:Lcom/android/server/telecom/CallsManager$CalledListener;

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v1, v2}, Lcom/android/server/telecom/CallsManager;->getFirstCallWithState([I)Lcom/android/server/telecom/Call;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    nop

    :array_0
    .array-data 4
        0x3
        0x5
        0x6
    .end array-data
.end method

.method public onCallStateChanged(Lcom/android/server/telecom/Call;II)V
    .locals 1

    const/4 v0, 0x3

    if-eq p3, v0, :cond_0

    const/4 v0, 0x5

    if-eq p3, v0, :cond_0

    const/4 v0, 0x6

    if-ne p3, v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->hasRingingCall()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/server/telecom/PhoneStateBroadcaster;->sendPhoneStateChangedBroadcast(Lcom/android/server/telecom/Call;I)V

    :cond_1
    return-void
.end method
