.class public Lcom/android/server/telecom/rcs/RcsContentObserver;
.super Landroid/database/ContentObserver;
.source "RcsContentObserver.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRegistered:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string v0, "RcsShare"

    const-string v1, "RcsContentObserver()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/telecom/rcs/RcsContentObserver;->mRegistered:Z

    iput-object p2, p0, Lcom/android/server/telecom/rcs/RcsContentObserver;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    const-string v0, "RcsShare"

    const-string v1, "RcsContentObserver::onChange()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string v0, "RcsShare"

    const-string v1, "calling update on buttons"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "RcsShare"

    const-string v1, "RcsContentObserver: calling update option menu"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/telecom/TelecomGlobals;->getInstance()Lcom/android/server/telecom/TelecomGlobals;

    move-result-object v0

    invoke-static {}, Lcom/android/server/telecom/TelecomGlobals;->getInstance()Lcom/android/server/telecom/TelecomGlobals;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/TelecomGlobals;->processChangeInContent(I)V

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method

.method public registerSelfAsObserver(Landroid/content/ContentResolver;)V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "RcsShare"

    const-string v1, "RcsContentObserver::registerSelfAsObserver()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/telecom/rcs/RcsContentObserver;->mRegistered:Z

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/android/server/telecom/rcs/RcsContentObserver;->mRegistered:Z

    sget-object v0, Lcom/android/services/telephony/common/RcsTransferConstants;->INCALL_SERVICE_PRVIDER_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public unregisterSelfAsObseverAndCloseCursor()V
    .locals 2

    const-string v0, "RcsShare"

    const-string v1, "RcsContentObserver::unregisterSelfAsObseverAndCloseCursor()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/telecom/rcs/RcsContentObserver;->mRegistered:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/telecom/rcs/RcsContentObserver;->mRegistered:Z

    iget-object v0, p0, Lcom/android/server/telecom/rcs/RcsContentObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method
