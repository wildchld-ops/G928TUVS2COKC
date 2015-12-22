.class Lcom/android/packageinstaller/InstallFlowAnalytics$2;
.super Ljava/lang/Object;
.source "InstallFlowAnalytics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/packageinstaller/InstallFlowAnalytics;->writeToEventLog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/packageinstaller/InstallFlowAnalytics;

.field final synthetic val$elapsedTimeTillInstallButtonClick:I

.field final synthetic val$elapsedTimeTillPackageInfoObtained:I

.field final synthetic val$resultAndFlags:I

.field final synthetic val$totalElapsedTime:I


# direct methods
.method constructor <init>(Lcom/android/packageinstaller/InstallFlowAnalytics;IIII)V
    .locals 0

    iput-object p1, p0, Lcom/android/packageinstaller/InstallFlowAnalytics$2;->this$0:Lcom/android/packageinstaller/InstallFlowAnalytics;

    iput p2, p0, Lcom/android/packageinstaller/InstallFlowAnalytics$2;->val$resultAndFlags:I

    iput p3, p0, Lcom/android/packageinstaller/InstallFlowAnalytics$2;->val$totalElapsedTime:I

    iput p4, p0, Lcom/android/packageinstaller/InstallFlowAnalytics$2;->val$elapsedTimeTillPackageInfoObtained:I

    iput p5, p0, Lcom/android/packageinstaller/InstallFlowAnalytics$2;->val$elapsedTimeTillInstallButtonClick:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v5, 0x0

    const/4 v0, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/packageinstaller/InstallFlowAnalytics$2;->this$0:Lcom/android/packageinstaller/InstallFlowAnalytics;

    # invokes: Lcom/android/packageinstaller/InstallFlowAnalytics;->getPackageContentsDigest()[B
    invoke-static {v3}, Lcom/android/packageinstaller/InstallFlowAnalytics;->access$000(Lcom/android/packageinstaller/InstallFlowAnalytics;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, v5}, Ljava/lang/IntegralToString;->bytesToHexString([BZ)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget v3, p0, Lcom/android/packageinstaller/InstallFlowAnalytics$2;->val$resultAndFlags:I

    iget v4, p0, Lcom/android/packageinstaller/InstallFlowAnalytics$2;->val$totalElapsedTime:I

    iget v5, p0, Lcom/android/packageinstaller/InstallFlowAnalytics$2;->val$elapsedTimeTillPackageInfoObtained:I

    iget v6, p0, Lcom/android/packageinstaller/InstallFlowAnalytics$2;->val$elapsedTimeTillInstallButtonClick:I

    invoke-static {v3, v4, v5, v6, v1}, Lcom/android/packageinstaller/EventLogTags;->writeInstallPackageAttempt(IIIILjava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    const-string v1, ""

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "InstallFlowAnalytics"

    const-string v4, "Failed to hash APK contents"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    invoke-static {v0, v5}, Ljava/lang/IntegralToString;->bytesToHexString([BZ)Ljava/lang/String;

    move-result-object v1

    :goto_2
    iget v3, p0, Lcom/android/packageinstaller/InstallFlowAnalytics$2;->val$resultAndFlags:I

    iget v4, p0, Lcom/android/packageinstaller/InstallFlowAnalytics$2;->val$totalElapsedTime:I

    iget v5, p0, Lcom/android/packageinstaller/InstallFlowAnalytics$2;->val$elapsedTimeTillPackageInfoObtained:I

    iget v6, p0, Lcom/android/packageinstaller/InstallFlowAnalytics$2;->val$elapsedTimeTillInstallButtonClick:I

    invoke-static {v3, v4, v5, v6, v1}, Lcom/android/packageinstaller/EventLogTags;->writeInstallPackageAttempt(IIIILjava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v1, ""

    goto :goto_2

    :catchall_0
    move-exception v3

    if-eqz v0, :cond_2

    invoke-static {v0, v5}, Ljava/lang/IntegralToString;->bytesToHexString([BZ)Ljava/lang/String;

    move-result-object v1

    :goto_3
    iget v4, p0, Lcom/android/packageinstaller/InstallFlowAnalytics$2;->val$resultAndFlags:I

    iget v5, p0, Lcom/android/packageinstaller/InstallFlowAnalytics$2;->val$totalElapsedTime:I

    iget v6, p0, Lcom/android/packageinstaller/InstallFlowAnalytics$2;->val$elapsedTimeTillPackageInfoObtained:I

    iget v7, p0, Lcom/android/packageinstaller/InstallFlowAnalytics$2;->val$elapsedTimeTillInstallButtonClick:I

    invoke-static {v4, v5, v6, v7, v1}, Lcom/android/packageinstaller/EventLogTags;->writeInstallPackageAttempt(IIIILjava/lang/String;)V

    throw v3

    :cond_2
    const-string v1, ""

    goto :goto_3
.end method
