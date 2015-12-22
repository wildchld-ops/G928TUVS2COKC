.class public final Lcom/samsung/android/service/reactive/ReactiveServiceManager;
.super Ljava/lang/Object;
.source "ReactiveServiceManager.java"


# static fields
.field public static final FLAG_ACTIVATED:I = 0x1

.field public static final FLAG_DEACTIVATED:I = 0x0

.field public static final FLAG_TRIGGERED:I = 0x2

.field public static final FRP_FLAG:I = 0x2

.field public static final FRP_SERIVCE_OPERATION_FAILED:I = -0x7

.field public static final GOOGLE_FACTORY_RESET_PROTECTION_IS_SUPPORTED:I = 0x2

.field public static final REACTIVATION_FLAG:I = 0x0

.field public static final REACTIVE_SERVICE_EXCEPTION_ERROR:I = -0xa

.field public static final REACTIVE_SERVICE_INVALID_ARGUMENTS:I = -0x8

.field public static final REACTIVE_SERVICE_IS_NOT_EXIST:I = -0x9

.field public static final REACTIVE_SERVICE_IS_NOT_SUPPORTED:I = 0x0

.field public static final REACTIVE_SERVICE_OPERATION_FAILED:I = -0x6

.field public static final REACTIVE_SERVICE_RETURN_FLAG_IS_NOT_EXIST:I = -0x3

.field public static final REACTIVE_SERVICE_RETURN_NATIVE_ERROR:I = -0x1

.field public static final REACTIVE_SERVICE_RETURN_NO_ERROR:I = 0x0

.field public static final REACTIVE_SERVICE_RETURN_PERMISSION_DENIED:I = -0x5

.field public static final REACTIVE_SERVICE_RETURN_STRING_IS_NOT_EXIST:I = -0x4

.field public static final REACTIVE_SERVICE_RETURN_UNSUPPORTED_OPERATION:I = -0x2

.field private static final RS_GOOGLE_NWD_SUPPORTED:I = 0x4

.field private static final RS_IS_NOT_SUPPORTED:I = 0x0

.field private static final RS_SAMSUNG_NWD_SUPPORTED:I = 0x2

.field private static final RS_SAMSUNG_SWD_SUPPORTED:I = 0x1

.field public static final SAMSUNG_GOOGLE_REACTIVE_SERVICES_ARE_SUPPORTED:I = 0x3

.field public static final SAMSUNG_REACTIVE_SERVICE_IS_SUPPORTED:I = 0x1

.field public static final SERVICE_FLAG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ReactiveServiceManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mService:Lcom/samsung/android/service/reactive/IReactiveService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mContext:Landroid/content/Context;

    const-string v0, "ReactiveService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/service/reactive/IReactiveService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/service/reactive/IReactiveService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 4

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    invoke-interface {v3}, Lcom/samsung/android/service/reactive/IReactiveService;->getErrorCode()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v2

    const/16 v1, -0x9

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v1, -0xa

    goto :goto_0
.end method

.method public getFlag(I)I
    .locals 6

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    invoke-interface {v3, p1}, Lcom/samsung/android/service/reactive/IReactiveService;->getFlag(I)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    const/4 v3, 0x2

    if-gt v2, v3, :cond_0

    if-gez v2, :cond_1

    :cond_0
    const-string v3, "ReactiveServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFlag() : error code["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v2

    :catch_0
    move-exception v1

    const/16 v2, -0x9

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v2, -0xa

    goto :goto_0
.end method

.method public getRawServiceValueForAtCommand()I
    .locals 3

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    invoke-interface {v2}, Lcom/samsung/android/service/reactive/IReactiveService;->getServiceSupport()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v1

    const/16 v2, -0x9

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v2, -0xa

    goto :goto_0
.end method

.method public getServiceSupport()I
    .locals 6

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    invoke-interface {v3}, Lcom/samsung/android/service/reactive/IReactiveService;->getServiceSupport()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    const-string v3, "ReactiveServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Supported : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    const/4 v3, 0x0

    :goto_0
    return v3

    :catch_0
    move-exception v1

    const/16 v3, -0x9

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v3, -0xa

    goto :goto_0

    :pswitch_1
    const/4 v3, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v3, 0x2

    goto :goto_0

    :pswitch_3
    const/4 v3, 0x3

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public getString()Ljava/lang/String;
    .locals 5

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    invoke-interface {v3}, Lcom/samsung/android/service/reactive/IReactiveService;->getString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    const-string v3, "ReactiveServiceManager"

    const-string v4, "getString() : Service is not exist."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeString()I
    .locals 6

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    invoke-interface {v3}, Lcom/samsung/android/service/reactive/IReactiveService;->removeString()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-gez v2, :cond_0

    const-string v3, "ReactiveServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeString() : error code["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :catch_0
    move-exception v1

    const/16 v2, -0x9

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v2, -0xa

    goto :goto_0

    :cond_0
    const-string v3, "ReactiveServiceManager"

    const-string/jumbo v4, "removeString Success "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sessionAccept([B)[B
    .locals 5

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const-string v3, "ReactiveServiceManager"

    const-string v4, "SessionAccept() : Invalid argument"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v2

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    invoke-interface {v3, p1}, Lcom/samsung/android/service/reactive/IReactiveService;->sessionAccept([B)[B
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "ReactiveServiceManager"

    const-string v4, "SessionAccpet() : Service is not exist."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public sessionComplete([B)I
    .locals 6

    if-nez p1, :cond_1

    const/4 v2, -0x8

    :cond_0
    :goto_0
    return v2

    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    invoke-interface {v3, p1}, Lcom/samsung/android/service/reactive/IReactiveService;->sessionComplete([B)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-eqz v2, :cond_0

    const-string v3, "ReactiveServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sessionComplete() : error code["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v1

    const/16 v2, -0x9

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v2, -0xa

    goto :goto_0
.end method

.method public setFlag(IILjava/lang/String;)I
    .locals 6

    const/4 v2, -0x8

    const/4 v3, 0x1

    if-gt p2, v3, :cond_0

    if-gez p2, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    if-nez p1, :cond_2

    if-eqz p3, :cond_0

    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    invoke-interface {v3, p1, p2, p3}, Lcom/samsung/android/service/reactive/IReactiveService;->setFlag(IILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-eqz v2, :cond_0

    const-string v3, "ReactiveServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setFlag() : error code["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v1

    const/16 v2, -0x9

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v2, -0xa

    goto :goto_0
.end method

.method public setString(Ljava/lang/String;)I
    .locals 6

    if-nez p1, :cond_0

    const/4 v2, -0x8

    :goto_0
    return v2

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    invoke-interface {v3, p1}, Lcom/samsung/android/service/reactive/IReactiveService;->setString(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-gez v2, :cond_1

    const-string v3, "ReactiveServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setString() : error code["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v1

    const/16 v2, -0x9

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v2, -0xa

    goto :goto_0

    :cond_1
    const-string v3, "ReactiveServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setString() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " characters are saved."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
