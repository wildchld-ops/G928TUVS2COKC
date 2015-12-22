.class public Lcom/sec/sdp/engine/SdpEngine;
.super Ljava/lang/Object;
.source "SdpEngine.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SdpEngine"

.field private static _instance:Lcom/sec/sdp/engine/SdpEngine;


# instance fields
.field private mAlias:Ljava/lang/String;

.field private mSdpService:Lcom/sec/sdp/ISdpManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/sdp/engine/SdpEngine;->_instance:Lcom/sec/sdp/engine/SdpEngine;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "sdp"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/sdp/ISdpManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/sdp/ISdpManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/sdp/engine/SdpEngine;->mSdpService:Lcom/sec/sdp/ISdpManagerService;

    return-void
.end method

.method public static getInstance()Lcom/sec/sdp/engine/SdpEngine;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/sdp/exception/SdpAccessDeniedException;
        }
    .end annotation

    sget-object v0, Lcom/sec/sdp/engine/SdpEngine;->_instance:Lcom/sec/sdp/engine/SdpEngine;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/sdp/engine/SdpEngine;

    invoke-direct {v0}, Lcom/sec/sdp/engine/SdpEngine;-><init>()V

    sput-object v0, Lcom/sec/sdp/engine/SdpEngine;->_instance:Lcom/sec/sdp/engine/SdpEngine;

    :cond_0
    sget-object v0, Lcom/sec/sdp/engine/SdpEngine;->_instance:Lcom/sec/sdp/engine/SdpEngine;

    return-object v0
.end method


# virtual methods
.method public addEngine(Lcom/sec/sdp/engine/SdpCreationParam;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/sdp/exception/SdpEngineExistsException;,
            Lcom/sec/sdp/exception/SdpNotSupportedException;,
            Lcom/sec/sdp/exception/SdpAccessDeniedException;,
            Lcom/sec/sdp/exception/SdpInternalException;,
            Lcom/sec/sdp/exception/SdpInvalidPasswordException;,
            Lcom/sec/sdp/exception/SdpInvalidResetTokenException;
        }
    .end annotation

    const/16 v1, -0xf

    iget-object v2, p0, Lcom/sec/sdp/engine/SdpEngine;->mSdpService:Lcom/sec/sdp/ISdpManagerService;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/sec/sdp/engine/SdpEngine;->mSdpService:Lcom/sec/sdp/ISdpManagerService;

    invoke-interface {v2, p1, p2, p3}, Lcom/sec/sdp/ISdpManagerService;->addEngine(Lcom/sec/sdp/engine/SdpCreationParam;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string v2, "SdpEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addEngine failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    new-instance v2, Lcom/sec/sdp/exception/SdpInternalException;

    invoke-direct {v2}, Lcom/sec/sdp/exception/SdpInternalException;-><init>()V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v2, "SdpEngine"

    const-string v3, "Failed to call addEngine"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :sswitch_1
    :try_start_1
    new-instance v2, Lcom/sec/sdp/exception/SdpEngineExistsException;

    invoke-direct {v2}, Lcom/sec/sdp/exception/SdpEngineExistsException;-><init>()V

    throw v2

    :sswitch_2
    new-instance v2, Lcom/sec/sdp/exception/SdpAccessDeniedException;

    invoke-direct {v2}, Lcom/sec/sdp/exception/SdpAccessDeniedException;-><init>()V

    throw v2

    :sswitch_3
    new-instance v2, Lcom/sec/sdp/exception/SdpNotSupportedException;

    invoke-direct {v2}, Lcom/sec/sdp/exception/SdpNotSupportedException;-><init>()V

    throw v2

    :sswitch_4
    new-instance v2, Lcom/sec/sdp/exception/SdpInvalidPasswordException;

    invoke-direct {v2}, Lcom/sec/sdp/exception/SdpInvalidPasswordException;-><init>()V

    throw v2

    :sswitch_5
    new-instance v2, Lcom/sec/sdp/exception/SdpInvalidResetTokenException;

    invoke-direct {v2}, Lcom/sec/sdp/exception/SdpInvalidResetTokenException;-><init>()V

    throw v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x63 -> :sswitch_0
        -0xf -> :sswitch_0
        -0xe -> :sswitch_0
        -0xc -> :sswitch_0
        -0xb -> :sswitch_0
        -0xa -> :sswitch_0
        -0x8 -> :sswitch_2
        -0x6 -> :sswitch_1
        -0x3 -> :sswitch_3
        -0x2 -> :sswitch_4
        -0x1 -> :sswitch_5
    .end sparse-switch
.end method

.method public exists(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, -0x7

    iget-object v2, p0, Lcom/sec/sdp/engine/SdpEngine;->mSdpService:Lcom/sec/sdp/ISdpManagerService;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/sec/sdp/engine/SdpEngine;->mSdpService:Lcom/sec/sdp/ISdpManagerService;

    invoke-interface {v2, p1}, Lcom/sec/sdp/ISdpManagerService;->exists(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    const/4 v2, -0x6

    if-ne v1, v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    return v2

    :catch_0
    move-exception v0

    const-string v2, "SdpEngine"

    const-string v3, "Failed to call exists"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public lock(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/sdp/exception/SdpInternalException;,
            Lcom/sec/sdp/exception/SdpEngineNotExistsException;,
            Lcom/sec/sdp/exception/SdpAccessDeniedException;
        }
    .end annotation

    const/16 v1, -0xf

    iget-object v2, p0, Lcom/sec/sdp/engine/SdpEngine;->mSdpService:Lcom/sec/sdp/ISdpManagerService;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/sec/sdp/engine/SdpEngine;->mSdpService:Lcom/sec/sdp/ISdpManagerService;

    invoke-interface {v2, p1}, Lcom/sec/sdp/ISdpManagerService;->lock(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string v2, "SdpEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "lock failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    new-instance v2, Lcom/sec/sdp/exception/SdpInternalException;

    invoke-direct {v2}, Lcom/sec/sdp/exception/SdpInternalException;-><init>()V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v2, "SdpEngine"

    const-string v3, "Failed to call lock"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :sswitch_1
    :try_start_1
    new-instance v2, Lcom/sec/sdp/exception/SdpEngineNotExistsException;

    invoke-direct {v2}, Lcom/sec/sdp/exception/SdpEngineNotExistsException;-><init>()V

    throw v2

    :sswitch_2
    new-instance v2, Lcom/sec/sdp/exception/SdpAccessDeniedException;

    invoke-direct {v2}, Lcom/sec/sdp/exception/SdpAccessDeniedException;-><init>()V

    throw v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :sswitch_data_0
    .sparse-switch
        -0x63 -> :sswitch_0
        -0xf -> :sswitch_0
        -0xe -> :sswitch_0
        -0xc -> :sswitch_0
        -0xb -> :sswitch_0
        -0xa -> :sswitch_0
        -0x8 -> :sswitch_2
        -0x7 -> :sswitch_1
    .end sparse-switch
.end method

.method public migrate(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/sdp/exception/SdpInternalException;,
            Lcom/sec/sdp/exception/SdpEngineNotExistsException;,
            Lcom/sec/sdp/exception/SdpAccessDeniedException;
        }
    .end annotation

    const/16 v1, -0xf

    iget-object v2, p0, Lcom/sec/sdp/engine/SdpEngine;->mSdpService:Lcom/sec/sdp/ISdpManagerService;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/sec/sdp/engine/SdpEngine;->mSdpService:Lcom/sec/sdp/ISdpManagerService;

    invoke-interface {v2, p1}, Lcom/sec/sdp/ISdpManagerService;->migrate(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string v2, "SdpEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "migrate failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    new-instance v2, Lcom/sec/sdp/exception/SdpInternalException;

    invoke-direct {v2}, Lcom/sec/sdp/exception/SdpInternalException;-><init>()V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v2, "SdpEngine"

    const-string v3, "Failed to call migrate"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :sswitch_1
    :try_start_1
    new-instance v2, Lcom/sec/sdp/exception/SdpEngineNotExistsException;

    invoke-direct {v2}, Lcom/sec/sdp/exception/SdpEngineNotExistsException;-><init>()V

    throw v2

    :sswitch_2
    new-instance v2, Lcom/sec/sdp/exception/SdpAccessDeniedException;

    invoke-direct {v2}, Lcom/sec/sdp/exception/SdpAccessDeniedException;-><init>()V

    throw v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :sswitch_data_0
    .sparse-switch
        -0x63 -> :sswitch_0
        -0xf -> :sswitch_0
        -0xe -> :sswitch_0
        -0xc -> :sswitch_0
        -0xb -> :sswitch_0
        -0xa -> :sswitch_0
        -0x8 -> :sswitch_2
        -0x7 -> :sswitch_1
    .end sparse-switch
.end method

.method public removeEngine(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/sdp/exception/SdpInternalException;,
            Lcom/sec/sdp/exception/SdpEngineNotExistsException;,
            Lcom/sec/sdp/exception/SdpAccessDeniedException;
        }
    .end annotation

    const/16 v1, -0xf

    iget-object v2, p0, Lcom/sec/sdp/engine/SdpEngine;->mSdpService:Lcom/sec/sdp/ISdpManagerService;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/sec/sdp/engine/SdpEngine;->mSdpService:Lcom/sec/sdp/ISdpManagerService;

    invoke-interface {v2, p1}, Lcom/sec/sdp/ISdpManagerService;->removeEngine(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string v2, "SdpEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeEngine failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    new-instance v2, Lcom/sec/sdp/exception/SdpInternalException;

    invoke-direct {v2}, Lcom/sec/sdp/exception/SdpInternalException;-><init>()V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v2, "SdpEngine"

    const-string v3, "Failed to call removeEngine"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :sswitch_1
    :try_start_1
    new-instance v2, Lcom/sec/sdp/exception/SdpEngineNotExistsException;

    invoke-direct {v2}, Lcom/sec/sdp/exception/SdpEngineNotExistsException;-><init>()V

    throw v2

    :sswitch_2
    new-instance v2, Lcom/sec/sdp/exception/SdpAccessDeniedException;

    invoke-direct {v2}, Lcom/sec/sdp/exception/SdpAccessDeniedException;-><init>()V

    throw v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :sswitch_data_0
    .sparse-switch
        -0x63 -> :sswitch_0
        -0xf -> :sswitch_0
        -0xe -> :sswitch_0
        -0xc -> :sswitch_0
        -0xb -> :sswitch_0
        -0xa -> :sswitch_0
        -0x8 -> :sswitch_2
        -0x7 -> :sswitch_1
    .end sparse-switch
.end method

.method public resetPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/sdp/exception/SdpInternalException;,
            Lcom/sec/sdp/exception/SdpEngineNotExistsException;,
            Lcom/sec/sdp/exception/SdpInvalidResetTokenException;,
            Lcom/sec/sdp/exception/SdpAccessDeniedException;
        }
    .end annotation

    const/16 v1, -0xf

    iget-object v2, p0, Lcom/sec/sdp/engine/SdpEngine;->mSdpService:Lcom/sec/sdp/ISdpManagerService;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/sec/sdp/engine/SdpEngine;->mSdpService:Lcom/sec/sdp/ISdpManagerService;

    invoke-interface {v2, p1, p2, p3}, Lcom/sec/sdp/ISdpManagerService;->resetPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string v2, "SdpEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "resetPassword failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    new-instance v2, Lcom/sec/sdp/exception/SdpInternalException;

    invoke-direct {v2}, Lcom/sec/sdp/exception/SdpInternalException;-><init>()V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v2, "SdpEngine"

    const-string v3, "Failed to call resetPassword"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :sswitch_1
    :try_start_1
    new-instance v2, Lcom/sec/sdp/exception/SdpEngineNotExistsException;

    invoke-direct {v2}, Lcom/sec/sdp/exception/SdpEngineNotExistsException;-><init>()V

    throw v2

    :sswitch_2
    new-instance v2, Lcom/sec/sdp/exception/SdpInvalidResetTokenException;

    invoke-direct {v2}, Lcom/sec/sdp/exception/SdpInvalidResetTokenException;-><init>()V

    throw v2

    :sswitch_3
    new-instance v2, Lcom/sec/sdp/exception/SdpAccessDeniedException;

    invoke-direct {v2}, Lcom/sec/sdp/exception/SdpAccessDeniedException;-><init>()V

    throw v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :sswitch_data_0
    .sparse-switch
        -0x63 -> :sswitch_0
        -0xf -> :sswitch_0
        -0xe -> :sswitch_0
        -0xc -> :sswitch_0
        -0xb -> :sswitch_0
        -0xa -> :sswitch_0
        -0x8 -> :sswitch_3
        -0x7 -> :sswitch_1
        -0x1 -> :sswitch_2
    .end sparse-switch
.end method

.method public setPassword(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/sdp/exception/SdpAccessDeniedException;,
            Lcom/sec/sdp/exception/SdpInternalException;,
            Lcom/sec/sdp/exception/SdpEngineNotExistsException;,
            Lcom/sec/sdp/exception/SdpEngineLockedException;,
            Lcom/sec/sdp/exception/SdpInvalidPasswordException;
        }
    .end annotation

    const/16 v1, -0xf

    iget-object v2, p0, Lcom/sec/sdp/engine/SdpEngine;->mSdpService:Lcom/sec/sdp/ISdpManagerService;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/sec/sdp/engine/SdpEngine;->mSdpService:Lcom/sec/sdp/ISdpManagerService;

    invoke-interface {v2, p1, p2}, Lcom/sec/sdp/ISdpManagerService;->setPassword(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string v2, "SdpEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setPassword failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    new-instance v2, Lcom/sec/sdp/exception/SdpInternalException;

    invoke-direct {v2}, Lcom/sec/sdp/exception/SdpInternalException;-><init>()V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v2, "SdpEngine"

    const-string v3, "Failed to call setPassword"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :sswitch_1
    :try_start_1
    new-instance v2, Lcom/sec/sdp/exception/SdpEngineNotExistsException;

    invoke-direct {v2}, Lcom/sec/sdp/exception/SdpEngineNotExistsException;-><init>()V

    throw v2

    :sswitch_2
    new-instance v2, Lcom/sec/sdp/exception/SdpEngineLockedException;

    invoke-direct {v2}, Lcom/sec/sdp/exception/SdpEngineLockedException;-><init>()V

    throw v2

    :sswitch_3
    new-instance v2, Lcom/sec/sdp/exception/SdpInvalidPasswordException;

    invoke-direct {v2}, Lcom/sec/sdp/exception/SdpInvalidPasswordException;-><init>()V

    throw v2

    :sswitch_4
    new-instance v2, Lcom/sec/sdp/exception/SdpAccessDeniedException;

    invoke-direct {v2}, Lcom/sec/sdp/exception/SdpAccessDeniedException;-><init>()V

    throw v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :sswitch_data_0
    .sparse-switch
        -0x63 -> :sswitch_0
        -0xf -> :sswitch_0
        -0xe -> :sswitch_0
        -0xc -> :sswitch_0
        -0xb -> :sswitch_0
        -0xa -> :sswitch_0
        -0x8 -> :sswitch_4
        -0x7 -> :sswitch_1
        -0x5 -> :sswitch_2
        -0x2 -> :sswitch_3
        -0x1 -> :sswitch_0
    .end sparse-switch
.end method

.method public unlock(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/sdp/exception/SdpInternalException;,
            Lcom/sec/sdp/exception/SdpEngineNotExistsException;,
            Lcom/sec/sdp/exception/SdpInvalidPasswordException;,
            Lcom/sec/sdp/exception/SdpAccessDeniedException;
        }
    .end annotation

    const/16 v1, -0xf

    iget-object v2, p0, Lcom/sec/sdp/engine/SdpEngine;->mSdpService:Lcom/sec/sdp/ISdpManagerService;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/sec/sdp/engine/SdpEngine;->mSdpService:Lcom/sec/sdp/ISdpManagerService;

    invoke-interface {v2, p1, p2}, Lcom/sec/sdp/ISdpManagerService;->unlock(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string v2, "SdpEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unlock failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    new-instance v2, Lcom/sec/sdp/exception/SdpInternalException;

    invoke-direct {v2}, Lcom/sec/sdp/exception/SdpInternalException;-><init>()V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v2, "SdpEngine"

    const-string v3, "Failed to call unlock"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :sswitch_1
    :try_start_1
    new-instance v2, Lcom/sec/sdp/exception/SdpEngineNotExistsException;

    invoke-direct {v2}, Lcom/sec/sdp/exception/SdpEngineNotExistsException;-><init>()V

    throw v2

    :sswitch_2
    new-instance v2, Lcom/sec/sdp/exception/SdpInvalidPasswordException;

    invoke-direct {v2}, Lcom/sec/sdp/exception/SdpInvalidPasswordException;-><init>()V

    throw v2

    :sswitch_3
    new-instance v2, Lcom/sec/sdp/exception/SdpAccessDeniedException;

    invoke-direct {v2}, Lcom/sec/sdp/exception/SdpAccessDeniedException;-><init>()V

    throw v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :sswitch_data_0
    .sparse-switch
        -0x63 -> :sswitch_0
        -0xf -> :sswitch_0
        -0xe -> :sswitch_0
        -0xc -> :sswitch_0
        -0xb -> :sswitch_0
        -0xa -> :sswitch_0
        -0x8 -> :sswitch_3
        -0x7 -> :sswitch_1
        -0x2 -> :sswitch_2
        -0x1 -> :sswitch_0
    .end sparse-switch
.end method
