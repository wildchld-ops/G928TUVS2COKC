.class public Lcom/android/incallui/rcs/BatteryMonitor;
.super Ljava/lang/Object;
.source "BatteryMonitor.java"


# static fields
.field public static final BATTERY_INTENT_FILTER:Landroid/content/IntentFilter;


# instance fields
.field private mBatteryLevel:I

.field private mContext:Landroid/content/Context;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/incallui/rcs/BatteryMonitor;->BATTERY_INTENT_FILTER:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/incallui/rcs/BatteryMonitor;->mBatteryLevel:I

    new-instance v0, Lcom/android/incallui/rcs/BatteryMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/rcs/BatteryMonitor$1;-><init>(Lcom/android/incallui/rcs/BatteryMonitor;)V

    iput-object v0, p0, Lcom/android/incallui/rcs/BatteryMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/incallui/rcs/BatteryMonitor;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/incallui/rcs/BatteryMonitor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/incallui/rcs/BatteryMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/android/incallui/rcs/BatteryMonitor;->BATTERY_INTENT_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/rcs/BatteryMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/rcs/BatteryMonitor;->mBatteryLevel:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/incallui/rcs/BatteryMonitor;I)I
    .locals 0

    iput p1, p0, Lcom/android/incallui/rcs/BatteryMonitor;->mBatteryLevel:I

    return p1
.end method


# virtual methods
.method public UnregisterBatteryMonitor(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/rcs/BatteryMonitor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/incallui/rcs/BatteryMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
