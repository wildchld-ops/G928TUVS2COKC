.class public Lcom/android/packageinstaller/InstallFlowAnalytics;
.super Ljava/lang/Object;
.source "InstallFlowAnalytics.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/packageinstaller/InstallFlowAnalytics;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEndTimestampMillis:J

.field private mFlags:I

.field private mInstallButtonClickTimestampMillis:J

.field private mLogged:Z

.field private mPackageInfoObtainedTimestampMillis:J

.field private mPackageManagerInstallResult:I

.field private mPackageUri:Ljava/lang/String;

.field private mResult:B

.field private mStartTimestampMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/packageinstaller/InstallFlowAnalytics$1;

    invoke-direct {v0}, Lcom/android/packageinstaller/InstallFlowAnalytics$1;-><init>()V

    sput-object v0, Lcom/android/packageinstaller/InstallFlowAnalytics;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/android/packageinstaller/InstallFlowAnalytics;->mResult:B

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/android/packageinstaller/InstallFlowAnalytics;->mResult:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/packageinstaller/InstallFlowAnalytics;->mFlags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/packageinstaller/InstallFlowAnalytics;->mResult:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/packageinstaller/InstallFlowAnalytics;->mPackageManagerInstallResult:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/packageinstaller/InstallFlowAnalytics;->mStartTimestampMillis:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/packageinstaller/InstallFlowAnalytics;->mPackageInfoObtainedTimestampMillis:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/packageinstaller/InstallFlowAnalytics;->mInstallButtonClickTimestampMillis:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/packageinstaller/InstallFlowAnalytics;->mEndTimestampMillis:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/packageinstaller/InstallFlowAnalytics;->mPackageUri:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/packageinstaller/InstallFlowAnalytics;->readBoolean(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/packageinstaller/InstallFlowAnalytics;->mLogged:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/packageinstaller/InstallFlowAnalytics;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/packageinstaller/InstallFlowAnalytics;->getPackageContentsDigest()[B

    move-result-object v0

    return-object v0
.end method

.method private static final clipUnsignedLongToUnsignedInt(J)I
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-lez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    long-to-int v0, p0

    goto :goto_0
.end method

.method private static final clipUnsignedValueToUnsignedByte(J)B
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-wide/16 v0, 0xff

    cmp-long v0, p0, v0

    if-lez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    long-to-int v0, p0

    int-to-byte v0, v0

    goto :goto_0
.end method

.method private getPackageContentsDigest()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/packageinstaller/InstallFlowAnalytics;->mPackageUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/packageinstaller/InstallFlowAnalytics;->getSha256ContentsDigest(Ljava/io/File;)[B

    move-result-object v1

    return-object v1
.end method

.method private static getSha256ContentsDigest(Ljava/io/File;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    const-string v6, "SHA-256"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    const/16 v6, 0x2000

    new-array v0, v6, [B

    const/4 v4, 0x0

    :try_start_1
    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    array-length v7, v0

    invoke-direct {v5, v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    :try_start_2
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v6, -0x1

    if-eq v1, v6, :cond_0

    const/4 v6, 0x0

    invoke-virtual {v2, v0, v6, v1}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v6

    move-object v4, v5

    :goto_1
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v6

    :catch_0
    move-exception v3

    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "SHA-256 not available"

    invoke-direct {v6, v7, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :cond_0
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    return-object v6

    :catchall_1
    move-exception v6

    goto :goto_1
.end method

.method private isAllPermissionsDisplayed()Z
    .locals 1

    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Lcom/android/packageinstaller/InstallFlowAnalytics;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method private isAppVerifierInstalled()Z
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/packageinstaller/InstallFlowAnalytics;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method private isFileUri()Z
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/packageinstaller/InstallFlowAnalytics;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method private isFlagSet(I)Z
    .locals 1

    iget v0, p0, Lcom/android/packageinstaller/InstallFlowAnalytics;->mFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInstallButtonClicked()Z
    .locals 1

    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lcom/android/packageinstaller/InstallFlowAnalytics;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method private isInstallRequestFromUnknownSource()Z
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/packageinstaller/InstallFlowAnalytics;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method private isInstallsFromUnknownSourcesPermitted()Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/packageinstaller/InstallFlowAnalytics;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method private isNewPermissionsDisplayed()Z
    .locals 1

    const/16 v0, 0x800

    invoke-direct {p0, v0}, Lcom/android/packageinstaller/InstallFlowAnalytics;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method private isNewPermissionsFound()Z
    .locals 1

    const/16 v0, 0x200

    invoke-direct {p0, v0}, Lcom/android/packageinstaller/InstallFlowAnalytics;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method private isPackageInfoObtained()Z
    .locals 1

    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lcom/android/packageinstaller/InstallFlowAnalytics;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method private isPermissionsDisplayed()Z
    .locals 1

    const/16 v0, 0x400

    invoke-direct {p0, v0}, Lcom/android/packageinstaller/InstallFlowAnalytics;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method private isReplace()Z
    .locals 1

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/android/packageinstaller/InstallFlowAnalytics;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method private isSystemApp()Z
    .locals 1

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lcom/android/packageinstaller/InstallFlowAnalytics;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method private isUserConsentToVerifyAppsGranted()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/packageinstaller/InstallFlowAnalytics;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "package_verifier_user_consent"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isVerifyAppsEnabled()Z
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/packageinstaller/InstallFlowAnalytics;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method private static readBoolean(Landroid/os/Parcel;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setFlagState(IZ)V
    .locals 2

    if-eqz p2, :cond_0

    iget v0, p0, Lcom/android/packageinstaller/InstallFlowAnalytics;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/packageinstaller/InstallFlowAnalytics;->mFlags:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/packageinstaller/InstallFlowAnalytics;->mFlags:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/packageinstaller/InstallFlowAnalytics;->mFlags:I

    goto :goto_0
.end method

.method private static writeBoolean(Landroid/os/Parcel;Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeByte(B)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeToEventLog()V
    .locals 12

    const/4 v0, 0x0

    const/4 v6, 0x0

    iget-byte v1, p0, Lcom/android/packageinstaller/InstallFlowAnalytics;->mResult:B

    const/4 v7, 0x6

    if-ne v1, v7, :cond_0

    iget v1, p0, Lcom/android/packageinstaller/InstallFlowAnalytics;->mPackageManagerInstallResult:I

    neg-int v1, v1

    int-to-long v8, v1

    invoke-static {v8, v9}, Lcom/android/packageinstaller/InstallFlowAnalytics;->clipUnsignedValueToUnsignedByte(J)B

    move-result v6

    :cond_0
    iget-byte v1, p0, Lcom/android/packageinstaller/InstallFlowAnalytics;->mResult:B

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v7, v6, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v1, v7

    iget v7, p0, Lcom/android/packageinstaller/InstallFlowAnalytics;->mFlags:I

    const v8, 0xffff

    and-int/2addr v7, v8

    shl-int/lit8 v7, v7, 0x10

    or-int v2, v1, v7

    iget-wide v8, p0, Lcom/android/packageinstaller/InstallFlowAnalytics;->mEndTimestampMillis:J

    iget-wide v10, p0, Lcom/android/packageinstaller/InstallFlowAnalytics;->mStartTimestampMillis:J

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Lcom/android/packageinstaller/InstallFlowAnalytics;->clipUnsignedLongToUnsignedInt(J)I

    move-result v3

    invoke-direct {p0}, Lcom/android/packageinstaller/InstallFlowAnalytics;->isPackageInfoObtained()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v8, p0, Lcom/android/packageinstaller/InstallFlowAnalytics;->mPackageInfoObtainedTimestampMillis:J

    iget-wide v10, p0, Lcom/android/packageinstaller/InstallFlowAnalytics;->mStartTimestampMillis:J

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Lcom/android/packageinstaller/InstallFlowAnalytics;->clipUnsignedLongToUnsignedInt(J)I

    move-result v4

    :goto_0
    invoke-direct {p0}, Lcom/android/packageinstaller/InstallFlowAnalytics;->isInstallButtonClicked()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-wide v0, p0, Lcom/android/packageinstaller/InstallFlowAnalytics;->mInstallButtonClickTimestampMillis:J

    iget-wide v8, p0, Lcom/android/packageinstaller/InstallFlowAnalytics;->mStartTimestampMillis:J

    sub-long/2addr v0, v8

    invoke-static {v0, v1}, Lcom/android/packageinstaller/InstallFlowAnalytics;->clipUnsignedLongToUnsignedInt(J)I

    move-result v5

    :goto_1
    iget v0, p0, Lcom/android/packageinstaller/InstallFlowAnalytics;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/packageinstaller/InstallFlowAnalytics;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/packageinstaller/InstallFlowAnalytics;->isUserConsentToVerifyAppsGranted()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v7, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/packageinstaller/InstallFlowAnalytics$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/packageinstaller/InstallFlowAnalytics$2;-><init>(Lcom/android/packageinstaller/InstallFlowAnalytics;IIII)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/packageinstaller/InstallFlowAnalytics;->mLogged:Z

    const-string v0, "InstallFlowAnalytics"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "InstallFlowAnalytics"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Analytics:\n\tinstallsFromUnknownSourcesPermitted: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/packageinstaller/InstallFlowAnalytics;->isInstallsFromUnknownSourcesPermitted()Z

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "\n\tinstallRequestFromUnknownSource: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/packageinstaller/InstallFlowAnalytics;->isInstallRequestFromUnknownSource()Z

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "\n\tverifyAppsEnabled: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/packageinstaller/InstallFlowAnalytics;->isVerifyAppsEnabled()Z

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "\n\tappVerifierInstalled: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/packageinstaller/InstallFlowAnalytics;->isAppVerifierInstalled()Z

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "\n\tfileUri: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/packageinstaller/InstallFlowAnalytics;->isFileUri()Z

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "\n\treplace: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/packageinstaller/InstallFlowAnalytics;->isReplace()Z

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "\n\tsystemApp: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/packageinstaller/InstallFlowAnalytics;->isSystemApp()Z

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "\n\tpackageInfoObtained: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/packageinstaller/InstallFlowAnalytics;->isPackageInfoObtained()Z

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "\n\tinstallButtonClicked: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/packageinstaller/InstallFlowAnalytics;->isInstallButtonClicked()Z

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "\n\tpermissionsDisplayed: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/packageinstaller/InstallFlowAnalytics;->isPermissionsDisplayed()Z

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "\n\tnewPermissionsDisplayed: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/packageinstaller/InstallFlowAnalytics;->isNewPermissionsDisplayed()Z

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "\n\tallPermissionsDisplayed: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/packageinstaller/InstallFlowAnalytics;->isAllPermissionsDisplayed()Z

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "\n\tnewPermissionsFound: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/packageinstaller/InstallFlowAnalytics;->isNewPermissionsFound()Z

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "\n\tresult: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v7, p0, Lcom/android/packageinstaller/InstallFlowAnalytics;->mResult:B

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "\n\tpackageManagerInstallResult: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, p0, Lcom/android/packageinstaller/InstallFlowAnalytics;->mPackageManagerInstallResult:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "\n\ttotalDuration: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v8, p0, Lcom/android/packageinstaller/InstallFlowAnalytics;->mEndTimestampMillis:J

    iget-wide v10, p0, Lcom/android/packageinstaller/InstallFlowAnalytics;->mStartTimestampMillis:J

    sub-long/2addr v8, v10

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " ms"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "\n\ttimeTillPackageInfoObtained: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0}, Lcom/android/packageinstaller/InstallFlowAnalytics;->isPackageInfoObtained()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, p0, Lcom/android/packageinstaller/InstallFlowAnalytics;->mPackageInfoObtainedTimestampMillis:J

    iget-wide v10, p0, Lcom/android/packageinstaller/InstallFlowAnalytics;->mStartTimestampMillis:J

    sub-long/2addr v8, v10

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " ms"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "\n\ttimeTillInstallButtonClick: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0}, Lcom/android/packageinstaller/InstallFlowAnalytics;->isInstallButtonClicked()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, p0, Lcom/android/packageinstaller/InstallFlowAnalytics;->mInstallButtonClickTimestampMillis:J

    iget-wide v10, p0, Lcom/android/packageinstaller/InstallFlowAnalytics;->mStartTimestampMillis:J

    sub-long/2addr v8, v10

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " ms"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "InstallFlowAnalytics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Wrote to Event Log: 0x"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-long v8, v2

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    const/16 v7, 0x10

    invoke-static {v8, v9, v7}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ", "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ", "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ", "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    move v4, v0

    goto/16 :goto_0

    :cond_3
    move v5, v0

    goto/16 :goto_1

    :cond_4
    const-string v0, ""

    invoke-static {v2, v3, v4, v5, v0}, Lcom/android/packageinstaller/EventLogTags;->writeInstallPackageAttempt(IIIILjava/lang/String;)V

    goto/16 :goto_2

    :cond_5
    const-string v0, "n/a"

    goto/16 :goto_3

    :cond_6
    const-string v0, "n/a"

    goto :goto_4
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method setAllPermissionsDisplayed(Z)V
    .locals 1

    const/16 v0, 0x1000

    invoke-direct {p0, v0, p1}, Lcom/android/packageinstaller/InstallFlowAnalytics;->setFlagState(IZ)V

    return-void
.end method

.method setAppVerifierInstalled(Z)V
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lcom/android/packageinstaller/InstallFlowAnalytics;->setFlagState(IZ)V

    return-void
.end method

.method setContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/packageinstaller/InstallFlowAnalytics;->mContext:Landroid/content/Context;

    return-void
.end method

.method setFileUri(Z)V
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lcom/android/packageinstaller/InstallFlowAnalytics;->setFlagState(IZ)V

    return-void
.end method

.method setFlowFinished(B)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/packageinstaller/InstallFlowAnalytics;->mLogged:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-byte p1, p0, Lcom/android/packageinstaller/InstallFlowAnalytics;->mResult:B

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/packageinstaller/InstallFlowAnalytics;->mEndTimestampMillis:J

    invoke-direct {p0}, Lcom/android/packageinstaller/InstallFlowAnalytics;->writeToEventLog()V

    goto :goto_0
.end method

.method setFlowFinishedWithPackageManagerResult(I)V
    .locals 1

    iput p1, p0, Lcom/android/packageinstaller/InstallFlowAnalytics;->mPackageManagerInstallResult:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/packageinstaller/InstallFlowAnalytics;->setFlowFinished(B)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/packageinstaller/InstallFlowAnalytics;->setFlowFinished(B)V

    goto :goto_0
.end method

.method setInstallButtonClicked()V
    .locals 2

    const/16 v0, 0x100

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/packageinstaller/InstallFlowAnalytics;->setFlagState(IZ)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/packageinstaller/InstallFlowAnalytics;->mInstallButtonClickTimestampMillis:J

    return-void
.end method

.method setInstallRequestFromUnknownSource(Z)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/android/packageinstaller/InstallFlowAnalytics;->setFlagState(IZ)V

    return-void
.end method

.method setInstallsFromUnknownSourcesPermitted(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/packageinstaller/InstallFlowAnalytics;->setFlagState(IZ)V

    return-void
.end method

.method setNewPermissionsDisplayed(Z)V
    .locals 1

    const/16 v0, 0x800

    invoke-direct {p0, v0, p1}, Lcom/android/packageinstaller/InstallFlowAnalytics;->setFlagState(IZ)V

    return-void
.end method

.method setNewPermissionsFound(Z)V
    .locals 1

    const/16 v0, 0x200

    invoke-direct {p0, v0, p1}, Lcom/android/packageinstaller/InstallFlowAnalytics;->setFlagState(IZ)V

    return-void
.end method

.method setPackageInfoObtained()V
    .locals 2

    const/16 v0, 0x80

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/packageinstaller/InstallFlowAnalytics;->setFlagState(IZ)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/packageinstaller/InstallFlowAnalytics;->mPackageInfoObtainedTimestampMillis:J

    return-void
.end method

.method setPackageUri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/packageinstaller/InstallFlowAnalytics;->mPackageUri:Ljava/lang/String;

    return-void
.end method

.method setPermissionsDisplayed(Z)V
    .locals 1

    const/16 v0, 0x400

    invoke-direct {p0, v0, p1}, Lcom/android/packageinstaller/InstallFlowAnalytics;->setFlagState(IZ)V

    return-void
.end method

.method setReplace(Z)V
    .locals 1

    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Lcom/android/packageinstaller/InstallFlowAnalytics;->setFlagState(IZ)V

    return-void
.end method

.method setStartTimestampMillis(J)V
    .locals 1

    iput-wide p1, p0, Lcom/android/packageinstaller/InstallFlowAnalytics;->mStartTimestampMillis:J

    return-void
.end method

.method setSystemApp(Z)V
    .locals 1

    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Lcom/android/packageinstaller/InstallFlowAnalytics;->setFlagState(IZ)V

    return-void
.end method

.method setVerifyAppsEnabled(Z)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/android/packageinstaller/InstallFlowAnalytics;->setFlagState(IZ)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Lcom/android/packageinstaller/InstallFlowAnalytics;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-byte v0, p0, Lcom/android/packageinstaller/InstallFlowAnalytics;->mResult:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Lcom/android/packageinstaller/InstallFlowAnalytics;->mPackageManagerInstallResult:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/android/packageinstaller/InstallFlowAnalytics;->mStartTimestampMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/android/packageinstaller/InstallFlowAnalytics;->mPackageInfoObtainedTimestampMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/android/packageinstaller/InstallFlowAnalytics;->mInstallButtonClickTimestampMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/android/packageinstaller/InstallFlowAnalytics;->mEndTimestampMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/android/packageinstaller/InstallFlowAnalytics;->mPackageUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/packageinstaller/InstallFlowAnalytics;->mLogged:Z

    invoke-static {p1, v0}, Lcom/android/packageinstaller/InstallFlowAnalytics;->writeBoolean(Landroid/os/Parcel;Z)V

    return-void
.end method
