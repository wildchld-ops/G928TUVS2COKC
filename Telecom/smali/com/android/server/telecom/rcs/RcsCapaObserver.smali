.class public Lcom/android/server/telecom/rcs/RcsCapaObserver;
.super Landroid/database/ContentObserver;
.source "RcsCapaObserver.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mContext:Landroid/content/Context;

.field private mIsOwnFtCapable:Z

.field private mRcsServiceOwnObserver:Landroid/database/ContentObserver;

.field private mRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/telecom/rcs/RcsCapaObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/telecom/rcs/RcsCapaObserver;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Lcom/android/internal/telephony/CallManager;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-boolean v2, p0, Lcom/android/server/telecom/rcs/RcsCapaObserver;->mIsOwnFtCapable:Z

    const-string v0, "RcsShare"

    const-string v1, "RcsCapaObserver()::"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/server/telecom/rcs/RcsCapaObserver;->mRegistered:Z

    iput-object p2, p0, Lcom/android/server/telecom/rcs/RcsCapaObserver;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/telecom/rcs/RcsCapaObserver;->mCM:Lcom/android/internal/telephony/CallManager;

    new-instance v0, Lcom/android/server/telecom/rcs/RcsCapaObserver$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/telecom/rcs/RcsCapaObserver$1;-><init>(Lcom/android/server/telecom/rcs/RcsCapaObserver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/telecom/rcs/RcsCapaObserver;->mRcsServiceOwnObserver:Landroid/database/ContentObserver;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    const-string v0, "RcsShare"

    const-string v1, "RcsCapaObserver::onChange()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string v0, "RcsShare"

    const-string v1, "RcsCapaObserver::calling update option menu"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/telecom/rcs/RcsCapaObserver;->updateUI()V

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method

.method public registerSelfAsObserver(Landroid/content/ContentResolver;)V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "RcsShare"

    const-string v1, "RcsCapaObserver::registerSelfAsObserver()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/telecom/rcs/RcsCapaObserver;->mRegistered:Z

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/android/server/telecom/rcs/RcsCapaObserver;->mRegistered:Z

    iget-object v0, p0, Lcom/android/server/telecom/rcs/RcsCapaObserver;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/server/telecom/rcs/RcsUtils;->getPhoneNumber(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/telecom/rcs/RcsCapaObserver;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/server/telecom/rcs/RcsUtils;->generateTelUri(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/services/telephony/common/RcsTransferConstants;->SIP_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    sget-object v0, Lcom/android/services/telephony/common/RcsTransferConstants;->SERVICE_OWN_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/server/telecom/rcs/RcsCapaObserver;->mRcsServiceOwnObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public unregisterSelfAsObseverAndCloseCursor()V
    .locals 2

    const-string v0, "RcsShare"

    const-string v1, "RcsCapaObserver::unregisterSelfAsObseverAndCloseCursor()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/telecom/rcs/RcsCapaObserver;->mRegistered:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/telecom/rcs/RcsCapaObserver;->mRegistered:Z

    iget-object v0, p0, Lcom/android/server/telecom/rcs/RcsCapaObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/server/telecom/rcs/RcsCapaObserver;->mRcsServiceOwnObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public updateUI()V
    .locals 2

    const-string v0, "RcsShare"

    const-string v1, "RcsCapaObserver::updateUI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/telecom/TelecomGlobals;->getInstance()Lcom/android/server/telecom/TelecomGlobals;

    move-result-object v0

    invoke-static {}, Lcom/android/server/telecom/TelecomGlobals;->getInstance()Lcom/android/server/telecom/TelecomGlobals;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/TelecomGlobals;->processChangeInContent(I)V

    return-void
.end method
