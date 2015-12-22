.class public Lcom/android/server/enterprise/auditlog/CircularBuffer;
.super Ljava/lang/Object;
.source "CircularBuffer.java"


# static fields
.field private static final ADAYINMILLISEC:J = 0x5265c00L

.field private static final BUFFERREADSIZE:I = 0x10000

.field private static final EDM_AUDIT_LOG_FILENAME:Ljava/lang/String; = "/data/system/"

.field private static final TOTALNUMBEROFFILES:I = 0x8fc

.field private static mSte:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private isWriting:Z

.field private mAdminCriticalSize:F

.field private mAdminDirectoryPath:Ljava/lang/String;

.field private mAdminMaximumSize:F

.field private mBufferLimitSize:J

.field private volatile mCircularBufferSize:J

.field private mContext:Landroid/content/Context;

.field private mCriticalIntent:Z

.field private mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

.field private mDumpList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/enterprise/auditlog/PartialFileNode;",
            ">;"
        }
    .end annotation
.end field

.field private final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mFullBuffer:F

.field private mFullIntent:Z

.field private volatile mIsBootCompleted:Z

.field private volatile mIsDumping:Z

.field private mIsFirstNode:Z

.field private volatile mLastDumpedFile:Ljava/lang/String;

.field private mLock:Ljava/lang/Object;

.field private mMaximumIntent:Z

.field private volatile mNumberOfDeprecatedFiles:I

.field private mPackageName:Ljava/lang/String;

.field private mPendingIntentErrors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation
.end field

.field private mTailTimestamp:J

.field private mTotalDirectoryOccupation:J

.field private volatile mTypeOfDump:Z

.field private mUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    sput-object v0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mSte:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CircularBuffer"

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mLock:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->isWriting:Z

    iput-boolean v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mIsDumping:Z

    iput-boolean v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTypeOfDump:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mIsFirstNode:Z

    iput-boolean v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mIsBootCompleted:Z

    sget-object v0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mSte:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    iput p1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    const/high16 v0, 0x428c0000    # 70.0f

    iput v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminCriticalSize:F

    const/high16 v0, 0x42b40000    # 90.0f

    iput v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminMaximumSize:F

    const/high16 v0, 0x42c20000    # 97.0f

    iput v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mFullBuffer:F

    iput-object p2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mContext:Landroid/content/Context;

    iput-wide v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    iput-wide v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTotalDirectoryOccupation:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mLastDumpedFile:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPackageName:Ljava/lang/String;

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->getBufferLogSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mBufferLimitSize:J

    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->getNumberOfDeprecatedFiles()I

    move-result v0

    iput v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mNumberOfDeprecatedFiles:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPendingIntentErrors:Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/system/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminDirectoryPath:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->populateCircularBuffer()V

    return-void
.end method

.method private addNode()Lcom/android/server/enterprise/auditlog/PartialFileNode;
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mIsBootCompleted:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->checkCriticalSizes()V

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mIsDumping:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->totalNumberFiles()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->cleanBuffer()V

    :cond_1
    new-instance v0, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminDirectoryPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPackageName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/auditlog/PartialFileNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private checkCriticalSizes()V
    .locals 12

    const/4 v9, 0x0

    const/4 v2, 0x1

    const/4 v7, 0x0

    const-wide/16 v0, 0x64

    iget-wide v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    mul-long/2addr v0, v4

    iget-wide v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mBufferLimitSize:J

    div-long/2addr v0, v4

    long-to-int v8, v0

    int-to-float v0, v8

    iget v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminCriticalSize:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCriticalIntent:Z

    if-nez v0, :cond_0

    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v0, "mdm.intent.action.audit.log.critical.size"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "admin_uid"

    iget v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.sec.MDM_AUDIT_LOG"

    invoke-virtual {v0, v7, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iput-boolean v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCriticalIntent:Z

    const/4 v0, 0x4

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "CircularBuffer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AuditLog has reached its critical size. Percentage is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminCriticalSize:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    :cond_0
    :goto_0
    int-to-float v0, v8

    iget v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminMaximumSize:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mMaximumIntent:Z

    if-nez v0, :cond_1

    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v0, "mdm.intent.action.audit.log.maximum.size"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "admin_uid"

    iget v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.sec.MDM_AUDIT_LOG"

    invoke-virtual {v0, v7, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iput-boolean v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mMaximumIntent:Z

    :cond_1
    :goto_1
    int-to-float v0, v8

    iget v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mFullBuffer:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mFullIntent:Z

    if-nez v0, :cond_2

    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v0, "mdm.intent.action.audit.log.full.size"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "admin_uid"

    iget v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.sec.MDM_AUDIT_LOG"

    invoke-virtual {v0, v7, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iput-boolean v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mFullIntent:Z

    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v0

    const-string v1, "Full Size Reached!"

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    iput-boolean v9, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCriticalIntent:Z

    goto :goto_0

    :cond_4
    iput-boolean v9, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mMaximumIntent:Z

    goto :goto_1

    :cond_5
    iput-boolean v9, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mFullIntent:Z

    goto :goto_2
.end method

.method private cleanBuffer()V
    .locals 10

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    int-to-long v6, v4

    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->totalNumberFiles()J

    move-result-wide v8

    cmp-long v4, v6, v8

    if-lez v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->isDeprecated()Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mNumberOfDeprecatedFiles:I

    add-int/lit8 v6, v4, -0x1

    iput v6, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mNumberOfDeprecatedFiles:I

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->setNumberOfDeprecatedFiles(I)V

    :goto_1
    iget-wide v6, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTotalDirectoryOccupation:J

    invoke-virtual {v3}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFileSize()J

    move-result-wide v8

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTotalDirectoryOccupation:J

    iget-wide v6, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mBufferLimitSize:J

    iget-wide v8, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTotalDirectoryOccupation:J

    sub-long/2addr v6, v8

    invoke-virtual {p0, v6, v7}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->resizeBubbleFile(J)V

    invoke-virtual {v3}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_0
    :try_start_1
    iget-wide v6, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    invoke-virtual {v3}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFileSize()J

    move-result-wide v8

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    goto :goto_1

    :cond_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private deleteDirectory(Ljava/io/File;)V
    .locals 9

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-nez v6, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Directory is deleted : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    array-length v4, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v5, v0, v3

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->deleteDirectory(Ljava/io/File;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-nez v6, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Directory is deleted : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    const-string v6, "CircularBuffer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File is deleted : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private dirListByAscendingDate(Ljava/io/File;)[Ljava/io/File;
    .locals 24

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isDirectory()Z

    move-result v20

    if-nez v20, :cond_0

    const/4 v10, 0x0

    :goto_0
    return-object v10

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    const/4 v13, 0x0

    if-nez v10, :cond_1

    const/4 v10, 0x0

    goto :goto_0

    :cond_1
    new-instance v20, Lcom/android/server/enterprise/auditlog/CircularBuffer$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/auditlog/CircularBuffer$1;-><init>(Lcom/android/server/enterprise/auditlog/CircularBuffer;)V

    move-object/from16 v0, v20

    invoke-static {v10, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v0, v10

    move/from16 v20, v0

    if-lez v20, :cond_3

    array-length v0, v10

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    aget-object v13, v10, v20

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v20

    const-string v21, "_tmp"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_2

    invoke-virtual {v13}, Ljava/io/File;->isDirectory()Z

    move-result v20

    if-eqz v20, :cond_4

    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->deleteDirectory(Ljava/io/File;)V

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->dirListByAscendingDate(Ljava/io/File;)[Ljava/io/File;

    move-result-object v10

    goto :goto_0

    :cond_3
    const/4 v10, 0x0

    goto :goto_0

    :cond_4
    const/16 v18, 0x0

    const/16 v17, 0x0

    :try_start_0
    new-instance v19, Ljava/io/RandomAccessFile;

    const-string/jumbo v20, "rwd"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v13, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/high16 v20, 0x10000

    :try_start_1
    move/from16 v0, v20

    new-array v5, v0, [B

    const/4 v6, 0x0

    const/4 v15, 0x0

    const/4 v9, 0x0

    const/16 v16, 0x0

    const/4 v12, 0x0

    :goto_1
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v15

    if-lez v15, :cond_6

    const/16 v16, 0x0

    add-int/lit8 v20, v15, -0x1

    aget-byte v20, v5, v20

    if-nez v20, :cond_a

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v15, :cond_6

    aget-byte v20, v5, v6

    const/16 v21, 0xa

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    move/from16 v16, v6

    :cond_5
    aget-byte v20, v5, v6

    if-nez v20, :cond_9

    const/4 v12, 0x1

    :cond_6
    if-eqz v12, :cond_7

    const/high16 v20, 0x10000

    mul-int v20, v20, v9

    add-int v20, v20, v16

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_7
    if-eqz v19, :cond_d

    :try_start_2
    invoke-virtual/range {v19 .. v19}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v18, v19

    :cond_8
    :goto_3
    move-object v4, v10

    array-length v14, v4

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v14, :cond_c

    aget-object v8, v4, v11

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTotalDirectoryOccupation:J

    move-wide/from16 v20, v0

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v22

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTotalDirectoryOccupation:J

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :catch_0
    move-exception v7

    const-string v20, "CircularBuffer"

    const-string v21, "dirListByAscendingDate.IOException"

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v18, v19

    goto :goto_3

    :catch_1
    move-exception v7

    :goto_5
    :try_start_3
    const-string v20, "CircularBuffer"

    const-string v21, "dirListByAscendingDate.Exception"

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPendingIntentErrors:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v18, :cond_8

    :try_start_4
    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v7

    const-string v20, "CircularBuffer"

    const-string v21, "dirListByAscendingDate.IOException"

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catchall_0
    move-exception v20

    :goto_6
    if-eqz v18, :cond_b

    :try_start_5
    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_b
    :goto_7
    throw v20

    :catch_3
    move-exception v7

    const-string v21, "CircularBuffer"

    const-string v22, "dirListByAscendingDate.IOException"

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_c
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mBufferLimitSize:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTotalDirectoryOccupation:J

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->resizeBubbleFile(J)V

    goto/16 :goto_0

    :catchall_1
    move-exception v20

    move-object/from16 v18, v19

    goto :goto_6

    :catch_4
    move-exception v7

    move-object/from16 v18, v19

    goto :goto_5

    :cond_d
    move-object/from16 v18, v19

    goto :goto_3
.end method

.method private getNumberOfDeprecatedFiles()I
    .locals 7

    const/4 v6, 0x0

    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    const-string v3, "auditNumberOfDepFiles"

    aput-object v3, v1, v6

    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "AUDITLOG"

    iget v5, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    invoke-virtual {v3, v4, v5, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return v2
.end method

.method private isCompressed(Ljava/io/File;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v6, 0x2

    const/4 v3, 0x0

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-array v0, v6, [B

    const/4 v4, 0x0

    const/4 v5, 0x2

    :try_start_0
    invoke-virtual {v1, v0, v4, v5}, Ljava/io/FileInputStream;->read([BII)I

    if-eqz v0, :cond_0

    array-length v4, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v4, v6, :cond_3

    :cond_0
    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_0
    move v2, v3

    :cond_2
    :goto_1
    return v2

    :cond_3
    const/4 v4, 0x0

    :try_start_2
    aget-byte v4, v0, v4

    const/16 v5, 0x1f

    if-ne v4, v5, :cond_4

    const/4 v4, 0x1

    aget-byte v4, v0, v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v5, -0x75

    if-ne v4, v5, :cond_4

    :goto_2
    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_1

    :cond_4
    move v2, v3

    goto :goto_2

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_5

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_5
    :goto_3
    throw v2

    :catch_1
    move-exception v2

    goto :goto_0

    :catch_2
    move-exception v3

    goto :goto_3
.end method

.method private markDeprecatedFiles()V
    .locals 12

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v5, v7}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getWasWritten()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    invoke-interface {v3}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_1
    if-eqz v2, :cond_4

    :try_start_1
    invoke-virtual {v4}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->isDeprecated()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    iget v5, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mNumberOfDeprecatedFiles:I

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->setNumberOfDeprecatedFiles(I)V

    monitor-exit v6

    return-void

    :cond_3
    iget-wide v8, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    invoke-virtual {v4}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFileSize()J

    move-result-wide v10

    sub-long/2addr v8, v10

    iput-wide v8, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->setDeprecated(Z)Z

    iget v5, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mNumberOfDeprecatedFiles:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mNumberOfDeprecatedFiles:I

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mLastDumpedFile:Ljava/lang/String;

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mLastDumpedFile:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mLastDumpedFile:Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private populateCircularBuffer()V
    .locals 15

    const/4 v14, 0x1

    new-instance v3, Ljava/io/File;

    iget-object v9, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminDirectoryPath:Ljava/lang/String;

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->addNode()Lcom/android/server/enterprise/auditlog/PartialFileNode;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->dirListByAscendingDate(Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    const/4 v8, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    move-object v1, v0

    array-length v7, v1

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v7, :cond_5

    aget-object v5, v1, v6

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->deleteDirectory(Ljava/io/File;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-nez v9, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto :goto_2

    :cond_2
    new-instance v8, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    iget-object v9, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPackageName:Ljava/lang/String;

    invoke-direct {v8, v5, v9}, Lcom/android/server/enterprise/auditlog/PartialFileNode;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8, v14}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->setWasWritten(Z)V

    array-length v9, v0

    add-int/lit8 v9, v9, -0x1

    aget-object v9, v0, v9

    if-ne v5, v9, :cond_3

    :try_start_0
    invoke-direct {p0, v5}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->isCompressed(Ljava/io/File;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v8}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->compressFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_3
    iget-object v9, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v9, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mNumberOfDeprecatedFiles:I

    if-le v2, v9, :cond_4

    iget-wide v10, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    invoke-virtual {v8}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFileSize()J

    move-result-wide v12

    add-long/2addr v10, v12

    iput-wide v10, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    goto :goto_2

    :catch_0
    move-exception v4

    const-string v9, "CircularBuffer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IOException: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v8, v14}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->setDeprecated(Z)Z

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->addNode()Lcom/android/server/enterprise/auditlog/PartialFileNode;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    goto/16 :goto_0
.end method

.method private setNumberOfDeprecatedFiles(I)V
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "auditNumberOfDepFiles"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    const-string v3, "AUDITLOG"

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(ILjava/lang/String;Landroid/content/ContentValues;)Z

    return-void
.end method

.method private totalNumberFiles()J
    .locals 8

    const-wide/16 v2, 0x8fc

    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_0

    const-wide/16 v0, 0x0

    iget-wide v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTotalDirectoryOccupation:J

    iget-object v6, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    int-to-long v6, v6

    div-long v0, v4, v6

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-eqz v4, :cond_0

    iget-wide v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mBufferLimitSize:J

    div-long/2addr v2, v0

    :cond_0
    return-wide v2
.end method


# virtual methods
.method public closeFile()V
    .locals 2

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getWasWritten()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->compressFile()Z

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->closeFile()V

    :goto_0
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->addNode()Lcom/android/server/enterprise/auditlog/PartialFileNode;

    monitor-exit v1

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected createBubbleDir()V
    .locals 3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_bubble"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_0
    return-void
.end method

.method public deleteAllFiles()V
    .locals 6

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v3}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->closeFile()V

    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v3}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    monitor-enter v4

    :try_start_1
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :catchall_1
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    :cond_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminDirectoryPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->deleteDirectory(Ljava/io/File;)V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/system/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_bubble/bubbleFile"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->deleteDirectory(Ljava/io/File;)V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/system/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_bubble"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->deleteDirectory(Ljava/io/File;)V

    return-void
.end method

.method public getBufferLogSize()J
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "adminUid"

    iget v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "AUDITLOG"

    const-string v3, "auditLogBufferSize"

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getLong(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2
.end method

.method public getCriticalLogSize()I
    .locals 1

    iget v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminCriticalSize:F

    float-to-int v0, v0

    return v0
.end method

.method public getCurrentLogFileSize()I
    .locals 6

    const/16 v1, 0x64

    const-wide/16 v2, 0x64

    iget-wide v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    mul-long/2addr v2, v4

    iget-wide v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mBufferLimitSize:J

    div-long/2addr v2, v4

    long-to-int v0, v2

    if-le v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method public getDumpFilesList()Ljava/lang/Object;
    .locals 3

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getLastTimestamp()J
    .locals 6

    const-wide/16 v2, 0x0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "adminUid"

    iget v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "AUDITLOG"

    const-string v5, "auditLogLastTimestamp"

    invoke-virtual {v1, v4, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getLong(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2
.end method

.method public getMaximumLogSize()I
    .locals 1

    iget v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminMaximumSize:F

    float-to-int v0, v0

    return v0
.end method

.method protected resizeBubbleFile(J)V
    .locals 7

    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-gtz v4, :cond_1

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/system/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_bubble/bubbleFile"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/system/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_bubble/bubbleFile"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "rws"

    invoke-direct {v3, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-int v4, p1

    add-int/lit8 v4, v4, -0x1

    :try_start_1
    new-array v0, v4, [B

    invoke-virtual {v3, p1, p2}, Ljava/io/RandomAccessFile;->setLength(J)V

    const/4 v4, 0x0

    array-length v5, v0

    invoke-virtual {v3, v0, v4, v5}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_3

    :try_start_2
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v3

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v4, "CircularBuffer"

    const-string/jumbo v5, "resizeBubbleFile.IOException"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_1
    :try_start_3
    const-string v4, "CircularBuffer"

    const-string/jumbo v5, "resizeBubbleFile.Exception"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v4, "CircularBuffer"

    const-string/jumbo v5, "resizeBubbleFile.IOException"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_3
    throw v4

    :catch_3
    move-exception v1

    const-string v5, "CircularBuffer"

    const-string/jumbo v6, "resizeBubbleFile.IOException"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catchall_1
    move-exception v4

    move-object v2, v3

    goto :goto_2

    :catch_4
    move-exception v1

    move-object v2, v3

    goto :goto_1

    :cond_3
    move-object v2, v3

    goto :goto_0
.end method

.method public setBootCompleted(Z)V
    .locals 5

    iput-boolean p1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mIsBootCompleted:Z

    iget-boolean v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mIsBootCompleted:Z

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPendingIntentErrors:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPendingIntentErrors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Exception;

    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    return-void
.end method

.method public setBufferLogSize(J)V
    .locals 1

    iput-wide p1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mBufferLimitSize:J

    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->createBubbleDir()V

    return-void
.end method

.method public setCriticalLogSize(I)V
    .locals 1

    int-to-float v0, p1

    iput v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminCriticalSize:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCriticalIntent:Z

    return-void
.end method

.method public declared-synchronized setIsDumping(ZZ)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mIsDumping:Z

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTypeOfDump:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTypeOfDump:Z

    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->markDeprecatedFiles()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setLastTimestamp(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/enterprise/auditlog/PartialFileNode;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "auditLogLastTimestamp"

    invoke-virtual {v2}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    const-string v5, "AUDITLOG"

    invoke-virtual {v3, v4, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(ILjava/lang/String;Landroid/content/ContentValues;)Z

    :cond_1
    return-void
.end method

.method public setMaximumLogSize(I)V
    .locals 1

    int-to-float v0, p1

    iput v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminMaximumSize:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mMaximumIntent:Z

    return-void
.end method

.method public setTypeOfDump(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTypeOfDump:Z

    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 8

    if-nez p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->setTimestamp()V

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->compressFile()Z

    iget-wide v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTotalDirectoryOccupation:J

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFileSize()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTotalDirectoryOccupation:J

    iget-wide v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFileSize()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mLastDumpedFile:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->closeFile()V

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->addNode()Lcom/android/server/enterprise/auditlog/PartialFileNode;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->write(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->setTimestamp()V

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->compressFile()Z

    iget-wide v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTotalDirectoryOccupation:J

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFileSize()J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTotalDirectoryOccupation:J

    iget-wide v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFileSize()J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->closeFile()V

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->addNode()Lcom/android/server/enterprise/auditlog/PartialFileNode;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->write(Ljava/lang/String;)Z

    iget-wide v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mBufferLimitSize:J

    iget-wide v6, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTotalDirectoryOccupation:J

    sub-long/2addr v4, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->resizeBubbleFile(J)V

    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "CircularBuffer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "write.Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method
