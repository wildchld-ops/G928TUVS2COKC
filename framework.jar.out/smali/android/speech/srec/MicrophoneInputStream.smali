.class public final Landroid/speech/srec/MicrophoneInputStream;
.super Ljava/io/InputStream;
.source "MicrophoneInputStream.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MicrophoneInputStream"


# instance fields
.field private mAudioRecord:J

.field private mOneByte:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "srec_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-wide v6, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:J

    new-array v1, v4, [B

    iput-object v1, p0, Landroid/speech/srec/MicrophoneInputStream;->mOneByte:[B

    invoke-static {}, Landroid/speech/srec/MicrophoneInputStream;->checkMicrophoneEnabled()Z

    invoke-static {p1, p2}, Landroid/speech/srec/MicrophoneInputStream;->AudioRecordNew(II)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:J

    iget-wide v2, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:J

    cmp-long v1, v2, v6

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "AudioRecord constructor failed - busy?"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-wide v2, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:J

    invoke-static {v2, v3}, Landroid/speech/srec/MicrophoneInputStream;->AudioRecordStart(J)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/speech/srec/MicrophoneInputStream;->close()V

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioRecord start failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {v4}, Landroid/speech/srec/MicrophoneInputStream;->logAudit(Z)V

    return-void
.end method

.method private static native AudioRecordDelete(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native AudioRecordNew(II)J
.end method

.method private static native AudioRecordRead(J[BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native AudioRecordStart(J)I
.end method

.method private static native AudioRecordStop(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static checkMicrophoneEnabled()Z
    .locals 5

    const/4 v1, 0x1

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/sec/enterprise/RestrictionPolicy;->isMicrophoneEnabled(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    if-nez v1, :cond_0

    const-string v3, "MicrophoneInputStream"

    const-string v4, "MICROPHONE IS DISABLED"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    const/16 v4, 0x2710

    if-lt v3, v4, :cond_0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    const/16 v4, 0x4e1f

    if-gt v3, v4, :cond_0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Landroid/os/Process;->killProcess(I)V

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    :cond_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static logAudit(Z)V
    .locals 9

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    if-eqz p0, :cond_0

    const/4 v0, 0x5

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "MicrophoneInputStream"

    const-string v5, "Microphone enabled."

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x5

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "MicrophoneInputStream"

    const-string v5, "Microphone disabled."

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    const-string v0, "MicrophoneInputStream"

    const-string v1, "could not log to audit due to lack of permission"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v4, 0x0

    iget-wide v0, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    :try_start_0
    iget-wide v0, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:J

    invoke-static {v0, v1}, Landroid/speech/srec/MicrophoneInputStream;->AudioRecordStop(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-wide v0, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:J

    invoke-static {v0, v1}, Landroid/speech/srec/MicrophoneInputStream;->AudioRecordDelete(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-wide v4, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:J

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/speech/srec/MicrophoneInputStream;->logAudit(Z)V

    return-void

    :catchall_0
    move-exception v0

    iput-wide v4, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:J

    throw v0

    :catchall_1
    move-exception v0

    :try_start_2
    iget-wide v2, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:J

    invoke-static {v2, v3}, Landroid/speech/srec/MicrophoneInputStream;->AudioRecordDelete(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iput-wide v4, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:J

    throw v0

    :catchall_2
    move-exception v0

    iput-wide v4, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:J

    throw v0
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-wide v0, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/speech/srec/MicrophoneInputStream;->close()V

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "someone forgot to close MicrophoneInputStream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public read()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-wide v2, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "not open"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-wide v2, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:J

    iget-object v1, p0, Landroid/speech/srec/MicrophoneInputStream;->mOneByte:[B

    invoke-static {v2, v3, v1, v6, v7}, Landroid/speech/srec/MicrophoneInputStream;->AudioRecordRead(J[BII)I

    move-result v0

    if-ne v0, v7, :cond_1

    iget-object v1, p0, Landroid/speech/srec/MicrophoneInputStream;->mOneByte:[B

    aget-byte v1, v1, v6

    and-int/lit16 v1, v1, 0xff

    :goto_0
    return v1

    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public read([B)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v0, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:J

    const/4 v2, 0x0

    array-length v3, p1

    invoke-static {v0, v1, p1, v2, v3}, Landroid/speech/srec/MicrophoneInputStream;->AudioRecordRead(J[BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v0, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/speech/srec/MicrophoneInputStream;->AudioRecordRead(J[BII)I

    move-result v0

    return v0
.end method
