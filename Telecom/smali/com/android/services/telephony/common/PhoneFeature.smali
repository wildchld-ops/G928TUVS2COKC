.class public Lcom/android/services/telephony/common/PhoneFeature;
.super Ljava/lang/Object;
.source "PhoneFeature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/telephony/common/PhoneFeature$Floating;
    }
.end annotation


# static fields
.field private static IncomingBargin_command:I

.field private static baseband:Ljava/lang/String;

.field private static buildcarrier:Ljava/lang/String;

.field private static countryiso_code:Ljava/lang/String;

.field private static deviceType:Ljava/lang/String;

.field private static language:Ljava/lang/String;

.field private static mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

.field private static mContext:Landroid/content/Context;

.field private static mFeatureList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static platform:Ljava/lang/String;

.field private static product_device:Ljava/lang/String;

.field private static salesCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    const-string v0, "ro.board.platform"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->platform:Ljava/lang/String;

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    const-string v0, "persist.sys.country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->language:Ljava/lang/String;

    const-string v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->deviceType:Ljava/lang/String;

    const-string v0, "ro.baseband"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->baseband:Ljava/lang/String;

    const-string v0, "ro.csc.countryiso_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    const-string v0, "ro.product.device"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->product_device:Ljava/lang/String;

    const/4 v0, 0x2

    sput v0, Lcom/android/services/telephony/common/PhoneFeature;->IncomingBargin_command:I

    return-void
.end method

.method public static hasDualLcdFeature()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "com.sec.feature.dual_lcd"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    const-string v1, "PhoneFeature"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasDualLcdFeature = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static hasFeature(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public static hasFolderTypeFeature()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "com.sec.feature.folder_type"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    const-string v1, "PhoneFeature"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasFolderTypeFeature = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static hasIlluminanceSensor()Z
    .locals 5

    const/4 v2, 0x0

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    move v1, v2

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    const/4 v4, 0x5

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-ne v4, v0, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public static hasOllehPhonePackage()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "feature_ktt"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "com.kt.ollehphone"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static hasPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v0, 0x1

    const/16 v2, 0x80

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasProximitySensor()Z
    .locals 5

    const/4 v2, 0x0

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    move v1, v2

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    const/16 v4, 0x8

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-ne v4, v0, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public static hasRCSBlackBird()Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_IMS_ConfigRcsFeatures"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "PARTIAL_BRANDED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static hasSPenFeature()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "com.sec.feature.spen_usp"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static hasTPhonePackage()Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isTablet()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "jalte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "feature_skt"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "com.skt.prod.phone"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static hasVTSupport(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "com.sec.feature.call_vt_support"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static hasVibratorFeature()Z
    .locals 4

    const/4 v1, 0x1

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v3, "ks01lte"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    return v1

    :cond_1
    move v1, v0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static hasVisualVoicemail()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "com.coremobility.app.vnotes"

    const-string v2, "com.coremobility.app.vnotes"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-boolean v0, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static isA8Project()Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "a8lte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "a8elte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isAProject()Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "a7"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "a5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "a3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isEProject()Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "e7"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "e5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isHProject()Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "h3g"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "ha3g"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "hlte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "htdlte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isJProject()Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "ja3g"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "jalte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "ks01lte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "jsgltezm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "jfltezm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "jflte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "jactivelte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "jfvelte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "jftdd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "jfve"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isKProject()Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "klte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "k3g"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "kqlte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "kccat6xx"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "lentislte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isMultiSimConfigDsdaEnabled()Z
    .locals 2

    const-string v0, "persist.radio.multisim.config"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dsda"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isMultiSimConfigDsdsEnabled()Z
    .locals 2

    const-string v0, "persist.radio.multisim.config"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dsds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "tsts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMultiSimTwoModem()Z
    .locals 2

    const-string v0, ""

    const-string v1, "DGG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "DTC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "DTCS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "DCG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "DCGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "DCGG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "DCGGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNobleProject()Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "noblelte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isNovel()Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "novel"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isPhilippeProject()Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "philippe"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isSCOExists()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    const-string v3, "com.smithmicro.mnd"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    const-string v3, "PhoneFeature"

    const-string v4, "SPRINT - SM SCO is installed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v3

    const-string v3, "PhoneFeature"

    const-string v4, "SPRINT - SM SCO is not installed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v2, :cond_1

    :try_start_1
    const-string v3, "com.birdstep.android.cm"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    const-string v2, "PhoneFeature"

    const-string v3, "SPRINT - BS SCO is installed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v0, "PhoneFeature"

    const-string v2, "SPRINT - BS SCO is not installed"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v0, "PhoneFeature"

    const-string v2, "SPRINT - BS & SM SCO are not installed"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0
.end method

.method public static isSrlte()Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "ro.ril.svlte1x"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isSupportHoveringUI(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "com.sec.feature.hovering_ui"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static isTProject()Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "trlte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "trhlte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "trelte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "tblte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "tbelte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "tre3g"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "trhplte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "tr3calte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "tre3calte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isTablet()Z
    .locals 2

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->deviceType:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->deviceType:Ljava/lang/String;

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTablets()Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "vienna"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "v1a3g"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isVoLTEAndMultiSIM()Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "CHN"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CHU"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CTC"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CHM"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CHC"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "enabled"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isMultiSimConfigDsdsEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isMultiSimConfigDsdaEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_1
    return v2

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_1
.end method

.method public static isZeroProject()Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "zerolte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "zeroqlte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "zeroflte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "zerofqlte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "zenlte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static makeFeature(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->makePreconditionForFeature()V

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->makeFeatureForCommon()V

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->makeFeatureForTablet()V

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->makeFeatureForChina()V

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->makeFeatureForIndia()V

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->makeFeatureForHKTW()V

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->makeFeatureForJapan()V

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->makeFeatureForKor()V

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->makeFeatureForUsa()V

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->makeFeatureForCanada()V

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->makeFeatureForLatin()V

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->makeFeatureForAustralia()V

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->makeFeatureForAfrica()V

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->makeFeatureForPhoneSearch()V

    return-void
.end method

.method public static makeFeatureForAfrica()V
    .locals 4

    const/4 v1, 0x0

    const-string v0, "ECT"

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "ui_for_ect"

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "common_vt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "volte_call_waiting_terminal"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static makeFeatureForAustralia()V
    .locals 9

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "TEL"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v0, "OPS"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v0, "TEL"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TLP"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BST"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BSP"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v0, "OPS"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "OPP"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_1
    move v0, v2

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string v0, "VAU"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "VAP"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_2
    move v0, v2

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v0, "XSA"

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "JBH"

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_3
    move v0, v2

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_4
    move v0, v2

    :goto_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_a

    :goto_5
    return-void

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_1

    :cond_7
    move v0, v1

    goto :goto_2

    :cond_8
    move v0, v1

    goto :goto_3

    :cond_9
    move v0, v1

    goto :goto_4

    :cond_a
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "telstra_ringback"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_b

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_b
    move v1, v2

    :cond_c
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "feature_tel"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "volte_call_waiting_terminal"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "remove_volte_outgoing_calltype_menu"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5
.end method

.method public static makeFeatureForCanada()V
    .locals 16

    const-string v0, "RWC"

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v0, "FMC"

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v0, "RWA"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v0, "BMC"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v0, "kvoltevl"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "kltevl"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "kltevlactive"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "jfltevl"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "jfltevw"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "hltevl"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "trltecan"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "zeroltebmc"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "zerofltebmc"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "chagallltevl"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sltecan"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "gprimeltevl"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tbltecan"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "nobleltebmc"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "zenltebmc"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v0, "d2vw"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "VTR"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_1
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string v0, "jfltevw"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "jfltewx"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_2
    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v7, "BMA"

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v8, "VMC"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const-string v9, "BWA"

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const-string v10, "TLS"

    sget-object v11, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const-string v11, "KDO"

    sget-object v12, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const-string v12, "ESK"

    sget-object v13, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const-string v13, "GLW"

    sget-object v14, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-nez v14, :cond_3

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-nez v14, :cond_3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_3
    const/4 v0, 0x1

    :goto_3
    if-nez v0, :cond_8

    :goto_4
    return-void

    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_7
    const/4 v0, 0x0

    goto :goto_3

    :cond_8
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v14, "beep_vibration_for_ussd"

    invoke-virtual {v0, v14, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v14, "hac_enable"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v14, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v15, "feature_rwc"

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_9
    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v14, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v14, "tty_enable"

    invoke-virtual {v0, v14, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v14, "disable_popupmsg_when_deactivationcf"

    invoke-virtual {v0, v14, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v14, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v15, "show_callforward_allcalls_string"

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_a
    const/4 v0, 0x1

    :goto_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v14, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v14, "feature_can"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v14, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v15, "video_call_disable"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasVTSupport(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1c

    :cond_b
    const/4 v0, 0x1

    :goto_7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v14, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v14, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v15, "video_call_not_support"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasVTSupport(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1d

    :cond_c
    const/4 v0, 0x1

    :goto_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v14, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v14, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v15, "networkmode_in_can"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_d
    const/4 v0, 0x1

    :goto_9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v14, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v14, "get_orig_dial_string_enable"

    invoke-virtual {v0, v14, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v14, "show_callsettings_ringtones_keytones_preference"

    invoke-virtual {v0, v14, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v14, "remove_minute_minder_setting"

    invoke-virtual {v0, v14, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v14, "save_cnap_info_in_call_log"

    invoke-virtual {v0, v14, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v14, "barge_in"

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    sget v15, Lcom/android/services/telephony/common/PhoneFeature;->IncomingBargin_command:I

    invoke-virtual {v0, v15}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isBargeInEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "gprimeltevl"

    sget-object v15, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    const/4 v0, 0x1

    :goto_a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v5, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "display_hd_icon"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v0, v5, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "common_volte"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v14, "canada_volte_ui"

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_e
    const/4 v0, 0x1

    :goto_b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v5, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v14, "video_connected_as_voice"

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_21

    :cond_f
    const/4 v0, 0x1

    :goto_c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v5, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v14, "incoming_call_widget_for_volte"

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_10
    const/4 v0, 0x1

    :goto_d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v5, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v14, "us_sound_path"

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_23

    :cond_11
    const/4 v0, 0x1

    :goto_e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v5, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v14, "modify_call_us"

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_24

    :cond_12
    const/4 v0, 0x1

    :goto_f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v5, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v14, "ims_capability_service"

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_25

    :cond_13
    const/4 v0, 0x1

    :goto_10
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v5, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "change_order_of_endcall_buttons"

    const-string v14, "canada_volte_ui"

    invoke-static {v14}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v0, v5, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "volte_call_waiting_terminal"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v0, v5, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v14, "ims_capability_check_on_call_end"

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_26

    :cond_14
    const/4 v0, 0x1

    :goto_11
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v5, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    const-string v0, "common_vt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v14, "concept_canada_common"

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_27

    :cond_16
    const/4 v0, 0x1

    :goto_12
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v5, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "gui_usa_fragment"

    const-string v2, "concept_canada_common"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "support_rotation"

    const-string v2, "concept_canada_common"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "clean_mode"

    const-string v2, "concept_canada_common"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "answer_option"

    const-string v2, "concept_canada_common"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "add_vt_hold_in_menu"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_28

    :cond_17
    const/4 v0, 0x1

    :goto_13
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "show_switch_icon_in_button"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "show_switch_icon_on_call_card"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "play_busy_tone_sup_busy"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "NEED_TO_SHOW_AS_FULLSCREEN_SECOND_SCREEN"

    const-string v2, "tbltecan"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "use_simple_network_word"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isNobleProject()Z

    move-result v0

    if-nez v0, :cond_19

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v3, "zenlte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    :cond_19
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_29

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_29

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_29

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_29

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_29

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_29

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_29

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_29

    const/4 v0, 0x1

    :goto_14
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_1a
    const/4 v0, 0x0

    goto/16 :goto_5

    :cond_1b
    const/4 v0, 0x0

    goto/16 :goto_6

    :cond_1c
    const/4 v0, 0x0

    goto/16 :goto_7

    :cond_1d
    const/4 v0, 0x0

    goto/16 :goto_8

    :cond_1e
    const/4 v0, 0x0

    goto/16 :goto_9

    :cond_1f
    const/4 v0, 0x0

    goto/16 :goto_a

    :cond_20
    const/4 v0, 0x0

    goto/16 :goto_b

    :cond_21
    const/4 v0, 0x0

    goto/16 :goto_c

    :cond_22
    const/4 v0, 0x0

    goto/16 :goto_d

    :cond_23
    const/4 v0, 0x0

    goto/16 :goto_e

    :cond_24
    const/4 v0, 0x0

    goto/16 :goto_f

    :cond_25
    const/4 v0, 0x0

    goto/16 :goto_10

    :cond_26
    const/4 v0, 0x0

    goto/16 :goto_11

    :cond_27
    const/4 v0, 0x0

    goto/16 :goto_12

    :cond_28
    const/4 v0, 0x0

    goto/16 :goto_13

    :cond_29
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public static makeFeatureForChina()V
    .locals 12

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v0, "CHN"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CHU"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CTC"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CHM"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CHC"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v0, "CTC"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v4, "ctc"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_1
    move v0, v2

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v0, "CHM"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v0, "CHC"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "ltetdzc"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_2
    move v0, v2

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string v0, "CHU"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v0, "CHN"

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "CHU"

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "CHM"

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "CHC"

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_3
    move v0, v2

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_4
    move v0, v2

    :goto_4
    if-nez v0, :cond_a

    :goto_5
    return-void

    :cond_5
    move v0, v1

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto :goto_1

    :cond_7
    move v0, v1

    goto :goto_2

    :cond_8
    move v0, v1

    goto :goto_3

    :cond_9
    move v0, v1

    goto :goto_4

    :cond_a
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "feature_chn"

    invoke-virtual {v0, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "feature_ctc"

    invoke-virtual {v0, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "fdn_nameinput_maxlength_limit"

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_21

    :cond_b
    move v0, v2

    :goto_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v9, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "auto_redial_time_delay"

    invoke-virtual {v0, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "remove_call_duration"

    const-string v10, "CHM"

    sget-object v11, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "support_spam_call"

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v11, "a8lte"

    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v11, "noblelte"

    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v11, "zenlte"

    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_c
    move v0, v2

    :goto_7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v9, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "support_spam_call_reject"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "support_spam_call_report"

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v11, "noblelte"

    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v11, "zenlte"

    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    :cond_d
    move v0, v2

    :goto_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v9, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "ip_call"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "action_bar_no_title_when_has_two_menu"

    const-string v10, "ip_call"

    invoke-static {v10}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "support_folder_hardkey"

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v11, "philippe"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "support_charges_notification_in_pnl"

    invoke-virtual {v0, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "call_block_ui"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "cdma_additional_setting_enable"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "hide_caller_id"

    invoke-virtual {v0, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "vt_call_fail_fallback"

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/services/telephony/common/PhoneFeature;->hasVTSupport(Landroid/content/Context;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "video_call_disable"

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasVTSupport(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_24

    :cond_e
    move v0, v2

    :goto_9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v9, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "separate_call_reject"

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasVTSupport(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isZeroProject()Z

    move-result v0

    if-nez v0, :cond_25

    move v0, v2

    :goto_a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v9, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "vt_cmcc_operator_fallback"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_26

    const-string v0, "common_vt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    move v0, v2

    :goto_b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v9, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "vt_cmcc_adjust_camera_contrast_brightness"

    invoke-virtual {v0, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "vt_cmcc_adjust_screen_brightness"

    invoke-virtual {v0, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "vt_audio_mixed_recording"

    invoke-virtual {v0, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "vt_audio_mixed_recording_via_stack"

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v11, "h3gzm"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "vt_multimedia_ringback_tone_timer"

    invoke-virtual {v0, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "vt_cmcc_operator_open_close_camera"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_27

    const-string v0, "common_vt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    move v0, v2

    :goto_c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v9, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "vt_cmcc_accept_by_voicecall"

    invoke-virtual {v0, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "vt_cmcc_display_start_call_time"

    invoke-virtual {v0, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "support_rotation"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isZeroProject()Z

    move-result v0

    if-eqz v0, :cond_28

    move v0, v2

    :goto_d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v9, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "remove_network_mode"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "network_mode_list_lte"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "jfltezm"

    sget-object v11, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    :cond_f
    const-string v0, "hltetdzc"

    sget-object v11, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    :cond_10
    move v0, v2

    :goto_e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v9, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "preferred_networks"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "network_mode_list_lte"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2a

    :cond_11
    move v0, v2

    :goto_f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v9, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "network_mode_td_open_l_osup"

    const-string v0, "chagallltetdzc"

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "klimtltetdzc"

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "a5ltezc"

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    :cond_12
    move v0, v2

    :goto_10
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "NETWORK_MODE_NOT_SUPPORT_3G_ONLY_AND_2G_ONLY"

    const-string v0, "network_mode_list_lte"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "network_mode_td_open_l_osup"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "support_all_rat"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    :cond_13
    move v0, v2

    :goto_11
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "display_tdscdma_instead_of_wcdma"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2d

    :cond_14
    move v0, v2

    :goto_12
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "phone_number_locator"

    invoke-virtual {v0, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "geo_description_disable"

    invoke-virtual {v0, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "ctc_country_code_locator"

    invoke-virtual {v0, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_lunar_birthday"

    invoke-virtual {v0, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "disable_sip_call_setting"

    invoke-virtual {v0, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "reject_call_with_message_icon_mode"

    const-string v9, "ICON"

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "suppor_mute_button_in_easy_mode"

    const-string v0, "support_easy_mode"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string v0, "common_vt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2e

    move v0, v2

    :goto_13
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "yellowpage_callerid_info"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "visual_call_center_callerid_info"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "cdma_apn_enable"

    invoke-virtual {v0, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "ctc_call_time_duration"

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "support_all_rat"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    :cond_15
    move v0, v2

    :goto_14
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "ctc_vip_mode"

    invoke-virtual {v0, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "nobleltectc"

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "cdma_call_forwarding_indicator"

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "feature_multisim_preferred_sim"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "sim2_2g_only"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "vt_missed_noti_during_call"

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_30

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasVTSupport(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_30

    move v0, v2

    :goto_15
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "feature_multisim_emergency_call_cp_limitation"

    const-string v8, "klteduosctc"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "feature_multisim_emergency_call_ctc"

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isMultiSimConfigDsdsEnabled()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isMultiSimConfigDsdaEnabled()Z

    move-result v0

    if-eqz v0, :cond_31

    :cond_16
    move v0, v2

    :goto_16
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "feature_multisim_modem_type_DCGS"

    const-string v8, "DCGS"

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "feature_multisim_modem_type_DCGGS"

    const-string v8, "DCGGS"

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "feature_multisim_display_sim_icon"

    const-string v8, "feature_multisim"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "ctc_cdma_smc_fac_req"

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "support_all_rat"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    :cond_17
    move v0, v2

    :goto_17
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "get_orig_dial_string_enable"

    invoke-virtual {v0, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "network_mode_cmcc"

    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "network_mode_only_cmcc_card_support_4g"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_33

    const-string v0, "philippeltezm"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    move v0, v2

    :goto_18
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "emergency_call_sprd_multisim"

    const-string v8, "trlteduoszn"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "barge_in"

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    sget v9, Lcom/android/services/telephony/common/PhoneFeature;->IncomingBargin_command:I

    invoke-virtual {v0, v9}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isBargeInEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_34

    const-string v0, "zerofltezm"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    const-string v0, "philippeltezm"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "a5lte"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    move v0, v2

    :goto_19
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "disable_waiting_tone_by_network"

    invoke-virtual {v0, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "PhoneFeature"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "makeFeatureForCommon() IMS.COMMON_VOLTE:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "common_volte"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "common_volte"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "volte_settings_in_mobile_networks_common"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "volte_settings_in_mobile_networks_chn"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "volte_call_waiting_terminal"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "ims_voice_conference"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "volte_cmcc_data_enable_popup"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "ims_voice_conference_cmcc"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "incoming_call_widget_for_volte"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "cmcc_color_ringback_tone"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "gui_chn_fragment"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "ui_for_chn"

    const-string v8, "common_vt"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "display_hd_icon"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isZeroProject()Z

    move-result v0

    if-nez v0, :cond_18

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "a8lte"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_35

    :cond_18
    move v0, v2

    :goto_1a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "volte_chn_callsetting_apn_prompt"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "volte_call_waiting_terminal"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "outgoing_image_from_gallery"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "rearrange_preset_image_setting"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "show_forwarding_number"

    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    const-string v0, "CHM"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "enable_volte_hold_tone"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "volte_chn_callsetting_data_prompt"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "disable_outgoing_callbarring_cmcc"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "skip_call_barring_outgoing"

    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "volte_cmcc_cfu_time"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_psvt_only"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isZeroProject()Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isNobleProject()Z

    move-result v0

    if-eqz v0, :cond_36

    :cond_1b
    move v0, v2

    :goto_1b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "old_cp_select_network"

    const-string v0, "h3gzm"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "jfltezm"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    :cond_1c
    move v0, v2

    :goto_1c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "call_end_time_blink_ja3g"

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "ja3g"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "block_call_during_lpm_dsds"

    const-string v0, "trlteduoszn"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string v0, "trlteduoszc"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    :cond_1d
    move v0, v2

    :goto_1d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "feature_chn_home_dsda_roaming_dsds"

    const-string v0, "trlteduosctc"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "trlteduoszm"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    :cond_1e
    move v0, v2

    :goto_1e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "hot_swap_type_qcom"

    const-string v8, "QCOM"

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "not_support_ims_conference_split"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "china_cdma_call"

    invoke-virtual {v0, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "remove_cdma_call_barring"

    invoke-virtual {v0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "chn_cdma_network_on_all_rat"

    const-string v7, "support_all_rat"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "change_network_mode_with_ctc_card_for_six_mode"

    const-string v7, "support_all_rat"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "chn_cdma_setting_on_all_rat"

    const-string v7, "support_all_rat"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "ctc_call_time_duration_for_six_mode"

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3a

    const-string v0, "support_all_rat"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    move v0, v2

    :goto_1f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "emergency_call_state_update_after_dial"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "support_at_command_for_cmcc_volte_test"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1f

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_20

    :cond_1f
    move v1, v2

    :cond_20
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_21
    move v0, v1

    goto/16 :goto_6

    :cond_22
    move v0, v1

    goto/16 :goto_7

    :cond_23
    move v0, v1

    goto/16 :goto_8

    :cond_24
    move v0, v1

    goto/16 :goto_9

    :cond_25
    move v0, v1

    goto/16 :goto_a

    :cond_26
    move v0, v1

    goto/16 :goto_b

    :cond_27
    move v0, v1

    goto/16 :goto_c

    :cond_28
    move v0, v1

    goto/16 :goto_d

    :cond_29
    move v0, v1

    goto/16 :goto_e

    :cond_2a
    move v0, v1

    goto/16 :goto_f

    :cond_2b
    move v0, v1

    goto/16 :goto_10

    :cond_2c
    move v0, v1

    goto/16 :goto_11

    :cond_2d
    move v0, v1

    goto/16 :goto_12

    :cond_2e
    move v0, v1

    goto/16 :goto_13

    :cond_2f
    move v0, v1

    goto/16 :goto_14

    :cond_30
    move v0, v1

    goto/16 :goto_15

    :cond_31
    move v0, v1

    goto/16 :goto_16

    :cond_32
    move v0, v1

    goto/16 :goto_17

    :cond_33
    move v0, v1

    goto/16 :goto_18

    :cond_34
    move v0, v1

    goto/16 :goto_19

    :cond_35
    move v0, v1

    goto/16 :goto_1a

    :cond_36
    move v0, v1

    goto/16 :goto_1b

    :cond_37
    move v0, v1

    goto/16 :goto_1c

    :cond_38
    move v0, v1

    goto/16 :goto_1d

    :cond_39
    move v0, v1

    goto/16 :goto_1e

    :cond_3a
    move v0, v1

    goto :goto_1f
.end method

.method public static makeFeatureForCommon()V
    .locals 14

    const/4 v2, 0x0

    const/4 v3, 0x1

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v1, "lte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "ATL"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "AVF"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CNX"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CYV"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MOB"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MTL"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "OMN"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SIM"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SWC"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TCL"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VD2"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VDC"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VDF"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VDH"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VDI"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VGR"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VIP"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VOD"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "XFV"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VDR"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VDP"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VOP"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SFR"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TOP"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    :cond_0
    move v1, v3

    :goto_0
    const-string v4, "jftddzh"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "jftddzn"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "kccat6xx"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "carmen2xx"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "jftddxx"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "carmen2zm"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    move v0, v3

    :cond_2
    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "enabled"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "enabled"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c8

    const/4 v4, 0x0

    :try_start_0
    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->isServiceAvailable(ILandroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    :try_start_1
    const-string v4, "PhoneFeature"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "makeFeatureForCommon(): IMS.COMMON_VOLTE is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_4e

    const/4 v4, 0x4

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    invoke-static {v4, v6}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->isServiceAvailable(ILandroid/content/Context;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v4

    if-eqz v4, :cond_4e

    move v4, v3

    :goto_1
    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isVoLTEAndMultiSIM()Z

    move-result v6

    if-eqz v6, :cond_3

    move v5, v3

    :cond_3
    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "enabled_boost_cpu"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "no_rfchip_ldu_device"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "zerolteldu"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "zeroflteldu"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4f

    :cond_4
    move v6, v3

    :goto_2
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "feature_org"

    const-string v6, "OFR"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "SFR"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "FTM"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "FTB"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_50

    :cond_5
    move v6, v3

    :goto_3
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "feature_dt"

    const-string v6, "DTM"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "DTR"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "DCZ"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "TMZ"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "TPL"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "TNL"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_51

    :cond_6
    move v6, v3

    :goto_4
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "simulation_enabled"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "ims_callplus"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_IMS_SupportCallPlus"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "ims_rcs"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "tablet_l_osup"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "chagall"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "klimt"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "matisse"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "vienna"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "millet"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "v1a3gxx"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "degas"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "v2lte"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "lt03"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_52

    :cond_7
    move v6, v3

    :goto_5
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "tablet_l"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "gt5"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "gts2"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_53

    :cond_8
    move v6, v3

    :goto_6
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "ims_rcs_bb"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->hasRCSBlackBird()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "common_volte"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "common_vt"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "j_device"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isJProject()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "use_action_memo_string"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isTProject()Z

    move-result v6

    if-nez v6, :cond_9

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isHProject()Z

    move-result v6

    if-nez v6, :cond_9

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isTablets()Z

    move-result v6

    if-eqz v6, :cond_54

    :cond_9
    move v6, v3

    :goto_7
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_VoiceCall_ConfigRecording"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "voice_call_recording"

    const-string v9, "RecordingAllowed"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "voice_call_recording_easy_mode"

    const-string v8, "voice_call_recording"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "voice_call_recording_call_log"

    const-string v6, "voice_call_recording"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_55

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v9, "CscFeature_Contact_EnableLogIconForVoiceRecord"

    invoke-virtual {v6, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_55

    move v6, v3

    :goto_8
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "default_caller_information"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "ATL"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    const-string v6, "AVF"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    const-string v6, "CNX"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    const-string v6, "OMN"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    const-string v6, "TCL"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    const-string v6, "VD2"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    const-string v6, "VDC"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    const-string v6, "VDF"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    const-string v6, "VDH"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    const-string v6, "VDI"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    const-string v6, "VGR"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    const-string v6, "VOD"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_56

    :cond_a
    move v6, v3

    :goto_9
    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "video_call_button_disable"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "remove_volte_outgoing_calltype_menu"

    const-string v6, "common_volte"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_57

    const-string v6, "SFR"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string v6, "EVR"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string v6, "XSG"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    if-eqz v1, :cond_57

    :cond_b
    move v6, v3

    :goto_a
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "volte_outgoing_calltype_default_on"

    const-string v6, "common_volte"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_58

    const-string v6, "XSG"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_58

    move v6, v3

    :goto_b
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "volte_settings_in_mobile_networks_eur"

    const-string v6, "NEE"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string v6, "NEV"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string v6, "PHN"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string v6, "VD2"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string v6, "DTM"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string v6, "DTR"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string v6, "TMZ"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string v6, "DCZ"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string v6, "VIA"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string v6, "SWC"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string v6, "MOB"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_59

    :cond_c
    move v6, v3

    :goto_c
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "disable_call_barring"

    const-string v8, "VIA"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "show_call_barring_password"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "volte_settings_in_mobile_networks_common"

    const-string v6, "volte_settings_in_mobile_networks_eur"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_d

    const-string v6, "THL"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5a

    :cond_d
    move v6, v3

    :goto_d
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_additional_ss_query"

    const-string v6, "common_volte"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5b

    const-string v6, "SIN"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    const-string v6, "TEL"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5b

    :cond_e
    move v6, v3

    :goto_e
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "default_volte"

    const-string v8, "common_volte"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "volte_call_waiting_terminal"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "volte_call_waiting_default_off"

    const-string v6, "AUT"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    const-string v6, "OMN"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5c

    :cond_f
    move v6, v3

    :goto_f
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "feature_multisim_display_sim_icon"

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "a8eltejv"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "DTR"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    const-string v6, "DTM"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    const-string v6, "DCZ"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    const-string v6, "TMZ"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5d

    :cond_10
    move v6, v3

    :goto_10
    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "dtr_volte_ui"

    const-string v9, "common_volte"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5e

    if-eqz v6, :cond_5e

    move v6, v3

    :goto_11
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "default_incomingcall_popup"

    const-string v6, "j_device"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5f

    const-string v6, "tablet_l_osup"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5f

    move v6, v3

    :goto_12
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "fdn_button_call"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_VoiceCall_EnableCallButtonInFdnList"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "fdn_nameinput_maxlength_limit"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "default_vm_in_callforwarding"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_VoiceCall_EnableVmsNumberAsDefaultInCallForwarding"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "disable_sip_call_setting"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isTProject()Z

    move-result v6

    if-nez v6, :cond_11

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isAProject()Z

    move-result v6

    if-nez v6, :cond_11

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isEProject()Z

    move-result v6

    if-nez v6, :cond_11

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "gprimeltevl"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_60

    :cond_11
    move v6, v3

    :goto_13
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_proximity sensor menu"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isJProject()Z

    move-result v6

    if-nez v6, :cond_12

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isHProject()Z

    move-result v6

    if-eqz v6, :cond_61

    :cond_12
    move v6, v3

    :goto_14
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "menu_simplification"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "disable_auto_area_code"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "hide_popup_progress_view"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "call_block_list_ui"

    const-string v6, "menu_simplification"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_62

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isNobleProject()Z

    move-result v6

    if-nez v6, :cond_13

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "zen"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_62

    :cond_13
    move v6, v3

    :goto_15
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "use_switch_preference"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "use_simple_network_word"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isNobleProject()Z

    move-result v6

    if-nez v6, :cond_14

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "zenlte"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_63

    :cond_14
    move v6, v3

    :goto_16
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_only_contact_with_phone"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isNobleProject()Z

    move-result v6

    if-nez v6, :cond_15

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "zen"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_64

    :cond_15
    move v6, v3

    :goto_17
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "hac_enable"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v9, "CscFeature_Setting_SupportHAC"

    invoke-virtual {v6, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_65

    move v6, v3

    :goto_18
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "ringtone_mute_gap"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->needMuteGap()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "support_safetycare"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Common_ConfigNetworkModeDuringEmergency"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_safetycare_not_change_network_mode"

    const-string v9, "support_safetycare"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_66

    const-string v9, "NOCHANGE"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_66

    move v6, v3

    :goto_19
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "support_wfc"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Setting_SupportWifiCall"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_wfc_dt"

    const-string v6, "support_wfc"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_67

    const-string v6, "DTR"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_16

    const-string v6, "DTM"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_16

    const-string v6, "TMZ"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_16

    const-string v6, "DCZ"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_16

    const-string v6, "FTM"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_16

    const-string v6, "ORO"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_67

    :cond_16
    move v6, v3

    :goto_1a
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "show_wifi_calling_menu"

    const-string v6, "AUT"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_68

    const-string v6, "CH"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_68

    move v6, v3

    :goto_1b
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "national_roaming_mode_menu"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Setting_EnableDataRoamingMenuInDetail"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "national_roaming_mode_menu_play"

    const-string v6, "PRT"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_17

    const-string v6, "XEO"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_69

    :cond_17
    move v6, v3

    :goto_1c
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "data_roaming_option_national"

    const-string v8, "national"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Setting_DataRoamingOption"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "data_roaming_option_all"

    const-string v8, "all"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Setting_DataRoamingOption"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "data_roaming_noti_tray"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Setting_EnableDataRoamingButtonInQuickPanel"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "remove_network_mode_wcdma_gsm_only"

    const-string v8, "wcdmagsmonly"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Setting_DisableNetworkMode"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "remove_network_mode_wcdma_only"

    const-string v8, "wcdmaonly"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Setting_DisableNetworkMode"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "remove_network_mode_gsm_only"

    const-string v8, "gsmonly"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Setting_DisableNetworkMode"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "remove_network_mode_lte"

    const-string v8, "lte"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Setting_DisableNetworkMode"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "cust_network_sel_menu4_atl_lte"

    const-string v8, "ATL"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Setting_CustNetworkSelMenu4"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "cust_network_sel_menu4_o2"

    const-string v8, "O2"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Setting_CustNetworkSelMenu4"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "cust_network_sel_menu4_orange"

    const-string v8, "ORANGE"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Setting_CustNetworkSelMenu4"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "cust_network_sel_menu4_sfr"

    const-string v8, "SFR"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Setting_CustNetworkSelMenu4"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "cust_network_sel_menu4_vodafone"

    const-string v8, "VODAFONE"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Setting_CustNetworkSelMenu4"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "cust_network_sel_menu4_yog"

    const-string v8, "YOG"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Setting_CustNetworkSelMenu4"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "cust_network_sel_menu4_via"

    const-string v8, "VIA"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Setting_CustNetworkSelMenu4"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "cust_network_sel_menu4_numeric"

    const-string v8, "NUMERIC"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Setting_CustNetworkSelMenu4"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "cust_network_sel_menu4_character"

    const-string v8, "CHARACTER"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Setting_CustNetworkSelMenu4"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_2
    invoke-static {}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getInstance()Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v6

    if-eqz v6, :cond_6a

    invoke-virtual {v6}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getLTESettingState()Z

    move-result v6

    if-eqz v6, :cond_6a

    const-string v6, "PhoneFeature"

    const-string v7, "makeFeatureForCommon(): Knox Customization: LTE Setting is true"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "cust_network_sel_menu4_lteonly"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1d
    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "network_state_manual_search"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Setting_ManualSearchListWithDetailStatus"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "bootup_data_connection_popup"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Setting_EnableDataServicePopup"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "bootup_data_tariff_rate_popup"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Settig_EnableDataTariffWizard"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "emergency_contacts_item"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "emergency_dialer_sound_pool_tones_haptic"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "emergency_dialer_haptic_feedback_enabled"

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v8

    const-string v9, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_VIBETONZ"

    invoke-virtual {v8, v9}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "emergency_contacts"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "emergency_dialer_expandable_dial"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "play_emergency_dialer_key_tone"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isNovel()Z

    move-result v6

    if-nez v6, :cond_18

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isPhilippeProject()Z

    move-result v6

    if-eqz v6, :cond_6b

    :cond_18
    move v6, v3

    :goto_1e
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "show_extra_volume_in_call_card"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isJProject()Z

    move-result v6

    if-nez v6, :cond_6c

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isHProject()Z

    move-result v6

    if-nez v6, :cond_6c

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "klimtltexx"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6c

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "millet"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6c

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "hllte"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6c

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "hl3g"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6c

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "t0lte"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6c

    move v6, v3

    :goto_1f
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "show_personalise_sound_in_call_card"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isJProject()Z

    move-result v6

    if-nez v6, :cond_19

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isHProject()Z

    move-result v6

    if-nez v6, :cond_19

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "hllte"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_19

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "hl3g"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_19

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "t0lte"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6d

    :cond_19
    move v6, v3

    :goto_20
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "enbale_voicerecording_popup_when_incoming"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "dtmf_smaller_hit_target"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "support_subaddress_settings"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "disable_mobile_data_settings"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "network_selection_delay"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "allow_select_network_mode"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "support_conference_call"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "support_call_transfer"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "support_merge_call"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "support_all_rat"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "extra_volume"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "default_noise_reduction"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_voice_eq_bt_headset"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isJProject()Z

    move-result v6

    if-nez v6, :cond_1a

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isHProject()Z

    move-result v6

    if-eqz v6, :cond_6e

    :cond_1a
    move v6, v3

    :goto_21
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "noise_suppression"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "noise_suppression_support_speaker"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "enable_noise_reduction_in_wbamr"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "force_initial_audiostate"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "extra_ringer"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->hasIlluminanceSensor()Z

    move-result v6

    if-eqz v6, :cond_6f

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isJProject()Z

    move-result v6

    if-nez v6, :cond_1b

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isHProject()Z

    move-result v6

    if-eqz v6, :cond_6f

    :cond_1b
    move v6, v3

    :goto_22
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "extra_ringer_default_on"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "vt_audio_processing_on_ap"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "psvt_audio_processing_on_ap"

    const-string v8, "IMS_HYBRID_CMC"

    const-string v9, "IMS_HYBRID_CMC"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1c

    const-string v8, "IMS_HYBRID_IMC"

    const-string v9, "IMS_HYBRID_CMC"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c

    :cond_1c
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "disable_autoanswer_in_silent_and_earjackmode"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_VoiceCall_DisableAutoAnswerInSilentNEarjactMode"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "disable_button_sound_effects"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "audio_vt_support_by_ap"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "write_sleep_checking_file"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->platform:Ljava/lang/String;

    if-eqz v6, :cond_70

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->platform:Ljava/lang/String;

    const-string v9, "apq8064"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_70

    move v6, v3

    :goto_23
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "disappear_ussd_cancel_popup"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_VoiceCall_DisableUssdCancelPopup"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "beep_vibration_for_ussd"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_VoiceCall_EnableBeepVibration4UssdAlert"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "keypad_type_to_phone_for_ussd"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_VoiceCall_KeypadTypeToDigit4UssdInput"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "geo_description_disable"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_VoiceCall_DisableGeoDescription"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "in_call_menu_message_enable"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "in_call_menu_contact_enable"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "in_call_menu_memo_enable"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "ha3g"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_71

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "hlte"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_71

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "h3g"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_71

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "htdlte"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_71

    move v6, v3

    :goto_24
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "support_mirror_link"

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "a3ulte"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_easy_mode"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isNobleProject()Z

    move-result v6

    if-nez v6, :cond_72

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isZeroProject()Z

    move-result v6

    if-nez v6, :cond_72

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isNovel()Z

    move-result v6

    if-nez v6, :cond_72

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isA8Project()Z

    move-result v6

    if-nez v6, :cond_72

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isPhilippeProject()Z

    move-result v6

    if-nez v6, :cond_72

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "s5neolte"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_72

    move v6, v3

    :goto_25
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_easy_mode_enhanced"

    const-string v6, "support_easy_mode"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_73

    const-string v6, "VZW"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_73

    move v6, v3

    :goto_26
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "support_hover_ui"

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->isSupportHoveringUI(Landroid/content/Context;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_hands_free_mode_incoming_call"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "ha3g"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_74

    const-string v6, "XXV"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1d

    const-string v6, "XEV"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_74

    :cond_1d
    move v6, v3

    :goto_27
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "force_turn_on_screen_for_new_incoming"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "vt_dual_camera"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "jactivelte"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_75

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "a7lte"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_75

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "a7alte"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_75

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "a73g"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_75

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "a3ulte"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_75

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "a5ulte"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_75

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "a5lte"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_75

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "a53g"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_75

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "e53g"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_75

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "hllte"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_75

    move v6, v3

    :goto_28
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "video_call_not_support"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasVTSupport(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_76

    move v6, v3

    :goto_29
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "vt_new_theme_animation"

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "hllte"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "vt_sec_phone_upgraded_ui"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "ja3g"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1e

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "jflte"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1e

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "jactivelte"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1e

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "ha3g"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1e

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "h3g"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1e

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "hlte"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1e

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "ks01lte"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1e

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "htdlte"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1e

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "jfvelte"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1e

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "hllte"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_77

    :cond_1e
    move v6, v3

    :goto_2a
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "vt_call_fail_fallback"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "ja3g"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "jfveltexx"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "jfvelteub"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "jflte"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "jactivelte"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "ks01lte"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_78

    :cond_1f
    move v6, v3

    :goto_2b
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "not_support_decoration"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "trlte"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_20

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "trelte"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_20

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "tre3g"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_20

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "tblte"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_20

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "klteactivexx"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_20

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "trhplte"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_20

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "a7lte"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_20

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "m2altexx"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_20

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "a7alte"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_20

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "a3ulte"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_20

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "a5ulte"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_20

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "a53g"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_20

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "e53g"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_20

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "a5lte"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_79

    :cond_20
    move v6, v3

    :goto_2c
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "vt_left_keypad_enable_ui"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isJProject()Z

    move-result v6

    if-nez v6, :cond_21

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isHProject()Z

    move-result v6

    if-eqz v6, :cond_7a

    :cond_21
    move v6, v3

    :goto_2d
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_vt_on_pop_up_window"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isTProject()Z

    move-result v6

    if-nez v6, :cond_22

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isZeroProject()Z

    move-result v6

    if-nez v6, :cond_22

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isHProject()Z

    move-result v6

    if-eqz v6, :cond_7b

    :cond_22
    move v6, v3

    :goto_2e
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "video_call_remove_record_button"

    const-string v8, "record,capture"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_VT_ConfigPrivacyPolicy"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "feature_multisim"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isMultiSimConfigDsdsEnabled()Z

    move-result v6

    if-nez v6, :cond_23

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isMultiSimConfigDsdaEnabled()Z

    move-result v6

    if-eqz v6, :cond_7c

    :cond_23
    move v6, v3

    :goto_2f
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "feature_multisim_dsds"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isMultiSimConfigDsdsEnabled()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "feature_multisim_dsda"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isMultiSimConfigDsdaEnabled()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "feature_multisim_emergency_call_cp_limitation"

    const-string v8, "feature_multisim"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "feature_multisim_preferred_sim"

    const-string v8, "feature_multisim"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "has_two_modem"

    const-string v6, "feature_multisim"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7d

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isMultiSimTwoModem()Z

    move-result v6

    if-eqz v6, :cond_7d

    move v6, v3

    :goto_30
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "qcom_cross_mapping"

    const-string v8, "feature_multisim"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_24

    :cond_24
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "flash_notification"

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v8

    const-string v9, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_FLASH_NOTIFICATION"

    invoke-virtual {v8, v9}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "support_motion"

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v8

    const-string v9, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION"

    invoke-virtual {v8, v9}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "disable_format_number"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Common_DisablePhoneNumberFormatting"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "personal_vibration"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->hasVibratorFeature()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_bottom_menu_hw_key"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isJProject()Z

    move-result v6

    if-nez v6, :cond_25

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isHProject()Z

    move-result v6

    if-nez v6, :cond_25

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "hllte"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7e

    :cond_25
    move v6, v3

    :goto_31
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "hide_buttons_on_menu_click"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "ha3g"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_26

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "ja3g"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7f

    :cond_26
    move v6, v3

    :goto_32
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "hide_phone_type_icon"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isJProject()Z

    move-result v6

    if-nez v6, :cond_27

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isHProject()Z

    move-result v6

    if-eqz v6, :cond_80

    :cond_27
    move v6, v3

    :goto_33
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "use_action_memo_duringcall"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isTProject()Z

    move-result v6

    if-nez v6, :cond_28

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isHProject()Z

    move-result v6

    if-nez v6, :cond_28

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->hasSPenFeature()Z

    move-result v6

    if-nez v6, :cond_28

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isNobleProject()Z

    move-result v6

    if-eqz v6, :cond_81

    :cond_28
    move v6, v3

    :goto_34
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "use_memo_string"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "lentislte"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_29

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "klte"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_29

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "kccat6xx"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_29

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "slte"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_29

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "milletlte"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_29

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "millet3g"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_29

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "matisse"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_29

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "e53g"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_29

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "mega2lte"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_29

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "kminilte"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_82

    :cond_29
    move v6, v3

    :goto_35
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "support_period_mark"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "support_wave_effect"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "display_default_arrow_for_cover"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "hw_home_key"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x1120060

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-nez v6, :cond_83

    move v6, v3

    :goto_36
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "mobile_data_popup"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Setting_EnablePromptPopupWhenActivatingDataConnection"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "gesture_callaccept"

    const-string v8, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AIR_MOTION"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "gesture_callaccept_k_device"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isKProject()Z

    move-result v6

    if-eqz v6, :cond_84

    const-string v6, "gesture_callaccept"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_84

    move v6, v3

    :goto_37
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "speaker_on_by_air_gesture"

    const-string v6, "gesture_callaccept"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_85

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isJProject()Z

    move-result v6

    if-nez v6, :cond_2a

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isHProject()Z

    move-result v6

    if-eqz v6, :cond_85

    :cond_2a
    move v6, v3

    :goto_38
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "turn_on_speaker_by_proxisensor"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "support_in_call_status_setting"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isHProject()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "disable_incoming_call_popup_during_camera"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isJProject()Z

    move-result v6

    if-nez v6, :cond_2b

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isHProject()Z

    move-result v6

    if-nez v6, :cond_2b

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v9, "CscFeature_Camera_EnableCameraDuringCall"

    invoke-virtual {v6, v9, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_86

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isTablet()Z

    move-result v6

    if-nez v6, :cond_86

    :cond_2b
    move v6, v3

    :goto_39
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "support_outgoing_call_popup_service"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "support_onehand_operation"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "support_mobile_keyboard"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "is_phone_osup"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isHProject()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "is_incallui_app"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isZeroProject()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "support_second_screen"

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "com.sec.feature.cocktailbar"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "disable_change_network_mode_for_none_bolt"

    const-string v6, "feature_multisim"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_87

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v9, "CscFeature_RIL_ConfigPsOnlyList"

    invoke-virtual {v6, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_87

    move v6, v3

    :goto_3a
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "force_lte_for_bolt_sim_after_device_reboot_complete"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v9, "CscFeature_RIL_ConfigPsOnlyList"

    invoke-virtual {v6, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_88

    move v6, v3

    :goto_3b
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "disable_call"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v9, "CscFeature_RIL_ConfigPsOnlyList"

    invoke-virtual {v6, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_89

    move v6, v3

    :goto_3c
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "clear_cover_increase_threshold"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isJProject()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "clear_cover_small_ui_support"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isJProject()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "clear_cover_ui_support"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "ha3g"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2c

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "hlte"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2c

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "h3g"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2c

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "htdlte"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8a

    :cond_2c
    move v6, v3

    :goto_3d
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "clear_cover_ui_support_for_kmodel"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isKProject()Z

    move-result v6

    if-eqz v6, :cond_8b

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "lentislte"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8b

    move v6, v3

    :goto_3e
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "slte_cover_gui"

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "slte"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "incoming_call_popup_osup"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isHProject()Z

    move-result v6

    if-nez v6, :cond_2d

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "hllte"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2d

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "hl3g"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2d

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "t0lte"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2d

    const-string v6, "js01ltedcm"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8c

    :cond_2d
    move v6, v3

    :goto_3f
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "mini_popup_call_ui"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isTProject()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "samsung_screen_timeout_incall"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "hold_strip_same_as_phone_os_up"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isJProject()Z

    move-result v6

    if-nez v6, :cond_2e

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isHProject()Z

    move-result v6

    if-nez v6, :cond_2e

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "hllte"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2e

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "hl3g"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2e

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "t0lte"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8d

    :cond_2e
    move v6, v3

    :goto_40
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "h_and_j_as_phone_os_up"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isJProject()Z

    move-result v6

    if-nez v6, :cond_2f

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isHProject()Z

    move-result v6

    if-nez v6, :cond_2f

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "hllte"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2f

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "hl3g"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2f

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "t0lte"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8e

    :cond_2f
    move v6, v3

    :goto_41
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "ll_phone_os_up"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isJProject()Z

    move-result v6

    if-nez v6, :cond_30

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isHProject()Z

    move-result v6

    if-nez v6, :cond_30

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isKProject()Z

    move-result v6

    if-nez v6, :cond_30

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isTProject()Z

    move-result v6

    if-eqz v6, :cond_8f

    :cond_30
    move v6, v3

    :goto_42
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "incoming_screen_on_immediately"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isJProject()Z

    move-result v6

    if-nez v6, :cond_31

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isHProject()Z

    move-result v6

    if-nez v6, :cond_31

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isTProject()Z

    move-result v6

    if-nez v6, :cond_31

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isKProject()Z

    move-result v6

    if-nez v6, :cond_31

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_90

    :cond_31
    move v6, v3

    :goto_43
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "network_rat_info_during_plmn_selection"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_RIL_UseRatInfoDuringPlmnSelection"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "network_mode_list_lte"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "hide_mini_call_icon"

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v8, "ha3g"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v8, "hlte"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v8, "h3g"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v8, "htdlte"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isJProject()Z

    move-result v0

    if-nez v0, :cond_32

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v8, "hllte"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_32

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v8, "hl3g"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_32

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v8, "t0lte"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_91

    :cond_32
    move v0, v3

    :goto_44
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-direct {v0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;-><init>()V

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "barge_in"

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    sget v8, Lcom/android/services/telephony/common/PhoneFeature;->IncomingBargin_command:I

    invoke-virtual {v0, v8}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isBargeInEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_92

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v8, "gts210lte"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_92

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v8, "gts28lte"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_92

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v8, "a3ulte"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_92

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v8, "a5"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_92

    move v0, v3

    :goto_45
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "ringtone_escalating"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "audio_global_effect"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "use_callstate_audio_param"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isNobleProject()Z

    move-result v0

    if-nez v0, :cond_33

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v8, "zenlte"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_93

    :cond_33
    move v0, v3

    :goto_46
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "support_rotation_only_camera"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isNobleProject()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "prevent_duplicated_popup_msg"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "voip_interworking"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SIN"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "sin_volte_ui"

    const-string v0, "common_volte"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_94

    if-eqz v7, :cond_94

    move v0, v3

    :goto_47
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "STH"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "sth_volte_ui"

    const-string v9, "common_volte"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_95

    if-eqz v0, :cond_95

    move v0, v3

    :goto_48
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "XSP"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "xsp_volte_ui"

    const-string v9, "common_volte"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_96

    if-eqz v0, :cond_96

    move v0, v3

    :goto_49
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "MM1"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "mm1_volte_ui"

    const-string v9, "common_volte"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_97

    if-eqz v0, :cond_97

    move v0, v3

    :goto_4a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "THL"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "thl_volte_ui"

    const-string v9, "common_volte"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_98

    if-eqz v0, :cond_98

    move v0, v3

    :goto_4b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "EVR"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v0, "TMU"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "evr_volte_ui"

    const-string v0, "common_volte"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_99

    if-eqz v8, :cond_99

    move v0, v3

    :goto_4c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "tmu_volte_ui"

    const-string v0, "common_volte"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9a

    if-eqz v9, :cond_9a

    move v0, v3

    :goto_4d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "support_both_csps_vt"

    const-string v0, "common_volte"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9b

    if-eqz v8, :cond_9b

    move v0, v3

    :goto_4e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "VD2"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "support_both_csps_vt"

    const-string v11, "common_volte"

    invoke-static {v11}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9c

    if-eqz v0, :cond_9c

    move v0, v3

    :goto_4f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "PHN"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "phn_volte_ui"

    const-string v11, "common_volte"

    invoke-static {v11}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9d

    if-eqz v0, :cond_9d

    move v0, v3

    :goto_50
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "BMA"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "bma_volte_ui"

    const-string v11, "common_volte"

    invoke-static {v11}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9e

    if-eqz v0, :cond_9e

    move v0, v3

    :goto_51
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v8, :cond_34

    const-string v0, "kccat6xx"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "remove_volte_outgoing_calltype_menu"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v0, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_34
    const-string v0, "sin_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_35

    const-string v0, "sth_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_35

    const-string v0, "xsp_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_35

    const-string v0, "mm1_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9f

    :cond_35
    move v6, v3

    :goto_52
    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "singapore_volte_ui"

    if-nez v6, :cond_36

    const-string v0, "OMN"

    sget-object v12, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a0

    :cond_36
    move v0, v3

    :goto_53
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "not_support_volte_merge"

    const-string v0, "common_volte"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a1

    if-eqz v7, :cond_a1

    move v0, v3

    :goto_54
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "NEE"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "nee_volte_ui"

    const-string v0, "common_volte"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a2

    if-eqz v10, :cond_a2

    move v0, v3

    :goto_55
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v7, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "handle_sip_error_code"

    const-string v0, "common_volte"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a3

    if-eqz v10, :cond_a3

    move v0, v3

    :goto_56
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v7, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SIN"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    const-string v0, "STH"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    const-string v0, "XSP"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    const-string v0, "MM1"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a4

    :cond_37
    move v7, v3

    :goto_57
    if-nez v7, :cond_38

    const-string v0, "OMN"

    sget-object v11, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    const-string v0, "XSG"

    sget-object v11, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a5

    :cond_38
    move v0, v3

    :goto_58
    sget-object v11, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "not_support_ims_conference_manage"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v11, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "not_support_ims_conference_split"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v7, :cond_39

    const-string v0, "OMN"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    const-string v0, "XSG"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a6

    :cond_39
    move v0, v3

    :goto_59
    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "not_support_ims_conference_disconnect"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v7, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v8, :cond_3a

    if-eqz v9, :cond_a7

    :cond_3a
    move v0, v3

    :goto_5a
    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "not_support_transfer_button_on_vowifi"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SWC"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "incoming_call_widget_for_volte"

    const-string v9, "common_volte"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a8

    if-eqz v0, :cond_a8

    move v0, v3

    :goto_5b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "PHN"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    const-string v0, "NEE"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a9

    :cond_3b
    move v0, v3

    :goto_5c
    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "ee_volte_ui"

    if-nez v0, :cond_3c

    const-string v7, "DTM"

    sget-object v11, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3c

    const-string v7, "DTR"

    sget-object v11, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3c

    const-string v7, "DCZ"

    sget-object v11, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3c

    const-string v7, "TMZ"

    sget-object v11, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3c

    const-string v7, "VIA"

    sget-object v11, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3c

    const-string v7, "OMN"

    sget-object v11, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_aa

    :cond_3c
    move v7, v3

    :goto_5d
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "support_both_csps_vt"

    const-string v7, "common_volte"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_ab

    if-eqz v0, :cond_ab

    move v7, v3

    :goto_5e
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "add_vt_hold_in_menu"

    if-nez v0, :cond_3d

    const-string v7, "VIA"

    sget-object v11, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ac

    :cond_3d
    move v7, v3

    :goto_5f
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "handle_sip_error_code"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "feature_dt"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "disable_hd_icon"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "display_hd_icon"

    const-string v9, "enabled"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3e

    if-eqz v0, :cond_3f

    :cond_3e
    if-eqz v1, :cond_ad

    :cond_3f
    move v0, v3

    :goto_60
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "XSG"

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "xsg_volte_ui"

    const-string v0, "common_volte"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ae

    if-eqz v1, :cond_ae

    move v0, v3

    :goto_61
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "BOG"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v0, "SEB"

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v0, "SFR"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string v0, "EVR"

    sget-object v11, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    const-string v0, "TMU"

    sget-object v11, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    const-string v0, "VOD"

    sget-object v11, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    const-string v0, "VD2"

    sget-object v11, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    const-string v0, "ATL"

    sget-object v11, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_af

    :cond_40
    move v0, v3

    :goto_62
    sget-object v11, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "show_vowifi_endcall_button"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v11, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "reduce_waste_point"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "start_incallui_bind_bootup"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "keep_incallui_bind_service"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v11, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "delay_activity_finish"

    const-string v0, "kccat6xx"

    sget-object v13, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b0

    move v0, v3

    :goto_63
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v11, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "close_system_dialog_in_call"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v11, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "support_penwindow_callscreen"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isHProject()Z

    move-result v0

    if-nez v0, :cond_41

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isTProject()Z

    move-result v0

    if-nez v0, :cond_41

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isZeroProject()Z

    move-result v0

    if-nez v0, :cond_41

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isNobleProject()Z

    move-result v0

    if-nez v0, :cond_41

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v13, "a8lte"

    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_41

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v13, "a8elte"

    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b1

    :cond_41
    move v0, v3

    :goto_64
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v11, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v11, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "support_penwindow_rotation"

    const-string v0, "support_penwindow_callscreen"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b2

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isNobleProject()Z

    move-result v0

    if-eqz v0, :cond_b2

    move v0, v3

    :goto_65
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v11, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "support_swis"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v11, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "show_switch_icon_in_button"

    if-eqz v4, :cond_b3

    const-string v0, "XFV"

    sget-object v13, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b3

    const-string v0, "support_swis"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b3

    move v0, v3

    :goto_66
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v11, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v11, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "show_switch_icon_on_call_card"

    if-eqz v4, :cond_b4

    const-string v0, "XFV"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b4

    const-string v0, "support_swis"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b4

    move v0, v3

    :goto_67
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v11, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "support_help_easy_mode"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isJProject()Z

    move-result v0

    if-nez v0, :cond_b5

    move v0, v3

    :goto_68
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "support_memo_uuid_for_calllog"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v0, v4, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v6, :cond_42

    const-string v0, "NEE"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "SWC"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "TMB"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "RWC"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "VIA"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b6

    :cond_42
    move v0, v3

    :goto_69
    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "enable_volte_hold_tone"

    if-eqz v5, :cond_b7

    if-nez v0, :cond_b7

    move v0, v3

    :goto_6a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "zero_emergency_dialer_layout"

    const-string v6, "menu_simplification"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "emergency_dialer_digits_layout_params"

    const-string v0, "zero_emergency_dialer_layout"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b8

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isNobleProject()Z

    move-result v0

    if-nez v0, :cond_b8

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v11, "zen"

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b8

    move v0, v3

    :goto_6b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "zero_ipcall_settings_layout"

    const-string v6, "menu_simplification"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "people_stripe"

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v11, "SEC_FLOATING_FEATURE_COMMON_CONFIG_EDGE_STRIPE"

    invoke-virtual {v0, v11}, Lcom/samsung/android/feature/FloatingFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_b9

    move v0, v3

    :goto_6c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "support_cdma_dun"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "enhanced_driving_mode"

    const-string v6, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DRIVING_MODE"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "provider_name_display_disable"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "prompt_to_data_roaming"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v11, "CscFeature_RIL_PromptToDataRoam"

    invoke-virtual {v6, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "zero_support_selection_all_text"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isZeroProject()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "support_sview_cover_photo_id"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isHProject()Z

    move-result v0

    if-nez v0, :cond_43

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isTProject()Z

    move-result v0

    if-eqz v0, :cond_ba

    :cond_43
    move v0, v3

    :goto_6d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "launch_recent_call"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isZeroProject()Z

    move-result v0

    if-nez v0, :cond_44

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isNobleProject()Z

    move-result v0

    if-eqz v0, :cond_bb

    :cond_44
    move v0, v3

    :goto_6e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "call_control_by_sim_feature"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "common_volte_voda"

    const-string v0, "ATL"

    sget-object v11, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    const-string v0, "OMN"

    sget-object v11, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    const-string v0, "VD2"

    sget-object v11, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    const-string v0, "VOD"

    sget-object v11, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bc

    :cond_45
    move v0, v3

    :goto_6f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "support_folder_hardkey"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->hasFolderTypeFeature()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "support_dialpad_by_hardkey"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isNovel()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "support_folder_dual_lcd"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->hasFolderTypeFeature()Z

    move-result v0

    if-eqz v0, :cond_bd

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->hasDualLcdFeature()Z

    move-result v0

    if-eqz v0, :cond_bd

    move v0, v3

    :goto_70
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "support_folder_single_lcd"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->hasFolderTypeFeature()Z

    move-result v0

    if-eqz v0, :cond_be

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->hasDualLcdFeature()Z

    move-result v0

    if-nez v0, :cond_be

    move v0, v3

    :goto_71
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "not_support_end_button"

    const-string v0, "support_folder_hardkey"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_bf

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isNovel()Z

    move-result v0

    if-eqz v0, :cond_bf

    move v0, v3

    :goto_72
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "not_support_easy_incoming_widget"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isNovel()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "start_ota_screen_directly"

    const-string v6, "trltespr"

    sget-object v11, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "show_caller_info_card_for_l_osup"

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v11, "chagallhlte"

    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_46

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isJProject()Z

    move-result v0

    if-eqz v0, :cond_c0

    :cond_46
    move v0, v3

    :goto_73
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "not_support_switch_button"

    const-string v6, "XFV"

    sget-object v11, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "not_support_addcall_button"

    const-string v0, "XFV"

    sget-object v11, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    const-string v0, "SFV"

    sget-object v11, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c1

    :cond_47
    move v0, v3

    :goto_74
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "not_support_merge_button"

    const-string v6, "XFV"

    sget-object v11, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "call_details_for_hd_icon"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isKProject()Z

    move-result v0

    if-eqz v0, :cond_c2

    if-eqz v5, :cond_c2

    const-string v0, "VIA"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    const-string v0, "XFV"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    const-string v0, "XSG"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    const-string v0, "AUT"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    const-string v0, "SWC"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c2

    :cond_48
    move v0, v3

    :goto_75
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "support_hide_conference_manager_menu"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "feature_multisim_preferred_sim_old"

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v6, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_SIM_MGR"

    invoke-virtual {v0, v6}, Lcom/samsung/android/feature/FloatingFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    if-ge v0, v3, :cond_c3

    move v0, v3

    :goto_76
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "network_mode_not_support_gsm"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "klimtltevl"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "sim_account_popup_remove_delay"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "a7ltexx"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "config_hide_status_bar"

    const-string v5, "LAND"

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v6

    const-string v11, "SEC_FLOATING_FEATURE_COMMON_CONFIG_HIDE_STATUS_BAR"

    invoke-virtual {v6, v11}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "network_mode_spinner"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isNobleProject()Z

    move-result v0

    if-nez v0, :cond_49

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "zenlte"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c4

    :cond_49
    move v0, v3

    :goto_77
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "not_support_merge_between_voice_video"

    const-string v5, "VIA"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "disable_sim_label_display"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isNobleProject()Z

    move-result v0

    if-nez v0, :cond_4a

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "zen"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c5

    :cond_4a
    move v0, v3

    :goto_78
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "linkedin_integration"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "gts2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "not_support_drive_link"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isNobleProject()Z

    move-result v0

    if-nez v0, :cond_4b

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "zen"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c6

    :cond_4b
    move v0, v3

    :goto_79
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "zero_mass_project"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isNovel()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "common_volte_trial"

    const-string v5, "common_volte"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c7

    if-nez v7, :cond_4c

    if-nez v10, :cond_4c

    if-nez v8, :cond_4c

    if-nez v9, :cond_4c

    if-eqz v1, :cond_c7

    :cond_4c
    :goto_7a
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_4d
    move v1, v2

    goto/16 :goto_0

    :cond_4e
    move v4, v2

    goto/16 :goto_1

    :catch_0
    move-exception v4

    move v4, v2

    :goto_7b
    move v5, v4

    move v4, v2

    goto/16 :goto_1

    :cond_4f
    move v6, v2

    goto/16 :goto_2

    :cond_50
    move v6, v2

    goto/16 :goto_3

    :cond_51
    move v6, v2

    goto/16 :goto_4

    :cond_52
    move v6, v2

    goto/16 :goto_5

    :cond_53
    move v6, v2

    goto/16 :goto_6

    :cond_54
    move v6, v2

    goto/16 :goto_7

    :cond_55
    move v6, v2

    goto/16 :goto_8

    :cond_56
    move v6, v2

    goto/16 :goto_9

    :cond_57
    move v6, v2

    goto/16 :goto_a

    :cond_58
    move v6, v2

    goto/16 :goto_b

    :cond_59
    move v6, v2

    goto/16 :goto_c

    :cond_5a
    move v6, v2

    goto/16 :goto_d

    :cond_5b
    move v6, v2

    goto/16 :goto_e

    :cond_5c
    move v6, v2

    goto/16 :goto_f

    :cond_5d
    move v6, v2

    goto/16 :goto_10

    :cond_5e
    move v6, v2

    goto/16 :goto_11

    :cond_5f
    move v6, v2

    goto/16 :goto_12

    :cond_60
    move v6, v2

    goto/16 :goto_13

    :cond_61
    move v6, v2

    goto/16 :goto_14

    :cond_62
    move v6, v2

    goto/16 :goto_15

    :cond_63
    move v6, v2

    goto/16 :goto_16

    :cond_64
    move v6, v2

    goto/16 :goto_17

    :cond_65
    move v6, v2

    goto/16 :goto_18

    :cond_66
    move v6, v2

    goto/16 :goto_19

    :cond_67
    move v6, v2

    goto/16 :goto_1a

    :cond_68
    move v6, v2

    goto/16 :goto_1b

    :cond_69
    move v6, v2

    goto/16 :goto_1c

    :cond_6a
    :try_start_3
    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "cust_network_sel_menu4_lteonly"

    const-string v8, "LTEONLY"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Setting_CustNetworkSelMenu4"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodError; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1d

    :catch_1
    move-exception v6

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "cust_network_sel_menu4_lteonly"

    const-string v8, "LTEONLY"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Setting_CustNetworkSelMenu4"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1d

    :cond_6b
    move v6, v2

    goto/16 :goto_1e

    :cond_6c
    move v6, v2

    goto/16 :goto_1f

    :cond_6d
    move v6, v2

    goto/16 :goto_20

    :cond_6e
    move v6, v2

    goto/16 :goto_21

    :cond_6f
    move v6, v2

    goto/16 :goto_22

    :cond_70
    move v6, v2

    goto/16 :goto_23

    :cond_71
    move v6, v2

    goto/16 :goto_24

    :cond_72
    move v6, v2

    goto/16 :goto_25

    :cond_73
    move v6, v2

    goto/16 :goto_26

    :cond_74
    move v6, v2

    goto/16 :goto_27

    :cond_75
    move v6, v2

    goto/16 :goto_28

    :cond_76
    move v6, v2

    goto/16 :goto_29

    :cond_77
    move v6, v2

    goto/16 :goto_2a

    :cond_78
    move v6, v2

    goto/16 :goto_2b

    :cond_79
    move v6, v2

    goto/16 :goto_2c

    :cond_7a
    move v6, v2

    goto/16 :goto_2d

    :cond_7b
    move v6, v2

    goto/16 :goto_2e

    :cond_7c
    move v6, v2

    goto/16 :goto_2f

    :cond_7d
    move v6, v2

    goto/16 :goto_30

    :cond_7e
    move v6, v2

    goto/16 :goto_31

    :cond_7f
    move v6, v2

    goto/16 :goto_32

    :cond_80
    move v6, v2

    goto/16 :goto_33

    :cond_81
    move v6, v2

    goto/16 :goto_34

    :cond_82
    move v6, v2

    goto/16 :goto_35

    :cond_83
    move v6, v2

    goto/16 :goto_36

    :cond_84
    move v6, v2

    goto/16 :goto_37

    :cond_85
    move v6, v2

    goto/16 :goto_38

    :cond_86
    move v6, v2

    goto/16 :goto_39

    :cond_87
    move v6, v2

    goto/16 :goto_3a

    :cond_88
    move v6, v2

    goto/16 :goto_3b

    :cond_89
    move v6, v2

    goto/16 :goto_3c

    :cond_8a
    move v6, v2

    goto/16 :goto_3d

    :cond_8b
    move v6, v2

    goto/16 :goto_3e

    :cond_8c
    move v6, v2

    goto/16 :goto_3f

    :cond_8d
    move v6, v2

    goto/16 :goto_40

    :cond_8e
    move v6, v2

    goto/16 :goto_41

    :cond_8f
    move v6, v2

    goto/16 :goto_42

    :cond_90
    move v6, v2

    goto/16 :goto_43

    :cond_91
    move v0, v2

    goto/16 :goto_44

    :cond_92
    move v0, v2

    goto/16 :goto_45

    :cond_93
    move v0, v2

    goto/16 :goto_46

    :cond_94
    move v0, v2

    goto/16 :goto_47

    :cond_95
    move v0, v2

    goto/16 :goto_48

    :cond_96
    move v0, v2

    goto/16 :goto_49

    :cond_97
    move v0, v2

    goto/16 :goto_4a

    :cond_98
    move v0, v2

    goto/16 :goto_4b

    :cond_99
    move v0, v2

    goto/16 :goto_4c

    :cond_9a
    move v0, v2

    goto/16 :goto_4d

    :cond_9b
    move v0, v2

    goto/16 :goto_4e

    :cond_9c
    move v0, v2

    goto/16 :goto_4f

    :cond_9d
    move v0, v2

    goto/16 :goto_50

    :cond_9e
    move v0, v2

    goto/16 :goto_51

    :cond_9f
    move v6, v2

    goto/16 :goto_52

    :cond_a0
    move v0, v2

    goto/16 :goto_53

    :cond_a1
    move v0, v2

    goto/16 :goto_54

    :cond_a2
    move v0, v2

    goto/16 :goto_55

    :cond_a3
    move v0, v2

    goto/16 :goto_56

    :cond_a4
    move v7, v2

    goto/16 :goto_57

    :cond_a5
    move v0, v2

    goto/16 :goto_58

    :cond_a6
    move v0, v2

    goto/16 :goto_59

    :cond_a7
    move v0, v2

    goto/16 :goto_5a

    :cond_a8
    move v0, v2

    goto/16 :goto_5b

    :cond_a9
    move v0, v2

    goto/16 :goto_5c

    :cond_aa
    move v7, v2

    goto/16 :goto_5d

    :cond_ab
    move v7, v2

    goto/16 :goto_5e

    :cond_ac
    move v7, v2

    goto/16 :goto_5f

    :cond_ad
    move v0, v2

    goto/16 :goto_60

    :cond_ae
    move v0, v2

    goto/16 :goto_61

    :cond_af
    move v0, v2

    goto/16 :goto_62

    :cond_b0
    move v0, v2

    goto/16 :goto_63

    :cond_b1
    move v0, v2

    goto/16 :goto_64

    :cond_b2
    move v0, v2

    goto/16 :goto_65

    :cond_b3
    move v0, v2

    goto/16 :goto_66

    :cond_b4
    move v0, v2

    goto/16 :goto_67

    :cond_b5
    move v0, v2

    goto/16 :goto_68

    :cond_b6
    move v0, v2

    goto/16 :goto_69

    :cond_b7
    move v0, v2

    goto/16 :goto_6a

    :cond_b8
    move v0, v2

    goto/16 :goto_6b

    :cond_b9
    move v0, v2

    goto/16 :goto_6c

    :cond_ba
    move v0, v2

    goto/16 :goto_6d

    :cond_bb
    move v0, v2

    goto/16 :goto_6e

    :cond_bc
    move v0, v2

    goto/16 :goto_6f

    :cond_bd
    move v0, v2

    goto/16 :goto_70

    :cond_be
    move v0, v2

    goto/16 :goto_71

    :cond_bf
    move v0, v2

    goto/16 :goto_72

    :cond_c0
    move v0, v2

    goto/16 :goto_73

    :cond_c1
    move v0, v2

    goto/16 :goto_74

    :cond_c2
    move v0, v2

    goto/16 :goto_75

    :cond_c3
    move v0, v2

    goto/16 :goto_76

    :cond_c4
    move v0, v2

    goto/16 :goto_77

    :cond_c5
    move v0, v2

    goto/16 :goto_78

    :cond_c6
    move v0, v2

    goto/16 :goto_79

    :cond_c7
    move v3, v2

    goto/16 :goto_7a

    :catch_2
    move-exception v4

    move v4, v5

    goto/16 :goto_7b

    :cond_c8
    move v4, v2

    move v5, v2

    goto/16 :goto_1
.end method

.method public static makeFeatureForHKTW()V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v0, "TGY"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BRI"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CWT"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TWN"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "FET"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ZZH"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const-string v0, "TGY"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "ZZH"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_3
    move v0, v2

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v0, "BRI"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "CWT"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "TWN"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "FET"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_4
    move v0, v2

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "feature_hktw"

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "fdn_nameinput_maxlength_limit"

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "support_lunar_birthday"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "common_volte"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "common_volte_hktw"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "volte_call_waiting_terminal"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "enable_volte_hold_tone"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "gui_chn_fragment"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isZeroProject()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "ui_for_hktw"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isZeroProject()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "incoming_call_widget_for_volte"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "volte_settings_in_mobile_networks_common"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "volte_settings_in_mobile_networks_hk"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "common_volte_hk"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "hk_local_ringback_tone"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "volte_settings_in_mobile_networks_common"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "volte_settings_in_mobile_networks_tw"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "common_volte_tw"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "support_both_csps_vt"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isZeroProject()Z

    move-result v0

    if-nez v0, :cond_d

    move v0, v2

    :goto_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "outgoing_image_from_gallery"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "rearrange_preset_image_setting"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "support_psvt_only"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isZeroProject()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isNobleProject()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_8
    move v0, v2

    :goto_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "sim2_2g_only"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "NETWORK_MODE_NOT_SUPPORT_3G_ONLY_AND_2G_ONLY"

    const-string v0, "trlteduoszh"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "a5ltezh"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "zenlte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isNobleProject()Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "support_all_rat"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_9
    move v0, v2

    :goto_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "chn_cdma_network_on_all_rat"

    const-string v4, "support_all_rat"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "change_network_mode_with_ctc_card_for_six_mode"

    const-string v4, "support_all_rat"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "chn_cdma_setting_on_all_rat"

    const-string v4, "support_all_rat"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "china_cdma_call"

    const-string v4, "support_all_rat"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "ctc_call_time_duration"

    const-string v4, "support_all_rat"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "ctc_call_time_duration_for_six_mode"

    const-string v4, "support_all_rat"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "video_call_disable"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasVTSupport(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_a

    move v1, v2

    :cond_a
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "not_support_ims_conference_split"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "emergency_call_state_update_after_dial"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "no_alert_tone_signal"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "feature_multisim_display_sim_icon"

    const-string v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_b
    move v0, v1

    goto/16 :goto_2

    :cond_c
    move v0, v1

    goto/16 :goto_3

    :cond_d
    move v0, v1

    goto/16 :goto_4

    :cond_e
    move v0, v1

    goto/16 :goto_5

    :cond_f
    move v0, v1

    goto/16 :goto_6
.end method

.method public static makeFeatureForIndia()V
    .locals 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "INU"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v0, "INS"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v0, "SWC"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const-string v0, "common_volte"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "common_volte_in"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_4
    move v0, v2

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "volte_call_waiting_terminal"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "default_speaker_mode"

    const-string v7, "common_volte_in"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "add_vt_hold_in_menu"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_5
    move v0, v2

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "rearrange_preset_image_setting"

    const-string v6, "common_volte_in"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "incoming_call_widget_for_volte"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    move v1, v2

    :cond_7
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_8
    move v0, v1

    goto :goto_2

    :cond_9
    move v0, v1

    goto :goto_3
.end method

.method public static makeFeatureForJapan()V
    .locals 10

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "DCM"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v0, "KDI"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v0, "SBM"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "feature_dcm"

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "feature_kdi"

    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "feature_sbm"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "feature_jpn"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "play_busy_tone_sup_busy"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "nck_block_feature"

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "dcm_disable_block_reject_call"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_4
    move v0, v2

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "dcm_packagename_for_fullscreen_incoming_call"

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "dcm_enable_autoreject_mode_option"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_5
    move v0, v2

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "voice_call_disable_record_button"

    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_6
    move v0, v2

    :goto_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "voice_call_recording_menu"

    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_7
    move v0, v2

    :goto_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "bt_menu_in_easy_mode"

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1d

    :cond_8
    move v0, v2

    :goto_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "hide_caller_id"

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "emergency_contacts"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "emergency_dialer_expandable_dial"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "prohibit_second_call_in_emergency_call"

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "check_clir_prefix"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "remove_voicemail_category"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_9
    move v0, v2

    :goto_7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "dcm_callwait_tone_long_feature"

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "change_request_audio_focus_function"

    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "emergency_3lm"

    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "show_forwarding_number"

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "dcm_end_call_time_blink_extension"

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "dcm_parse_network_service_ussd"

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "network_mode_list_dcm_lte_3g"

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "jpn_change_network_mode_ui"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    or-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "dcm_show_network_info_in_manual_search_list"

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "kdi_show_network_info_in_manual_search_list"

    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "toddler_mode_jpn"

    const-string v7, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_TODDLER_MODE"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "airplain_mode_jpn"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "network_mode_list_kdi"

    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "no_alert_tone_signal"

    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "remove_network_mode"

    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "change_hangup_ipc_in_auto_reject"

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "dcm_emergency_conflict"

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "dcm_change_data_enable_function"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "preferred_change_by_mobile_data_exceptional_case"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "tbltekdi"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "chagallltekdi"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "network_mode_list_kdi_roaming"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "network_mode_list_jpn_sbm"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "automatic_answering_machine"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "support_safetycare_not_change_network_mode"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_b
    move v0, v2

    :goto_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "dcm_dsac_feature"

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "support_sync_call"

    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "dcm_not_support_extra_callog_type"

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "dcm_dialer_incoming_log_missed"

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "dcm_dialer_prefix_setting_support"

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "dcm_sda_support_feature"

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "skip_provisioning_check_on_encrypting"

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "dcm_incoming_call_notification_message"

    const-string v7, "DCM"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "disable_sip_call_setting"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_c
    move v0, v2

    :goto_9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "remove_additional_call_setting"

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "remove_call_barring"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_21

    :cond_d
    move v0, v2

    :goto_a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "remove_call_forwarding"

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "remove_fdn"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_e
    move v0, v2

    :goto_b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "dcm_reject_call_msg_limit"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_23

    :cond_f
    move v0, v2

    :goto_c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "dcm_auto_reject_conditions"

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "voicemail_roaming_nuber"

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "voicemail_notification_setting"

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "video_call_not_support"

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_24

    :cond_10
    move v0, v2

    :goto_d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "video_call_disable"

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_25

    :cond_11
    move v0, v2

    :goto_e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "support_fwim"

    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "international_dial_assist_dcm"

    const-string v7, "DCM"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Common_AddPrefix4InternationalCall"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "international_dial_assist_kdi"

    const-string v7, "KDI"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Common_AddPrefix4InternationalCall"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "config_op_ui_call_setting_dcm"

    const-string v7, "DCM"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "config_op_ui_call_setting_kdi"

    const-string v7, "KDI"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "config_op_ui_call_setting_sbm"

    const-string v7, "SBM"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "support_conference_call"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "support_call_transfer"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "support_merge_call"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "disable_auto_area_code"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "disable_mobile_data_settings"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "support_call_transfer"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "wide_band_for_hd_icon"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "update_hd_icon_by_intent"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "display_hd_icon"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "common_volte"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "remove_volte_outgoing_calltype_menu"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "volte_call_waiting_terminal"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "ims_voice_conference"

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_15

    :cond_15
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "out_participant_conference"

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_16

    :cond_16
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "ims_voice_conference_kddi"

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_17

    :cond_17
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "remain_disconnected_list_conference"

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_18

    :cond_18
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "common_vt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "gui_jpn_fragment"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "concept_jpn_dcm"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "change_call_state_label"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "ui_for_jpn"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "rearrange_preset_image_setting"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "dcm_not_support_vt_emr_call"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "support_rotation"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "outgoing_image_from_gallery"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "handle_sip_error_code"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "handle_sip_error_code_dcm"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "ims_ps_barring"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "show_audio_codec_amr_wb"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "prohibit_chattering"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "camera_fail_image"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "prohibit_candid_shot"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "volte_cvo_feature"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_26

    const-string v0, "kltedcm"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    const-string v0, "kltedcmactive"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    move v0, v2

    :goto_f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "volte_jpn_orientation_feature"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_27

    const-string v0, "kltedcm"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    const-string v0, "kltedcmactive"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    move v0, v2

    :goto_10
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "qvga_portrait_resolution_support"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "volte_jpn_ui"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "incoming_call_widget_for_volte"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "dcm_volte_popup_message"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "dcm_retain_path"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "video_call_downgrade_qvga"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "dcm_play_ring_back_tone_sound"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "support_switch_button"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "show_switch_icon_in_button"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_28

    move v0, v2

    :goto_11
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "show_switch_icon_on_call_card"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_29

    move v0, v2

    :goto_12
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "dcm_volte_keypad_enable_ui"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "wide_band_for_hd_icon"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "suppor_mute_button_in_easy_mode"

    const-string v5, "support_easy_mode"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2a

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2a

    :goto_13
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_19
    move v0, v1

    goto/16 :goto_2

    :cond_1a
    move v0, v1

    goto/16 :goto_3

    :cond_1b
    move v0, v1

    goto/16 :goto_4

    :cond_1c
    move v0, v1

    goto/16 :goto_5

    :cond_1d
    move v0, v1

    goto/16 :goto_6

    :cond_1e
    move v0, v1

    goto/16 :goto_7

    :cond_1f
    move v0, v1

    goto/16 :goto_8

    :cond_20
    move v0, v1

    goto/16 :goto_9

    :cond_21
    move v0, v1

    goto/16 :goto_a

    :cond_22
    move v0, v1

    goto/16 :goto_b

    :cond_23
    move v0, v1

    goto/16 :goto_c

    :cond_24
    move v0, v1

    goto/16 :goto_d

    :cond_25
    move v0, v1

    goto/16 :goto_e

    :cond_26
    move v0, v1

    goto/16 :goto_f

    :cond_27
    move v0, v1

    goto/16 :goto_10

    :cond_28
    move v0, v1

    goto :goto_11

    :cond_29
    move v0, v1

    goto :goto_12

    :cond_2a
    move v2, v1

    goto :goto_13
.end method

.method public static makeFeatureForKor()V
    .locals 12

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "SKT"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SKC"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SKO"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v0, "KTT"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "KTC"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "KTO"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_1
    move v0, v2

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v0, "LGT"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "LUC"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "LUO"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_2
    move v0, v2

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v0, "ANY"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "KOO"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_3
    move v0, v2

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_4
    move v0, v2

    :goto_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_a

    :goto_5
    return-void

    :cond_5
    move v0, v1

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto :goto_1

    :cond_7
    move v0, v1

    goto :goto_2

    :cond_8
    move v0, v1

    goto :goto_3

    :cond_9
    move v0, v1

    goto :goto_4

    :cond_a
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "feature_kor"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "feature_skt"

    invoke-virtual {v0, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "feature_ktt"

    invoke-virtual {v0, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "feature_lgt"

    invoke-virtual {v0, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "feature_kor_open"

    invoke-virtual {v0, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "default_noise_reduction"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_function_sound_tuning"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "use_second_waiting_call_tone"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "use_second_call_end_tone"

    invoke-virtual {v0, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "disable_waiting_tone"

    invoke-virtual {v0, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "allow_local_dtmf_tones"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "separate_ringback_gain"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "mute_music_stream_during_call"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isTablet()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "emergency_dialer_sound_pool_tones_haptic"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_tphone"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->hasTPhonePackage()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_tgroupon"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    const-string v10, "com.skt.tgroupon"

    invoke-static {v9, v10}, Lcom/android/services/telephony/common/PhoneFeature;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_ollehphone"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->hasOllehPhonePackage()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "support_mobilecarrier"

    const-string v0, "support_tphone"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "support_ollehphone"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_b
    move v0, v2

    :goto_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_uwa"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Common_SupportUwaApp"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "auto_unhold"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1d

    :cond_c
    move v0, v2

    :goto_7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "lost_phone_lock"

    invoke-virtual {v0, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "clear_cover_check_fragment"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "roaming_auto_dial"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_d
    move v0, v2

    :goto_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "disable_roaming_multi_imsi"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "change_rad_number"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "disable_roaming_multi_imsi"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_e
    move v0, v2

    :goto_9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "w_zone_for_rad"

    const-string v0, "roaming_auto_dial"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    move v0, v2

    :goto_a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "remove_voicemail_category"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "try_to_regi_ims"

    const-string v0, "common_volte"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_21

    move v0, v2

    :goto_b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "gui_kor_fragment"

    const-string v9, "common_vt"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "change_call_state_label"

    const-string v9, "common_vt"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "vt_dual_camera"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "vt_sec_phone_upgraded_ui"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isHProject()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isJProject()Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_f
    move v0, v2

    :goto_c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "vt_call_fail_fallback"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "vt_left_keypad_enable_ui"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "video_call_not_support"

    const-string v0, "common_vt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasVTSupport(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_23

    move v0, v2

    :goto_d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "block_speaker_menu"

    const-string v0, "common_vt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, "no_receiver_in_call"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    move v0, v2

    :goto_e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "camera_effect"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isNobleProject()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isTProject()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isZeroProject()Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "chagallhlte"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "gt5"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "gts28"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "gts210"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_25

    :cond_10
    move v0, v2

    :goto_f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "default_speaker_mode"

    const-string v9, "common_vt"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "initial_speaker_settings"

    const-string v9, "common_vt"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "mediashare"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "outgoing_image_from_gallery"

    const-string v0, "common_vt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasVTSupport(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_26

    :cond_11
    move v0, v2

    :goto_10
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "overlay_popup_play"

    const-string v9, "common_vt"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "rearrange_preset_image_setting"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "resize_screen"

    const-string v0, "common_vt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isTablet()Z

    move-result v0

    if-nez v0, :cond_27

    move v0, v2

    :goto_11
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "ui_for_kor"

    const-string v9, "common_vt"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_emergency_number"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_tablet_receiver"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "millet"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "disable_add_call"

    const-string v0, "common_volte"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_28

    move v0, v2

    :goto_12
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "single_lte"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "common_volte_kor"

    const-string v0, "common_volte"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_29

    move v0, v2

    :goto_13
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "volte_call_waiting_terminal"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "auto_call_test"

    const-string v0, "eng"

    sget-object v10, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string v0, "common_volte"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "common_vt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    :cond_12
    move v0, v2

    :goto_14
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "ims_call_message"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "video_conference"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "handle_not_registered"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2b

    move v0, v2

    :goto_15
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "handle_sip_error_code"

    const-string v0, "common_volte"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "common_vt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    :cond_13
    move v0, v2

    :goto_16
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "ims_ps_barring"

    const-string v0, "common_volte"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2d

    move v0, v2

    :goto_17
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "ims_voice_conference"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "ims_support_photo_ring"

    invoke-virtual {v0, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "ims_photoring_use_nxp"

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "noblelte"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2e

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "zenlte"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2e

    move v0, v2

    :goto_18
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "ims_support_multimedia_caller_id"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_VoiceCall_SupportMCID"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_uicc_mobility"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_14
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_conference_call"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_16
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_call_transfer"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_merge_call"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "optis_command_test"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "auto_call"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "support_action_domestic_network"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2f

    :cond_18
    move v0, v2

    :goto_19
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "remove_network_mode"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "novel3g"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "support_kt_hidden_data_network"

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "noblelte"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "zenlte"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    move v0, v2

    :goto_1a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "block_data_during_call"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "disable_sip_call_setting"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "display_reject_message_limit_for_kor"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "hd_voice_network_prefer"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Common_EnableHDVoiceDuring3GConnection"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "hd_voice_network_prefer_default_on"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "interworking_hd_voice_by_intent"

    const-string v0, "hd_voice_network_prefer"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isKProject()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_31

    :cond_19
    move v0, v2

    :goto_1b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "international_call_service"

    const-string v9, "KOR"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Common_AddPrefix4InternationalCall"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "modify_reject_message_for_kor"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "remove_additional_call_setting"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "remove_call_barring"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "remove_call_forwarding"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "remove_fdn"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "restrict_international_call"

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_32

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "kactiveltekx"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    move v0, v2

    :goto_1c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "extended_restrict_international_call"

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_33

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "kactiveltekx"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    move v0, v2

    :goto_1d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "support_oneline_greeting"

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_34

    const-string v0, "ims_support_multimedia_caller_id"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "jalte"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    move v0, v2

    :goto_1e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "clear_dialpad_digits"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "handle_alerting_state"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "handle_mt_hold_call_state"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "bt_menu_in_easy_mode"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "emergency_find_lost_phone"

    invoke-virtual {v0, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_emergency_report_helper_app"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Common_EnableOneTouchReport"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "default_incomingcall_popup"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_35

    const-string v0, "default_incomingcall_popup"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    move v0, v2

    :goto_1f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "wide_band_for_hd_icon"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_36

    :cond_1a
    move v0, v2

    :goto_20
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "feature_logs_kor"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "show_add_call_menu_for_3rd_call"

    invoke-virtual {v0, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_nsri_secure"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "clear_cover_ui_support_for_kmodel_base"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "lentislte"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "remove_fade_effect_on_international_call_tts"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isZeroProject()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "change_order_of_endcall_buttons"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "display_alerting_title"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "display_hd_icon"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_37

    :cond_1b
    move v0, v2

    :goto_21
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "popup_caller_info_wide_height"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "support_switch_button"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "show_switch_icon_in_button"

    const-string v0, "no_receiver_in_call"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_38

    move v0, v2

    :goto_22
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "show_switch_icon_on_call_card"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "suppor_mute_button_in_easy_mode"

    const-string v8, "support_easy_mode"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_39

    const-string v8, "common_vt"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_39

    :goto_23
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "support_lunar_birthday"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "save_cnap_info_in_call_log"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "cnap_supplementary_service"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "cdnip_supplementary_service"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "geo_description_disable"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "not_support_caller_info_card"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isNovel()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "enable_volte_hold_tone"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "ota_mode_disable_expand"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "support_display_bitrate"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "smart_auto_answering"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_1c
    move v0, v1

    goto/16 :goto_6

    :cond_1d
    move v0, v1

    goto/16 :goto_7

    :cond_1e
    move v0, v1

    goto/16 :goto_8

    :cond_1f
    move v0, v1

    goto/16 :goto_9

    :cond_20
    move v0, v1

    goto/16 :goto_a

    :cond_21
    move v0, v1

    goto/16 :goto_b

    :cond_22
    move v0, v1

    goto/16 :goto_c

    :cond_23
    move v0, v1

    goto/16 :goto_d

    :cond_24
    move v0, v1

    goto/16 :goto_e

    :cond_25
    move v0, v1

    goto/16 :goto_f

    :cond_26
    move v0, v1

    goto/16 :goto_10

    :cond_27
    move v0, v1

    goto/16 :goto_11

    :cond_28
    move v0, v1

    goto/16 :goto_12

    :cond_29
    move v0, v1

    goto/16 :goto_13

    :cond_2a
    move v0, v1

    goto/16 :goto_14

    :cond_2b
    move v0, v1

    goto/16 :goto_15

    :cond_2c
    move v0, v1

    goto/16 :goto_16

    :cond_2d
    move v0, v1

    goto/16 :goto_17

    :cond_2e
    move v0, v1

    goto/16 :goto_18

    :cond_2f
    move v0, v1

    goto/16 :goto_19

    :cond_30
    move v0, v1

    goto/16 :goto_1a

    :cond_31
    move v0, v1

    goto/16 :goto_1b

    :cond_32
    move v0, v1

    goto/16 :goto_1c

    :cond_33
    move v0, v1

    goto/16 :goto_1d

    :cond_34
    move v0, v1

    goto/16 :goto_1e

    :cond_35
    move v0, v1

    goto/16 :goto_1f

    :cond_36
    move v0, v1

    goto/16 :goto_20

    :cond_37
    move v0, v1

    goto/16 :goto_21

    :cond_38
    move v0, v1

    goto/16 :goto_22

    :cond_39
    move v2, v1

    goto/16 :goto_23
.end method

.method public static makeFeatureForLatin()V
    .locals 9

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v0, "BR"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MX"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AR"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "UY"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CO"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CL"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PE"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VE"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PY"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GT"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SV"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HN"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "NI"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PA"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "EC"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PR"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DO"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "JM"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CR"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TT"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BO"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DM"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "ZTA"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "ZVV"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "notipopup_when_number_changed"

    const-string v6, "BR"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "ltn_auto_csp"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v7, "CscFeature_VoiceCall_EnablePrefix4LongDistanceCallAs"

    invoke-virtual {v0, v7}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_b

    move v0, v2

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "enable_detail_call_end_reason"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_VoiceCall_EnableDetailCallEndCause"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "enable_ltn_callerid_matching"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Contact_EnableDynCallerIdMatchingDigitWithAutoSim"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "ltn_sdnname_display"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_VoiceCall_EnableDisplaySdnNameDuringCall"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "fdn_contact_search"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Contact_SearchIncludingFdn"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "disable_toast_popup_when_mo_ccf"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_VoiceCall_DisableToastPopupWhenMOConditionalCallForwarding"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "disable_popupmsg_when_deactivationcf"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_VoiceCall_DisablePopupMsgWhenDeactivatingCallForwarding"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "TFG"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "BTU"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_3
    const-string v0, "ril.product_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v5, "COB"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    const-string v0, "BTU"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "disable_popupmsg_when_deactivationcf"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "geo_description_disable"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_VoiceCall_DisableGeoDescription"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "volte_call_waiting_terminal"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "disable_enter_nck"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Phone_DisableEnterNCK"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "disable_nwlock_dismiss"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Phone_DisableQuitNetworkLockByManual"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "add_label_for_simlock"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v7, "CscFeature_Phone_AddLabelForSimLock"

    invoke-virtual {v0, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    move v0, v2

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "remove_mmi_complete_popup"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_VoiceCall_DisableUssdCompleteNoti"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "change_ussd_popup_lte"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_VoiceCall_UseUssdToastForNetworkNoResp"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "disable_edit_callerid"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_VoiceCall_DisableEditingCallerID"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "disable_sip_call_setting"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Setting_DisableMenuInternetCallSetting"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "config_exception_data_roaming_noti"

    const-string v6, "All"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Setting_ConfigExceptionDataRoamingNoti"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "wating_calloption_end"

    const-string v6, "end"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_VoiceCall_OptionConfigForCallWaiting"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "wating_calloption_hold"

    const-string v6, "hold"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_VoiceCall_OptionConfigForCallWaiting"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "wating_calloption_invisible"

    const-string v6, "wating_calloption_end"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "wating_calloption_hold"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_7
    move v1, v2

    :cond_8
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "hac_enable"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v0

    if-le v0, v2, :cond_9

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "feature_multisim_carrier_match"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Common_EnableCarrierMatchingForMultiSimDev"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    const-string v0, "klteum"

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "video_call_disable"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "feature_zta"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "feature_zvv"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_b
    move v0, v1

    goto/16 :goto_2

    :cond_c
    move v0, v1

    goto/16 :goto_3
.end method

.method private static makeFeatureForPhoneSearch()V
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "remove_mobile_networks_cdma_lte_data_service"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "remove_mobile_networks_roaming"

    const-string v0, "volte_settings_in_mobile_networks"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "non_volte_settings_in_mobile_networks"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "national_roaming_mode_menu"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "roaming_enhancement"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "global_data_roaming_access_enable"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sprint_mvno_mobile_networks"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "remove_mobile_networks_preferred_network_mode"

    const-string v4, "feature_ctc"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "remove_mobile_networks_enabled_networks"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "remove_mobile_networks_enhanced_4g_lte"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "remove_mobile_networks_data_enabled"

    const-string v0, "volte_settings_in_mobile_networks"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "non_volte_settings_in_mobile_networks"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_1
    move v0, v2

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "remove_mobile_networks_enhanced_4glte"

    const-string v0, "volte_settings_in_mobile_networks"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "non_volte_settings_in_mobile_networks"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    move v0, v2

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "remove_mobile_networks_international_enhanced_4glte"

    const-string v0, "volte_settings_in_mobile_networks"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "non_volte_settings_in_mobile_networks"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    move v0, v2

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "remove_mobile_networks_preferred_roaming"

    const-string v4, "roaming_enhancement"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "remove_mobile_networks_global_data_roaming_access"

    const-string v0, "global_data_roaming_access_enable"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    move v0, v2

    :goto_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "remove_mobile_networks_roaming_state"

    const-string v0, "global_data_roaming_access_enable"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    move v0, v2

    :goto_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "remove_mobile_networks_signal_strength"

    const-string v0, "global_data_roaming_access_enable"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    move v0, v2

    :goto_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "remove_mobile_networks_preferred_networks"

    const-string v0, "preferred_networks"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    move v0, v2

    :goto_7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "remove_mobile_networks_enhanced_roaming_mode"

    const-string v0, "csc_chameleon_enable"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    move v0, v2

    :goto_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "remove_mobile_networks_connections_optimizer"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isSCOExists()Z

    move-result v0

    if-nez v0, :cond_15

    move v0, v2

    :goto_9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "remove_mobile_networks_volte_call"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "remove_mobile_networks_roaming_settings"

    const-string v0, "config_op_ui_call_setting_kdi"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    move v0, v2

    :goto_a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "remove_cdma_options_cdma_system_select"

    const-string v0, "system_selection_automatic_ab_enable"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "system_selection_automatic_donot_hide"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "sprint_mvno_mobile_networks"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "roaming_enhancement"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "feature_chn"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "feature_hktw"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_3
    move v0, v2

    :goto_b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "remove_cdma_options_cdma_subscription"

    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "feature_chn"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_4
    move v0, v2

    :goto_c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "remove_cdma_options_apn_cdma"

    const-string v0, "cdma_apn_enable"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "chn_cdma_network_on_all_rat"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    move v0, v2

    :goto_d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x1120053

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "remove_cdma_options_cdma_activate_device"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "remove_cdma_options_carrier_settings"

    const-string v0, "carrier_settings_enable"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    move v0, v2

    :goto_e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "remove_cdma_options_carrier_sel"

    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "lte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    :cond_5
    move v0, v2

    :goto_f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "remove_cdma_options_dun"

    const-string v0, "support_cdma_dun"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    move v0, v2

    :goto_10
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "remove_gsm_umts_options_apn"

    const-string v4, "global_network_cdma_gsm_enable"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "remove_gsm_umts_options_carrier_sel"

    const-string v4, "config_op_ui_call_setting_kdi"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "remove_gsm_umts_options_carrier_settings"

    const-string v0, "carrier_settings_enable"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    move v0, v2

    :goto_11
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "remove_gsm_umts_options_prefer_networkmode"

    const-string v0, "remove_network_mode"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "global_network_cdma_gsm_enable"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "allow_select_network_mode"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_6
    move v0, v2

    :goto_12
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "remove_gsm_umts_options_prefer_networkmode1"

    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_7
    move v0, v2

    :goto_13
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "remove_gsm_umts_options_prefer_networkmode2"

    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_8
    move v0, v2

    :goto_14
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "remove_gsm_umts_options_global_gsm_umts_system_select"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "remove_mobile_networks_kor_data_enabled"

    const-string v0, "feature_ktt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "menu_simplification"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    move v0, v2

    :goto_15
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "remove_mobile_networks_kor_roaming"

    const-string v4, "feature_lgt"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "remove_mobile_networks_kor_lte_roaming"

    const-string v4, "feature_kor"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "remove_mobile_networks_kor_apn"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "remove_mobile_networks_kor_carrier_sel"

    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "feature_ktt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "feature_skt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_9
    move v0, v2

    :goto_16
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "remove_mobile_networks_kor_data_network_mode"

    const-string v0, "feature_ktt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, "menu_simplification"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    move v0, v2

    :goto_17
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "remove_mobile_networks_kor_network_status"

    const-string v4, "feature_lgt"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string v4, "feature_kor_open"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_a
    move v1, v2

    :cond_b
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_c
    move v0, v1

    goto/16 :goto_0

    :cond_d
    move v0, v1

    goto/16 :goto_1

    :cond_e
    move v0, v1

    goto/16 :goto_2

    :cond_f
    move v0, v1

    goto/16 :goto_3

    :cond_10
    move v0, v1

    goto/16 :goto_4

    :cond_11
    move v0, v1

    goto/16 :goto_5

    :cond_12
    move v0, v1

    goto/16 :goto_6

    :cond_13
    move v0, v1

    goto/16 :goto_7

    :cond_14
    move v0, v1

    goto/16 :goto_8

    :cond_15
    move v0, v1

    goto/16 :goto_9

    :cond_16
    move v0, v1

    goto/16 :goto_a

    :cond_17
    move v0, v1

    goto/16 :goto_b

    :cond_18
    move v0, v1

    goto/16 :goto_c

    :cond_19
    move v0, v1

    goto/16 :goto_d

    :cond_1a
    move v0, v1

    goto/16 :goto_e

    :cond_1b
    move v0, v1

    goto/16 :goto_f

    :cond_1c
    move v0, v1

    goto/16 :goto_10

    :cond_1d
    move v0, v1

    goto/16 :goto_11

    :cond_1e
    move v0, v1

    goto/16 :goto_12

    :cond_1f
    move v0, v1

    goto/16 :goto_13

    :cond_20
    move v0, v1

    goto/16 :goto_14

    :cond_21
    move v0, v1

    goto/16 :goto_15

    :cond_22
    move v0, v1

    goto/16 :goto_16

    :cond_23
    move v0, v1

    goto :goto_17
.end method

.method public static makeFeatureForTablet()V
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "mysound_music_only"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "tablet_device"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "no_earpiece_in_tablet"

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "gt510lte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "chagalllte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "gt5note10lte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "gts210lte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_1
    move v0, v2

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "no_receiver_in_call"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "tablet_l_osup_vt"

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "chagall"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "klimt"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "matisse"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "vienna"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "v1a3g"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "millet"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "degas"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "v2"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "lt03"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_2
    move v0, v2

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "tablet_l_osup_vt_spkon"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "klimt"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "matisse_no_dual_camera"

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "matisse"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "millet"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "degas"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_3
    move v0, v2

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "support_multi_user"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "chagall"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "support_hide_conference_manager_menu"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "support_split_settings"

    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "menu_simplification"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v2

    :goto_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "support_easy_mode"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "touch_lock"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "millet"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "support_help_easy_mode"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "lock_screen_during_call"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->hasProximitySensor()Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v2

    :goto_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "support_contacts_osup"

    const-string v4, "tablet_l_osup"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "disable_sip_call_setting"

    const-string v0, "menu_simplification"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "chagallltevl"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "klimtltevl"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "matissewifiue"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "v1awifiue"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "milletwifiue"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_4
    move v0, v2

    :goto_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "hide_popup_progress_view"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "gt5"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "not_support_hdvoice_during_record"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "millet"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "show_extra_volume_text_menu"

    const-string v4, "no_receiver_in_call"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "show_extra_volume_in_call_card"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    :goto_7
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "no_proximity_sensor"

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v3, "millet"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_5
    move v0, v1

    goto/16 :goto_1

    :cond_6
    move v0, v1

    goto/16 :goto_2

    :cond_7
    move v0, v1

    goto/16 :goto_3

    :cond_8
    move v0, v1

    goto/16 :goto_4

    :cond_9
    move v0, v1

    goto/16 :goto_5

    :cond_a
    move v0, v1

    goto :goto_6

    :cond_b
    move v2, v1

    goto :goto_7
.end method

.method public static makeFeatureForUsa()V
    .locals 27

    const-string v2, "XAS"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SPR"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_0
    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v2, "VZW"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v2, "VMU"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string v2, "BST"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_f

    :cond_1
    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_2
    const/4 v2, 0x1

    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const-string v2, "d2spr"

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "d2vmu"

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "t0ltespr"

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "jfltespr"

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "jflterefreshspr"

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "hltespr"

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "kltespr"

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "kltesprsports"

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "trltespr"

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "tbltespr"

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "zeroltespr"

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "zerofltespr"

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "zenltespr"

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "nobleltespr"

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_3
    const/4 v2, 0x1

    :goto_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    const-string v2, "USC"

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const-string v2, "MTR"

    sget-object v11, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const-string v2, "XAR"

    sget-object v12, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "ACG"

    sget-object v12, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_4
    const/4 v2, 0x1

    :goto_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const-string v2, "CRI"

    sget-object v13, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    const-string v2, "TFN"

    sget-object v14, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    const-string v2, "CSP"

    sget-object v15, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    const-string v2, "LRA"

    sget-object v16, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_13

    :cond_5
    const/4 v2, 0x1

    :goto_5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_6
    const/4 v2, 0x1

    :goto_6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_15

    :cond_7
    const/4 v2, 0x1

    :goto_7
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    const-string v2, "ATT"

    sget-object v18, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "AIO"

    sget-object v18, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    :cond_8
    const/4 v2, 0x1

    :goto_8
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    const-string v2, "TMB"

    sget-object v19, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_17

    :cond_9
    const/4 v2, 0x1

    :goto_9
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_18

    :cond_a
    const/4 v2, 0x1

    :goto_a
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_19

    :cond_b
    const/4 v2, 0x1

    :goto_b
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    const-string v2, "msm"

    sget-object v22, Lcom/android/services/telephony/common/PhoneFeature;->baseband:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "mdm"

    sget-object v22, Lcom/android/services/telephony/common/PhoneFeature;->baseband:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    :cond_c
    const/4 v2, 0x1

    :goto_c
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v22, "trlte"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v22, "tblte"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v22, "klte"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v22, "t0lte"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v22, "jflte"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v22, "hlte"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "jactivelteuc"

    sget-object v22, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v22, "d2"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1b

    :cond_d
    const/4 v2, 0x1

    :goto_d
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v23, 0x1120053

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1c

    :goto_e
    return-void

    :cond_e
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_f
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_11
    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_12
    const/4 v2, 0x0

    goto/16 :goto_4

    :cond_13
    const/4 v2, 0x0

    goto/16 :goto_5

    :cond_14
    const/4 v2, 0x0

    goto/16 :goto_6

    :cond_15
    const/4 v2, 0x0

    goto/16 :goto_7

    :cond_16
    const/4 v2, 0x0

    goto/16 :goto_8

    :cond_17
    const/4 v2, 0x0

    goto/16 :goto_9

    :cond_18
    const/4 v2, 0x0

    goto/16 :goto_a

    :cond_19
    const/4 v2, 0x0

    goto/16 :goto_b

    :cond_1a
    const/4 v2, 0x0

    goto/16 :goto_c

    :cond_1b
    const/4 v2, 0x0

    goto :goto_d

    :cond_1c
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v24, "play_busy_tone_sup_busy"

    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v24, "feature_usa"

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v24, "disable_sip_call_setting"

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v24, "tty_enable"

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v24, "enable_screen_timeout_incall_DELETE"

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v24, "samsung_screen_timeout_incall"

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v24, "emergency_dialer_tones"

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v24, "number_format_with_country_iso"

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v24, "show_extra_volume_in_call_card"

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v24, "support_period_mark"

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v24, "support_wave_effect"

    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v25, "video_call_disable"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1d

    const-string v2, "common_volte"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    :cond_1d
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_59

    :cond_1e
    const/4 v2, 0x1

    :goto_f
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v25, "video_call_not_support"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1f

    const-string v2, "common_volte"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5a

    :cond_1f
    const/4 v2, 0x1

    :goto_10
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v24, "allow_local_dtmf_tones"

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v24, "menu_usa_mess"

    sget-object v25, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v26, "cprimelte"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v25, "remove_call_alerts_setting"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5b

    const-string v2, "menu_usa_mess"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5b

    const/4 v2, 0x1

    :goto_11
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v24, "show_callsettings_ringtones_keytones_preference"

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v24, "remove_minute_minder_setting"

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v24, "remove_callforward_error_popup"

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v24, "popup_call_service_has_icon"

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v24, "enable_volte_hold_tone"

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v25, "change_message_icon_for_vzw"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5c

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_5c

    const/4 v2, 0x1

    :goto_12
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v25, "change_message_icon_for_att"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5d

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_5d

    const/4 v2, 0x1

    :goto_13
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v22, "hac_enable"

    const/16 v24, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v22, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v24, "ecid_enable"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_20

    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    :cond_20
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, "jflteuc"

    sget-object v25, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, "hlteuc"

    sget-object v25, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, "coreprimeltevzw"

    sget-object v25, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, "klteuc"

    sget-object v25, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, "slteuc"

    sget-object v25, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, "klteattactive"

    sget-object v25, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, "kltevzw"

    sget-object v25, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, "mega2lteuc"

    sget-object v25, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, "tblteuc"

    sget-object v25, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, "trlteuc"

    sget-object v25, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, "tbltevzw"

    sget-object v25, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, "trltevzw"

    sget-object v25, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, "noblelteuc"

    sget-object v25, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, "tbltetmo"

    sget-object v25, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, "zerolteuc"

    sget-object v25, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, "zeroflteuc"

    sget-object v25, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, "jactivelteuc"

    sget-object v25, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, "marinelteuc"

    sget-object v25, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, "trltetmo"

    sget-object v25, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v25, "kminilte"

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, "zenlteuc"

    sget-object v25, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, "zerofltevzw"

    sget-object v25, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, "zeroltevzw"

    sget-object v25, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, "nobleltevzw"

    sget-object v25, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, "zenltevzw"

    sget-object v25, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    :cond_21
    const/4 v2, 0x1

    :goto_14
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v22, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v24, "default_caller_information"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_5f

    const/4 v2, 0x1

    :goto_15
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v22, "show_caller_info_setting"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v22, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v24, "emergency_dialer_button_rounded_rectangle"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_60

    const-string v2, "menu_simplification"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_60

    const/4 v2, 0x1

    :goto_16
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v22, "feature_cdma_us"

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v22, "cdma_additional_setting_enable"

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v22, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v24, "cdma_subscription_enable"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_61

    const/4 v2, 0x1

    :goto_17
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v22, "dtmf_type_enable"

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v22, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v24, "not_ota_ui_display"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_62

    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_62

    :cond_22
    const/4 v2, 0x1

    :goto_18
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v22, "usa_cdma_emergency_concept"

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v22, "usa_cdma_concept"

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v22, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v24, "usa_cdma_smc_fac_req"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_23

    const-string v2, "kltevl"

    sget-object v25, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_63

    :cond_23
    const/4 v2, 0x1

    :goto_19
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v22, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v24, "save_cnap_info_in_call_log"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_24

    const-string v2, "kltevl"

    sget-object v25, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64

    :cond_24
    const/4 v2, 0x1

    :goto_1a
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v22, "headset_highest_priority_for_call"

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v22, "caller_name_reduced_font_size"

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v22, "reboot_after_ota_success"

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v22, "show_ota_popup"

    const-string v2, "chagalllteusc"

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    const-string v2, "matisselteusc"

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    :cond_25
    const/4 v2, 0x1

    :goto_1b
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v17, "tmo_echolocate_logger"

    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v22, "global_network_cdma_gsm_enable"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_26

    const-string v2, "t0ltespr"

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    const-string v2, "jfltespr"

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    const-string v2, "jflterefreshspr"

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    const-string v2, "hltespr"

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    const-string v2, "matisselteusc"

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    const-string v2, "kltespr"

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    const-string v2, "kltesprsports"

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    const-string v2, "trltespr"

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    const-string v2, "tbltespr"

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    const-string v2, "meliusltespr"

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    const-string v2, "p4noteltespr"

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    const-string v2, "zeroltespr"

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    const-string v2, "zerofltespr"

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    const-string v2, "zenltespr"

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    const-string v2, "noblelteusc"

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    const-string v2, "nobleltespr"

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    const-string v2, "zenlteusc"

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    const-string v2, "zerolteusc"

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    const-string v2, "zeroflteusc"

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    const-string v2, "klteacg"

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_66

    :cond_26
    const/4 v2, 0x1

    :goto_1c
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v22, "global_network_cdma_gsm_enable_for_spr"

    const-string v2, "global_network_cdma_gsm_enable"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_67

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_67

    const/4 v2, 0x1

    :goto_1d
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v22, "global_network_cdma_gsm_enable_for_spr_f"

    const-string v2, "global_network_cdma_gsm_enable"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_68

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_68

    const/4 v2, 0x1

    :goto_1e
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v22, "global_network_cdma_gsm_enable_for_spr_m"

    const-string v2, "global_network_cdma_gsm_enable"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_69

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_69

    const/4 v2, 0x1

    :goto_1f
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v22, "global_network_cdma_gsm_enable_for_vzw"

    const-string v2, "global_network_cdma_gsm_enable"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6a

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6a

    const/4 v2, 0x1

    :goto_20
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v22, "global_network_cdma_gsm_enable_for_usc"

    const-string v2, "global_network_cdma_gsm_enable"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6b

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6b

    const/4 v2, 0x1

    :goto_21
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v22, "cdma_apn_enable"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_28

    const-string v2, "chagalllteusc"

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    const-string v2, "matisselteusc"

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    const-string v2, "jfltespr"

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    const-string v2, "jflterefreshspr"

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    const-string v2, "hltespr"

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    const-string v2, "kltespr"

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    const-string v2, "kltesprsports"

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    const-string v2, "trltespr"

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    const-string v2, "tbltespr"

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    const-string v2, "zeroltespr"

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    const-string v2, "zerofltespr"

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    const-string v2, "zenltespr"

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    const-string v2, "nobleltespr"

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    const-string v2, "gprimeltespr"

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6c

    :cond_27
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6c

    :cond_28
    const/4 v2, 0x1

    :goto_22
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v22, "international_dialing_enable"

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_29

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6d

    :cond_29
    const/4 v2, 0x1

    :goto_23
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v22, "auto_retry_enable"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2a

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2a

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2a

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2a

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6e

    :cond_2a
    const/4 v2, 0x1

    :goto_24
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v22, "voice_privacy_enable"

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_6f

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_6f

    const/4 v2, 0x1

    :goto_25
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v22, "emergency_call_tone_always"

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2b

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_70

    :cond_2b
    const/4 v2, 0x1

    :goto_26
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v22, "emergency_call_tone_volume"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2c

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2c

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2c

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2c

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2c

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2c

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2c

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_71

    :cond_2c
    const/4 v2, 0x1

    :goto_27
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v22, "emergency_call_tone"

    const-string v2, "emergency_call_tone_always"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2d

    const-string v2, "emergency_call_tone_volume"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_72

    :cond_2d
    const/4 v2, 0x1

    :goto_28
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v22, "emergency_calllog_disable"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2e

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2e

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2e

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2e

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2e

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2e

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2e

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_73

    :cond_2e
    const/4 v2, 0x1

    :goto_29
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v13, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v17, "otasp_calllog_disable"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2f

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2f

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2f

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2f

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2f

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2f

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_74

    :cond_2f
    const/4 v2, 0x1

    :goto_2a
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v13, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v13, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v15, "get_orig_dial_string_enable"

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_30

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_30

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_75

    :cond_30
    const/4 v2, 0x1

    :goto_2b
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v13, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v13, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v15, "activate_your_phone"

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_31

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_31

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_76

    :cond_31
    const/4 v2, 0x1

    :goto_2c
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v13, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v13, "add_call_not_support"

    invoke-virtual {v2, v13, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v13, "voiceless_ota_provisioning_action"

    invoke-virtual {v2, v13, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v13, "disable_waiting_tone_by_network"

    invoke-virtual {v2, v13, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v13, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v15, "support_drop_text_conference_manage"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_77

    const-string v2, "menu_simplification"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_77

    const/4 v2, 0x1

    :goto_2d
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v13, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v13, "support_move_button_conference_manage"

    invoke-virtual {v2, v13, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v13, "wifi_disable_during_emergency_call"

    invoke-virtual {v2, v13, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v13, "network_mode_disable"

    move-object/from16 v0, v20

    invoke-virtual {v2, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v13, "usa_gsm_network_setting"

    move-object/from16 v0, v20

    invoke-virtual {v2, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v13, "allow_local_dtmf_tones_always"

    move-object/from16 v0, v20

    invoke-virtual {v2, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v13, "beep_vibration_for_ussd"

    move-object/from16 v0, v20

    invoke-virtual {v2, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v13, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v15, "support_call_transfer"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_78

    const/4 v2, 0x1

    :goto_2e
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v13, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v13, "tty_to_default_wired_headset_plugged_out"

    move-object/from16 v0, v20

    invoke-virtual {v2, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v13, "disable_add_call_mute_hold_during_emergency_call"

    move-object/from16 v0, v21

    invoke-virtual {v2, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v13, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v15, "add_vt_hold_in_menu"

    const-string v2, "common_volte"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_79

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_79

    const/4 v2, 0x1

    :goto_2f
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v13, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v13, "feature_spr"

    invoke-virtual {v2, v13, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v13, "emergency_calls_only_enable"

    invoke-virtual {v2, v13, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v13, "roaming_enhancement"

    invoke-virtual {v2, v13, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v13, "preferred_network_mode_reboot_enable"

    invoke-virtual {v2, v13, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v13, "visual_voicemail"

    invoke-virtual {v2, v13, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v13, "visual_voicemail_enable"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->hasVisualVoicemail()Z

    move-result v15

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v2, v13, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v13, "remove_voicemail_category"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->hasVisualVoicemail()Z

    move-result v15

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v2, v13, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v13, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v15, "emergency_callback_mode_exit_timer_enable"

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_7a

    const/4 v2, 0x1

    :goto_30
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v13, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v13, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v15, "system_select_home_only"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_32

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7b

    :cond_32
    const/4 v2, 0x1

    :goto_31
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v13, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v13, "system_select_home_only_entry"

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v2, v13, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v13, "hdvoice_call_status"

    invoke-virtual {v2, v13, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v13, "not_support_extra_view_page"

    invoke-virtual {v2, v13, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v13, "support_more_option_item_for_extra_view_page"

    invoke-virtual {v2, v13, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v13, "reject_call_with_message_drawer_while_in_secure_lock_pending"

    invoke-virtual {v2, v13, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v13, "remove_call_duration"

    invoke-virtual {v2, v13, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v13, "omadm_lte_forced_nv"

    invoke-virtual {v2, v13, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v13, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v15, "omadm_lte_forced_not_support_network_mode_popup"

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7c

    const-string v2, "gts210ltespr"

    sget-object v17, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7c

    const/4 v2, 0x1

    :goto_32
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v13, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v13, "csc_chameleon_enable"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v15

    const-string v17, "CscFeature_Common_UseChameleon"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v15

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v2, v13, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v13, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v15, "abbreviated_dialing_codes_enable"

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_33

    const-string v2, "csc_chameleon_enable"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7d

    :cond_33
    const/4 v2, 0x1

    :goto_33
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v13, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "abbreviated_dialing_codes_table_sprint"

    invoke-virtual {v2, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "abbreviated_dialing_codes_table_virgin"

    invoke-virtual {v2, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "abbreviated_dialing_codes_table_boost"

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "network_mode_automatic_cdma_lte_gsm"

    const-string v2, "global_network_cdma_gsm_enable_for_spr"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_34

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7e

    const-string v2, "zeroltespr"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    const-string v2, "zerofltespr"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7e

    :cond_34
    const/4 v2, 0x1

    :goto_34
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v6, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "network_mode_cdma_lte"

    const-string v2, "klteacg"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    const-string v2, "matisselteusc"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    const-string v2, "global_network_cdma_gsm_enable_for_spr_m"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7f

    const-string v2, "zeroltespr"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7f

    const-string v2, "zerofltespr"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7f

    :cond_35
    const/4 v2, 0x1

    :goto_35
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v6, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "sprint_connections_optimizer"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isSCOExists()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "roaming_setting_guard_data_only"

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_80

    const/4 v2, 0x1

    :goto_36
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v6, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "thrway_active_disable"

    invoke-virtual {v2, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "lte_roaming_enhancement"

    const-string v2, "zeroltespr"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    const-string v2, "zerofltespr"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    const-string v2, "zenltespr"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    const-string v2, "nobleltespr"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    const-string v2, "gprimeltespr"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_81

    :cond_36
    const/4 v2, 0x1

    :goto_37
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "sprint_mvno_mobile_networks"

    invoke-virtual {v2, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "system_selection_automatic_ab_enable"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_37

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_82

    :cond_37
    const/4 v2, 0x1

    :goto_38
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "global_data_roaming_access_enable"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "us_cdma_call_fowarding"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "urgenct_voicemail_notification_enable"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "support_setting_soft_reset"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_83

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isTablet()Z

    move-result v2

    if-nez v2, :cond_83

    const/4 v2, 0x1

    :goto_39
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "assisted_dialing_enable"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "feature_vzw"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "eri_info_label_enable"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "safety_emergency_contacts"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "emregency_dialer_home_recent_block"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "mute_menu_in_easy_mode"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "support_low_battery_sound_during_call"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_84

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_84

    const/4 v2, 0x1

    :goto_3a
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "network_manual_selection_when_bootup"

    const-string v2, "klteMetroPCS"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_38

    const-string v2, "hltetmo"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    const-string v2, "global_network_cdma_gsm_enable_for_vzw"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_85

    :cond_38
    const/4 v2, 0x1

    :goto_3b
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "network_auto_selection_when_bootup"

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "change_network_mode_when_no_sim_bootup"

    const-string v6, "global_network_cdma_gsm_enable_for_vzw"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "auto_reject_notification"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "otasp_in_call_disable"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "show_internet_alert_popup_during_call"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_39

    const-string v2, "gprimeltetfnvzw"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_86

    :cond_39
    const/4 v2, 0x1

    :goto_3c
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "disconnect_cause_description"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "not_support_hold_menu_for_vzw"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "disable_add_call_button"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "emergency_call_active_always"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3a

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "support_easy_mode"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "support_help_easy_mode"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3a
    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "network_mode_global_lte_cdma_gsm_umts"

    const-string v2, "nobleltevzw"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b

    const-string v2, "zenltevzw"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b

    const-string v2, "zeroltevzw"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b

    const-string v2, "zerofltevzw"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b

    const-string v2, "kltevzw"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b

    const-string v2, "trltevzw"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b

    const-string v2, "tbltevzw"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b

    const-string v2, "noblelteusc"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b

    const-string v2, "zenlteusc"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b

    const-string v2, "zerolteusc"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b

    const-string v2, "zeroflteusc"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b

    const-string v2, "jfltevzw"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_87

    :cond_3b
    const/4 v2, 0x1

    :goto_3d
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "network_mode_global_lte_gsm"

    const-string v2, "viennaltevzw"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c

    const-string v2, "klimtltevzw"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c

    const-string v2, "matisseltevzw"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c

    const-string v2, "chagallltevzw"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c

    const-string v2, "lt03ltevzw"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c

    const-string v2, "milletltevzw"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_88

    :cond_3c
    const/4 v2, 0x1

    :goto_3e
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "network_mode_global_lte_wcdma"

    const-string v2, "gts210ltevzw"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3d

    const-string v2, "gtelltevzw"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_89

    :cond_3d
    const/4 v2, 0x1

    :goto_3f
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "setting_search_vzw"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "network_mode_not_support_gsm"

    const-string v2, "chagallltetmo"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    const-string v2, "gts210ltetmo"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    const-string v2, "gt58ltetmo"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    const-string v2, "milletltetmo"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a

    :cond_3e
    const/4 v2, 0x1

    :goto_40
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "support_check_data_roaming"

    const-string v6, "nobleltevzw"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "set_system_setting_for_auto_answer"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3f

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_8b

    :cond_3f
    const/4 v2, 0x1

    :goto_41
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "system_selection_automatic_donot_hide"

    invoke-virtual {v2, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "ignore_product_type"

    invoke-virtual {v2, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "feature_att"

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_40

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "allow_select_network_mode"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_40
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_41

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v3, "cprimelte"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_42

    :cond_41
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "support_period_mark"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "support_wave_effect"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_42
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "remove_call_barring"

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "usa_gsm_support_femto_cell_network"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_8c

    const-string v2, "zerofltetu"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8c

    const-string v2, "jflteuc"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8c

    const-string v2, "jactivelteuc"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8c

    const/4 v2, 0x1

    :goto_42
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "network_mode_not_support_att"

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "disable_popupmsg_when_deactivationcf"

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "feature_tmo"

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "wide_band_for_hd_icon"

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "hd_icon_wideband"

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "cs_e911"

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "prohibit_second_call_in_emergency_call"

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "update_hd_icon_by_intent"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "common_volte"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4d

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "vzw_volte_ui"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "att_volte_ui"

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "tmo_volte_ui"

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "mpcs_volte_ui"

    invoke-virtual {v2, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "us_volte_ui"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_43

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_43

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_43

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_8d

    :cond_43
    const/4 v2, 0x1

    :goto_43
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "volte_settings_in_mobile_networks"

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "volte_call_waiting_terminal"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "incoming_call_widget_for_volte"

    const-string v4, "us_volte_ui"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "call_details_for_hd_icon"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "wireless_priority_service_call"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "gui_usa_fragment"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_44

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_44

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_44

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_8e

    :cond_44
    const/4 v2, 0x1

    :goto_44
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "ui_for_usa"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_45

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_45

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_45

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_8f

    :cond_45
    const/4 v2, 0x1

    :goto_45
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "ui_for_mpcs"

    invoke-virtual {v2, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "support_rotation"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_46

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_46

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_46

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_90

    :cond_46
    const/4 v2, 0x1

    :goto_46
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "clean_mode"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_47

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_47

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_91

    :cond_47
    const/4 v2, 0x1

    :goto_47
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "answer_option"

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "modify_call_us"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_48

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_48

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_48

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_92

    :cond_48
    const/4 v2, 0x1

    :goto_48
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "vzw_sound_path"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "us_sound_path"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_49

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_49

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_49

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_93

    :cond_49
    const/4 v2, 0x1

    :goto_49
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "data_usage_limit"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "us_show_on_hold"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4a

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4a

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4a

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_94

    :cond_4a
    const/4 v2, 0x1

    :goto_4a
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "ims_capability_service"

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "epdg_call_for_vzw"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "disable_manage_conference_call"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4b

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_95

    :cond_4b
    const/4 v2, 0x1

    :goto_4b
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "video_connected_as_voice"

    const-string v4, "att_volte_ui"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "handle_mt_hold_call_state"

    const-string v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4c

    const-string v2, "att_volte_ui"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_96

    :cond_4c
    const/4 v2, 0x1

    :goto_4c
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "dialing_capable_while_ims_registration_attempting"

    const-string v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_97

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isSrlte()Z

    move-result v2

    if-eqz v2, :cond_97

    const/4 v2, 0x1

    :goto_4d
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "ims_only_conf_initiator_can_merge"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "enable_conference_info_banner"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "ims_capability_check_on_call_end"

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4d
    const-string v2, "common_vt"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4f

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "concept_usa_common"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4e

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4e

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4e

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_98

    :cond_4e
    const/4 v2, 0x1

    :goto_4e
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "concept_usa_att"

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "concept_usa_tmo"

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "concept_usa_vzw"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4f
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_50

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v3, "klteMetroPCS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_50

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "remove_volte_outgoing_calltype_menu"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_50
    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "circle_endbutton"

    const-string v2, "kltevzw"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_51

    const-string v2, "jfltevzw"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_51

    const-string v2, "trltevzw"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_51

    const-string v2, "hltevzw"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_51

    const-string v2, "j1qltevzw"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_51

    const-string v2, "tbltevzw"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_99

    :cond_51
    const/4 v2, 0x1

    :goto_4f
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "common_volte"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_52

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "non_volte_settings_in_mobile_networks"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_9a

    const-string v2, "zerofltetu"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9a

    const/4 v2, 0x1

    :goto_50
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "disable_mobile_data_settings"

    const-string v2, "zerofltetu"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9b

    const/4 v2, 0x1

    :goto_51
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_52
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_53

    const-string v2, "klimtlteuc"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "volte_settings_in_mobile_networks"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_53
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "ims_rcs"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "ims_rcs_bb"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->hasRCSBlackBird()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "change_order_of_endcall_buttons"

    const-string v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_54

    const-string v2, "att_volte_ui"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_54

    const-string v2, "tmo_volte_ui"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_54

    const-string v2, "mpcs_volte_ui"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9c

    :cond_54
    const/4 v2, 0x1

    :goto_52
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "geo_description_disable"

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_9d

    const-string v2, "noblelteusc"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9d

    const-string v2, "zenlteusc"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9d

    const/4 v2, 0x1

    :goto_53
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "end_call_when_dial_e911"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_55

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_9e

    :cond_55
    const/4 v2, 0x1

    :goto_54
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "show_switch_icon_in_button"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "show_switch_icon_on_call_card"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "disable_hd_icon"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "display_hd_icon"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "not_support_ims_conference_manage"

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "not_support_ims_conference_split"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_56

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_56

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_56

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_9f

    :cond_56
    const/4 v2, 0x1

    :goto_55
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "cdma_evdo_tfn"

    const-string v2, "gprimeltetfnvzw"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_57

    const-string v2, "e5ltetfnvzw"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a0

    :cond_57
    const/4 v2, 0x1

    :goto_56
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "barge_in"

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    sget v6, Lcom/android/services/telephony/common/PhoneFeature;->IncomingBargin_command:I

    invoke-virtual {v2, v6}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isBargeInEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_a1

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "gprimelte"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a1

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "e5lte"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a1

    const/4 v2, 0x1

    :goto_57
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "not_support_caller_info_card"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "cprimelte"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "silent_redial"

    const-string v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_58

    const-string v2, "support_wfc"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a2

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_a2

    :cond_58
    const/4 v2, 0x1

    :goto_58
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "support_enhanced_4glte_setting_video_call"

    const-string v4, "marinelteuc"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_e

    :cond_59
    const/4 v2, 0x0

    goto/16 :goto_f

    :cond_5a
    const/4 v2, 0x0

    goto/16 :goto_10

    :cond_5b
    const/4 v2, 0x0

    goto/16 :goto_11

    :cond_5c
    const/4 v2, 0x0

    goto/16 :goto_12

    :cond_5d
    const/4 v2, 0x0

    goto/16 :goto_13

    :cond_5e
    const/4 v2, 0x0

    goto/16 :goto_14

    :cond_5f
    const/4 v2, 0x0

    goto/16 :goto_15

    :cond_60
    const/4 v2, 0x0

    goto/16 :goto_16

    :cond_61
    const/4 v2, 0x0

    goto/16 :goto_17

    :cond_62
    const/4 v2, 0x0

    goto/16 :goto_18

    :cond_63
    const/4 v2, 0x0

    goto/16 :goto_19

    :cond_64
    const/4 v2, 0x0

    goto/16 :goto_1a

    :cond_65
    const/4 v2, 0x0

    goto/16 :goto_1b

    :cond_66
    const/4 v2, 0x0

    goto/16 :goto_1c

    :cond_67
    const/4 v2, 0x0

    goto/16 :goto_1d

    :cond_68
    const/4 v2, 0x0

    goto/16 :goto_1e

    :cond_69
    const/4 v2, 0x0

    goto/16 :goto_1f

    :cond_6a
    const/4 v2, 0x0

    goto/16 :goto_20

    :cond_6b
    const/4 v2, 0x0

    goto/16 :goto_21

    :cond_6c
    const/4 v2, 0x0

    goto/16 :goto_22

    :cond_6d
    const/4 v2, 0x0

    goto/16 :goto_23

    :cond_6e
    const/4 v2, 0x0

    goto/16 :goto_24

    :cond_6f
    const/4 v2, 0x0

    goto/16 :goto_25

    :cond_70
    const/4 v2, 0x0

    goto/16 :goto_26

    :cond_71
    const/4 v2, 0x0

    goto/16 :goto_27

    :cond_72
    const/4 v2, 0x0

    goto/16 :goto_28

    :cond_73
    const/4 v2, 0x0

    goto/16 :goto_29

    :cond_74
    const/4 v2, 0x0

    goto/16 :goto_2a

    :cond_75
    const/4 v2, 0x0

    goto/16 :goto_2b

    :cond_76
    const/4 v2, 0x0

    goto/16 :goto_2c

    :cond_77
    const/4 v2, 0x0

    goto/16 :goto_2d

    :cond_78
    const/4 v2, 0x0

    goto/16 :goto_2e

    :cond_79
    const/4 v2, 0x0

    goto/16 :goto_2f

    :cond_7a
    const/4 v2, 0x0

    goto/16 :goto_30

    :cond_7b
    const/4 v2, 0x0

    goto/16 :goto_31

    :cond_7c
    const/4 v2, 0x0

    goto/16 :goto_32

    :cond_7d
    const/4 v2, 0x0

    goto/16 :goto_33

    :cond_7e
    const/4 v2, 0x0

    goto/16 :goto_34

    :cond_7f
    const/4 v2, 0x0

    goto/16 :goto_35

    :cond_80
    const/4 v2, 0x0

    goto/16 :goto_36

    :cond_81
    const/4 v2, 0x0

    goto/16 :goto_37

    :cond_82
    const/4 v2, 0x0

    goto/16 :goto_38

    :cond_83
    const/4 v2, 0x0

    goto/16 :goto_39

    :cond_84
    const/4 v2, 0x0

    goto/16 :goto_3a

    :cond_85
    const/4 v2, 0x0

    goto/16 :goto_3b

    :cond_86
    const/4 v2, 0x0

    goto/16 :goto_3c

    :cond_87
    const/4 v2, 0x0

    goto/16 :goto_3d

    :cond_88
    const/4 v2, 0x0

    goto/16 :goto_3e

    :cond_89
    const/4 v2, 0x0

    goto/16 :goto_3f

    :cond_8a
    const/4 v2, 0x0

    goto/16 :goto_40

    :cond_8b
    const/4 v2, 0x0

    goto/16 :goto_41

    :cond_8c
    const/4 v2, 0x0

    goto/16 :goto_42

    :cond_8d
    const/4 v2, 0x0

    goto/16 :goto_43

    :cond_8e
    const/4 v2, 0x0

    goto/16 :goto_44

    :cond_8f
    const/4 v2, 0x0

    goto/16 :goto_45

    :cond_90
    const/4 v2, 0x0

    goto/16 :goto_46

    :cond_91
    const/4 v2, 0x0

    goto/16 :goto_47

    :cond_92
    const/4 v2, 0x0

    goto/16 :goto_48

    :cond_93
    const/4 v2, 0x0

    goto/16 :goto_49

    :cond_94
    const/4 v2, 0x0

    goto/16 :goto_4a

    :cond_95
    const/4 v2, 0x0

    goto/16 :goto_4b

    :cond_96
    const/4 v2, 0x0

    goto/16 :goto_4c

    :cond_97
    const/4 v2, 0x0

    goto/16 :goto_4d

    :cond_98
    const/4 v2, 0x0

    goto/16 :goto_4e

    :cond_99
    const/4 v2, 0x0

    goto/16 :goto_4f

    :cond_9a
    const/4 v2, 0x0

    goto/16 :goto_50

    :cond_9b
    const/4 v2, 0x0

    goto/16 :goto_51

    :cond_9c
    const/4 v2, 0x0

    goto/16 :goto_52

    :cond_9d
    const/4 v2, 0x0

    goto/16 :goto_53

    :cond_9e
    const/4 v2, 0x0

    goto/16 :goto_54

    :cond_9f
    const/4 v2, 0x0

    goto/16 :goto_55

    :cond_a0
    const/4 v2, 0x0

    goto/16 :goto_56

    :cond_a1
    const/4 v2, 0x0

    goto/16 :goto_57

    :cond_a2
    const/4 v2, 0x0

    goto/16 :goto_58
.end method

.method public static makePreconditionForFeature()V
    .locals 2

    const-string v0, "DCM"

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "KDI"

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SBM"

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v1, "SC-04G"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "zeroltedcm"

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v1, "SC-05G"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "zerofltedcm"

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v1, "SCV31_jp_kdi"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "zeroltekdi"

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v1, "404SC"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "zeroltesbm"

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const-string v0, "SC-04F"

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "kltedcm"

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    goto :goto_0

    :cond_6
    const-string v0, "SC-02G"

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "kltedcmactive"

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    goto :goto_0

    :cond_7
    const-string v0, "SCL23"

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "kltekdi"

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    goto :goto_0

    :cond_8
    const-string v0, "SC-01G"

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "tbltedcm"

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    goto :goto_0

    :cond_9
    const-string v0, "SCL24"

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "tbltekdi"

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    goto :goto_0

    :cond_a
    const-string v0, "SC-03G"

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "klimtltedcm"

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    goto/16 :goto_0

    :cond_b
    const-string v0, "SCT21"

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "chagallltekdi"

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    goto/16 :goto_0

    :cond_c
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v1, "SC-01F"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "hltedcm"

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    goto/16 :goto_0

    :cond_d
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v1, "SCL22"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "hltekdi"

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    goto/16 :goto_0

    :cond_e
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v1, "SC-02F"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "js01ltedcm"

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    goto/16 :goto_0

    :cond_f
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v1, "SC-04E"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "jfltedcm"

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public static needMuteGap()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v3, "klte"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v3, "k3g"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v3, "kqlte"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v3, "kccat6xx"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v3, "lentislte"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v3, "kminilte"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v3, "kmini3g"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    return v0
.end method

.method public static putFeature(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
