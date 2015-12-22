.class public Lcom/android/settings/knox/KnoxActiveProtectionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "KnoxActiveProtectionReceiver.java"


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mKapStatus:Lcom/android/settings/knox/KnoxActiveProtectionStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "KnoxActiveProtectionReceiver"

    sput-object v0, Lcom/android/settings/knox/KnoxActiveProtectionReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private showSystemProtectionStatus(Landroid/content/Context;)V
    .locals 7

    const/4 v3, 0x0

    const-string v1, "com.android.settings.SecurityFragment"

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/knox/KnoxActiveProtectionReceiver;->mContext:Landroid/content/Context;

    const v4, 0x7f0a14b9

    invoke-virtual {v0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v6, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-direct {v6, v0}, Landroid/os/UserHandle;-><init>(I)V

    move-object v0, p1

    move v5, v3

    invoke-static/range {v0 .. v6}, Lcom/android/settings/Utils;->startWithFragmentAsUser(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;ZLandroid/os/UserHandle;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    iput-object p1, p0, Lcom/android/settings/knox/KnoxActiveProtectionReceiver;->mContext:Landroid/content/Context;

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VZW"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SPR"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "BST"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "VMU"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "XAS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/knox/KnoxActiveProtectionReceiver;->mContext:Landroid/content/Context;

    const-string v3, "com.samsung.android.sm.ACTION_SECURITY"

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/android/settings/knox/KnoxActiveProtectionStatus;

    invoke-direct {v2}, Lcom/android/settings/knox/KnoxActiveProtectionStatus;-><init>()V

    iput-object v2, p0, Lcom/android/settings/knox/KnoxActiveProtectionReceiver;->mKapStatus:Lcom/android/settings/knox/KnoxActiveProtectionStatus;

    iget-object v2, p0, Lcom/android/settings/knox/KnoxActiveProtectionReceiver;->mKapStatus:Lcom/android/settings/knox/KnoxActiveProtectionStatus;

    invoke-virtual {v2}, Lcom/android/settings/knox/KnoxActiveProtectionStatus;->isTimaSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/settings/knox/KnoxActiveProtectionReceiver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KnoxActiveProtectionReceiver\'s onReceive : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "samsung.intent.action.knox.TIMA_APPLICATION"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "security.tima.safe_mode"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/settings/knox/KnoxActiveProtectionReceiver;->showSystemProtectionStatus(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    const-string v2, "samsung.intent.action.knox.TIMA_NOTIFICATION"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "security.tima.safe_mode"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
