.class public final Lcom/nuance/id/NuanceId;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/id/NuanceId$HashingFunction;
    }
.end annotation


# static fields
.field public static final INCLUDE_ALL:I = 0xf

.field public static final INCLUDE_ANDROIDID:I = 0x8

.field public static final INCLUDE_IMEI:I = 0x1

.field public static final INCLUDE_MAC:I = 0x4

.field public static final INCLUDE_SERIAL:I = 0x2

.field public static final NULL_ANDROIDID:Ljava/lang/String; = "00000000000000000"

.field public static final NULL_HASH:Ljava/lang/String; = "00000000000000000000000000000000000000000000000000000000000000000"

.field public static final NULL_IMEI:Ljava/lang/String; = "00000000000000000"

.field public static final NULL_MAC_ADDRESS:Ljava/lang/String; = "000000000000"

.field public static final NULL_SERIAL:Ljava/lang/String; = "0000000000000000000000"


# instance fields
.field private context:Landroid/content/Context;

.field private hashingInternal:Lcom/nuance/id/NuanceIdImpl;

.field private id:Ljava/lang/String;

.field private idsUsed:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/16 v0, 0xf

    invoke-direct {p0, p1, v0}, Lcom/nuance/id/NuanceId;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/id/NuanceId;->context:Landroid/content/Context;

    new-instance v0, Lcom/nuance/id/NuanceIdImpl;

    invoke-direct {v0}, Lcom/nuance/id/NuanceIdImpl;-><init>()V

    iput-object v0, p0, Lcom/nuance/id/NuanceId;->hashingInternal:Lcom/nuance/id/NuanceIdImpl;

    iput p2, p0, Lcom/nuance/id/NuanceId;->idsUsed:I

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Must include at least one device IDs to generate NuanceID"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method protected static getCompatibilityDeviceProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-class v0, Landroid/os/Build;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const-class v1, Landroid/os/Build;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isIdIncluded(I)Z
    .locals 1

    iget v0, p0, Lcom/nuance/id/NuanceId;->idsUsed:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected checkPermission(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nuance/id/NuanceId;->context:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/id/NuanceId;->context:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected getAndroidId()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nuance/id/NuanceId;->context:Landroid/content/Context;

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/nuance/id/NuanceId;->isIdIncluded(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/nuance/id/NuanceId;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const-string v0, "00000000000000000"

    :cond_1
    return-object v0
.end method

.method public getAndroidIdHash()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/nuance/id/NuanceId;->getId()Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/id/NuanceId;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/nuance/id/NuanceId;->id:Ljava/lang/String;

    mul-int/lit8 v0, v0, 0x3

    iget-object v2, p0, Lcom/nuance/id/NuanceId;->id:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExternalId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/nuance/id/NuanceId;->hashingInternal:Lcom/nuance/id/NuanceIdImpl;

    invoke-virtual {p0}, Lcom/nuance/id/NuanceId;->getAndroidId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/id/NuanceIdImpl;->sha1hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getIMEI()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nuance/id/NuanceId;->context:Landroid/content/Context;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/nuance/id/NuanceId;->isIdIncluded(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v1}, Lcom/nuance/id/NuanceId;->checkPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/nuance/id/NuanceId;->context:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const-string v0, "00000000000000000"

    :cond_1
    return-object v0
.end method

.method public getIMEIHash()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/nuance/id/NuanceId;->getId()Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/id/NuanceId;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/nuance/id/NuanceId;->id:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/nuance/id/NuanceId;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nuance/id/NuanceId;->hashingInternal:Lcom/nuance/id/NuanceIdImpl;

    invoke-virtual {p0}, Lcom/nuance/id/NuanceId;->getIMEI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/id/NuanceIdImpl;->generateHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/id/NuanceId;->hashingInternal:Lcom/nuance/id/NuanceIdImpl;

    invoke-virtual {p0}, Lcom/nuance/id/NuanceId;->getSerial()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/id/NuanceIdImpl;->generateHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/id/NuanceId;->hashingInternal:Lcom/nuance/id/NuanceIdImpl;

    invoke-virtual {p0}, Lcom/nuance/id/NuanceId;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/id/NuanceIdImpl;->generateHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/id/NuanceId;->hashingInternal:Lcom/nuance/id/NuanceIdImpl;

    invoke-virtual {p0}, Lcom/nuance/id/NuanceId;->getAndroidId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/id/NuanceIdImpl;->generateHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/id/NuanceId;->id:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/nuance/id/NuanceId;->id:Ljava/lang/String;

    return-object v0
.end method

.method protected getMac()Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/id/NuanceId;->context:Landroid/content/Context;

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/nuance/id/NuanceId;->isIdIncluded(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {p0, v0}, Lcom/nuance/id/NuanceId;->checkPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/id/NuanceId;->context:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ":"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    const-string v0, "000000000000"

    :cond_1
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public getMacHash()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/nuance/id/NuanceId;->getId()Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/id/NuanceId;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/nuance/id/NuanceId;->id:Ljava/lang/String;

    mul-int/lit8 v2, v0, 0x2

    mul-int/lit8 v0, v0, 0x3

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSerial()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/nuance/id/NuanceId;->isIdIncluded(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "SERIAL"

    invoke-static {v0}, Lcom/nuance/id/NuanceId;->getCompatibilityDeviceProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const-string v0, "0000000000000000000000"

    :cond_1
    return-object v0
.end method

.method public getSerialHash()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/nuance/id/NuanceId;->getId()Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/id/NuanceId;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/nuance/id/NuanceId;->id:Ljava/lang/String;

    mul-int/lit8 v2, v0, 0x2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
