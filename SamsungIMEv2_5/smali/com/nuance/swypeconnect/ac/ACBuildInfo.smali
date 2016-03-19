.class public final Lcom/nuance/swypeconnect/ac/ACBuildInfo;
.super Ljava/lang/Object;


# static fields
.field public static final LOCATION_LEVEL_ALL:I = 0x2

.field public static final LOCATION_LEVEL_NETWORK:I = 0x1

.field public static final LOCATION_LEVEL_OFF:I


# instance fields
.field private buildSettings:Lcom/nuance/connect/host/service/BuildSettings;


# direct methods
.method protected constructor <init>(Lcom/nuance/swypeconnect/ac/ACManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACManager;->getBuildSettings()Lcom/nuance/connect/host/service/BuildSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACBuildInfo;->buildSettings:Lcom/nuance/connect/host/service/BuildSettings;

    return-void
.end method


# virtual methods
.method public getBuildDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACBuildInfo;->buildSettings:Lcom/nuance/connect/host/service/BuildSettings;

    invoke-interface {v0}, Lcom/nuance/connect/host/service/BuildSettings;->getBuildTimestamp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBuildExpiration()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACBuildInfo;->buildSettings:Lcom/nuance/connect/host/service/BuildSettings;

    invoke-interface {v0}, Lcom/nuance/connect/host/service/BuildSettings;->getBuildExpiration()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocationLevel()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACBuildInfo;->buildSettings:Lcom/nuance/connect/host/service/BuildSettings;

    invoke-interface {v0}, Lcom/nuance/connect/host/service/BuildSettings;->getLocationLevel()I

    move-result v0

    return v0
.end method

.method public getLogLevel()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACBuildInfo;->buildSettings:Lcom/nuance/connect/host/service/BuildSettings;

    invoke-interface {v0}, Lcom/nuance/connect/host/service/BuildSettings;->getLogLevel()I

    move-result v0

    return v0
.end method

.method public getOemId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACBuildInfo;->buildSettings:Lcom/nuance/connect/host/service/BuildSettings;

    invoke-interface {v0}, Lcom/nuance/connect/host/service/BuildSettings;->getOemId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACBuildInfo;->buildSettings:Lcom/nuance/connect/host/service/BuildSettings;

    invoke-interface {v0}, Lcom/nuance/connect/host/service/BuildSettings;->getConnectUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACBuildInfo;->buildSettings:Lcom/nuance/connect/host/service/BuildSettings;

    invoke-interface {v0}, Lcom/nuance/connect/host/service/BuildSettings;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDeveloperLogEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACBuildInfo;->buildSettings:Lcom/nuance/connect/host/service/BuildSettings;

    invoke-interface {v0}, Lcom/nuance/connect/host/service/BuildSettings;->isDeveloperLogEnabled()Z

    move-result v0

    return v0
.end method
