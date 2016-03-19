.class final Lcom/nuance/swypeconnect/ac/ACBuildConfig;
.super Ljava/lang/Object;


# instance fields
.field final anonymousBuild:Z

.field final appKeyStarts:Ljava/lang/String;

.field final buildExpiration:Ljava/lang/String;

.field final buildPropertiesFilterBlock:Ljava/lang/String;

.field final buildPropertiesFilterPreTos:Ljava/lang/String;

.field final buildTimestamp:Ljava/lang/String;

.field final ccpServerUrl:Ljava/lang/String;

.field final ccpServiceClass:Ljava/lang/String;

.field final collectUserProperties:Z

.field final defaultDelay:I

.field final defaultLogLevel:Ljava/lang/String;

.field final developerLogEnabled:Ljava/lang/String;

.field final languageDownloadServiceClass:Ljava/lang/String;

.field final legalDocumentsClass:Ljava/lang/String;

.field final livingLanguageMaxEvents:I

.field final locationDelay:I

.field final locationDistance:I

.field final locationLevel:Ljava/lang/String;

.field final minimumRefreshInterval:I

.field final oemId:Ljava/lang/String;

.field final packageUpdateEnabled:Z

.field final reportingLogHelperClass:Ljava/lang/String;

.field final url:Ljava/lang/String;

.field final version:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "4.0.5.37275"

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->version:Ljava/lang/String;

    const-string v0, "30030"

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->oemId:Ljava/lang/String;

    const-string v0, "https://api-samsung.swypeconnect.com/"

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->url:Ljava/lang/String;

    const-string v0, "20150608.104328"

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->buildTimestamp:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->buildExpiration:Ljava/lang/String;

    const-string v0, "SAMSUNG"

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->appKeyStarts:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->locationLevel:Ljava/lang/String;

    const/16 v0, 0x64a

    iput v0, p0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->locationDistance:I

    const v0, 0x1b7740

    iput v0, p0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->locationDelay:I

    const-string v0, "false"

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->developerLogEnabled:Ljava/lang/String;

    const-string v0, "6"

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->defaultLogLevel:Ljava/lang/String;

    const/16 v0, 0x12c

    iput v0, p0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->defaultDelay:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->collectUserProperties:Z

    const/16 v0, 0x2710

    iput v0, p0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->livingLanguageMaxEvents:I

    const/16 v0, 0xe10

    iput v0, p0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->minimumRefreshInterval:I

    iput-boolean v1, p0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->packageUpdateEnabled:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->legalDocumentsClass:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->languageDownloadServiceClass:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->reportingLogHelperClass:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->ccpServiceClass:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->anonymousBuild:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->buildPropertiesFilterBlock:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->buildPropertiesFilterPreTos:Ljava/lang/String;

    const-string v0, "https://ccp-samsung.swypeconnect.com/"

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->ccpServerUrl:Ljava/lang/String;

    return-void
.end method
