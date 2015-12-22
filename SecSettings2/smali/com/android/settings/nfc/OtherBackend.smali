.class public Lcom/android/settings/nfc/OtherBackend;
.super Ljava/lang/Object;
.source "OtherBackend.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/nfc/OtherBackend$OtherAppInfo;
    }
.end annotation


# instance fields
.field private final mAdapter:Landroid/nfc/NfcAdapter;

.field private final mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/nfc/OtherBackend;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/OtherBackend;->mAdapter:Landroid/nfc/NfcAdapter;

    iget-object v0, p0, Lcom/android/settings/nfc/OtherBackend;->mAdapter:Landroid/nfc/NfcAdapter;

    invoke-static {v0}, Landroid/nfc/cardemulation/CardEmulation;->getInstance(Landroid/nfc/NfcAdapter;)Landroid/nfc/cardemulation/CardEmulation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/OtherBackend;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    return-void
.end method


# virtual methods
.method public checkDefaultOtherApp(Landroid/content/ComponentName;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/nfc/OtherBackend;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    const-string v1, "other"

    invoke-virtual {v0, p1, v1}, Landroid/nfc/cardemulation/CardEmulation;->isRegisteredService(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public disableDefaultOtherApp(Landroid/content/ComponentName;)I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nfc/OtherBackend;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    invoke-virtual {v0, p1}, Landroid/nfc/cardemulation/CardEmulation;->unregisterOtherService(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public enableDefaultOtherApp(Landroid/content/ComponentName;)I
    .locals 2

    iget-object v0, p0, Lcom/android/settings/nfc/OtherBackend;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    const-string v1, "other"

    invoke-virtual {v0, p1, v1}, Landroid/nfc/cardemulation/CardEmulation;->registerService(Landroid/content/ComponentName;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getOtherAppInfos()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/nfc/OtherBackend$OtherAppInfo;",
            ">;"
        }
    .end annotation

    iget-object v6, p0, Lcom/android/settings/nfc/OtherBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v6, p0, Lcom/android/settings/nfc/OtherBackend;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    const-string v7, "other"

    invoke-virtual {v6, v7}, Landroid/nfc/cardemulation/CardEmulation;->getServices(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez v5, :cond_1

    :cond_0
    return-object v1

    :cond_1
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v4}, Landroid/nfc/cardemulation/ApduServiceInfo;->isOnHost()Z

    move-result v6

    if-nez v6, :cond_2

    new-instance v0, Lcom/android/settings/nfc/OtherBackend$OtherAppInfo;

    invoke-direct {v0}, Lcom/android/settings/nfc/OtherBackend$OtherAppInfo;-><init>()V

    invoke-virtual {v4, v3}, Landroid/nfc/cardemulation/ApduServiceInfo;->loadBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v0, Lcom/android/settings/nfc/OtherBackend$OtherAppInfo;->banner:Landroid/graphics/drawable/Drawable;

    iget-object v6, v0, Lcom/android/settings/nfc/OtherBackend$OtherAppInfo;->banner:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_3

    invoke-virtual {v4, v3}, Landroid/nfc/cardemulation/ApduServiceInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v0, Lcom/android/settings/nfc/OtherBackend$OtherAppInfo;->banner:Landroid/graphics/drawable/Drawable;

    :cond_3
    invoke-virtual {v4}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/settings/nfc/OtherBackend$OtherAppInfo;->caption:Ljava/lang/CharSequence;

    iget-object v6, v0, Lcom/android/settings/nfc/OtherBackend$OtherAppInfo;->caption:Ljava/lang/CharSequence;

    if-nez v6, :cond_4

    invoke-virtual {v4, v3}, Landroid/nfc/cardemulation/ApduServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v0, Lcom/android/settings/nfc/OtherBackend$OtherAppInfo;->caption:Ljava/lang/CharSequence;

    :cond_4
    iget-object v6, p0, Lcom/android/settings/nfc/OtherBackend;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    invoke-virtual {v4}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    const-string v8, "other"

    invoke-virtual {v6, v7, v8}, Landroid/nfc/cardemulation/CardEmulation;->isRegisteredService(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, v0, Lcom/android/settings/nfc/OtherBackend$OtherAppInfo;->isDefault:Z

    invoke-virtual {v4}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    iput-object v6, v0, Lcom/android/settings/nfc/OtherBackend$OtherAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
