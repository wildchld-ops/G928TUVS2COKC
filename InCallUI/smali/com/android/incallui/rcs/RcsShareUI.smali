.class public Lcom/android/incallui/rcs/RcsShareUI;
.super Ljava/lang/Object;
.source "RcsShareUI.java"

# interfaces
.implements Lcom/android/services/telephony/common/RcsTransferConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/rcs/RcsShareUI$5;,
        Lcom/android/incallui/rcs/RcsShareUI$soundPoolTask;,
        Lcom/android/incallui/rcs/RcsShareUI$ContactsQuerryTask;,
        Lcom/android/incallui/rcs/RcsShareUI$SessionState;
    }
.end annotation


# static fields
.field public static BatteryLevel:I

.field private static final LOG_TAG:Ljava/lang/String;

.field private static c:Landroid/database/Cursor;

.field public static dialogIncoming:Landroid/app/Dialog;

.field public static imsServiceDeregistered:Z

.field private static indialogbuilder:Landroid/app/AlertDialog$Builder;

.field public static isISHButtonAvailable:Z

.field public static isVSHButtonAvailable:Z

.field private static mAddCallBtn:Landroid/widget/Button;

.field private static mBluetoothBtn:Landroid/widget/ToggleButton;

.field private static mCall:Lcom/android/incallui/Call;

.field private static mContext:Landroid/content/Context;

.field private static mHasRcsServices:Z

.field private static mInComingInvitation:Landroid/app/AlertDialog;

.field private static mIsActiveCall:Z

.field public static mIsHold:Z

.field private static mIsOwnFtCapable:Z

.field private static mIsOwnIshCapable:Z

.field private static mIsOwnVshCapable:Z

.field private static mIsWebExEnabled:Z

.field private static mPromotedButton:Landroid/widget/Button;

.field private static mPromotedService:Z

.field private static mShareButton:Landroid/widget/Button;

.field private static ultraPowerMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-class v0, Lcom/android/incallui/rcs/RcsShareUI;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    sput-object v2, Lcom/android/incallui/rcs/RcsShareUI;->dialogIncoming:Landroid/app/Dialog;

    sput-boolean v1, Lcom/android/incallui/rcs/RcsShareUI;->mHasRcsServices:Z

    sput-boolean v1, Lcom/android/incallui/rcs/RcsShareUI;->mIsActiveCall:Z

    sput-boolean v1, Lcom/android/incallui/rcs/RcsShareUI;->mPromotedService:Z

    sput-boolean v1, Lcom/android/incallui/rcs/RcsShareUI;->mIsOwnFtCapable:Z

    sput-boolean v1, Lcom/android/incallui/rcs/RcsShareUI;->mIsOwnVshCapable:Z

    sput-boolean v1, Lcom/android/incallui/rcs/RcsShareUI;->mIsOwnIshCapable:Z

    sput-boolean v1, Lcom/android/incallui/rcs/RcsShareUI;->mIsHold:Z

    const/4 v0, -0x1

    sput v0, Lcom/android/incallui/rcs/RcsShareUI;->BatteryLevel:I

    sput-boolean v1, Lcom/android/incallui/rcs/RcsShareUI;->imsServiceDeregistered:Z

    sput-object v2, Lcom/android/incallui/rcs/RcsShareUI;->indialogbuilder:Landroid/app/AlertDialog$Builder;

    sput-object v2, Lcom/android/incallui/rcs/RcsShareUI;->mInComingInvitation:Landroid/app/AlertDialog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IsOwnCapable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/incallui/rcs/RcsShareUI;->queryOwn(Landroid/content/Context;)V

    const-string v0, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.ft\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/incallui/rcs/RcsShareUI;->mIsOwnFtCapable:Z

    :goto_0
    return v0

    :cond_0
    const-string v0, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.gsma-is\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/incallui/rcs/RcsShareUI;->mIsOwnIshCapable:Z

    goto :goto_0

    :cond_1
    const-string v0, "+g.3gpp.cs-voice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/incallui/rcs/RcsShareUI;->mIsOwnVshCapable:Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static UpdateAudioState(Landroid/content/Context;)V
    .locals 3

    sget-object v1, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v2, " UpdateAudioState from Notification "

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.intent.action.SPEAKER_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/incallui/rcs/RcsShareUI;->isCshRunning(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public static acceptInvitation(Landroid/content/Context;Lcom/android/incallui/Call;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.contentsharing.action.INCOMING_SHARE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0, p1}, Lcom/android/incallui/rcs/RcsShareUI;->startRcsActivity(Landroid/content/Intent;Landroid/content/Context;Lcom/android/incallui/Call;)V

    return-void
.end method

.method static synthetic access$100()Landroid/database/Cursor;
    .locals 1

    sget-object v0, Lcom/android/incallui/rcs/RcsShareUI;->c:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/media/SoundPool;)V
    .locals 0

    invoke-static {p0}, Lcom/android/incallui/rcs/RcsShareUI;->releaseSoundPool(Landroid/media/SoundPool;)V

    return-void
.end method

.method static synthetic access$102(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0

    sput-object p0, Lcom/android/incallui/rcs/RcsShareUI;->c:Landroid/database/Cursor;

    return-object p0
.end method

.method static synthetic access$200()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/incallui/rcs/RcsShareUI;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300()Lcom/android/incallui/Call;
    .locals 1

    sget-object v0, Lcom/android/incallui/rcs/RcsShareUI;->mCall:Lcom/android/incallui/Call;

    return-object v0
.end method

.method static synthetic access$400(Landroid/content/Context;Lcom/android/incallui/Call;)Landroid/database/Cursor;
    .locals 1

    invoke-static {p0, p1}, Lcom/android/incallui/rcs/RcsShareUI;->queryInCallServiceProvider(Landroid/content/Context;Lcom/android/incallui/Call;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600()Landroid/widget/Button;
    .locals 1

    sget-object v0, Lcom/android/incallui/rcs/RcsShareUI;->mPromotedButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$700()Z
    .locals 1

    sget-boolean v0, Lcom/android/incallui/rcs/RcsShareUI;->mIsWebExEnabled:Z

    return v0
.end method

.method static synthetic access$800()Landroid/widget/Button;
    .locals 1

    sget-object v0, Lcom/android/incallui/rcs/RcsShareUI;->mShareButton:Landroid/widget/Button;

    return-object v0
.end method

.method public static acquireSessionInfo(Landroid/content/Context;)Lcom/android/incallui/rcs/RcsShareUI$SessionState;
    .locals 13

    new-instance v9, Lcom/android/incallui/rcs/RcsShareUI$SessionState;

    invoke-direct {v9}, Lcom/android/incallui/rcs/RcsShareUI$SessionState;-><init>()V

    const/4 v10, 0x0

    :try_start_0
    iput-boolean v10, v9, Lcom/android/incallui/rcs/RcsShareUI$SessionState;->mIsActive:Z

    invoke-static {p0}, Lcom/android/incallui/rcs/RcsShareUI;->getSessionStateCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_0
    const-string v10, "id"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-string v10, "dir"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v10, "state"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v10, "type"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const-string v10, "size"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    if-nez v2, :cond_1

    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/android/incallui/rcs/RcsShareUI$SessionState;->mIsActive:Z

    sget-object v10, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "verifySessionStates incoming session id:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput v3, v9, Lcom/android/incallui/rcs/RcsShareUI$SessionState;->mState:I

    iput v8, v9, Lcom/android/incallui/rcs/RcsShareUI$SessionState;->mType:I

    iput v2, v9, Lcom/android/incallui/rcs/RcsShareUI$SessionState;->mDirection:I

    iput-wide v6, v9, Lcom/android/incallui/rcs/RcsShareUI$SessionState;->mId:J

    iput-wide v4, v9, Lcom/android/incallui/rcs/RcsShareUI$SessionState;->mSize:J

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-nez v10, :cond_0

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_1
    return-object v9

    :cond_2
    sget-object v10, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v11, "verifySessionStates no sessions"

    invoke-static {v10, v11}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    sput-boolean v10, Lcom/android/incallui/ProximitySensor;->mFromRcsShare:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v10, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v11, "acquireSessionInfo() exception"

    invoke-static {v10, v11}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    :try_start_1
    sget-object v10, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v11, "verifySessionStates no sessions"

    invoke-static {v10, v11}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    sput-boolean v10, Lcom/android/incallui/ProximitySensor;->mFromRcsShare:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private static addRcsExtras(Lcom/android/incallui/Call;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const/4 v1, 0x1

    :goto_1
    const/4 v0, 0x1

    const-string v3, "contactNumber"

    invoke-static {p2, p0}, Lcom/android/incallui/rcs/RcsShareUI;->getPhoneNumber(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "contactName"

    invoke-static {p2, p0}, Lcom/android/incallui/rcs/RcsShareUI;->getCallerName(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "contactLabel"

    invoke-static {p2, p0}, Lcom/android/incallui/rcs/RcsShareUI;->getCallerLabel(Landroid/content/Context;Lcom/android/incallui/Call;)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "com.samsung.rcs.framework.mediatransfer.extra.CALL_START_TIME"

    invoke-static {p2, p0}, Lcom/android/incallui/rcs/RcsShareUI;->getCallStartTime(Landroid/content/Context;Lcom/android/incallui/Call;)J

    move-result-wide v4

    invoke-virtual {p1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v3, "com.samsung.rcs.framework.mediatransfer.extra.PHONE_MUTE"

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "com.samsung.rcs.framework.mediatransfer.extra.PHONE_SPEAKER"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "com.samsung.rcs.framework.mediatransfer.extra.BLUETOOTH_CONNECTED"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "com.samsung.rcs.framework.mediatransfer.extra.BLUETOOTH_AVAILABLE"

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "com.samsung.rcs.framework.mediatransfer.extra.NOISE_FEATURE"

    const-string v4, "noise_suppression"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static checkIfCapableOfRcsFileTransfer(Landroid/content/Context;Lcom/android/incallui/Call;)Z
    .locals 10

    const/4 v3, 0x0

    const/4 v9, 0x1

    invoke-static {p0, p1}, Lcom/android/incallui/rcs/RcsShareUI;->getPhoneNumber(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v7

    const/4 v6, 0x0

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v4, "RcsCapaObserver : opening cursor"

    invoke-static {v2, v4, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v7, p0}, Lcom/android/incallui/rcs/RcsShareUI;->generateTelUri(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    sget-object v2, Lcom/android/services/telephony/common/RcsTransferConstants;->SIP_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v2, Lcom/android/services/telephony/common/RcsTransferConstants;->INCALL_SERVICE_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    :goto_0
    invoke-static {v6}, Lcom/android/incallui/rcs/RcsShareUI;->isRcsFTAvailable(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.ft\""

    invoke-static {p0, v2}, Lcom/android/incallui/rcs/RcsShareUI;->IsOwnCapable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    move v2, v9

    :goto_1
    return v2

    :cond_1
    sget-object v2, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v3, "No content resolver !"

    invoke-static {v2, v3, v9}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 10

    const/4 v9, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, p1, v9}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static disconnect(Landroid/content/Context;)V
    .locals 3

    sget-object v1, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v2, "disconnected! "

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/incallui/ProximitySensor;->mFromRcsShare:Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.contentsharing.action.DISCONNECT_SHARE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static dismissDialogIncoming()V
    .locals 5

    const/4 v4, 0x0

    sget-object v1, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dialogIncoming: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/incallui/rcs/RcsShareUI;->dialogIncoming:Landroid/app/Dialog;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object v1, Lcom/android/incallui/rcs/RcsShareUI;->dialogIncoming:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/incallui/rcs/RcsShareUI;->dialogIncoming:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/incallui/rcs/RcsShareUI;->dialogIncoming:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    sget-object v1, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "After dismiss dialogIncoming: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/incallui/rcs/RcsShareUI;->dialogIncoming:Landroid/app/Dialog;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    sput-object v4, Lcom/android/incallui/rcs/RcsShareUI;->dialogIncoming:Landroid/app/Dialog;

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v1, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalArgumentException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sput-object v4, Lcom/android/incallui/rcs/RcsShareUI;->dialogIncoming:Landroid/app/Dialog;

    goto :goto_0

    :catchall_0
    move-exception v1

    sput-object v4, Lcom/android/incallui/rcs/RcsShareUI;->dialogIncoming:Landroid/app/Dialog;

    throw v1
.end method

.method public static dismissIncomingInvitation()V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x1

    sget-object v1, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dismissing mInComingInvitation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/incallui/rcs/RcsShareUI;->mInComingInvitation:Landroid/app/AlertDialog;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :try_start_0
    sget-object v1, Lcom/android/incallui/rcs/RcsShareUI;->mInComingInvitation:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/incallui/rcs/RcsShareUI;->mInComingInvitation:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/incallui/rcs/RcsShareUI;->mInComingInvitation:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    sget-object v1, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "After dismiss mInComingInvitation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/incallui/rcs/RcsShareUI;->mInComingInvitation:Landroid/app/AlertDialog;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    sput-object v4, Lcom/android/incallui/rcs/RcsShareUI;->mInComingInvitation:Landroid/app/AlertDialog;

    sget-object v1, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mInComingInvitation should be null: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/incallui/rcs/RcsShareUI;->mInComingInvitation:Landroid/app/AlertDialog;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v1, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalArgumentException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sput-object v4, Lcom/android/incallui/rcs/RcsShareUI;->mInComingInvitation:Landroid/app/AlertDialog;

    sget-object v1, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mInComingInvitation should be null: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/incallui/rcs/RcsShareUI;->mInComingInvitation:Landroid/app/AlertDialog;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :catchall_0
    move-exception v1

    sput-object v4, Lcom/android/incallui/rcs/RcsShareUI;->mInComingInvitation:Landroid/app/AlertDialog;

    sget-object v2, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mInComingInvitation should be null: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/incallui/rcs/RcsShareUI;->mInComingInvitation:Landroid/app/AlertDialog;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    throw v1
.end method

.method public static generateTelUri(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Null telephone number"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tel:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/incallui/rcs/RcsShareUI;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getCallStartTime(Landroid/content/Context;Lcom/android/incallui/Call;)J
    .locals 6

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getConnectTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public static getCallerLabel(Landroid/content/Context;Lcom/android/incallui/Call;)I
    .locals 4

    const/4 v1, -0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {p0}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->labelType:I

    goto :goto_0
.end method

.method public static getCallerName(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-static {p0}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public static final getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v1, "country_detector"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/CountryDetector;

    invoke-virtual {v0}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getPhoneNumber(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-static {p0}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/incallui/rcs/RcsShareUI;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getSessionStateCursor(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 6

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/services/telephony/common/RcsTransferConstants$Cs;->ACTIVE_SESSIONS_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "id"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const-string v5, "state"

    aput-object v5, v2, v3

    const/4 v3, 0x2

    const-string v5, "dir"

    aput-object v5, v2, v3

    const/4 v3, 0x3

    const-string v5, "type"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;->IMAGE_SHARE:Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;

    invoke-virtual {v5}, Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;->getValue()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;->VIDEO_SHARE:Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;

    invoke-virtual {v5}, Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;->getValue()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static isCshRunning(Landroid/content/Context;)Z
    .locals 6

    const-string v4, "activity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/16 v4, 0x3e8

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ComponentInfo{com.samsung.rcs/com.samsung.rcs.share.ContentShareActivity}"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    :cond_0
    return v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static isCshTopMostActivity(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "com.samsung.rcs.share.ContentShareActivity"

    invoke-static {p0, v0}, Lcom/android/incallui/rcs/RcsShareUI;->isTopMostActivity(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final isNonSeparator(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2c

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRcsFTAvailable(Landroid/database/Cursor;)Z
    .locals 5

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const-string v2, "is_enabled"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "feature_tag"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "featureTag : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.ft\""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    sget-object v2, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAvailableFT : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static isRcsServiceAvailable()Z
    .locals 3

    sget-object v0, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRcsServiceAvailable? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/incallui/rcs/RcsShareUI;->mHasRcsServices:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/incallui/rcs/RcsShareUI;->mHasRcsServices:Z

    return v0
.end method

.method public static isShareActive(Landroid/content/Context;)Z
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/android/incallui/rcs/RcsShareUI;->getSessionStateCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const-string v3, "dir"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "state"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    const-string v3, "state"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/16 v4, 0xf

    if-eq v3, v4, :cond_4

    :cond_1
    sget-object v3, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v4, "found active session connecting/in progress "

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "jjh - KEY_SESSION_DIRECTION : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "dir"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "jjh - KEY_SESSION_STATE : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "state"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    sget-object v3, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "is Share active? returnVal: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_4
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v3, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Bad RCS query, no actives shares? "

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static isTopMostActivity(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "top most activity is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method public static notifyUser(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v1, "alertoncall_mode"

    const/4 v0, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sget-object v5, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Inside notifyUser Beep Sound alertoncallModeIndex :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const-string v5, "com.samsung.rcs.framework.filetransfer.notification.TRANSFER_INCOMING"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "com.samsung.rcs.framework.instantmessaging.notification.MESSAGE_RECEIVED"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "vibrator"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    const-wide/16 v6, 0x5dc

    invoke-virtual {v4, v6, v7}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    :pswitch_2
    const-string v5, "com.samsung.rcs.framework.filetransfer.notification.TRANSFER_INCOMING"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "com.samsung.rcs.framework.instantmessaging.notification.MESSAGE_RECEIVED"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Playing Notification Sound"

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/android/incallui/rcs/RcsShareUI$soundPoolTask;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/android/incallui/rcs/RcsShareUI$soundPoolTask;-><init>(Lcom/android/incallui/rcs/RcsShareUI$1;)V

    new-array v6, v9, [Landroid/content/Context;

    aput-object p0, v6, v8

    invoke-virtual {v5, v6}, Lcom/android/incallui/rcs/RcsShareUI$soundPoolTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static prepareRcsUiElements(Landroid/content/Context;Landroid/widget/Button;Landroid/widget/Button;ZLcom/android/incallui/Call;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v0, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v3, "prepareRcsUiElements()"

    invoke-static {v0, v3, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p4}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/incallui/rcs/RcsShareUI;->mIsActiveCall:Z

    sget-object v0, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsActiveCall = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/incallui/rcs/RcsShareUI;->mIsActiveCall:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "ultra_powersaving_mode"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    sput-boolean v1, Lcom/android/incallui/rcs/RcsShareUI;->ultraPowerMode:Z

    :goto_1
    sget-object v0, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ultraPowerMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/incallui/rcs/RcsShareUI;->ultraPowerMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object p0, Lcom/android/incallui/rcs/RcsShareUI;->mContext:Landroid/content/Context;

    sput-object p4, Lcom/android/incallui/rcs/RcsShareUI;->mCall:Lcom/android/incallui/Call;

    sput-object p1, Lcom/android/incallui/rcs/RcsShareUI;->mPromotedButton:Landroid/widget/Button;

    sput-object p2, Lcom/android/incallui/rcs/RcsShareUI;->mShareButton:Landroid/widget/Button;

    sput-boolean p3, Lcom/android/incallui/rcs/RcsShareUI;->mIsWebExEnabled:Z

    new-instance v0, Lcom/android/incallui/rcs/RcsShareUI$ContactsQuerryTask;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/android/incallui/rcs/RcsShareUI$ContactsQuerryTask;-><init>(Lcom/android/incallui/rcs/RcsShareUI$1;)V

    new-array v1, v1, [Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/incallui/rcs/RcsShareUI$ContactsQuerryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    sput-boolean v2, Lcom/android/incallui/rcs/RcsShareUI;->ultraPowerMode:Z

    goto :goto_1
.end method

.method private static queryInCallServiceProvider(Landroid/content/Context;Lcom/android/incallui/Call;)Landroid/database/Cursor;
    .locals 10

    const/4 v9, 0x0

    invoke-static {p0, p1}, Lcom/android/incallui/rcs/RcsShareUI;->getPhoneNumber(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v8

    const/4 v6, 0x0

    if-eqz v8, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v2, 0xb

    if-eq v0, v2, :cond_1

    sget-object v0, Lcom/android/incallui/rcs/RcsShareUI;->INCALL_SERVICE_PRVIDER_URI:Landroid/net/Uri;

    invoke-static {v0, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v0, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uri is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/incallui/rcs/RcsShareUI;->INCALL_SERVICE_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/incallui/rcs/RcsShareUI;->mHasRcsServices:Z

    :goto_0
    return-object v6

    :cond_0
    sget-object v0, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v2, "No go for RCS"

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/rcs/RcsShareUI;->mHasRcsServices:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    sget-object v0, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Bad RCS query, No go for RCS"

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v9, Lcom/android/incallui/rcs/RcsShareUI;->mHasRcsServices:Z

    goto :goto_0

    :cond_1
    sput-boolean v9, Lcom/android/incallui/rcs/RcsShareUI;->mHasRcsServices:Z

    goto :goto_0
.end method

.method static queryOwn(Landroid/content/Context;)V
    .locals 8

    sget-object v0, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v1, "queryOwn"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/services/telephony/common/RcsTransferConstants;->SERVICE_OWN_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/rcs/RcsShareUI;->mIsOwnFtCapable:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/rcs/RcsShareUI;->mIsOwnIshCapable:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/rcs/RcsShareUI;->mIsOwnVshCapable:Z

    sget-object v0, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v1, "queryOwn : ownCursor == null"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {v7}, Lcom/android/incallui/rcs/RcsShareUI;->readDataFromQueryOwn(Landroid/database/Cursor;)V

    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    sget-object v0, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryOwn : RCS Query Failed - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static readDataFromQueryOwn(Landroid/database/Cursor;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    sget-object v4, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v5, "readDataFromQueryOwn"

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_2

    const-string v4, "feature_tag"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v4, "is_enabled"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    sput-boolean v6, Lcom/android/incallui/rcs/RcsShareUI;->mIsOwnFtCapable:Z

    sput-boolean v6, Lcom/android/incallui/rcs/RcsShareUI;->mIsOwnIshCapable:Z

    sput-boolean v6, Lcom/android/incallui/rcs/RcsShareUI;->mIsOwnVshCapable:Z

    sget-object v4, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cursor.getCount()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sget-object v4, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readDataFromQueryOwn tag : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", enabled : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_3

    const-string v4, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.ft\""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-lez v0, :cond_3

    sput-boolean v7, Lcom/android/incallui/rcs/RcsShareUI;->mIsOwnFtCapable:Z

    :cond_1
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    :cond_2
    return-void

    :cond_3
    if-eqz v3, :cond_4

    const-string v4, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.gsma-is\""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-lez v0, :cond_4

    sput-boolean v7, Lcom/android/incallui/rcs/RcsShareUI;->mIsOwnIshCapable:Z

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_1

    const-string v4, "+g.3gpp.cs-voice"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-lez v0, :cond_1

    sput-boolean v7, Lcom/android/incallui/rcs/RcsShareUI;->mIsOwnVshCapable:Z

    goto :goto_0
.end method

.method public static registerRcsObserver(I)V
    .locals 3

    sget-object v0, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerRcsObserver"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Lcom/android/incallui/TelecomAdapter;->requestRcsObserver(II)V

    return-void
.end method

.method private static releaseSoundPool(Landroid/media/SoundPool;)V
    .locals 4

    const/4 v3, 0x1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Release SoundPool"

    invoke-static {v0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Landroid/media/SoundPool;->release()V

    const/4 p0, 0x0

    sget-object v0, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "After release SoundPool :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public static resumeShare(Landroid/content/Context;Lcom/android/incallui/Call;)V
    .locals 3

    sget-object v1, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v2, "resuming share..! "

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.contentsharing.action.RESUME_SHARE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {p0}, Lcom/android/incallui/rcs/RcsShareUI;->isShareActive(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v2, "resume share since active share "

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0, p1}, Lcom/android/incallui/rcs/RcsShareUI;->startRcsActivity(Landroid/content/Intent;Landroid/content/Context;Lcom/android/incallui/Call;)V

    :cond_0
    return-void
.end method

.method public static setupInviteCallCardButtons(Landroid/content/Context;Lcom/android/incallui/rcs/RcsInvitation;Lcom/android/incallui/Call;)V
    .locals 9

    sget-object v6, Lcom/android/incallui/rcs/RcsShareUI;->dialogIncoming:Landroid/app/Dialog;

    const v7, 0x7f1000db

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sget-object v6, Lcom/android/incallui/rcs/RcsShareUI;->dialogIncoming:Landroid/app/Dialog;

    const v7, 0x7f1000dc

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    invoke-static {p0, p2}, Lcom/android/incallui/rcs/RcsShareUI;->getCallerName(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p2}, Lcom/android/incallui/rcs/RcsShareUI;->getPhoneNumber(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, p2}, Lcom/android/incallui/rcs/RcsShareUI;->getCallStartTime(Landroid/content/Context;Lcom/android/incallui/Call;)J

    move-result-wide v2

    sget-object v6, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setupInviteCallCardButtons "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    if-eqz v5, :cond_0

    new-instance v6, Lcom/android/incallui/rcs/RcsShareUI$3;

    invoke-direct {v6, p2}, Lcom/android/incallui/rcs/RcsShareUI$3;-><init>(Lcom/android/incallui/Call;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v6, Lcom/android/incallui/rcs/RcsShareUI$4;

    invoke-direct {v6, v1, v4, p1}, Lcom/android/incallui/rcs/RcsShareUI$4;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/incallui/rcs/RcsInvitation;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public static setupLegacyInCallButtons(Landroid/widget/Button;Landroid/widget/ToggleButton;Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x8

    sget-object v0, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setupLegacyInCallButtons() ,cursor : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/incallui/rcs/RcsShareUI;->c:Landroid/database/Cursor;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object p0, Lcom/android/incallui/rcs/RcsShareUI;->mAddCallBtn:Landroid/widget/Button;

    sput-object p1, Lcom/android/incallui/rcs/RcsShareUI;->mBluetoothBtn:Landroid/widget/ToggleButton;

    sget-object v0, Lcom/android/incallui/rcs/RcsShareUI;->c:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v1, "setupLegacyInCallButtons remove"

    invoke-static {v0, v1, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p0, :cond_0

    sget-boolean v0, Lcom/android/incallui/rcs/RcsShareUI;->mPromotedService:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v1, "setupLegacyInCallButtons no RCS"

    invoke-static {v0, v1, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p0, :cond_4

    invoke-virtual {p0, v4}, Landroid/widget/Button;->setVisibility(I)V

    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {p1, v4}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_5
    if-eqz p2, :cond_6

    invoke-virtual {p2, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_6
    if-eqz p3, :cond_1

    invoke-virtual {p3, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method

.method static setupPromotedServiceButton(Landroid/content/Context;Landroid/widget/Button;Landroid/database/Cursor;Z)V
    .locals 12

    const/16 v9, 0x8

    const/4 v11, 0x0

    const/4 v10, 0x1

    sget-object v7, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v8, "setupPromotedServiceButton"

    invoke-static {v7, v8, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez p1, :cond_1

    sget-object v7, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v8, "setupPromotedServiceButton null button"

    invoke-static {v7, v8, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v7, "com.samsung.android.incalllui.rcsshareui.action.ACTION_MENU_CHANGE"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    if-nez p2, :cond_2

    sget-object v7, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v8, "cursor null, show legacy buttons"

    invoke-static {v7, v8, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    sput-boolean v11, Lcom/android/incallui/rcs/RcsShareUI;->isVSHButtonAvailable:Z

    invoke-virtual {p1, v9}, Landroid/widget/Button;->setVisibility(I)V

    const-string v7, "MENU_STRING"

    const-string v8, "HOLD"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v7, Lcom/android/incallui/rcs/RcsShareUI;->mAddCallBtn:Landroid/widget/Button;

    if-eqz v7, :cond_0

    sget-object v7, Lcom/android/incallui/rcs/RcsShareUI;->mAddCallBtn:Landroid/widget/Button;

    invoke-virtual {v7, v11}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_2
    sget-object v7, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v8, "cursor not null, show Rcs buttons"

    invoke-static {v7, v8, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    sput-boolean v10, Lcom/android/incallui/rcs/RcsShareUI;->isVSHButtonAvailable:Z

    invoke-virtual {p1, v11}, Landroid/widget/Button;->setVisibility(I)V

    const-string v7, "MENU_STRING"

    const-string v8, ""

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v7, Lcom/android/incallui/rcs/RcsShareUI;->mAddCallBtn:Landroid/widget/Button;

    if-eqz v7, :cond_3

    sget-object v7, Lcom/android/incallui/rcs/RcsShareUI;->mAddCallBtn:Landroid/widget/Button;

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setVisibility(I)V

    :cond_3
    sget-object v7, Lcom/android/incallui/rcs/RcsShareUI;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-nez v7, :cond_4

    sget-object v7, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v8, "code return from setupPromotedServiceButton"

    invoke-static {v7, v8, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    const-string v7, "feature_tag"

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v7, "int_name"

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez p3, :cond_5

    const-string v7, "+g.3gpp.cs-voice"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "com.samsung.rcs.contentsharing.action.VIDEO_SHARE_CAMERA"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    :cond_5
    sget-object v7, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v8, "setupPromotedServiceButton not promoted"

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v11, Lcom/android/incallui/rcs/RcsShareUI;->mPromotedService:Z

    invoke-virtual {p1, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    :cond_6
    sput-boolean v10, Lcom/android/incallui/rcs/RcsShareUI;->mPromotedService:Z

    const/4 v3, 0x0

    const-string v7, "is_enabled"

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    sget-object v7, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "enabled? "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mIsActiveCall?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcom/android/incallui/rcs/RcsShareUI;->mIsActiveCall:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", isRcsServiceAvailable()? "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/android/incallui/rcs/RcsShareUI;->isRcsServiceAvailable()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", imsServiceDeregistered? "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcom/android/incallui/rcs/RcsShareUI;->imsServiceDeregistered:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mIsHold? "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcom/android/incallui/rcs/RcsShareUI;->mIsHold:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", ultraPowerMode? "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcom/android/incallui/rcs/RcsShareUI;->ultraPowerMode:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v3, :cond_8

    invoke-static {}, Lcom/android/incallui/rcs/RcsShareUI;->isRcsServiceAvailable()Z

    move-result v7

    if-eqz v7, :cond_8

    sget-boolean v7, Lcom/android/incallui/rcs/RcsShareUI;->mIsActiveCall:Z

    if-eqz v7, :cond_8

    sget-boolean v7, Lcom/android/incallui/rcs/RcsShareUI;->imsServiceDeregistered:Z

    if-nez v7, :cond_8

    sget-boolean v7, Lcom/android/incallui/rcs/RcsShareUI;->mIsHold:Z

    if-nez v7, :cond_8

    sget-boolean v7, Lcom/android/incallui/rcs/RcsShareUI;->ultraPowerMode:Z

    if-nez v7, :cond_8

    sget-object v7, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v8, "VSH service enabled"

    invoke-static {v7, v8, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p1, v10}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_1
    const-string v7, "ims_rcs_bb"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "feature_org"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    if-eqz p1, :cond_7

    const v7, 0x7f020106

    invoke-virtual {p1, v11, v7, v11, v11}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :cond_7
    invoke-virtual {p1, v11}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p1, v11}, Landroid/widget/Button;->setEnabled(Z)V

    sget-object v7, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v8, "VSH service disabled"

    invoke-static {v7, v8, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method public static setupRcsCallCard(Landroid/content/Context;Lcom/android/incallui/rcs/RcsInvitation;Lcom/android/incallui/Call;)V
    .locals 18

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v14

    if-eqz v14, :cond_4

    sget-boolean v14, Lcom/android/incallui/rcs/RcsShareUI;->ultraPowerMode:Z

    if-eqz v14, :cond_4

    sget-object v14, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v15, " Easy Mode on rejecting invitation "

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/rcs/RcsInvitation;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/android/incallui/rcs/RcsShareUI;->acquireSessionInfo(Landroid/content/Context;)Lcom/android/incallui/rcs/RcsShareUI$SessionState;

    move-result-object v14

    iget v14, v14, Lcom/android/incallui/rcs/RcsShareUI$SessionState;->mType:I

    sget-object v15, Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;->IMAGE_SHARE:Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;

    invoke-virtual {v15}, Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;->getValue()I

    move-result v15

    if-ne v14, v15, :cond_3

    new-instance v6, Landroid/content/Intent;

    const-string v14, "com.sec.rcs.mediatransfer.ish.action.SHARE_CANCEL"

    invoke-direct {v6, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v14, "com.sec.rcs.mediatransfer.ish.category.ACTION"

    invoke-virtual {v6, v14}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/android/incallui/rcs/RcsShareUI;->createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v7

    :cond_2
    :goto_1
    if-eqz v7, :cond_0

    const-string v14, "com.sec.rcs.mediatransfer.csh.extra.SHARE_ID"

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/rcs/RcsInvitation;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/android/incallui/rcs/RcsShareUI;->acquireSessionInfo(Landroid/content/Context;)Lcom/android/incallui/rcs/RcsShareUI$SessionState;

    move-result-object v15

    iget-wide v0, v15, Lcom/android/incallui/rcs/RcsShareUI$SessionState;->mId:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v7, v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    sget-object v14, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v15, "Did not find RCS service..."

    invoke-static {v14, v15}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/rcs/RcsInvitation;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/android/incallui/rcs/RcsShareUI;->acquireSessionInfo(Landroid/content/Context;)Lcom/android/incallui/rcs/RcsShareUI$SessionState;

    move-result-object v14

    iget v14, v14, Lcom/android/incallui/rcs/RcsShareUI$SessionState;->mType:I

    sget-object v15, Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;->VIDEO_SHARE:Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;

    invoke-virtual {v15}, Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;->getValue()I

    move-result v15

    if-ne v14, v15, :cond_2

    new-instance v6, Landroid/content/Intent;

    const-string v14, "com.sec.rcs.mediatransfer.vsh.action.SHARE_CANCEL"

    invoke-direct {v6, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v14, "com.sec.rcs.mediatransfer.vsh.category.ACTION"

    invoke-virtual {v6, v14}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/android/incallui/rcs/RcsShareUI;->createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v7

    goto :goto_1

    :cond_4
    sget v14, Lcom/android/incallui/rcs/RcsShareUI;->BatteryLevel:I

    const/4 v15, 0x6

    if-ge v14, v15, :cond_7

    sget-object v14, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v15, " Battery unavaialble "

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/rcs/RcsInvitation;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/android/incallui/rcs/RcsShareUI;->acquireSessionInfo(Landroid/content/Context;)Lcom/android/incallui/rcs/RcsShareUI$SessionState;

    move-result-object v14

    iget v14, v14, Lcom/android/incallui/rcs/RcsShareUI$SessionState;->mType:I

    sget-object v15, Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;->VIDEO_SHARE:Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;

    invoke-virtual {v15}, Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;->getValue()I

    move-result v15

    if-ne v14, v15, :cond_5

    new-instance v6, Landroid/content/Intent;

    const-string v14, "com.sec.rcs.mediatransfer.vsh.action.SHARE_CANCEL"

    invoke-direct {v6, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v14, "com.sec.rcs.mediatransfer.vsh.category.ACTION"

    invoke-virtual {v6, v14}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/android/incallui/rcs/RcsShareUI;->createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v7

    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/rcs/RcsInvitation;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/android/incallui/rcs/RcsShareUI;->acquireSessionInfo(Landroid/content/Context;)Lcom/android/incallui/rcs/RcsShareUI$SessionState;

    move-result-object v14

    iget v14, v14, Lcom/android/incallui/rcs/RcsShareUI$SessionState;->mType:I

    sget-object v15, Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;->IMAGE_SHARE:Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;

    invoke-virtual {v15}, Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;->getValue()I

    move-result v15

    if-ne v14, v15, :cond_6

    sget v14, Lcom/android/incallui/rcs/RcsShareUI;->BatteryLevel:I

    const/4 v15, 0x2

    if-ge v14, v15, :cond_6

    new-instance v6, Landroid/content/Intent;

    const-string v14, "com.sec.rcs.mediatransfer.ish.action.SHARE_CANCEL"

    invoke-direct {v6, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v14, "com.sec.rcs.mediatransfer.ish.category.ACTION"

    invoke-virtual {v6, v14}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/android/incallui/rcs/RcsShareUI;->createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v7

    :cond_6
    if-eqz v7, :cond_7

    const-string v14, "com.sec.rcs.mediatransfer.csh.extra.SHARE_ID"

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/rcs/RcsInvitation;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/android/incallui/rcs/RcsShareUI;->acquireSessionInfo(Landroid/content/Context;)Lcom/android/incallui/rcs/RcsShareUI$SessionState;

    move-result-object v15

    iget-wide v0, v15, Lcom/android/incallui/rcs/RcsShareUI$SessionState;->mId:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v7, v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :try_start_1
    sget-object v14, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v15, " ISH Battery unavaialble "

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static/range {p0 .. p0}, Lcom/android/incallui/rcs/RcsShareUI;->showISHBatteryError(Landroid/content/Context;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v5

    sget-object v14, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v15, "Did not find RCS service..."

    invoke-static {v14, v15}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    new-instance v14, Landroid/app/AlertDialog$Builder;

    new-instance v15, Landroid/view/ContextThemeWrapper;

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/rcs/RcsInvitation;->getContext()Landroid/content/Context;

    move-result-object v16

    const v17, 0x7f0b005b

    invoke-direct/range {v15 .. v17}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v14, v15}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sput-object v14, Lcom/android/incallui/rcs/RcsShareUI;->indialogbuilder:Landroid/app/AlertDialog$Builder;

    const-class v15, Lcom/android/incallui/rcs/RcsShareUI;

    monitor-enter v15

    :try_start_2
    sget-object v14, Lcom/android/incallui/rcs/RcsShareUI;->dialogIncoming:Landroid/app/Dialog;

    if-nez v14, :cond_8

    sget-object v14, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v16, "Intializing dialog incoming"

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v14, Landroid/app/Dialog;

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/rcs/RcsInvitation;->getContext()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    sput-object v14, Lcom/android/incallui/rcs/RcsShareUI;->dialogIncoming:Landroid/app/Dialog;

    sget-object v14, Lcom/android/incallui/rcs/RcsShareUI;->dialogIncoming:Landroid/app/Dialog;

    const v16, 0x7f040043

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/app/Dialog;->setContentView(I)V

    sget-object v14, Lcom/android/incallui/rcs/RcsShareUI;->dialogIncoming:Landroid/app/Dialog;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    :cond_8
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/incallui/rcs/RcsShareUI;->getCallerName(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/incallui/rcs/RcsShareUI;->getPhoneNumber(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/incallui/rcs/RcsShareUI;->getCallStartTime(Landroid/content/Context;Lcom/android/incallui/Call;)J

    move-result-wide v2

    sget-object v14, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "setupRcsCallCard "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/rcs/RcsInvitation;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/android/incallui/rcs/RcsShareUI;->acquireSessionInfo(Landroid/content/Context;)Lcom/android/incallui/rcs/RcsShareUI$SessionState;

    move-result-object v12

    iget-boolean v14, v12, Lcom/android/incallui/rcs/RcsShareUI$SessionState;->mIsActive:Z

    if-eqz v14, :cond_a

    iget v14, v12, Lcom/android/incallui/rcs/RcsShareUI$SessionState;->mState:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_a

    invoke-virtual/range {p2 .. p2}, Lcom/android/incallui/Call;->getState()I

    move-result v14

    const/4 v15, 0x4

    if-eq v14, v15, :cond_a

    sget-object v14, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v15, "RcsCallCard hasInvite"

    invoke-static {v14, v15}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p0 .. p2}, Lcom/android/incallui/rcs/RcsShareUI;->setupInviteCallCardButtons(Landroid/content/Context;Lcom/android/incallui/rcs/RcsInvitation;Lcom/android/incallui/Call;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/rcs/RcsInvitation;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    iget v14, v12, Lcom/android/incallui/rcs/RcsShareUI$SessionState;->mType:I

    invoke-static {v14}, Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;->getFromInt(I)Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;

    move-result-object v13

    sget-object v14, Lcom/android/incallui/rcs/RcsShareUI$5;->$SwitchMap$com$android$services$telephony$common$RcsTransferConstants$SessionType:[I

    invoke-virtual {v13}, Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;->ordinal()I

    move-result v15

    aget v14, v14, v15

    packed-switch v14, :pswitch_data_0

    sget-object v14, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v15, "Default case"

    invoke-static {v14, v15}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/rcs/RcsInvitation;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v8, p2

    sget-object v14, Lcom/android/incallui/rcs/RcsShareUI;->indialogbuilder:Landroid/app/AlertDialog$Builder;

    if-eqz v14, :cond_9

    sget-object v14, Lcom/android/incallui/rcs/RcsShareUI;->indialogbuilder:Landroid/app/AlertDialog$Builder;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    sget-object v14, Lcom/android/incallui/rcs/RcsShareUI;->indialogbuilder:Landroid/app/AlertDialog$Builder;

    const v15, 0x7f0d0150

    new-instance v16, Lcom/android/incallui/rcs/RcsShareUI$1;

    move-object/from16 v0, v16

    invoke-direct {v0, v4, v8}, Lcom/android/incallui/rcs/RcsShareUI$1;-><init>(Landroid/content/Context;Lcom/android/incallui/Call;)V

    invoke-virtual/range {v14 .. v16}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget-object v14, Lcom/android/incallui/rcs/RcsShareUI;->indialogbuilder:Landroid/app/AlertDialog$Builder;

    const v15, 0x7f0d014f

    new-instance v16, Lcom/android/incallui/rcs/RcsShareUI$2;

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Lcom/android/incallui/rcs/RcsShareUI$2;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v14 .. v16}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_9
    sget-object v14, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v15, "Showing dialog incoming"

    invoke-static {v14, v15}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v14, Lcom/android/incallui/rcs/RcsShareUI;->mInComingInvitation:Landroid/app/AlertDialog;

    if-nez v14, :cond_0

    sget-object v14, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v15, "InComing invite Produce "

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v14, Lcom/android/incallui/rcs/RcsShareUI;->indialogbuilder:Landroid/app/AlertDialog$Builder;

    const v15, 0x7f0d036d

    invoke-virtual {v14, v15}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    sget-object v14, Lcom/android/incallui/rcs/RcsShareUI;->indialogbuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v14}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v14

    sput-object v14, Lcom/android/incallui/rcs/RcsShareUI;->mInComingInvitation:Landroid/app/AlertDialog;

    sget-object v14, Lcom/android/incallui/rcs/RcsShareUI;->mInComingInvitation:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :catchall_0
    move-exception v14

    :try_start_3
    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v14

    :pswitch_0
    sget-object v14, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v15, "sessionType: IMAGE_SHARE"

    invoke-static {v14, v15}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v14, Lcom/android/incallui/rcs/RcsShareUI;->dialogIncoming:Landroid/app/Dialog;

    const v15, 0x7f0d036c

    invoke-virtual {v14, v15}, Landroid/app/Dialog;->setTitle(I)V

    sget-object v14, Lcom/android/incallui/rcs/RcsShareUI;->indialogbuilder:Landroid/app/AlertDialog$Builder;

    const v15, 0x7f0d036c

    invoke-virtual {v14, v15}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    :pswitch_1
    sget-object v14, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v15, "sessionType: VIDEO_SHARE"

    invoke-static {v14, v15}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v14, Lcom/android/incallui/rcs/RcsShareUI;->dialogIncoming:Landroid/app/Dialog;

    const v15, 0x7f0d036a

    invoke-virtual {v14, v15}, Landroid/app/Dialog;->setTitle(I)V

    sget-object v14, Lcom/android/incallui/rcs/RcsShareUI;->indialogbuilder:Landroid/app/AlertDialog$Builder;

    const v15, 0x7f0d036a

    invoke-virtual {v14, v15}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_2

    :cond_a
    sget-object v14, Lcom/android/incallui/rcs/RcsShareUI;->mInComingInvitation:Landroid/app/AlertDialog;

    if-eqz v14, :cond_0

    sget-object v14, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v15, "RcsCallCard has no invites"

    invoke-static {v14, v15}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/rcs/RcsShareUI;->dismissIncomingInvitation()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static setupRcsServicesButton(Landroid/content/Context;Landroid/widget/Button;Landroid/database/Cursor;)V
    .locals 12

    const/16 v9, 0x8

    const/4 v11, 0x0

    const/4 v10, 0x1

    sget-object v7, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v8, "setupRcsServicesButton()"

    invoke-static {v7, v8, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez p1, :cond_1

    sget-object v7, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v8, "setupRcsServicesButton null button"

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p2, :cond_2

    sget-object v7, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v8, "cursor value null, show legacy buttons"

    invoke-static {v7, v8, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    sput-boolean v11, Lcom/android/incallui/rcs/RcsShareUI;->isISHButtonAvailable:Z

    invoke-virtual {p1, v9}, Landroid/widget/Button;->setVisibility(I)V

    sget-object v7, Lcom/android/incallui/rcs/RcsShareUI;->mBluetoothBtn:Landroid/widget/ToggleButton;

    if-eqz v7, :cond_0

    sget-object v7, Lcom/android/incallui/rcs/RcsShareUI;->mBluetoothBtn:Landroid/widget/ToggleButton;

    invoke-virtual {v7, v11}, Landroid/widget/ToggleButton;->setVisibility(I)V

    goto :goto_0

    :cond_2
    sget-object v7, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v8, "cursor value not null, show RCS buttons"

    invoke-static {v7, v8, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    sput-boolean v10, Lcom/android/incallui/rcs/RcsShareUI;->isISHButtonAvailable:Z

    invoke-virtual {p1, v11}, Landroid/widget/Button;->setVisibility(I)V

    sget-object v7, Lcom/android/incallui/rcs/RcsShareUI;->mBluetoothBtn:Landroid/widget/ToggleButton;

    if-eqz v7, :cond_3

    sget-object v7, Lcom/android/incallui/rcs/RcsShareUI;->mBluetoothBtn:Landroid/widget/ToggleButton;

    invoke-virtual {v7, v9}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_3
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-nez v7, :cond_4

    sget-object v7, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v8, "code returning from setupRcsServicesButton "

    invoke-static {v7, v8, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    const-string v7, "service_name"

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "is_enabled"

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    :cond_5
    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v7, "feature_tag"

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v7, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "serviceName: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "isEnabled? "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "+g.3gpp.cs-voice"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    sget-object v7, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "featureTag: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " skip!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_7

    if-eqz v0, :cond_5

    :cond_7
    sget-object v7, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "enabled? "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mIsActiveCall?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcom/android/incallui/rcs/RcsShareUI;->mIsActiveCall:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", isRcsServiceAvailable()? "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/android/incallui/rcs/RcsShareUI;->isRcsServiceAvailable()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", imsServiceDeregistered? "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcom/android/incallui/rcs/RcsShareUI;->imsServiceDeregistered:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mIsHold? "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcom/android/incallui/rcs/RcsShareUI;->mIsHold:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", ultraPowerMode? "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcom/android/incallui/rcs/RcsShareUI;->ultraPowerMode:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/android/incallui/rcs/RcsShareUI;->isRcsServiceAvailable()Z

    move-result v7

    if-eqz v7, :cond_a

    sget-boolean v7, Lcom/android/incallui/rcs/RcsShareUI;->mIsActiveCall:Z

    if-eqz v7, :cond_a

    sget-boolean v7, Lcom/android/incallui/rcs/RcsShareUI;->imsServiceDeregistered:Z

    if-nez v7, :cond_a

    sget-boolean v7, Lcom/android/incallui/rcs/RcsShareUI;->mIsHold:Z

    if-nez v7, :cond_a

    sget-boolean v7, Lcom/android/incallui/rcs/RcsShareUI;->ultraPowerMode:Z

    if-nez v7, :cond_a

    invoke-virtual {p1, v10}, Landroid/widget/Button;->setEnabled(Z)V

    sget-object v7, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v8, "ISH service enabled "

    invoke-static {v7, v8, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_2
    const-string v7, "ims_rcs_bb"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string v7, "feature_org"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    if-eqz p1, :cond_8

    const v7, 0x7f020104

    invoke-virtual {p1, v11, v7, v11, v11}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :cond_8
    invoke-virtual {p1, v11}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    :cond_9
    if-eqz v3, :cond_6

    sget-object v7, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v8, "setupRcsServicesButton found enabled"

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v3

    goto/16 :goto_1

    :cond_a
    invoke-virtual {p1, v11}, Landroid/widget/Button;->setEnabled(Z)V

    sget-object v7, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v8, "ISH service disabled "

    invoke-static {v7, v8, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2
.end method

.method public static showBatteryError(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f0d0378

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static showISHBatteryError(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f0d0378

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static startLiveVideo(Landroid/content/Context;Lcom/android/incallui/Call;)V
    .locals 4

    sget-object v1, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startLiveVideo() context:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",call:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.contentsharing.action.VIDEO_SHARE_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0, p1}, Lcom/android/incallui/rcs/RcsShareUI;->startRcsActivity(Landroid/content/Intent;Landroid/content/Context;Lcom/android/incallui/Call;)V

    return-void
.end method

.method public static startRcsActivity(Landroid/content/Intent;Landroid/content/Context;Lcom/android/incallui/Call;)V
    .locals 6

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p1, p2}, Lcom/android/incallui/rcs/RcsShareUI;->getPhoneNumber(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_0
    sget-object v1, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v2, "null info"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v1, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start RCS startRcsActivity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Lcom/android/incallui/rcs/RcsShareUI;->getCallerName(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Lcom/android/incallui/rcs/RcsShareUI;->getPhoneNumber(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", call started "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Lcom/android/incallui/rcs/RcsShareUI;->getCallStartTime(Landroid/content/Context;Lcom/android/incallui/Call;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2, p0, p1}, Lcom/android/incallui/rcs/RcsShareUI;->addRcsExtras(Lcom/android/incallui/Call;Landroid/content/Intent;Landroid/content/Context;)V

    :try_start_0
    const-string v1, "ims_rcs"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/high16 v1, 0x10000000

    invoke-virtual {p0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Did not find RCS activity..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static startRcsService(Landroid/content/Intent;Landroid/content/Context;Lcom/android/incallui/Call;)V
    .locals 6

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p1, p2}, Lcom/android/incallui/rcs/RcsShareUI;->getPhoneNumber(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_0
    sget-object v1, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v2, "null info"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v1, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start RCS startRcsService "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Lcom/android/incallui/rcs/RcsShareUI;->getCallerName(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Lcom/android/incallui/rcs/RcsShareUI;->getPhoneNumber(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", call started "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Lcom/android/incallui/rcs/RcsShareUI;->getCallStartTime(Landroid/content/Context;Lcom/android/incallui/Call;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2, p0, p1}, Lcom/android/incallui/rcs/RcsShareUI;->addRcsExtras(Lcom/android/incallui/Call;Landroid/content/Intent;Landroid/content/Context;)V

    :try_start_0
    const-string v1, "ims_rcs"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, p0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Did not find RCS activity..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static startRcsSharingDialog(Landroid/content/Context;Lcom/android/incallui/Call;)V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.rcs.contentsharing.action.INCALL_SERVICES"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v2, 0x8000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {p0, v1}, Lcom/android/incallui/rcs/RcsShareUI;->createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-boolean v2, Lcom/android/incallui/rcs/RcsShareUI;->mPromotedService:Z

    if-eqz v2, :cond_0

    const-string v2, "com.samsung.rcs.framework.mediatransfer.extra.NO_PROMOTED"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    invoke-static {v0, p0, p1}, Lcom/android/incallui/rcs/RcsShareUI;->startRcsService(Landroid/content/Intent;Landroid/content/Context;Lcom/android/incallui/Call;)V

    return-void
.end method

.method public static stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/rcs/RcsShareUI;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    sget-object v4, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v5, "striping done...."

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static unRegisterRcsObserver(I)V
    .locals 3

    sget-object v0, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unRegisterRcsObserver"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, p0, v1}, Lcom/android/incallui/TelecomAdapter;->requestRcsObserver(II)V

    return-void
.end method
