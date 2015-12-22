.class public Lcom/android/settings/wifi/WifiShareProfileCandidateAP;
.super Landroid/preference/Preference;
.source "WifiShareProfileCandidateAP.java"


# static fields
.field private static final STATE_SECURED:[I

.field private static count:I

.field private static wifi_signal_attributes:[I


# instance fields
.field public index:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field public network:Ljava/lang/String;

.field public priority:I

.field public security:Ljava/lang/String;

.field public signalLevel:I

.field public ssid:Ljava/lang/String;

.field public timeoutIndex:I

.field private timeoutValues:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    sput v2, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->count:I

    new-array v0, v3, [I

    const v1, 0x7f010003

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->STATE_SECURED:[I

    new-array v0, v3, [I

    const v1, 0x7f010032

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->wifi_signal_attributes:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 12

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->ssid:Ljava/lang/String;

    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->index:Ljava/lang/String;

    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->network:Ljava/lang/String;

    const/4 v10, 0x0

    iput v10, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->priority:I

    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->security:Ljava/lang/String;

    const/4 v10, 0x3

    iput v10, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->timeoutIndex:I

    const/4 v10, 0x0

    iput v10, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->signalLevel:I

    iput-object p1, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->ssid:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->index:Ljava/lang/String;

    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->network:Ljava/lang/String;

    move/from16 v0, p5

    iput v0, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->priority:I

    const v10, 0x7f04018c

    invoke-virtual {p0, v10}, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->setWidgetLayoutResource(I)V

    iget-object v10, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->mContext:Landroid/content/Context;

    const-string v11, "wifi"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiManager;

    iput-object v10, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v10, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v8

    iget-object v10, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, p2}, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->decryptSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v6, 0x0

    if-eqz p3, :cond_0

    const-string v10, "\tkey_mgmt=NONE"

    invoke-virtual {p3, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    const-string v10, "\tauth_alg=OPEN SHARED"

    invoke-virtual {p3, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->mContext:Landroid/content/Context;

    const v11, 0x7f0a03d7

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->security:Ljava/lang/String;

    :cond_0
    :goto_0
    if-eqz v8, :cond_9

    if-eqz v2, :cond_9

    const/4 v3, 0x0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/ScanResult;

    if-eqz v6, :cond_3

    iget-object v10, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->getSecurityPSK(Landroid/net/wifi/WifiConfiguration;)I

    move-result v10

    const/4 v11, 0x4

    if-ne v10, v11, :cond_3

    invoke-direct {p0, v7}, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->getSecurityPSK(Landroid/net/wifi/ScanResult;)I

    move-result v10

    const/4 v11, 0x4

    if-ne v10, v11, :cond_3

    invoke-direct {p0, v7}, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    iget-object v10, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->mContext:Landroid/content/Context;

    const v11, 0x7f0a03d8

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->security:Ljava/lang/String;

    :cond_3
    :goto_2
    iget-object v10, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-direct {p0, v7}, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->isSameSecurity(Landroid/net/wifi/ScanResult;)Z

    move-result v10

    if-eqz v10, :cond_2

    iget v10, v7, Landroid/net/wifi/ScanResult;->level:I

    const v11, 0x7fffffff

    if-ne v10, v11, :cond_8

    const/4 v3, 0x0

    :goto_3
    iget v10, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->signalLevel:I

    if-le v3, v10, :cond_2

    iput v3, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->signalLevel:I

    goto :goto_1

    :cond_4
    const-string v10, "\tkey_mgmt=WPA-PSK"

    invoke-virtual {p3, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v6, 0x1

    iget-object v10, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->mContext:Landroid/content/Context;

    const v11, 0x7f0a03da

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->security:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const-string v10, "\tkey_mgmt=FT-PSK"

    invoke-virtual {p3, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->mContext:Landroid/content/Context;

    const v11, 0x7f0a03de

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->security:Ljava/lang/String;

    goto/16 :goto_0

    :cond_6
    invoke-direct {p0, v7}, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_7

    iget-object v10, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->mContext:Landroid/content/Context;

    const v11, 0x7f0a03d9

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->security:Ljava/lang/String;

    goto :goto_2

    :cond_7
    invoke-direct {p0, v7}, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_3

    iget-object v10, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->mContext:Landroid/content/Context;

    const v11, 0x7f0a03da

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->security:Ljava/lang/String;

    goto :goto_2

    :cond_8
    iget v10, v7, Landroid/net/wifi/ScanResult;->level:I

    const/4 v11, 0x5

    invoke-static {v10, v11}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v3

    goto :goto_3

    :cond_9
    iget-object v10, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0e0035

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->timeoutValues:[Ljava/lang/String;

    return-void
.end method

.method private decryptSsid(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const-string v5, "\""

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "\""

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    add-int/lit8 v6, v3, -0x1

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v5, 0x2

    if-lt v3, v5, :cond_0

    rem-int/lit8 v5, v3, 0x2

    if-nez v5, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_1
    div-int/lit8 v5, v3, 0x2

    if-ge v2, v5, :cond_2

    const-string v5, "\\x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit8 v5, v2, 0x2

    mul-int/lit8 v6, v2, 0x2

    add-int/lit8 v6, v6, 0x2

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/wifi/WifiSsid;->createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    goto :goto_0

    :cond_3
    const-string v0, "<unknown ssid>"

    goto :goto_2
.end method

.method private getSecurity(Landroid/net/wifi/ScanResult;)I
    .locals 4

    iget-object v2, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "WPA-PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iget-object v2, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "WPA2-PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v2, 0x3

    :goto_0
    return v2

    :cond_0
    if-eqz v1, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getSecurityPSK(Landroid/net/wifi/ScanResult;)I
    .locals 2

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSecurityPSK(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSameSecurity(Landroid/net/wifi/ScanResult;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->index:Ljava/lang/String;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "FT/PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->index:Ljava/lang/String;

    const-string v3, "\tkey_mgmt=FT-PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->index:Ljava/lang/String;

    const-string v3, "\tkey_mgmt=WPA-PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "WEP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->index:Ljava/lang/String;

    const-string v3, "\tkey_mgmt=NONE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->index:Ljava/lang/String;

    const-string v3, "\tauth_alg=OPEN SHARED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private updateIcon(ILandroid/widget/ImageView;)V
    .locals 8

    const/4 v5, -0x1

    if-ne p1, v5, :cond_0

    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v5, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    sget-object v6, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->wifi_signal_attributes:[I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v4, :cond_1

    sget-object v5, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->STATE_SECURED:[I

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    invoke-virtual {v4}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x0

    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e003a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->mContext:Landroid/content/Context;

    const v7, 0x7f0a038f

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const v5, 0x7f02030a

    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v5, "WifiShareProfileCandidateAP"

    invoke-virtual {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 3

    instance-of v1, p1, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;

    iget v1, v0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->priority:I

    iget v2, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->priority:I

    sub-int/2addr v1, v2

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->ssid:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->decryptSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x7f10035a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->signalLevel:I

    invoke-direct {p0, v1, v0}, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->updateIcon(ILandroid/widget/ImageView;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->refresh()V

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    return-void
.end method

.method public refresh()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->mContext:Landroid/content/Context;

    const v1, 0x7f0a03b9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->security:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updatedNetwork()Ljava/lang/String;
    .locals 5

    const-string v1, "0"

    iget v2, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->timeoutIndex:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    const-string v1, "0"

    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->network:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->network:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\tshared=1\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\texpiration=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\"\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "}\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1
    iget v2, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->timeoutIndex:I

    if-nez v2, :cond_2

    const/16 v2, 0x5460

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->timeoutIndex:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    const v2, 0xa8c0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->timeoutIndex:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const v2, 0x15180

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
