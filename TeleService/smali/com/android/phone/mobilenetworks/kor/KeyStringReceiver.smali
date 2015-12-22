.class public Lcom/android/phone/mobilenetworks/kor/KeyStringReceiver;
.super Landroid/content/BroadcastReceiver;
.source "KeyStringReceiver.java"


# static fields
.field private static buildcarrier:Ljava/lang/String;

.field private static isDataNetworkMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/mobilenetworks/kor/KeyStringReceiver;->buildcarrier:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/mobilenetworks/kor/KeyStringReceiver;->isDataNetworkMode:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private needSendIntent()Z
    .locals 2

    const-string v0, "a8elteskt"

    sget-object v1, Lcom/android/phone/mobilenetworks/kor/KeyStringReceiver;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "KeyStringReceiver"

    const-string v1, "needSendIntent false"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v0, "KeyStringReceiver"

    const-string v1, "needSendIntent true"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private startDataNetworkModeActivity(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;

    const-string v1, "KeyStringReceiver"

    const-string v2, "startDataNetworkModeActivity"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    :cond_2
    const-string v4, "feature_lgt"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "support_kt_hidden_data_network"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "android.provider.Telephony.SECRET_CODE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "232580"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "47359"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    :goto_1
    sput-boolean v2, Lcom/android/phone/mobilenetworks/kor/KeyStringReceiver;->isDataNetworkMode:Z

    :goto_2
    sget-boolean v2, Lcom/android/phone/mobilenetworks/kor/KeyStringReceiver;->isDataNetworkMode:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/KeyStringReceiver;->needSendIntent()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/kor/KeyStringReceiver;->startDataNetworkModeActivity(Landroid/content/Context;)V

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_1

    :cond_5
    const-string v4, "android.provider.Telephony.SECRET_CODE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "232580"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :goto_3
    sput-boolean v2, Lcom/android/phone/mobilenetworks/kor/KeyStringReceiver;->isDataNetworkMode:Z

    goto :goto_2

    :cond_6
    move v2, v3

    goto :goto_3
.end method
