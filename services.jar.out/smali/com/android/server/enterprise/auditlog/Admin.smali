.class public Lcom/android/server/enterprise/auditlog/Admin;
.super Ljava/lang/Object;
.source "Admin.java"

# interfaces
.implements Lcom/android/server/enterprise/auditlog/IObserver;


# instance fields
.field private mAdminOutputFile:Landroid/os/ParcelFileDescriptor;

.field private mAuditLogRulesInfo:Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;

.field private mBegin:J

.field private mContext:Landroid/content/Context;

.field private mDeviceInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDumpFilter:Lcom/android/server/enterprise/auditlog/Filter;

.field private mEnd:J

.field private mIptablesLogging:Z

.field private volatile mIsDumping:Z

.field private mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

.field private mMdmLogging:Z

.field private mPackageName:Ljava/lang/String;

.field private mUid:I


# direct methods
.method constructor <init>(ILandroid/content/Context;Ljava/lang/String;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/enterprise/auditlog/Admin;->mPackageName:Ljava/lang/String;

    new-instance v0, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;

    invoke-direct {v0}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mAuditLogRulesInfo:Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;

    iput-object p3, p0, Lcom/android/server/enterprise/auditlog/Admin;->mPackageName:Ljava/lang/String;

    new-instance v0, Lcom/android/server/enterprise/auditlog/LogWritter;

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mPackageName:Ljava/lang/String;

    invoke-direct {v0, p1, p2, v1}, Lcom/android/server/enterprise/auditlog/LogWritter;-><init>(ILandroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v0, p0}, Lcom/android/server/enterprise/auditlog/LogWritter;->setObserver(Lcom/android/server/enterprise/auditlog/IObserver;)V

    iput-boolean v2, p0, Lcom/android/server/enterprise/auditlog/Admin;->mIsDumping:Z

    iput-boolean v2, p0, Lcom/android/server/enterprise/auditlog/Admin;->mIptablesLogging:Z

    iput-boolean v2, p0, Lcom/android/server/enterprise/auditlog/Admin;->mMdmLogging:Z

    iput-object v3, p0, Lcom/android/server/enterprise/auditlog/Admin;->mDumpFilter:Lcom/android/server/enterprise/auditlog/Filter;

    iput-object p2, p0, Lcom/android/server/enterprise/auditlog/Admin;->mContext:Landroid/content/Context;

    iput-wide v4, p0, Lcom/android/server/enterprise/auditlog/Admin;->mBegin:J

    iput-wide v4, p0, Lcom/android/server/enterprise/auditlog/Admin;->mEnd:J

    iput p1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mUid:I

    return-void
.end method


# virtual methods
.method createBubbleDirectory()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/LogWritter;->createBubbleDirectory()V

    return-void
.end method

.method createBubbleFile()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/LogWritter;->createBubbleFile()V

    return-void
.end method

.method deleteAllFiles()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/LogWritter;->deleteAllFiles()V

    return-void
.end method

.method dump(JJLandroid/os/ParcelFileDescriptor;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mIsDumping:Z

    if-nez v1, :cond_0

    iput-boolean v2, p0, Lcom/android/server/enterprise/auditlog/Admin;->mIsDumping:Z

    iput-wide p1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mBegin:J

    iput-wide p3, p0, Lcom/android/server/enterprise/auditlog/Admin;->mEnd:J

    iput-object p5, p0, Lcom/android/server/enterprise/auditlog/Admin;->mAdminOutputFile:Landroid/os/ParcelFileDescriptor;

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v1, p0}, Lcom/android/server/enterprise/auditlog/LogWritter;->setObserver(Lcom/android/server/enterprise/auditlog/IObserver;)V

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/auditlog/LogWritter;->setIsDumping(ZZ)V

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    const-string/jumbo v1, "swap"

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/auditlog/LogWritter;->swapFiles(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mIsDumping:Z

    :cond_0
    return v0
.end method

.method getAuditLogRulesInfo()Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mAuditLogRulesInfo:Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;

    return-object v0
.end method

.method getBufferSize()J
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/LogWritter;->getBufferLogSize()J

    move-result-wide v0

    return-wide v0
.end method

.method getCriticalLogSize()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/LogWritter;->getCriticalLogSize()I

    move-result v0

    return v0
.end method

.method getCurrentLogFileSize()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/LogWritter;->getCurrentLogFileSize()I

    move-result v0

    return v0
.end method

.method getDumpState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mIsDumping:Z

    return v0
.end method

.method getIptablesLogging()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mIptablesLogging:Z

    return v0
.end method

.method getMDMLogging()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mMdmLogging:Z

    return v0
.end method

.method getMaximumLogSize()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/LogWritter;->getMaximumLogSize()I

    move-result v0

    return v0
.end method

.method getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method getUid()I
    .locals 1

    iget v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mUid:I

    return v0
.end method

.method public notifyDumpFinished(ZZ)V
    .locals 5

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/enterprise/auditlog/Admin;->mIsDumping:Z

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v2, p2}, Lcom/android/server/enterprise/auditlog/LogWritter;->setTypeOfDump(Z)V

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v2, v3, p1}, Lcom/android/server/enterprise/auditlog/LogWritter;->setIsDumping(ZZ)V

    iget v2, p0, Lcom/android/server/enterprise/auditlog/Admin;->mUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "mdm.intent.action.dump.audit.log.result"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/Admin;->mPackageName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/Admin;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    if-eqz p1, :cond_1

    const-string/jumbo v2, "mdm.intent.extra.audit.log.result"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_0
    const-string v2, "admin_uid"

    iget v3, p0, Lcom/android/server/enterprise/auditlog/Admin;->mUid:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/Admin;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v1}, Landroid/os/UserHandle;-><init>(I)V

    const-string v4, "android.permission.sec.MDM_AUDIT_LOG"

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v2

    const-string v3, "Dump failed! Sending Intent!"

    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/Admin;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "mdm.intent.extra.audit.log.result"

    const/16 v3, -0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public notifyReadyToDump(Z)V
    .locals 9

    if-eqz p1, :cond_1

    new-instance v1, Lcom/android/server/enterprise/auditlog/Dumper;

    iget-wide v2, p0, Lcom/android/server/enterprise/auditlog/Admin;->mBegin:J

    iget-wide v4, p0, Lcom/android/server/enterprise/auditlog/Admin;->mEnd:J

    iget-object v6, p0, Lcom/android/server/enterprise/auditlog/Admin;->mAdminOutputFile:Landroid/os/ParcelFileDescriptor;

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/LogWritter;->getDumpFilesList()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    move-object v8, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/server/enterprise/auditlog/Dumper;-><init>(JJLandroid/os/ParcelFileDescriptor;Ljava/util/ArrayList;Lcom/android/server/enterprise/auditlog/IObserver;)V

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mDumpFilter:Lcom/android/server/enterprise/auditlog/Filter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mDumpFilter:Lcom/android/server/enterprise/auditlog/Filter;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/auditlog/Dumper;->setFilter(Lcom/android/server/enterprise/auditlog/Filter;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mDeviceInfo:Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/auditlog/Dumper;->setDeviceInfo(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/auditlog/Dumper;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/Dumper;->start()V

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/LogWritter;->setLastTimestamp()V

    :cond_1
    return-void
.end method

.method setAuditLogRulesInfo(Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mAuditLogRulesInfo:Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;

    return-void
.end method

.method setBootCompleted(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/auditlog/LogWritter;->setBootCompleted(Z)V

    return-void
.end method

.method setBufferSize(J)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/auditlog/LogWritter;->setBufferLogSize(J)V

    return-void
.end method

.method setCriticalLogSize(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/auditlog/LogWritter;->setCriticalLogSize(I)V

    return-void
.end method

.method setDeviceInfo(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mDeviceInfo:Ljava/util/List;

    return-void
.end method

.method setFilter(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/server/enterprise/auditlog/Filter;

    invoke-direct {v0}, Lcom/android/server/enterprise/auditlog/Filter;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mDumpFilter:Lcom/android/server/enterprise/auditlog/Filter;

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mDumpFilter:Lcom/android/server/enterprise/auditlog/Filter;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/auditlog/Filter;->setFilter(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mDumpFilter:Lcom/android/server/enterprise/auditlog/Filter;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method setIptablesLogging(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mIptablesLogging:Z

    return-void
.end method

.method setMDMLogging(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mMdmLogging:Z

    return-void
.end method

.method setMaximumLogSize(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/auditlog/LogWritter;->setMaximumLogSize(I)V

    return-void
.end method

.method shutdown()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/LogWritter;->shutdown()V

    return-void
.end method

.method write(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/auditlog/LogWritter;->write(Ljava/lang/String;)V

    return-void
.end method
