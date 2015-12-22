.class public Lcom/android/settings/nfc/PaymentBackend;
.super Ljava/lang/Object;
.source "PaymentBackend.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    }
.end annotation


# static fields
.field private static final SALES_CODE:Ljava/lang/String;


# instance fields
.field private final mAdapter:Landroid/nfc/NfcAdapter;

.field private mAppName:Landroid/content/ComponentName;

.field private final mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

.field private final mContext:Landroid/content/Context;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/nfc/PaymentBackend;->SALES_CODE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/android/settings/nfc/PaymentBackend$1;

    invoke-direct {v1, p0}, Lcom/android/settings/nfc/PaymentBackend$1;-><init>(Lcom/android/settings/nfc/PaymentBackend;)V

    iput-object v1, p0, Lcom/android/settings/nfc/PaymentBackend;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/settings/nfc/PaymentBackend;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/nfc/PaymentBackend;->mAdapter:Landroid/nfc/NfcAdapter;

    iget-object v1, p0, Lcom/android/settings/nfc/PaymentBackend;->mAdapter:Landroid/nfc/NfcAdapter;

    invoke-static {v1}, Landroid/nfc/cardemulation/CardEmulation;->getInstance(Landroid/nfc/NfcAdapter;)Landroid/nfc/cardemulation/CardEmulation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/nfc/PaymentBackend;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.nfc.cardemulation.UiccAccess.ACTION_RETRY"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/nfc/PaymentBackend;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/nfc/PaymentBackend;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/nfc/PaymentBackend;->SALES_CODE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/nfc/PaymentBackend;)Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nfc/PaymentBackend;->mAppName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/nfc/PaymentBackend;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/nfc/PaymentBackend;->mAppName:Landroid/content/ComponentName;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/nfc/PaymentBackend;)Landroid/nfc/cardemulation/CardEmulation;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nfc/PaymentBackend;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    return-object v0
.end method


# virtual methods
.method getDefaultPaymentApp()Landroid/content/ComponentName;
    .locals 3

    iget-object v1, p0, Lcom/android/settings/nfc/PaymentBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "nfc_payment_default_component"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPaymentAppInfos()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;",
            ">;"
        }
    .end annotation

    iget-object v7, p0, Lcom/android/settings/nfc/PaymentBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/nfc/PaymentBackend;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    const-string v8, "payment"

    invoke-virtual {v7, v8}, Landroid/nfc/cardemulation/CardEmulation;->getServices(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez v6, :cond_1

    :cond_0
    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentBackend;->getDefaultPaymentApp()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/nfc/cardemulation/ApduServiceInfo;

    new-instance v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    invoke-direct {v0}, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;-><init>()V

    invoke-virtual {v5, v4}, Landroid/nfc/cardemulation/ApduServiceInfo;->loadBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->banner:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->caption:Ljava/lang/CharSequence;

    iget-object v7, v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->caption:Ljava/lang/CharSequence;

    if-nez v7, :cond_2

    invoke-virtual {v5, v4}, Landroid/nfc/cardemulation/ApduServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->caption:Ljava/lang/CharSequence;

    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_NFC_EnableFelica"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "DCM"

    sget-object v8, Lcom/android/settings/nfc/PaymentBackend;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/android/settings/nfc/PaymentBackend;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    invoke-virtual {v5}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    const-string v9, "payment"

    invoke-virtual {v7, v8, v9}, Landroid/nfc/cardemulation/CardEmulation;->isRegisteredService(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->isDefault:Z

    :goto_1
    invoke-virtual {v5}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    iput-object v7, v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v5}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->isDefault:Z

    goto :goto_1
.end method

.method isForegroundMode()Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/nfc/PaymentBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "nfc_payment_foreground"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setDefaultPaymentApp(Landroid/content/ComponentName;)V
    .locals 4

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_NFC_EnableFelica"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "DCM"

    sget-object v2, Lcom/android/settings/nfc/PaymentBackend;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/nfc/PaymentBackend;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    const-string v2, "payment"

    invoke-virtual {v1, p1, v2}, Landroid/nfc/cardemulation/CardEmulation;->registerService(Landroid/content/ComponentName;Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x3e8

    if-gt v1, v0, :cond_0

    const/16 v1, 0x1fa5

    if-ne v0, v1, :cond_1

    iput-object p1, p0, Lcom/android/settings/nfc/PaymentBackend;->mAppName:Landroid/content/ComponentName;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v1, 0x23c1

    if-eq v0, v1, :cond_2

    const/16 v1, 0x244b

    if-ne v0, v1, :cond_3

    :cond_2
    const v1, 0x7f0a1642

    invoke-virtual {p0, v1}, Lcom/android/settings/nfc/PaymentBackend;->showErrorDialog(I)V

    goto :goto_0

    :cond_3
    const v1, 0x7f0a1643

    invoke-virtual {p0, v1}, Lcom/android/settings/nfc/PaymentBackend;->showErrorDialog(I)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/settings/nfc/PaymentBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "nfc_payment_default_component"

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    goto :goto_1
.end method

.method setForegroundMode(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/nfc/PaymentBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "nfc_payment_foreground"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method showErrorDialog(I)V
    .locals 4

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/nfc/PaymentBackend;->mContext:Landroid/content/Context;

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
