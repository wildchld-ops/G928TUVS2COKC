.class public Lcom/sec/android/app/launcher/utils/LauncherFeature;
.super Ljava/lang/Object;
.source "LauncherFeature.java"


# static fields
.field private static CSCFEATURE_ZEROPAGE_ENABLED:Z = false

.field private static CSCFEATURE_ZEROPAGE_PACKAGENAME:Ljava/lang/String; = null

.field private static DEFAULT_ZEROPAGE_STATE:Z = false

.field private static final OEM_DIALER_CLASS_NAME:Ljava/lang/String; = "com.android.dialer.DialtactsActivity"

.field private static final OEM_DIALER_PACKAGE_NAME:Ljava/lang/String; = "com.android.contacts"

.field private static TAG:Ljava/lang/String; = null

.field private static final T_DIALER_CLASS_NAME:Ljava/lang/String; = "com.skt.prod.dialer.activities.main.MainActivity"

.field private static final T_DIALER_PACKAGE_NAME:Ljava/lang/String; = "com.skt.prod.dialer"

.field public static mCountryCode:Ljava/lang/String;

.field public static mIsEdge:Z

.field public static mProductName:Ljava/lang/String;

.field public static mSalesCode:Ljava/lang/String;

.field public static mSupportFolderItemMove:Z

.field private static final mSupportHomeModeChange:Z

.field public static mSupportHotWord:Z

.field public static mSupportTheme:Z

.field private static final mUseAlphabeticalOrder:Z

.field public static mUseAtoZButton:Z

.field public static mUseCustomerDialerChange:Z

.field public static mUseCustomerLauncher_JPN:Z

.field public static mUseEmptyMsg:Z

.field public static mUseFolderPopup:Z

.field public static mUseMoreService:Z

.field public static mUsePhilippe:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-class v0, Lcom/sec/android/app/launcher/utils/LauncherFeature;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/launcher/utils/LauncherFeature;->TAG:Ljava/lang/String;

    sput-boolean v1, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mUseMoreService:Z

    sput-boolean v1, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mIsEdge:Z

    sput-boolean v1, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mUseCustomerDialerChange:Z

    sput-boolean v1, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mUseEmptyMsg:Z

    sput-boolean v2, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mSupportHotWord:Z

    sput-boolean v1, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mSupportTheme:Z

    sput-boolean v1, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mUsePhilippe:Z

    sput-boolean v1, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mUseCustomerLauncher_JPN:Z

    sput-boolean v1, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mUseFolderPopup:Z

    sput-boolean v1, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mUseAtoZButton:Z

    sput-boolean v1, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mSupportFolderItemMove:Z

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Launcher_EnableViewByAlphabetAsDefault"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mUseAlphabeticalOrder:Z

    sput-boolean v2, Lcom/sec/android/app/launcher/utils/LauncherFeature;->DEFAULT_ZEROPAGE_STATE:Z

    sput-boolean v2, Lcom/sec/android/app/launcher/utils/LauncherFeature;->CSCFEATURE_ZEROPAGE_ENABLED:Z

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Launcher_ConfigZeroPageApp"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/launcher/utils/LauncherFeature;->CSCFEATURE_ZEROPAGE_PACKAGENAME:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_LAUNCHER_SUPPORT_HOME_MODE_CHANGE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mSupportHomeModeChange:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkA8Device()Z
    .locals 2

    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "a8lte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "a8elte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static checkAtoZButton()V
    .locals 3

    sget-boolean v0, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mUseAlphabeticalOrder:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mUseAtoZButton:Z

    :goto_0
    sget-object v0, Lcom/sec/android/app/launcher/utils/LauncherFeature;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAtoZButton mUseAlphabeticalOrder ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mUseAlphabeticalOrder:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mUseAtoZButton="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mUseAtoZButton:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mUseAtoZButton:Z

    goto :goto_0
.end method

.method public static checkDualScreen()Z
    .locals 2

    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "vlte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static checkEdgeDevice(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.samsung.app.cocktailbarservice.settings.SETTINGSMAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    sput-boolean v3, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mIsEdge:Z

    :cond_0
    return-void
.end method

.method public static checkFolderItemMove()V
    .locals 2

    const-string v0, "China"

    sget-object v1, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mProductName:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mProductName:Ljava/lang/String;

    const-string v1, "noblelte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mProductName:Ljava/lang/String;

    const-string v1, "zenlte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mSupportFolderItemMove:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkNobleDevice()Z
    .locals 2

    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "noblelte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "zenlte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static checkPhilippeProduct()V
    .locals 2

    const-string v0, "philippeltezm"

    sget-object v1, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mProductName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mUsePhilippe:Z

    return-void
.end method

.method private static checkSupportHotWord()V
    .locals 2

    const-string v0, "CHZ"

    sget-object v1, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CHN"

    sget-object v1, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CHM"

    sget-object v1, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CHU"

    sget-object v1, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CTC"

    sget-object v1, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CHC"

    sget-object v1, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mSupportHotWord:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static checkSupportTheme()V
    .locals 2

    const-string v0, "philippeltezm"

    sget-object v1, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mProductName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "royceltectc"

    sget-object v1, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mProductName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mSupportTheme:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static checkUseCustomerDialerChange()V
    .locals 2

    const-string v0, "SKT"

    sget-object v1, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SKC"

    sget-object v1, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mUseCustomerDialerChange:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static checkUseCustomerLauncher_JPN()V
    .locals 2

    const-string v0, "DCM"

    sget-object v1, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "KDI"

    sget-object v1, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mUseCustomerLauncher_JPN:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static checkUseEmptyMsg()V
    .locals 2

    const-string v0, "VZW"

    sget-object v1, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ATT"

    sget-object v1, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TMO"

    sget-object v1, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "USA"

    sget-object v1, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mUseEmptyMsg:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static checkUseFolderPopup()V
    .locals 2

    const-string v0, "USA"

    const-string v1, "ro.csc.country_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CANADA"

    const-string v1, "ro.csc.country_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mUseFolderPopup:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static checkUseMoreService()V
    .locals 2

    const-string v0, "CHM"

    sget-object v1, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mUseMoreService:Z

    return-void
.end method

.method public static checkZeroPageCscFeature()V
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v4, "CscFeature_Launcher_ConfigMagazineHome"

    invoke-virtual {v1, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "disable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    sput-boolean v1, Lcom/sec/android/app/launcher/utils/LauncherFeature;->CSCFEATURE_ZEROPAGE_ENABLED:Z

    const-string v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    sput-boolean v2, Lcom/sec/android/app/launcher/utils/LauncherFeature;->DEFAULT_ZEROPAGE_STATE:Z

    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public static getCscFeatureZeroPageEnable()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/launcher/utils/LauncherFeature;->CSCFEATURE_ZEROPAGE_ENABLED:Z

    return v0
.end method

.method public static getCscFeatureZeroPagePackagename()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/utils/LauncherFeature;->CSCFEATURE_ZEROPAGE_PACKAGENAME:Ljava/lang/String;

    return-object v0
.end method

.method public static getCustomerDialerClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.skt.prod.dialer.activities.main.MainActivity"

    return-object v0
.end method

.method public static getCustomerDialerPackageName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.skt.prod.dialer"

    return-object v0
.end method

.method public static getDefaultZeroPageState()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/launcher/utils/LauncherFeature;->DEFAULT_ZEROPAGE_STATE:Z

    return v0
.end method

.method public static getOemDialerClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.android.dialer.DialtactsActivity"

    return-object v0
.end method

.method public static getOemDialerPackageName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.android.contacts"

    return-object v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 8

    const-class v3, Lcom/sec/android/app/launcher/utils/LauncherFeature;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/sec/android/app/launcher/utils/LauncherFeature;->readSystemProperties()V

    invoke-static {}, Lcom/sec/android/app/launcher/utils/LauncherFeature;->checkUseMoreService()V

    invoke-static {}, Lcom/sec/android/app/launcher/utils/LauncherFeature;->checkUseCustomerDialerChange()V

    invoke-static {}, Lcom/sec/android/app/launcher/utils/LauncherFeature;->checkUseEmptyMsg()V

    invoke-static {}, Lcom/sec/android/app/launcher/utils/LauncherFeature;->checkSupportHotWord()V

    invoke-static {}, Lcom/sec/android/app/launcher/utils/LauncherFeature;->checkUseCustomerLauncher_JPN()V

    invoke-static {}, Lcom/sec/android/app/launcher/utils/LauncherFeature;->checkUseFolderPopup()V

    invoke-static {}, Lcom/sec/android/app/launcher/utils/LauncherFeature;->checkAtoZButton()V

    invoke-static {p0}, Lcom/sec/android/app/launcher/utils/LauncherFeature;->checkEdgeDevice(Landroid/content/Context;)V

    invoke-static {}, Lcom/sec/android/app/launcher/utils/LauncherFeature;->checkSupportTheme()V

    invoke-static {}, Lcom/sec/android/app/launcher/utils/LauncherFeature;->checkFolderItemMove()V

    invoke-static {}, Lcom/sec/android/app/launcher/utils/LauncherFeature;->checkPhilippeProduct()V

    invoke-static {}, Lcom/sec/android/app/launcher/utils/LauncherFeature;->checkZeroPageCscFeature()V

    sget-object v2, Lcom/sec/android/app/launcher/utils/LauncherFeature;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LauncherFeature init : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static readSystemProperties()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mSalesCode:Ljava/lang/String;

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mProductName:Ljava/lang/String;

    const-string v0, "ro.csc.country_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mCountryCode:Ljava/lang/String;

    return-void
.end method

.method public static supportDefaultHomeOnlyMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static supportHomeModeChange()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mSupportHomeModeChange:Z

    return v0
.end method
