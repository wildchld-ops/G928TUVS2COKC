.class public Lcom/ime/framework/acmanager/ACDownloadManager;
.super Ljava/lang/Object;
.source "ACDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ime/framework/acmanager/ACDownloadManager$ProgressBarThread;,
        Lcom/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;,
        Lcom/ime/framework/acmanager/ACDownloadManager$ProgressBarListener;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x5000

.field public static final CHINESE_HONGKONG:I = 0xe2

.field public static final CHINESE_SIMPLIFIED:I = 0xe1

.field public static final CHINESE_TRADITIONAL:I = 0xe0

.field private static final COMPRESSION_FILE_GZ_EXTENSION:Ljava/lang/String; = ".gz"

.field public static final MSG_UPDATE_PROGRESSBAR:I = 0x0

.field public static final REFRESH_INTERVAL_TIME:I = 0x15180

.field public static final TAG:Ljava/lang/String; = "ACDownloadManager"

.field private static mContext:Landroid/content/Context;

.field private static sInstance:Lcom/ime/framework/acmanager/ACDownloadManager;


# instance fields
.field private config:Lcom/nuance/swypeconnect/ac/ACConfiguration;

.field private device:Lcom/nuance/swypeconnect/ac/ACDeviceService;

.field private dlm:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

.field private language:Lcom/nuance/swypeconnect/ac/ACLanguage;

.field private languageDownload:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

.field private legalText:Ljava/lang/String;

.field private livingAlphaInput:Lcom/nuance/dlm/ACAlphaInput;

.field private livingKoreanInput:Lcom/nuance/dlm/ACKoreanInput;

.field private livingLanguage:Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

.field final livingLanguageCallback:Lcom/nuance/swypeconnect/ac/ACLivingLanguageService$ACLivingLanguageCallback;

.field private mACLanguagesSettings:Lcom/ime/implement/setting/ACLanguagesSettings;

.field private mAppointedDownloadLanguageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mChineseDictManager:Lcom/ime/framework/acmanager/ACChineseDictionaryManager;

.field private mCurrentDownloadId:I

.field private mDownloadCBs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadNotificationBuilder:Landroid/app/Notification$Builder;

.field private mDownloadableLanguageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadableLanguageSharedPreference:Landroid/content/SharedPreferences;

.field private mDownloadableLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

.field private mDownloadedLanguageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadedLanguageSharedPreference:Landroid/content/SharedPreferences;

.field private mDownloadedLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

.field private mDownloadingLanguageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

.field mHandler:Landroid/os/Handler;

.field private mInputManager:Lcom/ime/framework/common/InputManager;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mProgressbarThread:Lcom/ime/framework/acmanager/ACDownloadManager$ProgressBarThread;

.field private mSupportedLanguageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateableLanguageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateableLanguageSharedPreference:Landroid/content/SharedPreferences;

.field private mUpdateableLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

.field private manager:Lcom/nuance/swypeconnect/ac/ACManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/ime/framework/acmanager/ACDownloadManager;->sInstance:Lcom/ime/framework/acmanager/ACDownloadManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    iput-object v1, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadCBs:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mProgressbarThread:Lcom/ime/framework/acmanager/ACDownloadManager$ProgressBarThread;

    new-instance v0, Lcom/ime/framework/acmanager/ACDownloadManager$3;

    invoke-direct {v0, p0}, Lcom/ime/framework/acmanager/ACDownloadManager$3;-><init>(Lcom/ime/framework/acmanager/ACDownloadManager;)V

    iput-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->livingLanguageCallback:Lcom/nuance/swypeconnect/ac/ACLivingLanguageService$ACLivingLanguageCallback;

    new-instance v0, Lcom/ime/framework/acmanager/ACDownloadManager$5;

    invoke-direct {v0, p0}, Lcom/ime/framework/acmanager/ACDownloadManager$5;-><init>(Lcom/ime/framework/acmanager/ACDownloadManager;)V

    iput-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-static {}, Lcom/ime/framework/engine/InputEngineManagerImpl;->getInstance()Lcom/ime/framework/engine/InputEngineManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    sget-object v0, Lcom/ime/framework/acmanager/ACDownloadManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/ime/framework/acmanager/ACDownloadManager;->mContext:Landroid/content/Context;

    :cond_0
    sget-object v0, Lcom/ime/framework/acmanager/ACDownloadManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/ime/framework/acmanager/ACDownloadManager;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mNotificationManager:Landroid/app/NotificationManager;

    new-instance v0, Landroid/app/Notification$Builder;

    sget-object v1, Lcom/ime/framework/acmanager/ACDownloadManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadNotificationBuilder:Landroid/app/Notification$Builder;

    :cond_1
    invoke-direct {p0}, Lcom/ime/framework/acmanager/ACDownloadManager;->initLanguageList()V

    invoke-direct {p0}, Lcom/ime/framework/acmanager/ACDownloadManager;->initSharedPreferences()V

    invoke-direct {p0}, Lcom/ime/framework/acmanager/ACDownloadManager;->setSupportedLanguageList()V

    return-void
.end method

.method static synthetic access$000(Lcom/ime/framework/acmanager/ACDownloadManager;)Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->languageDownload:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ime/framework/acmanager/ACDownloadManager;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadableLanguageList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/ime/framework/acmanager/ACDownloadManager;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ime/framework/acmanager/ACDownloadManager;->modifySharedPreferenceByDownloadLanguage(IZ)V

    return-void
.end method

.method static synthetic access$102(Lcom/ime/framework/acmanager/ACDownloadManager;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadableLanguageList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/ime/framework/acmanager/ACDownloadManager;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/ime/framework/acmanager/ACDownloadManager;)Lcom/ime/framework/engine/InputEngineManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/ime/framework/acmanager/ACDownloadManager;)I
    .locals 1

    iget v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mCurrentDownloadId:I

    return v0
.end method

.method static synthetic access$1302(Lcom/ime/framework/acmanager/ACDownloadManager;I)I
    .locals 0

    iput p1, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mCurrentDownloadId:I

    return p1
.end method

.method static synthetic access$200(Lcom/ime/framework/acmanager/ACDownloadManager;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$202(Lcom/ime/framework/acmanager/ACDownloadManager;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$300(Lcom/ime/framework/acmanager/ACDownloadManager;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mUpdateableLanguageList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$302(Lcom/ime/framework/acmanager/ACDownloadManager;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mUpdateableLanguageList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$400(Lcom/ime/framework/acmanager/ACDownloadManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/ime/framework/acmanager/ACDownloadManager;->setSharedPreferencesList()V

    return-void
.end method

.method static synthetic access$500(Lcom/ime/framework/acmanager/ACDownloadManager;)Lcom/ime/implement/setting/ACLanguagesSettings;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mACLanguagesSettings:Lcom/ime/implement/setting/ACLanguagesSettings;

    return-object v0
.end method

.method static synthetic access$600(Lcom/ime/framework/acmanager/ACDownloadManager;)Lcom/ime/framework/acmanager/ACChineseDictionaryManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mChineseDictManager:Lcom/ime/framework/acmanager/ACChineseDictionaryManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/ime/framework/acmanager/ACDownloadManager;IIZZII)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/ime/framework/acmanager/ACDownloadManager;->createNotification(IIZZII)V

    return-void
.end method

.method static synthetic access$800(Lcom/ime/framework/acmanager/ACDownloadManager;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadingLanguageList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900(Lcom/ime/framework/acmanager/ACDownloadManager;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mAppointedDownloadLanguageList:Ljava/util/List;

    return-object v0
.end method

.method private addExistedLanguageList()V
    .locals 5

    new-instance v3, Ljava/io/File;

    const-string v4, "/system/T9DB"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    array-length v3, v2

    if-lez v3, :cond_0

    const/4 v1, 0x0

    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->languageDownload:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->addExistingLanguage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/ime/framework/acmanager/ACDownloadManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    :try_start_1
    array-length v3, v2

    if-lez v3, :cond_2

    const/4 v1, 0x0

    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".ldb"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->languageDownload:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->addExistingLanguage(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-void
.end method

.method private addSupportedLanguageList()V
    .locals 3

    iget-object v1, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadableLanguageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mSupportedLanguageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->languageDownload:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    iget-object v1, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mSupportedLanguageList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-interface {v2, v1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->addSupportedLanguage(Ljava/lang/Integer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v2, 0x5000

    new-array v1, v2, [B

    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private createNotification(IIZZII)V
    .locals 17

    sget-object v13, Lcom/ime/framework/acmanager/ACDownloadManager;->mContext:Landroid/content/Context;

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/acmanager/ACDownloadManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v13}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0d0158

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz p3, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/acmanager/ACDownloadManager;->mNotificationManager:Landroid/app/NotificationManager;

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_0
    new-instance v6, Landroid/content/Intent;

    const-string v13, "com.ime.framework.engine.xt9.XT9.SETTINGS_ACTIVITY"

    invoke-direct {v6, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v13, Lcom/ime/framework/acmanager/ACDownloadManager;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "com.ime.implement.setting.ACLanguagesSettings"

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v13, 0x20000000

    invoke-virtual {v6, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object v13, Lcom/ime/framework/acmanager/ACDownloadManager;->mContext:Landroid/content/Context;

    const/4 v14, 0x0

    const/high16 v15, 0x8000000

    invoke-static {v13, v14, v6, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    const/4 v9, 0x0

    const/4 v11, -0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/acmanager/ACDownloadManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v13}, Lcom/ime/framework/common/InputManager;->getXt9DownloadableLanguageList()[Lcom/ime/framework/common/Language;

    move-result-object v9

    move-object v2, v9

    array-length v10, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v10, :cond_1

    aget-object v7, v2, v5

    invoke-virtual {v7}, Lcom/ime/framework/common/Language;->getId()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadableLanguageSharedPreference:Landroid/content/SharedPreferences;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, -0x1

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    move/from16 v0, p2

    if-ne v11, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadNotificationBuilder:Landroid/app/Notification$Builder;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcom/ime/framework/acmanager/ACDownloadManager;->mContext:Landroid/content/Context;

    const v16, 0x7f0d0008

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v7}, Lcom/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v13, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadNotificationBuilder:Landroid/app/Notification$Builder;

    move/from16 v0, p4

    invoke-virtual {v13, v0}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    if-eqz p4, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadNotificationBuilder:Landroid/app/Notification$Builder;

    const v14, 0x1080081

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadNotificationBuilder:Landroid/app/Notification$Builder;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v15, p6, 0x64

    div-int v15, v15, p5

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "%,"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v14, 0x0

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-virtual {v13, v0, v1, v14}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/acmanager/ACDownloadManager;->mNotificationManager:Landroid/app/NotificationManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v14}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v13, v0, v14}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/acmanager/ACDownloadManager;->mUpdateableLanguageSharedPreference:Landroid/content/SharedPreferences;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, -0x1

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    move/from16 v0, p2

    if-ne v11, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadNotificationBuilder:Landroid/app/Notification$Builder;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcom/ime/framework/acmanager/ACDownloadManager;->mContext:Landroid/content/Context;

    const v16, 0x7f0d0008

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v7}, Lcom/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto/16 :goto_1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadNotificationBuilder:Landroid/app/Notification$Builder;

    const v14, 0x1080082

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v13, v12}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    goto :goto_2
.end method

.method private getXt9LanguageId(I)I
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1}, Lcom/ime/framework/engine/InputEngineManager;->getXt9LanguageId(I)I

    move-result v0

    return v0
.end method

.method private initLanguageList()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mSupportedLanguageList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadableLanguageList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadingLanguageList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mUpdateableLanguageList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mAppointedDownloadLanguageList:Ljava/util/List;

    return-void
.end method

.method private initLivingLanguageService()V
    .locals 4

    sget-object v2, Lcom/ime/framework/acmanager/ACDownloadManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->livingLanguage:Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    const-string v3, "LIVING_LANGUAGE"

    invoke-virtual {v2, v3}, Lcom/nuance/swypeconnect/ac/ACManager;->getService(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACService;

    move-result-object v2

    check-cast v2, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    iput-object v2, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->livingLanguage:Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    iget-object v2, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->livingLanguage:Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    iget-object v3, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->livingLanguageCallback:Lcom/nuance/swypeconnect/ac/ACLivingLanguageService$ACLivingLanguageCallback;

    invoke-virtual {v2, v3}, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->registerCallback(Lcom/nuance/swypeconnect/ac/ACLivingLanguageService$ACLivingLanguageCallback;)V

    :cond_0
    iget-object v2, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->dlm:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACManager;->getDLMConnector()Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    move-result-object v2

    iput-object v2, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->dlm:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    const-string v2, "ACDownloadManager"

    const-string v3, "get dlmService"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->livingLanguage:Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->disableLivingLanguage()V
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v2, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->livingLanguage:Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->dlm:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    if-nez v2, :cond_2

    :cond_2
    return-void

    :catch_0
    move-exception v0

    const-string v2, "ACDownloadManager"

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initSharedPreferences()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/ime/framework/acmanager/ACDownloadManager;->mContext:Landroid/content/Context;

    const-string v1, "downloadable"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadableLanguageSharedPreference:Landroid/content/SharedPreferences;

    sget-object v0, Lcom/ime/framework/acmanager/ACDownloadManager;->mContext:Landroid/content/Context;

    const-string v1, "downloaded"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageSharedPreference:Landroid/content/SharedPreferences;

    sget-object v0, Lcom/ime/framework/acmanager/ACDownloadManager;->mContext:Landroid/content/Context;

    const-string v1, "updateable"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mUpdateableLanguageSharedPreference:Landroid/content/SharedPreferences;

    return-void
.end method

.method private modifySharedPreferenceByDeleteLanguage(I)V
    .locals 9

    iget-object v7, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadableLanguageSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    iput-object v7, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadableLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v7, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    iput-object v7, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v7, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mUpdateableLanguageSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    iput-object v7, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mUpdateableLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    const/4 v4, 0x0

    const/4 v6, -0x1

    iget-object v7, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->getXt9DownloadableLanguageList()[Lcom/ime/framework/common/Language;

    move-result-object v4

    move-object v0, v4

    array-length v5, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v5, :cond_0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/ime/framework/common/Language;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageSharedPreference:Landroid/content/SharedPreferences;

    const/4 v8, -0x1

    invoke-interface {v7, v3, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, p1, :cond_1

    iget-object v7, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v7, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v7, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadableLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v7, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v7, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mUpdateableLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v7, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_0
    iget-object v7, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadableLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v7, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v7, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mUpdateableLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private modifySharedPreferenceByDownloadLanguage(IZ)V
    .locals 11

    const/4 v10, -0x1

    iget-object v8, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadableLanguageSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    iput-object v8, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadableLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v8, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    iput-object v8, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v8, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mUpdateableLanguageSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    iput-object v8, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mUpdateableLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    const/4 v5, 0x0

    const/4 v7, -0x1

    const/high16 v8, 0x66720000

    invoke-direct {p0, v8}, Lcom/ime/framework/acmanager/ACDownloadManager;->getXt9LanguageId(I)I

    move-result v1

    iget-object v8, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getXt9DownloadableLanguageList()[Lcom/ime/framework/common/Language;

    move-result-object v5

    move-object v0, v5

    array-length v6, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v6, :cond_5

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/ime/framework/common/Language;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget-object v8, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadableLanguageSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v8, v4, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-ne p1, v1, :cond_3

    if-eqz p2, :cond_1

    iget-object v8, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mUpdateableLanguageSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v8, v4, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, p1, :cond_0

    iget-object v8, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v8, v4, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-eq v8, v10, :cond_0

    iget-object v8, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mUpdateableLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v8, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8, v4, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-ne v7, p1, :cond_2

    iget-object v8, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadableLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v8, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8, v4, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_2
    iget-object v8, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mUpdateableLanguageSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v8, v4, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, p1, :cond_0

    iget-object v8, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mUpdateableLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v8, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8, v4, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_3
    if-eq v7, p1, :cond_4

    iget-object v8, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    :cond_4
    iget-object v8, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadableLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v8, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8, v4, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_5
    :goto_2
    iget-object v8, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadableLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v8, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v8, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mUpdateableLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_6
    iget-object v8, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mUpdateableLanguageSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v8, v4, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, p1, :cond_0

    iget-object v8, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mUpdateableLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2
.end method

.method public static declared-synchronized newInstance()Lcom/ime/framework/acmanager/ACDownloadManager;
    .locals 2

    const-class v1, Lcom/ime/framework/acmanager/ACDownloadManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ime/framework/acmanager/ACDownloadManager;->sInstance:Lcom/ime/framework/acmanager/ACDownloadManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ime/framework/acmanager/ACDownloadManager;

    invoke-direct {v0}, Lcom/ime/framework/acmanager/ACDownloadManager;-><init>()V

    sput-object v0, Lcom/ime/framework/acmanager/ACDownloadManager;->sInstance:Lcom/ime/framework/acmanager/ACDownloadManager;

    :cond_0
    sget-object v0, Lcom/ime/framework/acmanager/ACDownloadManager;->sInstance:Lcom/ime/framework/acmanager/ACDownloadManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized newInstance(Landroid/content/Context;)Lcom/ime/framework/acmanager/ACDownloadManager;
    .locals 2

    const-class v1, Lcom/ime/framework/acmanager/ACDownloadManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ime/framework/acmanager/ACDownloadManager;->sInstance:Lcom/ime/framework/acmanager/ACDownloadManager;

    if-nez v0, :cond_0

    sput-object p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/ime/framework/acmanager/ACDownloadManager;

    invoke-direct {v0}, Lcom/ime/framework/acmanager/ACDownloadManager;-><init>()V

    sput-object v0, Lcom/ime/framework/acmanager/ACDownloadManager;->sInstance:Lcom/ime/framework/acmanager/ACDownloadManager;

    :cond_0
    sget-object v0, Lcom/ime/framework/acmanager/ACDownloadManager;->sInstance:Lcom/ime/framework/acmanager/ACDownloadManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setDownloadedListFromSharedPreference()V
    .locals 11

    const/4 v10, -0x1

    const/4 v4, 0x0

    const/4 v7, -0x1

    const/4 v6, -0x1

    iget-object v8, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getXt9DownloadableLanguageList()[Lcom/ime/framework/common/Language;

    move-result-object v4

    move-object v0, v4

    array-length v5, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/ime/framework/common/Language;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/ime/framework/common/Language;->getId()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/ime/framework/acmanager/ACDownloadManager;->getXt9LanguageId(I)I

    move-result v7

    iget-object v8, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v8, v3, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-eq v6, v10, :cond_0

    iget-object v8, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageList:Ljava/util/List;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setSharedPreferencesList()V
    .locals 12

    const v11, 0x66724652

    const v10, 0x66724341

    const/4 v9, -0x1

    iget-object v7, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadableLanguageSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    iput-object v7, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadableLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v7, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    iput-object v7, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v7, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mUpdateableLanguageSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    iput-object v7, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mUpdateableLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v7, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadableLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    iget-object v7, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    iget-object v7, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mUpdateableLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    const/4 v4, 0x0

    const/4 v6, -0x1

    iget-object v7, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->getXt9DownloadableLanguageList()[Lcom/ime/framework/common/Language;

    move-result-object v4

    move-object v0, v4

    array-length v5, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v5, :cond_6

    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/ime/framework/common/Language;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/ime/framework/common/Language;->getId()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/ime/framework/acmanager/ACDownloadManager;->getXt9LanguageId(I)I

    move-result v6

    iget-object v7, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadableLanguageList:Ljava/util/List;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadableLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v7, v3, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_0
    iget-object v7, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageList:Ljava/util/List;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/high16 v7, 0x66720000

    invoke-direct {p0, v7}, Lcom/ime/framework/acmanager/ACDownloadManager;->getXt9LanguageId(I)I

    move-result v7

    if-ne v6, v7, :cond_5

    iget-object v7, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageSharedPreference:Landroid/content/SharedPreferences;

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v9, :cond_3

    iget-object v7, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageSharedPreference:Landroid/content/SharedPreferences;

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v9, :cond_3

    iget-object v7, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v7, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_1
    :goto_1
    iget-object v7, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mUpdateableLanguageList:Ljava/util/List;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mUpdateableLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v7, v3, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v7, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v7, v3, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-eq v7, v9, :cond_4

    iget-object v7, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v7, v3, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_4
    iget-object v7, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadableLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v7, v3, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_5
    iget-object v7, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v7, v3, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_6
    iget-object v7, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadableLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v7, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v7, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mUpdateableLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private setSupportedLanguageList()V
    .locals 8

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getXt9DownloadableLanguageList()[Lcom/ime/framework/common/Language;

    move-result-object v4

    const/16 v3, 0x100

    move-object v0, v4

    array-length v5, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/ime/framework/common/Language;->getId()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/ime/framework/acmanager/ACDownloadManager;->getXt9LanguageId(I)I

    move-result v3

    iget-object v6, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mSupportedLanguageList:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mSupportedLanguageList:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public cancelDownload(I)V
    .locals 8

    const/4 v4, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->languageDownload:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    invoke-interface {v0, p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->cancelDownload(I)V
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadingLanguageList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadingLanguageList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mAppointedDownloadLanguageList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mAppointedDownloadLanguageList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadableLanguageList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadableLanguageList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const v1, 0x7f0d015c

    const/4 v3, 0x1

    move-object v0, p0

    move v2, p1

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/ime/framework/acmanager/ACDownloadManager;->createNotification(IIZZII)V

    return-void

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Lcom/nuance/swypeconnect/ac/ACException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method protected deleteCacheTempFile(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_0
.end method

.method public deleteLanguage(I)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->languageDownload:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    invoke-interface {v1, p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->languageUninstalled(I)V
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mUpdateableLanguageList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mUpdateableLanguageList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    invoke-direct {p0, p1}, Lcom/ime/framework/acmanager/ACDownloadManager;->modifySharedPreferenceByDeleteLanguage(I)V

    iget-object v1, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v1, p1}, Lcom/ime/framework/engine/InputEngineManager;->updateLdbListDelete(I)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACException;->printStackTrace()V

    goto :goto_0
.end method

.method public download(I)Z
    .locals 5

    const-string v2, "ACDownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACDownloadManager download id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->languageDownload:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    iget-object v2, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadCBs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;

    if-nez v0, :cond_1

    new-instance v0, Lcom/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;-><init>(Lcom/ime/framework/acmanager/ACDownloadManager;Lcom/ime/framework/acmanager/ACDownloadManager$1;)V

    iget-object v2, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadCBs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v2, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mAppointedDownloadLanguageList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    packed-switch p1, :pswitch_data_0

    :try_start_0
    iget-object v2, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->languageDownload:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    invoke-interface {v2, p1, v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->downloadLanguage(ILcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;)V

    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->languageDownload:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    const-string v3, "Big5_bpmf_pinyin_CJ_xt9_big"

    invoke-interface {v2, p1, v3, v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->downloadLanguageFlavor(ILjava/lang/String;Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;)V
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACException;->printStackTrace()V

    goto :goto_1

    :pswitch_1
    :try_start_1
    iget-object v2, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->languageDownload:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    const-string v3, "GB18030_xt9_big"

    invoke-interface {v2, p1, v3, v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->downloadLanguageFlavor(ILjava/lang/String;Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;)V

    goto :goto_1

    :pswitch_2
    iget-object v2, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->languageDownload:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    const-string v3, "Big5HKSCS_bpmf_pinyin_CJ_xt9_big"

    invoke-interface {v2, p1, v3, v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->downloadLanguageFlavor(ILjava/lang/String;Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;)V
    :try_end_1
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0xe0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public dummyDownload(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/ime/framework/acmanager/ACDownloadManager$ProgressBarListener;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadCBs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;-><init>(Lcom/ime/framework/acmanager/ACDownloadManager;Lcom/ime/framework/acmanager/ACDownloadManager$1;)V

    iget-object v1, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadCBs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p2, p1}, Lcom/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->register(Ljava/util/List;I)V

    invoke-virtual {p0, v0}, Lcom/ime/framework/acmanager/ACDownloadManager;->startProgressBarThread(Lcom/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;)V

    :cond_1
    return-void
.end method

.method protected extractFiles(Ljava/io/File;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    const/4 v7, 0x0

    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v8, Ljava/util/zip/ZipInputStream;

    new-instance v14, Ljava/io/BufferedInputStream;

    const/16 v15, 0x5000

    invoke-direct {v14, v6, v15}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v8, v14}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    sget-object v14, Lcom/ime/framework/acmanager/ACDownloadManager;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    :cond_0
    const/16 v14, 0x5000

    new-array v5, v14, [B

    :goto_0
    invoke-virtual {v8}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v11

    if-eqz v11, :cond_3

    invoke-virtual {v11}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    new-instance v12, Ljava/io/BufferedOutputStream;

    const/16 v14, 0x5000

    invoke-direct {v12, v10, v14}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    :try_start_2
    invoke-virtual {v8, v5}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v1

    const/4 v14, -0x1

    if-eq v1, v14, :cond_2

    const/4 v14, 0x0

    invoke-virtual {v12, v5, v14, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v14

    :try_start_3
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V

    throw v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v14

    move-object v7, v8

    :goto_2
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/util/zip/ZipInputStream;->close()V

    :cond_1
    throw v14

    :cond_2
    :try_start_4
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :cond_3
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/util/zip/ZipInputStream;->close()V

    :cond_4
    return-object v3

    :catchall_2
    move-exception v14

    goto :goto_2
.end method

.method protected extractFileswithGZIP(Ljava/io/File;)Ljava/util/List;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    const/4 v13, 0x0

    :try_start_0
    new-instance v12, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v14, Ljava/util/zip/ZipInputStream;

    new-instance v23, Ljava/io/BufferedInputStream;

    const/16 v24, 0x5000

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v0, v12, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object/from16 v0, v23

    invoke-direct {v14, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v23, Lcom/ime/framework/acmanager/ACDownloadManager;->mContext:Landroid/content/Context;

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v23

    if-nez v23, :cond_0

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    :cond_0
    const/16 v23, 0x5000

    move/from16 v0, v23

    new-array v9, v0, [B

    :goto_0
    invoke-virtual {v14}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v16

    if-eqz v16, :cond_6

    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v15

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v17, Ljava/io/FileOutputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    new-instance v18, Ljava/io/BufferedOutputStream;

    const/16 v23, 0x5000

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    :goto_1
    invoke-virtual {v14, v9}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v5

    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v5, v0, :cond_2

    const/16 v23, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v9, v1, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v23

    move-object v13, v14

    :goto_2
    if-eqz v13, :cond_1

    invoke-virtual {v13}, Ljava/util/zip/ZipInputStream;->close()V

    :cond_1
    throw v23

    :cond_2
    :try_start_2
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->close()V

    const-string v23, ".gz"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_5

    const/16 v20, 0x0

    const-string v23, ".gz"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_3

    const/16 v23, 0x0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v24

    const-string v25, ".gz"

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    sub-int v24, v24, v25

    move-object/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    :cond_3
    new-instance v22, Ljava/io/File;

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v11, Ljava/io/FileInputStream;

    move-object/from16 v0, v22

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v10, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v10, v11}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    if-eqz v10, :cond_4

    new-instance v3, Ljava/io/BufferedInputStream;

    const/16 v23, 0x5000

    move/from16 v0, v23

    invoke-direct {v3, v10, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    new-instance v21, Ljava/io/FileOutputStream;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/BufferedOutputStream;

    const/16 v23, 0x5000

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-direct {v4, v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/ime/framework/acmanager/ACDownloadManager;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    :cond_4
    move-object/from16 v19, v20

    :cond_5
    move-object/from16 v0, v19

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :cond_6
    if-eqz v14, :cond_7

    invoke-virtual {v14}, Ljava/util/zip/ZipInputStream;->close()V

    :cond_7
    return-object v7

    :catchall_1
    move-exception v23

    goto/16 :goto_2
.end method

.method public getACManager()Lcom/nuance/swypeconnect/ac/ACManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/ime/framework/acmanager/ACDownloadManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/SamsungKeypadApplication;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/SamsungKeypadApplication;->getACSDKManager()Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    return-object v0
.end method

.method public getAppointedDownloadLanguageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mAppointedDownloadLanguageList:Ljava/util/List;

    return-object v0
.end method

.method public getDownloadableLanguageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadableLanguageList:Ljava/util/List;

    return-object v0
.end method

.method public getDownloadedLanguageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageList:Ljava/util/List;

    return-object v0
.end method

.method public getDownloadingLanguageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadingLanguageList:Ljava/util/List;

    return-object v0
.end method

.method public getKeyboardLanguageManager()Lcom/nuance/swypeconnect/ac/ACManager;
    .locals 9

    const/4 v8, 0x3

    iget-object v4, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    if-nez v4, :cond_2

    sget-object v4, Lcom/ime/framework/acmanager/ACDownloadManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/sec/android/inputmethod/SamsungKeypadApplication;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/SamsungKeypadApplication;->getACSDKManager()Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v4

    iput-object v4, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    iget-object v4, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v4}, Lcom/nuance/swypeconnect/ac/ACManager;->getConfiguration()Lcom/nuance/swypeconnect/ac/ACConfiguration;

    move-result-object v4

    const-string v5, "EXAMPLESTRING"

    invoke-virtual {v4, v5}, Lcom/nuance/swypeconnect/ac/ACConfiguration;->setCustomerString(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v4}, Lcom/nuance/swypeconnect/ac/ACManager;->getLegalDocuments()Lcom/nuance/swypeconnect/ac/ACLegalDocuments;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/nuance/swypeconnect/ac/ACLegalDocuments;->getTOS()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->legalText:Ljava/lang/String;

    sget-boolean v4, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "ACDownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Legal Text: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->legalText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/ime/framework/util/Utils;->isChinaMainlandBinaryByCSC()Z

    move-result v4

    if-nez v4, :cond_1

    :try_start_0
    invoke-interface {v0}, Lcom/nuance/swypeconnect/ac/ACLegalDocuments;->userAcceptedTOS()V
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v4}, Lcom/nuance/swypeconnect/ac/ACManager;->getConfiguration()Lcom/nuance/swypeconnect/ac/ACConfiguration;

    move-result-object v4

    iput-object v4, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->config:Lcom/nuance/swypeconnect/ac/ACConfiguration;

    :try_start_1
    iget-object v4, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->config:Lcom/nuance/swypeconnect/ac/ACConfiguration;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/nuance/swypeconnect/ac/ACConfiguration;->setConcurrentConnectionLimit(I)V

    iget-object v4, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->config:Lcom/nuance/swypeconnect/ac/ACConfiguration;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/nuance/swypeconnect/ac/ACConfiguration;->backgroundData(ZZZ)V

    iget-object v4, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->config:Lcom/nuance/swypeconnect/ac/ACConfiguration;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/nuance/swypeconnect/ac/ACConfiguration;->foregroundData(ZZZ)V

    iget-object v4, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->config:Lcom/nuance/swypeconnect/ac/ACConfiguration;

    const v5, 0x15180

    invoke-virtual {v4, v5}, Lcom/nuance/swypeconnect/ac/ACConfiguration;->setRefreshInterval(I)V
    :try_end_1
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    sget-object v4, Lcom/ime/framework/acmanager/ACDownloadManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->getInstance(Landroid/content/Context;)Lcom/ime/framework/acmanager/ACChineseDictionaryManager;

    move-result-object v4

    iput-object v4, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mChineseDictManager:Lcom/ime/framework/acmanager/ACChineseDictionaryManager;

    new-instance v1, Lcom/ime/framework/acmanager/ACDownloadManager$4;

    invoke-direct {v1, p0}, Lcom/ime/framework/acmanager/ACDownloadManager$4;-><init>(Lcom/ime/framework/acmanager/ACDownloadManager;)V

    iget-object v4, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v4, v1}, Lcom/nuance/swypeconnect/ac/ACManager;->registerConnectionCallback(Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;)V

    :try_start_2
    iget-object v4, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getXt9Version()I

    move-result v4

    const/4 v5, 0x5

    if-lt v4, v5, :cond_4

    iget-object v4, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    const-string v5, "9.13"

    const-string v6, "9.13"

    const-string v7, "9.13"

    const-string v8, "9.13"

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/nuance/swypeconnect/ac/ACManager;->setCoreVersions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v4}, Lcom/nuance/swypeconnect/ac/ACManager;->isConnectStarted()Z

    move-result v4

    if-nez v4, :cond_3

    :try_start_3
    iget-object v4, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v4}, Lcom/nuance/swypeconnect/ac/ACManager;->start()V

    iget-object v4, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mChineseDictManager:Lcom/ime/framework/acmanager/ACChineseDictionaryManager;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mChineseDictManager:Lcom/ime/framework/acmanager/ACChineseDictionaryManager;

    invoke-virtual {v4}, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->notifyACManagerStart()V
    :try_end_3
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_3
    :goto_3
    iget-object v4, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    return-object v4

    :catch_0
    move-exception v3

    const-string v4, "ACDownloadManager"

    const-string v5, "Terms Of Service issue acceptance accepted!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v3

    const-string v4, "ACDownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to start set concurrent limit: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/nuance/swypeconnect/ac/ACException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    :try_start_4
    iget-object v4, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getXt9Version()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_5

    iget-object v4, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    const-string v5, "9.10"

    const-string v6, "9.10"

    const-string v7, "9.10"

    const-string v8, "9.10"

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/nuance/swypeconnect/ac/ACManager;->setCoreVersions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACException;->printStackTrace()V

    goto :goto_2

    :cond_5
    :try_start_5
    iget-object v4, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getXt9Version()I

    move-result v4

    if-ne v4, v8, :cond_6

    iget-object v4, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    const-string v5, "9.8"

    const-string v6, "9.8"

    const-string v7, "9.8"

    const-string v8, "9.8"

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/nuance/swypeconnect/ac/ACManager;->setCoreVersions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    iget-object v4, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getXt9Version()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    iget-object v4, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    const-string v5, "9.6"

    const-string v6, "9.6"

    const/4 v7, 0x0

    const-string v8, "9.6"

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/nuance/swypeconnect/ac/ACManager;->setCoreVersions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_7
    iget-object v4, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    const-string v5, "9.3"

    const-string v6, "9.3"

    const/4 v7, 0x0

    const-string v8, "9.3"

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/nuance/swypeconnect/ac/ACManager;->setCoreVersions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_2

    :catch_3
    move-exception v2

    const-string v4, "ACDownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to start service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method public getSupportedLanguageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mSupportedLanguageList:Ljava/util/List;

    return-object v0
.end method

.method public getTOSText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->legalText:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateableLanguageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mUpdateableLanguageList:Ljava/util/List;

    return-object v0
.end method

.method public register(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/ime/framework/acmanager/ACDownloadManager$ProgressBarListener;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadCBs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p2, p1}, Lcom/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->register(Ljava/util/List;I)V

    goto :goto_0
.end method

.method public runCases(Lcom/ime/implement/setting/ACLanguagesSettings;)V
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mACLanguagesSettings:Lcom/ime/implement/setting/ACLanguagesSettings;

    invoke-virtual {p0}, Lcom/ime/framework/acmanager/ACDownloadManager;->runLanguageDLCases()V

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getXt9Version()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mChineseDictManager:Lcom/ime/framework/acmanager/ACChineseDictionaryManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mChineseDictManager:Lcom/ime/framework/acmanager/ACChineseDictionaryManager;

    invoke-virtual {v0}, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->isTosAccept()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ime/framework/acmanager/ACDownloadManager;->runLivingKoreanLanguage()V

    invoke-virtual {p0}, Lcom/ime/framework/acmanager/ACDownloadManager;->runLivingAlphaLanguage()V

    goto :goto_0
.end method

.method protected runDeviceSetup()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    const-string v2, "DEVICE"

    invoke-virtual {v1, v2}, Lcom/nuance/swypeconnect/ac/ACManager;->getService(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACService;

    move-result-object v1

    check-cast v1, Lcom/nuance/swypeconnect/ac/ACDeviceService;

    iput-object v1, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->device:Lcom/nuance/swypeconnect/ac/ACDeviceService;
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->device:Lcom/nuance/swypeconnect/ac/ACDeviceService;

    if-nez v1, :cond_1

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ACDownloadManager"

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->device:Lcom/nuance/swypeconnect/ac/ACDeviceService;

    new-instance v2, Lcom/ime/framework/acmanager/ACDownloadManager$1;

    invoke-direct {v2, p0}, Lcom/ime/framework/acmanager/ACDownloadManager$1;-><init>(Lcom/ime/framework/acmanager/ACDownloadManager;)V

    invoke-virtual {v1, v2}, Lcom/nuance/swypeconnect/ac/ACDeviceService;->registerCallback(Lcom/nuance/swypeconnect/ac/ACDeviceService$ACDeviceCallback;)V

    iget-object v1, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACManager;->getLegalDocuments()Lcom/nuance/swypeconnect/ac/ACLegalDocuments;

    move-result-object v1

    invoke-interface {v1}, Lcom/nuance/swypeconnect/ac/ACLegalDocuments;->userHasAcceptedTOS()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/ime/framework/acmanager/ACDownloadManager;->runCases(Lcom/ime/implement/setting/ACLanguagesSettings;)V

    goto :goto_1
.end method

.method protected runLanguageDLCases()V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    const-string v2, "LANGUAGE"

    invoke-virtual {v1, v2}, Lcom/nuance/swypeconnect/ac/ACManager;->getService(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACService;

    move-result-object v1

    check-cast v1, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    iput-object v1, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->languageDownload:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->languageDownload:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    if-nez v1, :cond_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ACDownloadManager"

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/ime/framework/acmanager/ACDownloadManager;->addSupportedLanguageList()V

    invoke-direct {p0}, Lcom/ime/framework/acmanager/ACDownloadManager;->addExistedLanguageList()V

    iget-object v1, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->languageDownload:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    new-instance v2, Lcom/ime/framework/acmanager/ACDownloadManager$2;

    invoke-direct {v2, p0}, Lcom/ime/framework/acmanager/ACDownloadManager$2;-><init>(Lcom/ime/framework/acmanager/ACDownloadManager;)V

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->registerCallback(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadListCallback;Z)V

    goto :goto_1
.end method

.method public runLivingAlphaLanguage()V
    .locals 4

    invoke-direct {p0}, Lcom/ime/framework/acmanager/ACDownloadManager;->initLivingLanguageService()V

    iget-object v1, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->livingAlphaInput:Lcom/nuance/dlm/ACAlphaInput;

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/nuance/dlm/ACAlphaInput;

    iget-object v2, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->dlm:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    invoke-direct {v1, v2}, Lcom/nuance/dlm/ACAlphaInput;-><init>(Lcom/nuance/swypeconnect/ac/ACDLMConnector;)V

    iput-object v1, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->livingAlphaInput:Lcom/nuance/dlm/ACAlphaInput;

    :try_start_0
    iget-object v1, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->config:Lcom/nuance/swypeconnect/ac/ACConfiguration;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/nuance/swypeconnect/ac/ACConfiguration;->setConcurrentConnectionLimit(I)V
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ACDownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to start set concurrent limit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public runLivingKoreanLanguage()V
    .locals 4

    invoke-direct {p0}, Lcom/ime/framework/acmanager/ACDownloadManager;->initLivingLanguageService()V

    iget-object v1, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->livingKoreanInput:Lcom/nuance/dlm/ACKoreanInput;

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/nuance/dlm/ACKoreanInput;

    iget-object v2, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->dlm:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    invoke-direct {v1, v2}, Lcom/nuance/dlm/ACKoreanInput;-><init>(Lcom/nuance/swypeconnect/ac/ACDLMConnector;)V

    iput-object v1, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->livingKoreanInput:Lcom/nuance/dlm/ACKoreanInput;

    :try_start_0
    iget-object v1, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->config:Lcom/nuance/swypeconnect/ac/ACConfiguration;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/nuance/swypeconnect/ac/ACConfiguration;->setConcurrentConnectionLimit(I)V
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ACDownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to start set concurrent limit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setLivingLanguage(I)V
    .locals 3

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACManager;->getLanguageSettings()Lcom/nuance/swypeconnect/ac/ACLanguage;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->language:Lcom/nuance/swypeconnect/ac/ACLanguage;

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->language:Lcom/nuance/swypeconnect/ac/ACLanguage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->language:Lcom/nuance/swypeconnect/ac/ACLanguage;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/nuance/swypeconnect/ac/ACLanguage;->setActiveLanguages([I)V

    :cond_0
    return-void
.end method

.method public setUpdateState(IZ)V
    .locals 3

    iget-object v1, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadCBs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;-><init>(Lcom/ime/framework/acmanager/ACDownloadManager;Lcom/ime/framework/acmanager/ACDownloadManager$1;)V

    iget-object v1, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadCBs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p2}, Lcom/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->setCurrentUpdateState(Z)V

    return-void
.end method

.method public setUseLivingLanguageFromSetting(Z)V
    .locals 4

    const-string v1, "ACDownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ACDownloadManager-setUseLivingLanguageFromSetting] value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->livingLanguage:Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->livingLanguage:Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->enableLivingLanguage()V
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ACDownloadManager"

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->livingLanguage:Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->disableLivingLanguage()V
    :try_end_1
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public start()V
    .locals 2

    invoke-virtual {p0}, Lcom/ime/framework/acmanager/ACDownloadManager;->getKeyboardLanguageManager()Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    if-nez v0, :cond_0

    const-string v0, "ACDownloadManager"

    const-string v1, "Could not get the manager"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/ime/framework/acmanager/ACDownloadManager;->runDeviceSetup()V

    goto :goto_0
.end method

.method public declared-synchronized startProgressBarThread(Lcom/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/ime/framework/acmanager/ACDownloadManager;->stopProgressBarThread()V

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mProgressbarThread:Lcom/ime/framework/acmanager/ACDownloadManager$ProgressBarThread;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ime/framework/acmanager/ACDownloadManager$ProgressBarThread;

    invoke-direct {v0, p0, p1}, Lcom/ime/framework/acmanager/ACDownloadManager$ProgressBarThread;-><init>(Lcom/ime/framework/acmanager/ACDownloadManager;Lcom/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;)V

    iput-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mProgressbarThread:Lcom/ime/framework/acmanager/ACDownloadManager$ProgressBarThread;

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mProgressbarThread:Lcom/ime/framework/acmanager/ACDownloadManager$ProgressBarThread;

    invoke-virtual {v0}, Lcom/ime/framework/acmanager/ACDownloadManager$ProgressBarThread;->start()V
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

.method public stop()V
    .locals 12

    const/4 v11, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadCBs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;

    :try_start_0
    iget-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->languageDownload:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    invoke-virtual {v7}, Lcom/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->cancelDownload(I)V
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    iget-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadingLanguageList:Ljava/util/List;

    invoke-virtual {v7}, Lcom/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v1, 0x7f0d015c

    invoke-virtual {v7}, Lcom/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->getId()I

    move-result v2

    const/4 v3, 0x1

    move-object v0, p0

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/ime/framework/acmanager/ACDownloadManager;->createNotification(IIZZII)V

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadingLanguageList:Ljava/util/List;

    invoke-virtual {v7}, Lcom/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mAppointedDownloadLanguageList:Ljava/util/List;

    invoke-virtual {v7}, Lcom/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mAppointedDownloadLanguageList:Ljava/util/List;

    invoke-virtual {v7}, Lcom/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v7}, Lcom/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->unregister()V

    goto :goto_0

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Lcom/nuance/swypeconnect/ac/ACException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v10

    invoke-virtual {v10}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadCBs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iput-object v11, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    iput-object v11, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->device:Lcom/nuance/swypeconnect/ac/ACDeviceService;

    iput-object v11, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->languageDownload:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    return-void
.end method

.method public declared-synchronized stopProgressBarThread()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mProgressbarThread:Lcom/ime/framework/acmanager/ACDownloadManager$ProgressBarThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mProgressbarThread:Lcom/ime/framework/acmanager/ACDownloadManager$ProgressBarThread;

    invoke-virtual {v0}, Lcom/ime/framework/acmanager/ACDownloadManager$ProgressBarThread;->requestStop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mProgressbarThread:Lcom/ime/framework/acmanager/ACDownloadManager$ProgressBarThread;
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

.method public unregister(I)V
    .locals 3

    iget-object v1, p0, Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadCBs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->unregister()V

    goto :goto_0
.end method
