.class public Lcom/android/phone/photoring/PhotoRingMgr;
.super Ljava/lang/Object;
.source "PhotoRingMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/photoring/PhotoRingMgr$3;
    }
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static final DBG:Z

.field private static sMe:Lcom/android/phone/photoring/PhotoRingMgr;


# instance fields
.field private final PHOTORING_CONTENT_FILE:Ljava/lang/String;

.field private final dirPath:Ljava/lang/String;

.field private mApp:Lcom/android/phone/PhoneGlobals;

.field public mCallMsgNetworkListener4IncomingCall:Lcom/android/phone/photoring/ICallMessageNetworkListener;

.field public mCallmessageNetwork:Lcom/android/phone/photoring/CallMessageNetwork;

.field private mContext:Landroid/content/Context;

.field private mIncomingCallContentDownloadStarted:Z

.field private mService:Lcom/android/services/telephony/common/IMCIDService;

.field mSrvConn:Landroid/content/ServiceConnection;

.field private mcidMessage:Ljava/lang/String;

.field private mcid_chg_key:Ljava/lang/String;

.field private photoring_chg_key:Ljava/lang/String;

.field private photoring_rcv_num:Ljava/lang/String;

.field private photoring_svc_type:Ljava/lang/String;

.field public prcheckmcidstarted:Z

.field public prdownstarted:Z

.field private serviceIntent:Landroid/content/Intent;

.field private showmeContentData:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/photoring/PhotoRingMgr;->DBG:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/photoring/PhotoRingMgr;->sMe:Lcom/android/phone/photoring/PhotoRingMgr;

    const-string v0, "content://com.kt.ollehphone.ShowmeProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/photoring/PhotoRingMgr;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mCallmessageNetwork:Lcom/android/phone/photoring/CallMessageNetwork;

    const-string v0, "/data/data/com.android.phone/files/photoring_content"

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->PHOTORING_CONTENT_FILE:Ljava/lang/String;

    const-string v0, "/data/data/com.android.phone/files/"

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->dirPath:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mIncomingCallContentDownloadStarted:Z

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoRingMgr;->photoring_chg_key:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoRingMgr;->photoring_svc_type:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mcid_chg_key:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/phone/photoring/PhotoRingMgr;->prdownstarted:Z

    iput-boolean v2, p0, Lcom/android/phone/photoring/PhotoRingMgr;->prcheckmcidstarted:Z

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mcidMessage:Ljava/lang/String;

    new-instance v0, Lcom/android/phone/photoring/PhotoRingMgr$1;

    invoke-direct {v0, p0}, Lcom/android/phone/photoring/PhotoRingMgr$1;-><init>(Lcom/android/phone/photoring/PhotoRingMgr;)V

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mSrvConn:Landroid/content/ServiceConnection;

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoRingMgr;->showmeContentData:[B

    new-instance v0, Lcom/android/phone/photoring/PhotoRingMgr$2;

    invoke-direct {v0, p0}, Lcom/android/phone/photoring/PhotoRingMgr$2;-><init>(Lcom/android/phone/photoring/PhotoRingMgr;)V

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mCallMsgNetworkListener4IncomingCall:Lcom/android/phone/photoring/ICallMessageNetworkListener;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/photoring/CallMessageNetwork;->init(Landroid/content/Context;)Lcom/android/phone/photoring/CallMessageNetwork;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mCallmessageNetwork:Lcom/android/phone/photoring/CallMessageNetwork;

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mCallMsgNetworkListener4IncomingCall:Lcom/android/phone/photoring/ICallMessageNetworkListener;

    invoke-virtual {p0, v0}, Lcom/android/phone/photoring/PhotoRingMgr;->registerCallMessageNetworkListener(Lcom/android/phone/photoring/ICallMessageNetworkListener;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.incallui.MCID_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->serviceIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->serviceIntent:Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.incallui"

    const-string v3, "com.android.incallui.MCIDService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingMgr;->serviceIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mSrvConn:Landroid/content/ServiceConnection;

    iget-object v3, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method static synthetic access$002(Lcom/android/phone/photoring/PhotoRingMgr;Lcom/android/services/telephony/common/IMCIDService;)Lcom/android/services/telephony/common/IMCIDService;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mService:Lcom/android/services/telephony/common/IMCIDService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/phone/photoring/PhotoRingMgr;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/photoring/PhotoRingMgr;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/photoring/PhotoRingMgr;Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/photoring/PhotoRingMgr;->updateState(Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/photoring/PhotoRingMgr;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->photoring_chg_key:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/phone/photoring/PhotoRingMgr;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/photoring/PhotoRingMgr;->photoring_chg_key:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/phone/photoring/PhotoRingMgr;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->photoring_svc_type:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/phone/photoring/PhotoRingMgr;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/photoring/PhotoRingMgr;->photoring_svc_type:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/phone/photoring/PhotoRingMgr;)Lcom/android/phone/PhoneGlobals;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mApp:Lcom/android/phone/PhoneGlobals;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/photoring/PhotoRingMgr;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->photoring_rcv_num:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/photoring/PhotoRingMgr;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mIncomingCallContentDownloadStarted:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/phone/photoring/PhotoRingMgr;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mIncomingCallContentDownloadStarted:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/phone/photoring/PhotoRingMgr;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mcid_chg_key:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/phone/photoring/PhotoRingMgr;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mcid_chg_key:Ljava/lang/String;

    return-object p1
.end method

.method private englog(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/phone/photoring/PhotoRingMgr;->DBG:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/phone/photoring/PhotoRingMgr;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/android/phone/photoring/PhotoRingMgr;
    .locals 1

    sget-object v0, Lcom/android/phone/photoring/PhotoRingMgr;->sMe:Lcom/android/phone/photoring/PhotoRingMgr;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/phone/photoring/PhotoRingMgr;->init()Lcom/android/phone/photoring/PhotoRingMgr;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/phone/photoring/PhotoRingMgr;->sMe:Lcom/android/phone/photoring/PhotoRingMgr;

    goto :goto_0
.end method

.method static init()Lcom/android/phone/photoring/PhotoRingMgr;
    .locals 4

    const-class v1, Lcom/android/phone/photoring/PhotoRingMgr;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/phone/photoring/PhotoRingMgr;->sMe:Lcom/android/phone/photoring/PhotoRingMgr;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/photoring/PhotoRingMgr;

    invoke-direct {v0}, Lcom/android/phone/photoring/PhotoRingMgr;-><init>()V

    sput-object v0, Lcom/android/phone/photoring/PhotoRingMgr;->sMe:Lcom/android/phone/photoring/PhotoRingMgr;

    :goto_0
    sget-object v0, Lcom/android/phone/photoring/PhotoRingMgr;->sMe:Lcom/android/phone/photoring/PhotoRingMgr;

    monitor-exit v1

    return-object v0

    :cond_0
    const-string v0, "PhotoRingMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/photoring/PhotoRingMgr;->sMe:Lcom/android/phone/photoring/PhotoRingMgr;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "PhotoRingMgr"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private readContent(Ljava/lang/String;)Landroid/net/Uri;
    .locals 14

    const-string v11, "PhotoRingMgr"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "readContent path : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v11, "yyMMddHHmmssSSS"

    invoke-direct {v1, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "showme"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    new-instance v12, Ljava/util/Date;

    invoke-direct {v12}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".png"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/android/phone/photoring/PhotoRingMgr;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v12

    long-to-int v3, v12

    new-array v11, v3, [B

    iput-object v11, p0, Lcom/android/phone/photoring/PhotoRingMgr;->showmeContentData:[B

    const-string v11, "PhotoRingMgr"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "readContent showmeFileName : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", length : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/android/phone/photoring/PhotoRingMgr;->showmeContentData:[B

    invoke-virtual {v7, v11}, Ljava/io/FileInputStream;->read([B)I

    const-string v11, "PhotoRingMgr"

    const-string v12, "readContent read bmp"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-object v6, v7

    :cond_0
    :goto_0
    const-string v11, "PhotoRingMgr"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "shomwmeUri = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    :try_start_2
    iget-object v11, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v8

    :goto_1
    if-eqz v8, :cond_1

    :try_start_3
    iget-object v11, p0, Lcom/android/phone/photoring/PhotoRingMgr;->showmeContentData:[B

    invoke-virtual {v8, v11}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_1
    :goto_2
    return-object v10

    :catch_0
    move-exception v5

    :goto_3
    const-string v11, "PhotoRingMgr"

    const-string v12, "bmp read fail"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    if-eqz v6, :cond_0

    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_4
    move-exception v5

    move-object v6, v7

    goto :goto_3
.end method

.method private updateState(Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;Z)V
    .locals 6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateState() state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/photoring/PhotoRingMgr;->log(Ljava/lang/String;)V

    const-string v3, "ims_support_multimedia_caller_id"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mService:Lcom/android/services/telephony/common/IMCIDService;

    if-eqz v3, :cond_2

    :try_start_0
    iget-object v4, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mService:Lcom/android/services/telephony/common/IMCIDService;

    invoke-virtual {p1}, Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;->ordinal()I

    move-result v5

    if-eqz p2, :cond_4

    const/4 v3, 0x1

    :goto_1
    invoke-interface {v4, v5, v3}, Lcom/android/services/telephony/common/IMCIDService;->updatePhotoringState(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    sget-object v3, Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;->PHOTORING_NONE:Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;

    if-ne p1, v3, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoRingMgr;->interruptDownload()V

    iget-object v3, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "photoring_content"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "photoring_content"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0, v1}, Lcom/android/phone/photoring/PhotoRingMgr;->deleteContentFile(Ljava/lang/String;)Z

    :cond_3
    sget-object v3, Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;->PHOTORING_CONTENT_DOWNLOADED:Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;

    if-ne p1, v3, :cond_0

    const-string v3, "support_ollehphone"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isOllehPhoneEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v3, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "photoring_content"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "uri"

    invoke-direct {p0, v1}, Lcom/android/phone/photoring/PhotoRingMgr;->readContent(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "text"

    iget-object v4, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mcidMessage:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "downloadable"

    invoke-static {}, Lcom/android/phone/photoring/PhotoringUtil;->getDownloadableValue()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "b2c"

    invoke-static {}, Lcom/android/phone/photoring/PhotoringUtil;->getB2C()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "minfo"

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "phoneNumber"

    iget-object v4, p0, Lcom/android/phone/photoring/PhotoRingMgr;->photoring_rcv_num:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call sendShowMeContentsReceived uri : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", text : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mcidMessage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", downloaable : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/phone/photoring/PhotoringUtil;->getDownloadableValue()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", b2c : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/phone/photoring/PhotoringUtil;->getB2C()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/photoring/PhotoRingMgr;->englog(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/phone/OllehPhoneService;->getInstance()Lcom/android/phone/OllehPhoneService;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/phone/OllehPhoneService;->sendShowMeContentsReceived(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_1

    :catch_0
    move-exception v2

    const-string v3, "PhotoRingMgr"

    const-string v4, "update Failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2
.end method


# virtual methods
.method public checkMCID(Lcom/android/internal/telephony/Connection;)V
    .locals 22

    const-string v19, "ims_support_multimedia_caller_id"

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_6

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/SystemDBInterface;->setMcidBlockedNumber(I)V

    if-eqz p1, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/phone/photoring/PhotoringUtil;->isPhotoringBlockNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_0

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/SystemDBInterface;->setMcidBlockedNumber(I)V

    const-string v19, "Photoring blocked number"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/phone/photoring/PhotoRingMgr;->log(Ljava/lang/String;)V

    :cond_0
    if-eqz v7, :cond_5

    const-string v19, "photoring_available"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v19, "alertinfo"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v19, "19;CNAP"

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1

    const-string v19, "30;CNAP2"

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    :cond_1
    const-string v19, "19;CNAP"

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    const-string v19, "0"

    :goto_0
    invoke-static/range {v19 .. v19}, Lcom/android/phone/photoring/PhotoringUtil;->setServicetypeValue(Ljava/lang/String;)V

    const/4 v4, 0x1

    :cond_2
    if-eqz v3, :cond_5

    const/4 v4, 0x1

    invoke-static {v3}, Lcom/android/phone/photoring/PhotoringUtil;->refleshAlertInfoValue(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_3

    const/4 v4, 0x0

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v17

    const/16 v19, 0x2

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_4

    const/16 v19, 0x3

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    :cond_4
    const/4 v4, 0x0

    :cond_5
    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "photoring_reject_all"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/photoring/PhotoRingMgr;->mcidMessage:Ljava/lang/String;

    if-nez v18, :cond_6

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->getDataSelectionEnableSet()Z

    move-result v19

    if-nez v19, :cond_8

    sget-object v19, Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;->PHOTORING_MOBILE_DATA_OFF:Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;

    invoke-static {}, Lcom/android/phone/photoring/PhotoringUtil;->isPhotoringBlockNumber()Z

    move-result v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/phone/photoring/PhotoRingMgr;->updateState(Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;Z)V

    :cond_6
    :goto_1
    return-void

    :cond_7
    const-string v19, "1"

    goto :goto_0

    :cond_8
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/photoring/PhotoRingMgr;->photoring_rcv_num:Ljava/lang/String;

    if-eqz v3, :cond_c

    invoke-static {}, Lcom/android/phone/photoring/PhotoringUtil;->getContentUrl()Ljava/lang/String;

    move-result-object v8

    const-string v11, ".png"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "/data/data/com.android.phone/files/photoring_content"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "photoring_content"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v12, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-static {}, Lcom/android/phone/photoring/PhotoringUtil;->isPhotoringBlockNumber()Z

    move-result v19

    if-nez v19, :cond_6

    new-instance v9, Lcom/android/phone/photoring/PhotoRingDB;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Lcom/android/phone/photoring/PhotoRingDB;-><init>(Landroid/content/Context;)V

    const/16 v19, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v9, v0, v8, v1}, Lcom/android/phone/photoring/PhotoRingDB;->getCacheData(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_9

    new-instance v6, Ljava/io/File;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "/data/data/com.android.phone/files/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_9
    if-eqz v6, :cond_b

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_b

    const-string v19, "cached data"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/phone/photoring/PhotoRingMgr;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "/data/data/com.android.phone/files/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v12}, Lcom/android/phone/photoring/PhotoringUtil;->copyFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v19, "feature_ktt"

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "key_photoring_mt_content_url"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "photoring_content"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v13}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v19, Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;->PHOTORING_CONTENT_DOWNLOADED:Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;

    invoke-static {}, Lcom/android/phone/photoring/PhotoringUtil;->isPhotoringBlockNumber()Z

    move-result v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/phone/photoring/PhotoRingMgr;->updateState(Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;Z)V

    :goto_3
    invoke-virtual {v9}, Lcom/android/phone/photoring/PhotoRingDB;->close()V

    goto/16 :goto_1

    :catch_0
    move-exception v10

    const-string v19, "make file failed"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/phone/photoring/PhotoRingMgr;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_b
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/photoring/PhotoRingMgr;->prcheckmcidstarted:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v13}, Lcom/android/phone/photoring/PhotoRingMgr;->downloadContent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/phone/photoring/PhotoRingMgr;->getCallMessageCall(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public deleteContentFile(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public deleteMcidInfo()V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/phone/photoring/PhotoringUtil;->setContentUrl(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/phone/photoring/PhotoringUtil;->setChgUrl(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/services/telephony/common/SystemDBInterface;->setMcidDownloadable(I)V

    return-void
.end method

.method public deregisterCallMessageNetworkListener(Lcom/android/phone/photoring/ICallMessageNetworkListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mCallmessageNetwork:Lcom/android/phone/photoring/CallMessageNetwork;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mCallmessageNetwork:Lcom/android/phone/photoring/CallMessageNetwork;

    invoke-virtual {v0, p1}, Lcom/android/phone/photoring/CallMessageNetwork;->deregisterCallMessageNetworkListener(Lcom/android/phone/photoring/ICallMessageNetworkListener;)V

    :cond_0
    return-void
.end method

.method public downloadContent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mCallmessageNetwork:Lcom/android/phone/photoring/CallMessageNetwork;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mCallmessageNetwork:Lcom/android/phone/photoring/CallMessageNetwork;

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/photoring/CallMessageNetwork;->downloadContent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getAlertInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mCallmessageNetwork:Lcom/android/phone/photoring/CallMessageNetwork;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mCallmessageNetwork:Lcom/android/phone/photoring/CallMessageNetwork;

    invoke-virtual {v0}, Lcom/android/phone/photoring/CallMessageNetwork;->getAlertInfo()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCallMessageCall(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mCallmessageNetwork:Lcom/android/phone/photoring/CallMessageNetwork;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mCallmessageNetwork:Lcom/android/phone/photoring/CallMessageNetwork;

    invoke-virtual {v0, p1}, Lcom/android/phone/photoring/CallMessageNetwork;->getCallMessageCall(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getCallMessageChgCall()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mCallmessageNetwork:Lcom/android/phone/photoring/CallMessageNetwork;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mCallmessageNetwork:Lcom/android/phone/photoring/CallMessageNetwork;

    invoke-virtual {v0}, Lcom/android/phone/photoring/CallMessageNetwork;->getCallMessageChgCall()V

    :cond_0
    return-void
.end method

.method public getCallMessageChgCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mCallmessageNetwork:Lcom/android/phone/photoring/CallMessageNetwork;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mCallmessageNetwork:Lcom/android/phone/photoring/CallMessageNetwork;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/phone/photoring/CallMessageNetwork;->getCallMessageChgCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getContentSpecCall()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mCallmessageNetwork:Lcom/android/phone/photoring/CallMessageNetwork;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mCallmessageNetwork:Lcom/android/phone/photoring/CallMessageNetwork;

    invoke-virtual {v0}, Lcom/android/phone/photoring/CallMessageNetwork;->getContentSpecCall()V

    :cond_0
    return-void
.end method

.method public getNumberFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3

    const-string v1, "getInitialListFromIntent - enter"

    invoke-direct {p0, v1}, Lcom/android/phone/photoring/PhotoRingMgr;->log(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    const-string v1, "dest_number"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "dest_number"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInitialListFromIntent savedNumber : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/photoring/PhotoRingMgr;->englog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public interruptDownload()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mCallmessageNetwork:Lcom/android/phone/photoring/CallMessageNetwork;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mCallmessageNetwork:Lcom/android/phone/photoring/CallMessageNetwork;

    invoke-virtual {v0}, Lcom/android/phone/photoring/CallMessageNetwork;->interruptDownload()V

    :cond_0
    return-void
.end method

.method public registerCallMessageNetworkListener(Lcom/android/phone/photoring/ICallMessageNetworkListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mCallmessageNetwork:Lcom/android/phone/photoring/CallMessageNetwork;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mCallmessageNetwork:Lcom/android/phone/photoring/CallMessageNetwork;

    invoke-virtual {v0, p1}, Lcom/android/phone/photoring/CallMessageNetwork;->registerCallMessageNetworkListener(Lcom/android/phone/photoring/ICallMessageNetworkListener;)V

    :cond_0
    return-void
.end method

.method public resetState()V
    .locals 2

    sget-object v0, Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;->PHOTORING_NONE:Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/photoring/PhotoRingMgr;->updateState(Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;Z)V

    return-void
.end method

.method public setRealtimeServiceInfoCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mCallmessageNetwork:Lcom/android/phone/photoring/CallMessageNetwork;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mCallmessageNetwork:Lcom/android/phone/photoring/CallMessageNetwork;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/phone/photoring/CallMessageNetwork;->setRealtimeServiceInfoCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateMcidIntentForCallState(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Connection;)V
    .locals 20

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v16

    const/4 v5, 0x0

    const/4 v13, 0x0

    const/4 v2, 0x0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v18

    sget-object v19, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_7

    move-object/from16 v4, v16

    :goto_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v18

    if-nez v18, :cond_0

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v18

    if-eqz v18, :cond_8

    :cond_0
    const/4 v13, 0x1

    :goto_1
    invoke-static {v4}, Lcom/android/phone/photoring/PhotoringUtil;->convertToMcidCallState(Lcom/android/internal/telephony/Call;)I

    move-result v2

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object p2

    :cond_1
    const/4 v3, 0x0

    const/4 v15, 0x0

    invoke-static {}, Lcom/android/phone/photoring/PhotoringUtil;->getDownloadableValue()Z

    move-result v14

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/phone/photoring/PhotoringUtil;->getContentUrl()Ljava/lang/String;

    move-result-object v8

    const-string v6, "VOICE"

    if-eqz v5, :cond_2

    iget v0, v5, Lcom/android/internal/telephony/CallDetails;->call_type:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    const-string v6, "VIDEO"

    :cond_2
    :goto_2
    if-eqz p2, :cond_3

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v7

    :cond_3
    if-eqz v8, :cond_4

    invoke-static {}, Lcom/android/phone/photoring/PhotoringUtil;->isPhotoringBlockNumber()Z

    move-result v18

    if-nez v18, :cond_4

    const/4 v3, 0x1

    :cond_4
    new-instance v12, Landroid/content/Intent;

    const-string v18, "com.kt.call.action.CALL_EVENT"

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v18, "state"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v18, "type"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v18, "showme"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v18, "address"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    if-eqz v3, :cond_5

    new-instance v17, Landroid/content/Intent;

    const-string v18, "com.kt.call.action.SHOWME_DATA"

    invoke-direct/range {v17 .. v18}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v18, "text"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v10, 0x0

    :try_start_0
    invoke-static {v8}, Lcom/android/phone/photoring/http/AES256Cipher;->encrypt(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    :goto_3
    const-string v18, "content_url"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v18, "downloadable"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_5
    const-string v18, "eng"

    sget-object v19, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "McidCallstate : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/photoring/PhotoRingMgr;->log(Ljava/lang/String;)V

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "type    : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/photoring/PhotoRingMgr;->log(Ljava/lang/String;)V

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "showme        : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/photoring/PhotoRingMgr;->log(Ljava/lang/String;)V

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "address      : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/photoring/PhotoRingMgr;->log(Ljava/lang/String;)V

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "text        : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/photoring/PhotoRingMgr;->log(Ljava/lang/String;)V

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "content_url         : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/photoring/PhotoRingMgr;->log(Ljava/lang/String;)V

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "downloadable      : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/photoring/PhotoRingMgr;->log(Ljava/lang/String;)V

    :cond_6
    return-void

    :cond_7
    move-object v4, v11

    goto/16 :goto_0

    :cond_8
    const/4 v13, 0x0

    goto/16 :goto_1

    :cond_9
    const-string v6, "VOICE"

    goto/16 :goto_2

    :catch_0
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3
.end method

.method public uploadContentCall(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mCallmessageNetwork:Lcom/android/phone/photoring/CallMessageNetwork;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mCallmessageNetwork:Lcom/android/phone/photoring/CallMessageNetwork;

    invoke-virtual {v0, p1}, Lcom/android/phone/photoring/CallMessageNetwork;->uploadContentCall(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
