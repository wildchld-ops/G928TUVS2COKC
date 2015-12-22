.class public Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;
.super Ljava/lang/Object;
.source "VoWiFiStatusController.java"


# static fields
.field private static final ACTION_VOWIFI_STATUS:Ljava/lang/String; = "com.oem.smartwifisupport.VOWIFI_STATUS"

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "VoWiFiController"

.field private static final VOWIFI_HIDE_ICON:Ljava/lang/String; = "VOWIFI_HIDE_ICON"

.field private static final VOWIFI_SHOW_ROVE_IN:Ljava/lang/String; = "VOWIFI_SHOW_ROVE_IN"

.field private static final VOWIFI_SHOW_ROVE_OUT:Ljava/lang/String; = "VOWIFI_SHOW_ROVE_OUT"

.field private static final VOWIFI_SLOT:Ljava/lang/String; = "vowifi"

.field private static final VOWIFI_STATUS_EXTRA_KEY:Ljava/lang/String; = "VOWIFI_STATUS_EXTRA_KEY"


# instance fields
.field private mContext:Landroid/content/Context;

.field public mReceiver:Landroid/content/BroadcastReceiver;

.field private mService:Landroid/app/StatusBarManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController$1;-><init>(Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.oem.smartwifisupport.VOWIFI_STATUS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v1, "statusbar"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mService:Landroid/app/StatusBarManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mService:Landroid/app/StatusBarManager;

    const-string v2, "vowifi"

    const v3, 0x7f020739

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v5, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mService:Landroid/app/StatusBarManager;

    const-string v2, "vowifi"

    invoke-virtual {v1, v2, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    sget-boolean v1, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "VoWiFiController"

    const-string v2, "VoWiFiStatusController created!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->updateVoWiFi(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private final updateVoWiFi(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const-string v4, "VOWIFI_STATUS_EXTRA_KEY"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    sget-boolean v4, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "VoWiFiController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received action: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with extra: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v1, :cond_1

    :goto_0
    return-void

    :cond_1
    const-string v4, "VOWIFI_SHOW_ROVE_IN"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v2, 0x1

    const v3, 0x7f020738

    const-string v0, "VoWiFi Rove In"

    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mService:Landroid/app/StatusBarManager;

    const-string v5, "vowifi"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v3, v6, v0}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mService:Landroid/app/StatusBarManager;

    const-string v5, "vowifi"

    invoke-virtual {v4, v5, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    const-string v4, "VOWIFI_SHOW_ROVE_OUT"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v2, 0x1

    const v3, 0x7f020739

    const-string v0, "VoWiFi Rove Out"

    goto :goto_1

    :cond_5
    const-string v4, "VOWIFI_HIDE_ICON"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v2, 0x0

    goto :goto_1
.end method
