.class public final Lcom/android/server/telecom/operator/usa/EcholocateHandoverMgr;
.super Ljava/lang/Object;
.source "EcholocateHandoverMgr.java"


# static fields
.field private static mInstance:Lcom/android/server/telecom/operator/usa/EcholocateHandoverMgr;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEPDGHandoverReceiver:Landroid/content/BroadcastReceiver;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/telecom/operator/usa/EcholocateHandoverMgr;->mInstance:Lcom/android/server/telecom/operator/usa/EcholocateHandoverMgr;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateHandoverMgr;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance v0, Lcom/android/server/telecom/operator/usa/EcholocateHandoverMgr$1;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/operator/usa/EcholocateHandoverMgr$1;-><init>(Lcom/android/server/telecom/operator/usa/EcholocateHandoverMgr;)V

    iput-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateHandoverMgr;->mEPDGHandoverReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/telecom/operator/usa/EcholocateHandoverMgr$2;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/operator/usa/EcholocateHandoverMgr$2;-><init>(Lcom/android/server/telecom/operator/usa/EcholocateHandoverMgr;)V

    iput-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateHandoverMgr;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    iput-object p1, p0, Lcom/android/server/telecom/operator/usa/EcholocateHandoverMgr;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/server/telecom/operator/usa/EcholocateHandoverMgr;->registerEPDGHandoverReceiver()V

    invoke-direct {p0}, Lcom/android/server/telecom/operator/usa/EcholocateHandoverMgr;->registerSRVCCStateListener()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 4

    const-class v1, Lcom/android/server/telecom/operator/usa/EcholocateHandoverMgr;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/telecom/operator/usa/EcholocateHandoverMgr;->mInstance:Lcom/android/server/telecom/operator/usa/EcholocateHandoverMgr;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/telecom/operator/usa/EcholocateHandoverMgr;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/operator/usa/EcholocateHandoverMgr;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/telecom/operator/usa/EcholocateHandoverMgr;->mInstance:Lcom/android/server/telecom/operator/usa/EcholocateHandoverMgr;

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    const-string v0, "EcholocateHandoverMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  mInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/server/telecom/operator/usa/EcholocateHandoverMgr;->mInstance:Lcom/android/server/telecom/operator/usa/EcholocateHandoverMgr;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private registerEPDGHandoverReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.EcholocateEpdgHandover"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/telecom/operator/usa/EcholocateHandoverMgr;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/telecom/operator/usa/EcholocateHandoverMgr;->mEPDGHandoverReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v0, "EcholocateHandoverMgr"

    const-string v1, "registerEPDGHandoverReceiver..."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private registerSRVCCStateListener()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateHandoverMgr;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateHandoverMgr;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateHandoverMgr;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateHandoverMgr;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/telecom/operator/usa/EcholocateHandoverMgr;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateHandoverMgr;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/telecom/operator/usa/EcholocateHandoverMgr;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    const-string v0, "EcholocateHandoverMgr"

    const-string v1, "registerSRVCCStateListener..."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
