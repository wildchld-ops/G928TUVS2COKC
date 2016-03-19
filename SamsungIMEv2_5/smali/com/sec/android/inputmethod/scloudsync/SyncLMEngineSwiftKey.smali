.class public Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;
.super Ljava/lang/Object;
.source "SyncLMEngineSwiftKey.java"

# interfaces
.implements Lcom/sec/android/inputmethod/scloudsync/ISyncLMEngine;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey$4;
    }
.end annotation


# static fields
.field private static mSession:Lcom/touchtype_fluency/Session;


# instance fields
.field private final COPIED_SOURCE_DIR:Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SdCardPath"
        }
    .end annotation
.end field

.field public final COUNT_OVERFLOW_EXCEPTION_FILE_NAME:Ljava/lang/String;

.field private final DEBUG_PRINT_WORD:Z

.field private final ENGINE_NAME:Ljava/lang/String;

.field private final FAIL:I

.field private final LM_FILES:[Ljava/lang/String;

.field private final REMOVE_DB_DIR:Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SdCardPath"
        }
    .end annotation
.end field

.field private final REMOVE_DB_FILES:[Ljava/lang/String;

.field private final SOURCE_DIR:Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SdCardPath"
        }
    .end annotation
.end field

.field private final SUCCESS:I

.field private final UPLOAD_FILES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final ZIP_ENGINE_DIR:Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SdCardPath"
        }
    .end annotation
.end field

.field private final ZIP_WORK_DIR:Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SdCardPath"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mDLMLocker:Ljava/lang/Object;

.field private mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

.field private mExclusionPattern:Ljava/util/regex/Pattern;

.field private mListener:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;

.field mLoggingListener:Lcom/touchtype_fluency/LoggingListener;

.field private mMyWordList:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;

.field private mSupportLibrary:Lcom/touchtype/samsung/supportlibrary/SupportLibrary;

.field private final mSwiftKeyMergePolicy:I

.field protected mTempDynamicLMTrainer:Lcom/touchtype_fluency/Trainer;

.field private mWordsExisting:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mbuilder:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->DEBUG_PRINT_WORD:Z

    const-string v0, "\\d{4,}"

    invoke-static {v0, v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mExclusionPattern:Ljava/util/regex/Pattern;

    iput v4, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mSwiftKeyMergePolicy:I

    const-string v0, "/data/data/com.sec.android.inputmethod/app_SwiftKey/user"

    iput-object v0, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->SOURCE_DIR:Ljava/lang/String;

    const-string v0, "/data/data/com.sec.android.inputmethod/original_lm"

    iput-object v0, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->COPIED_SOURCE_DIR:Ljava/lang/String;

    const-string v0, "/data/data/com.sec.android.inputmethod/databases"

    iput-object v0, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->REMOVE_DB_DIR:Ljava/lang/String;

    const-string v0, "/data/data/com.sec.android.inputmethod/zipWork"

    iput-object v0, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->ZIP_WORK_DIR:Ljava/lang/String;

    const-string v0, "/data/data/com.sec.android.inputmethod/zipSwiftKey"

    iput-object v0, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->ZIP_ENGINE_DIR:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ".config"

    aput-object v1, v0, v3

    const-string v1, "dynamic.lm"

    aput-object v1, v0, v4

    const-string v1, "learned.json"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "engine_exception.log"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->LM_FILES:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "SwiftKey"

    aput-object v1, v0, v3

    const-string v1, "WordFile"

    aput-object v1, v0, v4

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->UPLOAD_FILES:Ljava/util/List;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "RemoveListManager"

    aput-object v1, v0, v3

    const-string v1, "RemoveListManager-journal"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->REMOVE_DB_FILES:[Ljava/lang/String;

    const-string v0, "SwiftKey"

    iput-object v0, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->ENGINE_NAME:Ljava/lang/String;

    const-string v0, "engine_exception.log"

    iput-object v0, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->COUNT_OVERFLOW_EXCEPTION_FILE_NAME:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mDLMLocker:Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mbuilder:Ljava/lang/StringBuilder;

    iput-object v6, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iput-object v6, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mTempDynamicLMTrainer:Lcom/touchtype_fluency/Trainer;

    iput v4, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->SUCCESS:I

    iput v3, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->FAIL:I

    new-instance v0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey$1;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey$1;-><init>(Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mLoggingListener:Lcom/touchtype_fluency/LoggingListener;

    new-instance v0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey$2;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey$2;-><init>(Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mListener:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;

    iput-object p1, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;)Lcom/ime/framework/engine/InputEngineManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mDLMLocker:Ljava/lang/Object;

    return-object v0
.end method

.method private cleanUp()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mWordsExisting:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mWordsExisting:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :cond_0
    return-void
.end method

.method private createExceptionLogFile(I)V
    .locals 7

    const-string v3, "engine_exception.log"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/data/com.sec.android.inputmethod/app_SwiftKey/user"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "engine_exception.log"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_0
    move-object v1, v2

    :goto_0
    return-void

    :catch_0
    move-exception v4

    :goto_1
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catch_3
    move-exception v4

    move-object v1, v2

    goto :goto_1
.end method

.method private deleteExceptionFileIfExist(Ljava/io/File;)V
    .locals 7

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    const-string v5, "engine_exception.log"

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method

.method private getMergePolicy()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private getSwiftKeySDKSession()Lcom/touchtype_fluency/util/SwiftKeySession;
    .locals 1

    invoke-static {}, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getSwiftKeySession()Lcom/touchtype_fluency/util/SwiftKeySession;

    move-result-object v0

    return-object v0
.end method

.method private isContainedSwiftKeyLMWithInCloudLM(Ljava/io/File;)Z
    .locals 8

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v4, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v0, v2

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "dynamic.lm"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v5, "SamsungIME_SYNC"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isContainedSwiftKeyLMWithInCloudLM  : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method private isExistExceptFileInPath(Ljava/io/File;)Z
    .locals 6

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    const-string v4, "engine_exception.log"

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_1
    return v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private isValideSwiftKeyDLM()Z
    .locals 7

    iget-object v0, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->LM_FILES:[Ljava/lang/String;

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v2, v0, v3

    new-instance v1, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/data/com.sec.android.inputmethod/app_SwiftKey/user"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".config"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "engine_exception.log"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    const-string v5, "SamsungIME_SYNC"

    const-string v6, "isValideSwiftKeyDLM : .config or engine_exception.log case. Continue Search"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x0

    :goto_1
    return v5

    :cond_3
    const/4 v5, 0x1

    goto :goto_1
.end method

.method private learnStringWithExclusionPattern(Ljava/lang/String;)Z
    .locals 4

    sget-object v1, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mExclusionPattern:Ljava/util/regex/Pattern;

    const-string v2, "[^0-9]"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    goto :goto_0
.end method

.method private makeNewNoNgramDynamicLM(Lcom/touchtype_fluency/ModelSetDescription;Lcom/touchtype_fluency/ModelSetDescription;Ljava/io/File;)V
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x0

    :try_start_0
    sget-object v7, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mSession:Lcom/touchtype_fluency/Session;

    if-eqz v7, :cond_0

    const/4 v7, 0x0

    sput-object v7, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mSession:Lcom/touchtype_fluency/Session;

    :cond_0
    const-string v7, "Samsung_nolimit_flow_f2498e18"

    invoke-static {v7}, Lcom/touchtype_fluency/SwiftKeySDK;->createSession(Ljava/lang/String;)Lcom/touchtype_fluency/Session;

    move-result-object v7

    sput-object v7, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mSession:Lcom/touchtype_fluency/Session;

    sget-object v7, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mSession:Lcom/touchtype_fluency/Session;

    if-nez v7, :cond_1

    const-string v7, "SamsungIME_SYNC"

    const-string v8, "Fail to get a session from makeNewNoNgramDynamicLM"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    sget-object v7, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mSession:Lcom/touchtype_fluency/Session;

    invoke-interface {v7, p2}, Lcom/touchtype_fluency/Session;->load(Lcom/touchtype_fluency/ModelSetDescription;)V

    sget-object v7, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mSession:Lcom/touchtype_fluency/Session;

    invoke-interface {v7}, Lcom/touchtype_fluency/Session;->getTrainer()Lcom/touchtype_fluency/Trainer;

    move-result-object v7

    invoke-interface {v7}, Lcom/touchtype_fluency/Trainer;->getTermCounts()Ljava/util/Map;

    move-result-object v0

    sget-object v7, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mSession:Lcom/touchtype_fluency/Session;

    invoke-interface {v7, p2}, Lcom/touchtype_fluency/Session;->unload(Lcom/touchtype_fluency/ModelSetDescription;)V

    sget-object v7, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mSession:Lcom/touchtype_fluency/Session;

    invoke-interface {v7, p1}, Lcom/touchtype_fluency/Session;->load(Lcom/touchtype_fluency/ModelSetDescription;)V

    sget-object v7, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mSession:Lcom/touchtype_fluency/Session;

    invoke-interface {v7}, Lcom/touchtype_fluency/Session;->getTrainer()Lcom/touchtype_fluency/Trainer;

    move-result-object v7

    invoke-interface {v7}, Lcom/touchtype_fluency/Trainer;->getTermCounts()Ljava/util/Map;

    move-result-object v1

    sget-object v7, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mSession:Lcom/touchtype_fluency/Session;

    invoke-interface {v7, p1}, Lcom/touchtype_fluency/Session;->unload(Lcom/touchtype_fluency/ModelSetDescription;)V

    invoke-virtual {p3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    sget-object v10, Lcom/touchtype_fluency/ModelSetDescription$Type;->OTHER_DYNAMIC_MODEL:Lcom/touchtype_fluency/ModelSetDescription$Type;

    invoke-static {v7, v8, v9, v10}, Lcom/touchtype_fluency/ModelSetDescription;->dynamicWithFile(Ljava/lang/String;I[Ljava/lang/String;Lcom/touchtype_fluency/ModelSetDescription$Type;)Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v5

    sget-object v7, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mSession:Lcom/touchtype_fluency/Session;

    invoke-interface {v7, v5}, Lcom/touchtype_fluency/Session;->load(Lcom/touchtype_fluency/ModelSetDescription;)V

    new-instance v6, Lcom/touchtype_fluency/Sequence;

    invoke-direct {v6}, Lcom/touchtype_fluency/Sequence;-><init>()V

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-virtual {v6}, Lcom/touchtype_fluency/Sequence;->clear()V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/touchtype_fluency/Sequence;->add(Ljava/lang/Object;)Z

    sget-object v7, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mSession:Lcom/touchtype_fluency/Session;

    invoke-interface {v7}, Lcom/touchtype_fluency/Session;->getTrainer()Lcom/touchtype_fluency/Trainer;

    move-result-object v7

    invoke-interface {v7, v6}, Lcom/touchtype_fluency/Trainer;->addSequence(Lcom/touchtype_fluency/Sequence;)V
    :try_end_0
    .catch Lcom/touchtype_fluency/LicenseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lcom/touchtype_fluency/LicenseException;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-virtual {v6}, Lcom/touchtype_fluency/Sequence;->clear()V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/touchtype_fluency/Sequence;->add(Ljava/lang/Object;)Z

    sget-object v7, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mSession:Lcom/touchtype_fluency/Session;

    invoke-interface {v7}, Lcom/touchtype_fluency/Session;->getTrainer()Lcom/touchtype_fluency/Trainer;

    move-result-object v7

    invoke-interface {v7, v6}, Lcom/touchtype_fluency/Trainer;->addSequence(Lcom/touchtype_fluency/Sequence;)V
    :try_end_1
    .catch Lcom/touchtype_fluency/LicenseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_2

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_0

    :cond_3
    :try_start_2
    sget-object v7, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mSession:Lcom/touchtype_fluency/Session;

    invoke-interface {v7}, Lcom/touchtype_fluency/Session;->getTrainer()Lcom/touchtype_fluency/Trainer;

    move-result-object v7

    invoke-interface {v7}, Lcom/touchtype_fluency/Trainer;->write()V
    :try_end_2
    .catch Lcom/touchtype_fluency/LicenseException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_0

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private mergeUserDataInternal(Ljava/io/File;Ljava/io/File;)I
    .locals 30
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v21, 0x0

    invoke-static {}, Lcom/ime/framework/repository/RepositoryImpl;->getInstance()Lcom/ime/framework/repository/Repository;

    move-result-object v20

    invoke-direct/range {p0 .. p1}, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->isExistExceptFileInPath(Ljava/io/File;)Z

    move-result v26

    if-eqz v26, :cond_0

    const-string v26, "SamsungIME_SYNC"

    const-string v27, "the ExceptFile exists"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->deleteLMFiles()Z

    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->deleteExceptionFileIfExist(Ljava/io/File;)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->isValideSwiftKeyDLM()Z

    move-result v26

    if-eqz v26, :cond_2

    const/4 v14, 0x0

    :goto_0
    const-string v26, "SamsungIME_SYNC"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "mergeUserData(): isSkipMerge : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getSwiftKeySession()Lcom/touchtype_fluency/util/SwiftKeySession;

    move-result-object v22

    invoke-static {}, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v18

    if-eqz v14, :cond_7

    const-string v26, "SamsungIME_SYNC"

    const-string v27, "mergeUserData(): isSkipMerge "

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v26, "SamsungIME_SYNC"

    const-string v27, "mergeUserData(): Replace with server LM data "

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->deleteLMFiles()Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->LM_FILES:[Ljava/lang/String;

    array-length v0, v4

    move/from16 v16, v0

    const/4 v12, 0x0

    move v13, v12

    :goto_1
    move/from16 v0, v16

    if-ge v13, v0, :cond_4

    aget-object v10, v4, v13

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    array-length v0, v5

    move/from16 v17, v0

    const/4 v12, 0x0

    :goto_2
    move/from16 v0, v17

    if-ge v12, v0, :cond_3

    aget-object v11, v5, v12

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1

    new-instance v26, Ljava/io/File;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "/data/data/com.sec.android.inputmethod/app_SwiftKey/user"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    sget-object v28, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    const-string v26, "SamsungIME_SYNC"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Replace with server LM data: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_2
    const/4 v14, 0x1

    goto/16 :goto_0

    :cond_3
    add-int/lit8 v12, v13, 0x1

    move v13, v12

    goto :goto_1

    :cond_4
    new-instance v23, Ljava/io/File;

    const-string v26, "/data/data/com.sec.android.inputmethod/databases"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v26

    if-nez v26, :cond_5

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->mkdir()Z

    :cond_5
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->processCopyExtraFilesFromDownloaded(Ljava/io/File;)V

    :cond_6
    :goto_3
    const-string v26, "RELOAD_LANGUAGEPACK"

    const/16 v27, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    return v21

    :cond_7
    if-eqz v18, :cond_6

    if-eqz v22, :cond_6

    const-string v26, "SamsungIME_SYNC"

    const-string v27, "mergeUserData(): merge operation step "

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x0

    const/16 v19, 0x0

    invoke-direct/range {p0 .. p1}, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->isContainedSwiftKeyLMWithInCloudLM(Ljava/io/File;)Z

    move-result v15

    if-eqz v15, :cond_c

    const-string v26, "SamsungIME_SYNC"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "RestoreRunner lpm.getDynamicModel().toString():"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v18 .. v18}, Lcom/touchtype_fluency/util/LanguagePackManager;->getDynamicModel()Ljava/io/File;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v26, "SamsungIME_SYNC"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "RestoreRunner sourceDir.toString():"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v6, Ljava/io/File;

    const-string v26, "/data/data/com.sec.android.inputmethod/original_lm"

    move-object/from16 v0, v26

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->mkdir()Z

    invoke-virtual/range {v18 .. v18}, Lcom/touchtype_fluency/util/LanguagePackManager;->getDynamicModel()Ljava/io/File;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v0, v4

    move/from16 v16, v0

    const/4 v12, 0x0

    :goto_4
    move/from16 v0, v16

    if-ge v12, v0, :cond_8

    aget-object v11, v4, v12

    new-instance v26, Ljava/io/File;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    sget-object v28, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-static {v11, v0}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_8
    const-string v26, "SamsungIME_SYNC"

    const-string v27, "RestoreRunner Copy Complete"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v26, "/data/data/com.sec.android.inputmethod/original_lm"

    const/16 v27, 0x4

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v28, v0

    sget-object v29, Lcom/touchtype_fluency/ModelSetDescription$Type;->PRIMARY_DYNAMIC_MODEL:Lcom/touchtype_fluency/ModelSetDescription$Type;

    invoke-static/range {v26 .. v29}, Lcom/touchtype_fluency/ModelSetDescription;->dynamicWithFile(Ljava/lang/String;I[Ljava/lang/String;Lcom/touchtype_fluency/ModelSetDescription$Type;)Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x4

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v28, v0

    sget-object v29, Lcom/touchtype_fluency/ModelSetDescription$Type;->OTHER_DYNAMIC_MODEL:Lcom/touchtype_fluency/ModelSetDescription$Type;

    invoke-static/range {v26 .. v29}, Lcom/touchtype_fluency/ModelSetDescription;->dynamicWithFile(Ljava/lang/String;I[Ljava/lang/String;Lcom/touchtype_fluency/ModelSetDescription$Type;)Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-static {v7, v8, v0}, Lcom/touchtype_fluency/ModelSetDescription;->merge(Lcom/touchtype_fluency/ModelSetDescription;Lcom/touchtype_fluency/ModelSetDescription;Ljava/lang/String;)Lcom/touchtype_fluency/ModelSetDescription;

    const-string v26, "SamsungIME_SYNC"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "User Data is merged. Merged time="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    sub-long v28, v28, v24

    invoke-virtual/range {v27 .. v29}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/touchtype_fluency/CountOverflowException; {:try_start_0 .. :try_end_0} :catch_3

    const/16 v19, 0x1

    :cond_9
    :goto_5
    const-string v26, "/data/data/com.sec.android.inputmethod/original_lm"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->deleteDirectory(Ljava/lang/String;)Z

    :goto_6
    const-string v26, "REPLACEMENT_PREDICTION_USER_DATA"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    const-string v26, "SamsungIME_SYNC"

    const-string v27, "Set the TRUE: KEY_REPLACEMENT_PREDICTION_USER_DATA and KEY_RELOAD_LANGUAGEPACK"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :catch_0
    move-exception v9

    const/16 v19, 0x0

    invoke-virtual {v9}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_5

    :catch_1
    move-exception v9

    const/16 v19, 0x0

    invoke-virtual {v9}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_5

    :catch_2
    move-exception v9

    const/16 v19, 0x0

    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catch_3
    move-exception v9

    const-string v26, "SamsungIME_SYNC"

    const-string v27, "mergeUserData(): CountOverflowException occured. Replace with server LM data "

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x1

    const/16 v26, 0x1

    packed-switch v26, :pswitch_data_0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->deleteLMFiles()Z

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->createExceptionLogFile(I)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v7, v8, v1}, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->makeNewNoNgramDynamicLM(Lcom/touchtype_fluency/ModelSetDescription;Lcom/touchtype_fluency/ModelSetDescription;Ljava/io/File;)V

    goto :goto_5

    :pswitch_0
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->createExceptionLogFile(I)V

    goto :goto_5

    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->deleteLMFiles()Z

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->createExceptionLogFile(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->LM_FILES:[Ljava/lang/String;

    array-length v0, v4

    move/from16 v16, v0

    const/4 v12, 0x0

    move v13, v12

    :goto_7
    move/from16 v0, v16

    if-ge v13, v0, :cond_9

    aget-object v10, v4, v13

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    array-length v0, v5

    move/from16 v17, v0

    const/4 v12, 0x0

    :goto_8
    move/from16 v0, v17

    if-ge v12, v0, :cond_b

    aget-object v11, v5, v12

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_a

    new-instance v26, Ljava/io/File;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "/data/data/com.sec.android.inputmethod/app_SwiftKey/user"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    sget-object v28, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    const-string v26, "SamsungIME_SYNC"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Replace with server LM data: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    :cond_b
    add-int/lit8 v12, v13, 0x1

    move v13, v12

    goto :goto_7

    :cond_c
    const-string v26, "SamsungIME_SYNC"

    const-string v27, "There is no Swiftkey LM files"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private processCopyExtraFilesFromDownloaded(Ljava/io/File;)V
    .locals 9

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->getEngineName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v5, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v3, v0, v4

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v6, "AddWordList_Default"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "SamsungIME_SYNC"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AddWordList[Discard] Current Engine="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " File="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/data/data/com.sec.android.inputmethod/databases"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v6}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    const-string v6, "SamsungIME_SYNC"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AddWordList[Copy] Current Engine="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " File="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public addUnigramsFromIncomingDLM(Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/touchtype_fluency/LicenseException;
        }
    .end annotation

    const/4 v11, 0x0

    const-string v7, "SamsungIME_SYNC"

    const-string v8, "addUnigramsFromIncomingDLM + "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sget-object v7, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mSession:Lcom/touchtype_fluency/Session;

    if-eqz v7, :cond_0

    sput-object v11, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mSession:Lcom/touchtype_fluency/Session;

    :cond_0
    invoke-static {}, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getSwiftKeySession()Lcom/touchtype_fluency/util/SwiftKeySession;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/touchtype_fluency/util/SwiftKeySession;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v7

    sput-object v7, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mSession:Lcom/touchtype_fluency/Session;

    :cond_1
    sget-object v7, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mSession:Lcom/touchtype_fluency/Session;

    if-eqz v7, :cond_2

    sget-object v7, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mSession:Lcom/touchtype_fluency/Session;

    invoke-interface {v7}, Lcom/touchtype_fluency/Session;->getTrainer()Lcom/touchtype_fluency/Trainer;

    move-result-object v7

    invoke-interface {v7}, Lcom/touchtype_fluency/Trainer;->write()V

    const-string v7, "SamsungIME_SYNC"

    const-string v8, "addUnigramsFromIncomingDLM - Write Previous sequence"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v7, "Samsung_nolimit_flow_f2498e18"

    invoke-static {v7}, Lcom/touchtype_fluency/SwiftKeySDK;->createSession(Ljava/lang/String;)Lcom/touchtype_fluency/Session;

    move-result-object v4

    const-string v7, "/data/data/com.sec.android.inputmethod/app_SwiftKey/user"

    const/4 v8, 0x4

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    sget-object v10, Lcom/touchtype_fluency/ModelSetDescription$Type;->PRIMARY_DYNAMIC_MODEL:Lcom/touchtype_fluency/ModelSetDescription$Type;

    invoke-static {v7, v8, v9, v10}, Lcom/touchtype_fluency/ModelSetDescription;->dynamicWithFile(Ljava/lang/String;I[Ljava/lang/String;Lcom/touchtype_fluency/ModelSetDescription$Type;)Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v0

    if-eqz v4, :cond_5

    invoke-interface {v4, v0}, Lcom/touchtype_fluency/Session;->load(Lcom/touchtype_fluency/ModelSetDescription;)V

    const-string v7, "SamsungIME_SYNC"

    const-string v8, "addUnigramsFromIncomingDLM - Create tempSession for write"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->getUnigramsFromCloudDLM(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mWordsExisting:Ljava/util/Set;

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/touchtype_fluency/Term;

    iget-object v7, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mWordsExisting:Ljava/util/Set;

    invoke-virtual {v5}, Lcom/touchtype_fluency/Term;->getTerm()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    new-instance v2, Lcom/touchtype_fluency/Sequence;

    invoke-direct {v2}, Lcom/touchtype_fluency/Sequence;-><init>()V

    invoke-virtual {v2, v5}, Lcom/touchtype_fluency/Sequence;->add(Ljava/lang/Object;)Z

    invoke-interface {v4}, Lcom/touchtype_fluency/Session;->getTrainer()Lcom/touchtype_fluency/Trainer;

    move-result-object v7

    invoke-interface {v7, v2}, Lcom/touchtype_fluency/Trainer;->addSequence(Lcom/touchtype_fluency/Sequence;)V

    goto :goto_0

    :cond_4
    const-string v7, "SamsungIME_SYNC"

    const-string v8, "addUnigramsFromIncomingDLM - tempSession write"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v4}, Lcom/touchtype_fluency/Session;->getTrainer()Lcom/touchtype_fluency/Trainer;

    move-result-object v7

    invoke-interface {v7}, Lcom/touchtype_fluency/Trainer;->write()V

    invoke-interface {v4, v0}, Lcom/touchtype_fluency/Session;->unload(Lcom/touchtype_fluency/ModelSetDescription;)V

    invoke-interface {v4}, Lcom/touchtype_fluency/Session;->dispose()V

    :cond_5
    const-string v7, "SamsungIME_SYNC"

    const-string v8, "addUnigramsFromIncomingDLM - tempSession dispose"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v7, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mSession:Lcom/touchtype_fluency/Session;

    if-eqz v7, :cond_6

    sput-object v11, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mSession:Lcom/touchtype_fluency/Session;

    :cond_6
    if-eqz v3, :cond_7

    const/4 v3, 0x0

    :cond_7
    invoke-static {}, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getSwiftKeySession()Lcom/touchtype_fluency/util/SwiftKeySession;

    move-result-object v3

    invoke-virtual {v3}, Lcom/touchtype_fluency/util/SwiftKeySession;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v7

    sput-object v7, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mSession:Lcom/touchtype_fluency/Session;

    sget-object v7, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mSession:Lcom/touchtype_fluency/Session;

    invoke-interface {v7, v0}, Lcom/touchtype_fluency/Session;->unload(Lcom/touchtype_fluency/ModelSetDescription;)V

    sget-object v7, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mSession:Lcom/touchtype_fluency/Session;

    invoke-interface {v7, v0}, Lcom/touchtype_fluency/Session;->load(Lcom/touchtype_fluency/ModelSetDescription;)V

    const-string v7, "SamsungIME_SYNC"

    const-string v8, "addUnigramsFromIncomingDLM - "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public applyAddWordList()V
    .locals 21

    const-string v17, "SamsungIME_SYNC"

    const-string v18, "applyAddWordList"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/io/File;

    const-string v17, "/data/data/com.sec.android.inputmethod/databases"

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getSwiftKeySession()Lcom/touchtype_fluency/util/SwiftKeySession;

    move-result-object v15

    invoke-virtual {v15}, Lcom/touchtype_fluency/util/SwiftKeySession;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v17

    sput-object v17, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mSession:Lcom/touchtype_fluency/Session;

    const/4 v5, 0x0

    :try_start_0
    const-string v17, "/data/data/com.sec.android.inputmethod/app_SwiftKey/user"

    const/16 v18, 0x4

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    sget-object v20, Lcom/touchtype_fluency/ModelSetDescription$Type;->PRIMARY_DYNAMIC_MODEL:Lcom/touchtype_fluency/ModelSetDescription$Type;

    invoke-static/range {v17 .. v20}, Lcom/touchtype_fluency/ModelSetDescription;->dynamicWithFile(Ljava/lang/String;I[Ljava/lang/String;Lcom/touchtype_fluency/ModelSetDescription$Type;)Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v5

    sget-object v17, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mSession:Lcom/touchtype_fluency/Session;

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Lcom/touchtype_fluency/Session;->load(Lcom/touchtype_fluency/ModelSetDescription;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mTempDynamicLMTrainer:Lcom/touchtype_fluency/Trainer;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mTempDynamicLMTrainer:Lcom/touchtype_fluency/Trainer;

    :cond_2
    sget-object v17, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mSession:Lcom/touchtype_fluency/Session;

    invoke-interface/range {v17 .. v17}, Lcom/touchtype_fluency/Session;->getTrainer()Lcom/touchtype_fluency/Trainer;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mTempDynamicLMTrainer:Lcom/touchtype_fluency/Trainer;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-object v2, v3

    array-length v13, v2

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v13, :cond_b

    aget-object v8, v2, v10

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    const-string v17, "AddWordList_Default"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_3

    const-string v17, "AddWordList_Korean"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_6

    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mTempDynamicLMTrainer:Lcom/touchtype_fluency/Trainer;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    new-instance v12, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/FileReader;

    move-object/from16 v0, v17

    invoke-direct {v0, v8}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v14, Lcom/touchtype_fluency/Sequence;

    invoke-direct {v14}, Lcom/touchtype_fluency/Sequence;-><init>()V

    sget-object v17, Lcom/touchtype_fluency/Sequence$Type;->MESSAGE_START:Lcom/touchtype_fluency/Sequence$Type;

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/touchtype_fluency/Sequence;->setType(Lcom/touchtype_fluency/Sequence$Type;)V

    const/4 v4, 0x0

    :cond_4
    :goto_2
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->learnStringWithExclusionPattern(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_4

    add-int/lit8 v4, v4, 0x1

    new-instance v17, Lcom/touchtype_fluency/Term;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/touchtype_fluency/Term;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/touchtype_fluency/Sequence;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catch_0
    move-exception v7

    move-object v11, v12

    :goto_3
    :try_start_3
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v11, :cond_5

    :try_start_4
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    :cond_5
    :goto_4
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v17

    if-eqz v17, :cond_a

    :cond_6
    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :catch_1
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_0

    :catch_2
    move-exception v7

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :catch_3
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_7
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mTempDynamicLMTrainer:Lcom/touchtype_fluency/Trainer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Lcom/touchtype_fluency/Trainer;->addSequence(Lcom/touchtype_fluency/Sequence;)V

    const-string v17, "SamsungIME_SYNC"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Add word List: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " words is added"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v11, v12

    :cond_8
    if-eqz v11, :cond_5

    :try_start_6
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_4

    :catch_4
    move-exception v17

    goto :goto_4

    :catchall_0
    move-exception v17

    :goto_6
    if-eqz v11, :cond_9

    :try_start_7
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    :cond_9
    :goto_7
    throw v17

    :cond_a
    const-string v17, "SamsungIME_SYNC"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "applyAddWordList: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " fail to delete"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_b
    new-instance v17, Ljava/lang/Thread;

    new-instance v18, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey$3;-><init>(Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;)V

    invoke-direct/range {v17 .. v18}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    :catch_5
    move-exception v17

    goto/16 :goto_4

    :catch_6
    move-exception v18

    goto :goto_7

    :catchall_1
    move-exception v17

    move-object v11, v12

    goto :goto_6

    :catch_7
    move-exception v7

    goto/16 :goto_3
.end method

.method public applyRemoveWordList()V
    .locals 12

    const-string v8, "SamsungIME_SYNC"

    const-string v9, "applyRemoveWordList() +"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mContext:Landroid/content/Context;

    if-nez v8, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-static {}, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getSwiftKeySession()Lcom/touchtype_fluency/util/SwiftKeySession;

    move-result-object v7

    invoke-virtual {v7}, Lcom/touchtype_fluency/util/SwiftKeySession;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v8

    sput-object v8, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mSession:Lcom/touchtype_fluency/Session;

    :try_start_0
    const-string v8, "/data/data/com.sec.android.inputmethod/app_SwiftKey/user"

    const/4 v9, 0x4

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    sget-object v11, Lcom/touchtype_fluency/ModelSetDescription$Type;->PRIMARY_DYNAMIC_MODEL:Lcom/touchtype_fluency/ModelSetDescription$Type;

    invoke-static {v8, v9, v10, v11}, Lcom/touchtype_fluency/ModelSetDescription;->dynamicWithFile(Ljava/lang/String;I[Ljava/lang/String;Lcom/touchtype_fluency/ModelSetDescription$Type;)Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v1

    sget-object v8, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mSession:Lcom/touchtype_fluency/Session;

    invoke-interface {v8, v1}, Lcom/touchtype_fluency/Session;->load(Lcom/touchtype_fluency/ModelSetDescription;)V

    sget-object v8, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mSession:Lcom/touchtype_fluency/Session;

    invoke-interface {v8}, Lcom/touchtype_fluency/Session;->getPredictor()Lcom/touchtype_fluency/Predictor;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    sget-object v8, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mSession:Lcom/touchtype_fluency/Session;

    invoke-interface {v8}, Lcom/touchtype_fluency/Session;->getPredictor()Lcom/touchtype_fluency/Predictor;

    move-result-object v5

    iget-object v8, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mTempDynamicLMTrainer:Lcom/touchtype_fluency/Trainer;

    if-eqz v8, :cond_1

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mTempDynamicLMTrainer:Lcom/touchtype_fluency/Trainer;

    :cond_1
    sget-object v8, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mSession:Lcom/touchtype_fluency/Session;

    invoke-interface {v8}, Lcom/touchtype_fluency/Session;->getTrainer()Lcom/touchtype_fluency/Trainer;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mTempDynamicLMTrainer:Lcom/touchtype_fluency/Trainer;

    new-instance v2, Lcom/sec/android/inputmethod/databases/BnSRemovedDBHelper;

    iget-object v8, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mContext:Landroid/content/Context;

    invoke-direct {v2, v8}, Lcom/sec/android/inputmethod/databases/BnSRemovedDBHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/databases/BnSRemovedDBHelper;->MergeRemoveList()V

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/databases/BnSRemovedDBHelper;->getAllWords()Ljava/util/List;

    move-result-object v0

    const-string v8, "SamsungIME_SYNC"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "applyRemoveWordList - removed list count : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/inputmethod/databases/BnSRemoveWord;

    iget-object v8, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mTempDynamicLMTrainer:Lcom/touchtype_fluency/Trainer;

    if-eqz v8, :cond_5

    if-eqz v5, :cond_5

    invoke-virtual {v6}, Lcom/sec/android/inputmethod/databases/BnSRemoveWord;->getWord()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/touchtype_fluency/TagSelectors;->dynamicModels()Lcom/touchtype_fluency/TagSelector;

    move-result-object v9

    invoke-interface {v5, v8, v9}, Lcom/touchtype_fluency/Predictor;->queryTerm(Ljava/lang/String;Lcom/touchtype_fluency/TagSelector;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mTempDynamicLMTrainer:Lcom/touchtype_fluency/Trainer;

    invoke-virtual {v6}, Lcom/sec/android/inputmethod/databases/BnSRemoveWord;->getWord()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/touchtype_fluency/TagSelectors;->dynamicModels()Lcom/touchtype_fluency/TagSelector;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lcom/touchtype_fluency/Trainer;->removeTerm(Ljava/lang/String;Lcom/touchtype_fluency/TagSelector;)V

    goto :goto_1

    :catch_0
    move-exception v3

    const-string v8, "SamsungIME_SYNC"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "failed to execute applyRemoveWordList "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_0

    :catch_1
    move-exception v3

    const-string v8, "SamsungIME_SYNC"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "failed to execute applyRemoveWordList "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :catch_2
    move-exception v3

    const-string v8, "SamsungIME_SYNC"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "failed to execute applyRemoveWordList "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v6}, Lcom/sec/android/inputmethod/databases/BnSRemoveWord;->getWord()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->toInitialCaps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/touchtype_fluency/TagSelectors;->dynamicModels()Lcom/touchtype_fluency/TagSelector;

    move-result-object v9

    invoke-interface {v5, v8, v9}, Lcom/touchtype_fluency/Predictor;->queryTerm(Ljava/lang/String;Lcom/touchtype_fluency/TagSelector;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mTempDynamicLMTrainer:Lcom/touchtype_fluency/Trainer;

    invoke-virtual {v6}, Lcom/sec/android/inputmethod/databases/BnSRemoveWord;->getWord()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->toInitialCaps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/touchtype_fluency/TagSelectors;->dynamicModels()Lcom/touchtype_fluency/TagSelector;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lcom/touchtype_fluency/Trainer;->removeTerm(Ljava/lang/String;Lcom/touchtype_fluency/TagSelector;)V

    goto/16 :goto_1

    :cond_4
    invoke-virtual {v6}, Lcom/sec/android/inputmethod/databases/BnSRemoveWord;->getWord()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/touchtype_fluency/TagSelectors;->dynamicModels()Lcom/touchtype_fluency/TagSelector;

    move-result-object v9

    invoke-interface {v5, v8, v9}, Lcom/touchtype_fluency/Predictor;->queryTerm(Ljava/lang/String;Lcom/touchtype_fluency/TagSelector;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mTempDynamicLMTrainer:Lcom/touchtype_fluency/Trainer;

    invoke-virtual {v6}, Lcom/sec/android/inputmethod/databases/BnSRemoveWord;->getWord()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/touchtype_fluency/TagSelectors;->dynamicModels()Lcom/touchtype_fluency/TagSelector;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lcom/touchtype_fluency/Trainer;->removeTerm(Ljava/lang/String;Lcom/touchtype_fluency/TagSelector;)V

    goto/16 :goto_1

    :cond_5
    const-string v8, "SamsungIME_SYNC"

    const-string v9, "Fail to apply removed words"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_6
    invoke-virtual {v2}, Lcom/sec/android/inputmethod/databases/BnSRemovedDBHelper;->close()V

    const-string v8, "SamsungIME_SYNC"

    const-string v9, "applyRemoveWordList() finished"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public copyRemoveList(Ljava/io/File;)V
    .locals 13

    const-string v10, "SamsungIME_SYNC"

    const-string v11, "copyRemoveList "

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Ljava/io/File;

    const-string v10, "/data/data/com.sec.android.inputmethod/databases"

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_8

    const-string v10, "SamsungIME_SYNC"

    const-string v11, "copyRemoveList replacement"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "SamsungIME_SYNC"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "copyRemoveList make targetDirectory : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Ljava/io/File;->mkdir()Z

    const-string v10, "SamsungIME_SYNC"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "copyRemoveList make syncFilesDir : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v6, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_6

    aget-object v3, v0, v5

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->REMOVE_DB_FILES:[Ljava/lang/String;

    array-length v7, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v7, :cond_2

    aget-object v8, v1, v4

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "RemoveListManager"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "SamsungIME_SYNC"

    const-string v11, "copyRemoveList found RemoveListManager"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "/data/data/com.sec.android.inputmethod/databases"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "RemoveListManager-Server"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v10}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    const-string v10, "SamsungIME_SYNC"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Copied Removed DB fromFile : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " to : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/data/data/com.sec.android.inputmethod/databases"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "RemoveListManager-Server"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const-string v10, "RemoveListManager-journal"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "SamsungIME_SYNC"

    const-string v11, "copyRemoveList found RemoveListManager-journal"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "/data/data/com.sec.android.inputmethod/databases"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "RemoveListManager-Server-journal"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v10}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    const-string v10, "SamsungIME_SYNC"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Copied Removed DB fromFile : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " to : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/data/data/com.sec.android.inputmethod/databases"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "RemoveListManager-Server-journal"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    const-string v10, "AddWordList_Default"

    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string v10, "AddWordList_Korean"

    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->getEngineName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    const-string v10, "SamsungIME_SYNC"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "AddWordList[Discard] Current Engine="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->getEngineName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " File="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_3
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto/16 :goto_0

    :cond_5
    new-instance v10, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "/data/data/com.sec.android.inputmethod/databases"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v10}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    const-string v10, "SamsungIME_SYNC"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "AddWordList[Copy] Current Engine="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->getEngineName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " File="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    move v4, v5

    :cond_7
    return-void

    :cond_8
    const-string v10, "SamsungIME_SYNC"

    const-string v11, "copyRemoveList targetDirectory is exist"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "SamsungIME_SYNC"

    const-string v11, "copyRemoveList removelistmanager-Server"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v6, v0

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v6, :cond_7

    aget-object v3, v0, v4

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v10, "RemoveListManager"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    const-string v10, "SamsungIME_SYNC"

    const-string v11, "copyRemoveList found RemoveListManager"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "/data/data/com.sec.android.inputmethod/databases"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "RemoveListManager-Server"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v10}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    :cond_9
    :goto_5
    const-string v10, "AddWordList_Default"

    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_a

    const-string v10, "AddWordList_Korean"

    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_b

    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->getEngineName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_d

    const-string v10, "SamsungIME_SYNC"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "copyRemoveList - AddWordList[Discard] Current Engine="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->getEngineName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " File="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_c
    const-string v10, "RemoveListManager-journal"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const-string v10, "SamsungIME_SYNC"

    const-string v11, "copyRemoveList found RemoveListManager-journal"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "/data/data/com.sec.android.inputmethod/databases"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "RemoveListManager-Server-journal"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v10}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    goto :goto_5

    :cond_d
    new-instance v10, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "/data/data/com.sec.android.inputmethod/databases"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v10}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    const-string v10, "SamsungIME_SYNC"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "copyRemoveList - AddWordList[Copy] Current Engine="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->getEngineName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " File="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6
.end method

.method public deleteAllFiles(Ljava/io/File;)Z
    .locals 7

    const-string v4, "SamsungIME_SYNC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " deleteDirectory : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    return v4
.end method

.method public deleteDirectory(Ljava/lang/String;)Z
    .locals 8

    const-string v5, "SamsungIME_SYNC"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " deleteDirectory : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    const/4 v5, 0x1

    :goto_1
    return v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public deleteLMFiles()Z
    .locals 13

    invoke-static {}, Lcom/ime/framework/util/Utils;->printStackTrace()V

    const-string v9, "SamsungIME_SYNC"

    const-string v10, "deleteLMFiles()"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->LM_FILES:[Ljava/lang/String;

    array-length v6, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v4, v0, v5

    new-instance v3, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/data/data/com.sec.android.inputmethod/app_SwiftKey/user"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-static {}, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v7

    invoke-static {}, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getSwiftKeySession()Lcom/touchtype_fluency/util/SwiftKeySession;

    move-result-object v8

    if-eqz v7, :cond_2

    if-eqz v8, :cond_2

    :try_start_0
    invoke-virtual {v7}, Lcom/touchtype_fluency/util/LanguagePackManager;->getDynamicModel()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x4

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/String;

    sget-object v12, Lcom/touchtype_fluency/ModelSetDescription$Type;->PRIMARY_DYNAMIC_MODEL:Lcom/touchtype_fluency/ModelSetDescription$Type;

    invoke-static {v9, v10, v11, v12}, Lcom/touchtype_fluency/ModelSetDescription;->dynamicWithFile(Ljava/lang/String;I[Ljava/lang/String;Lcom/touchtype_fluency/ModelSetDescription$Type;)Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v8}, Lcom/touchtype_fluency/util/SwiftKeySession;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v9

    invoke-interface {v9, v1}, Lcom/touchtype_fluency/Session;->unload(Lcom/touchtype_fluency/ModelSetDescription;)V

    const-string v9, "SamsungIME_SYNC"

    const-string v10, "deleteLMFiles(): Unload current session"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    :goto_1
    const/4 v9, 0x1

    return v9

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public extractWordList()Z
    .locals 7

    const/4 v3, 0x0

    const-string v4, "SamsungIME_SYNC"

    const-string v5, "extractWordList +"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ime/framework/engine/InputEngineManagerImpl;->getInstance()Lcom/ime/framework/engine/InputEngineManager;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mLoggingListener:Lcom/touchtype_fluency/LoggingListener;

    invoke-static {v4}, Lcom/touchtype/samsung/supportlibrary/SupportLibrary;->getInstance(Lcom/touchtype_fluency/LoggingListener;)Lcom/touchtype/samsung/supportlibrary/SupportLibrary;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mSupportLibrary:Lcom/touchtype/samsung/supportlibrary/SupportLibrary;

    const/4 v2, 0x0

    :try_start_0
    const-string v4, "Samsung_nolimit_flow_f2498e18"

    invoke-static {v4}, Lcom/touchtype_fluency/SwiftKeySDK;->createSession(Ljava/lang/String;)Lcom/touchtype_fluency/Session;
    :try_end_0
    .catch Lcom/touchtype_fluency/LicenseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-nez v2, :cond_0

    const-string v4, "SamsungIME_SYNC"

    const-string v5, "Fail to get Session!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v3

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/touchtype_fluency/LicenseException;->printStackTrace()V

    goto :goto_0

    :cond_0
    :try_start_1
    const-string v3, "/data/data/com.sec.android.inputmethod/app_SwiftKey/user"

    const/4 v4, 0x4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    sget-object v6, Lcom/touchtype_fluency/ModelSetDescription$Type;->PRIMARY_DYNAMIC_MODEL:Lcom/touchtype_fluency/ModelSetDescription$Type;

    invoke-static {v3, v4, v5, v6}, Lcom/touchtype_fluency/ModelSetDescription;->dynamicWithFile(Ljava/lang/String;I[Ljava/lang/String;Lcom/touchtype_fluency/ModelSetDescription$Type;)Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/touchtype_fluency/Session;->load(Lcom/touchtype_fluency/ModelSetDescription;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    iget-object v3, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mSupportLibrary:Lcom/touchtype/samsung/supportlibrary/SupportLibrary;

    invoke-virtual {v3}, Lcom/touchtype/samsung/supportlibrary/SupportLibrary;->getMyWordList()Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mMyWordList:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;

    iget-object v3, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mMyWordList:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mMyWordList:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;

    invoke-virtual {v3}, Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;->startUp()V

    :cond_1
    iget-object v3, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mMyWordList:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;

    sget-object v4, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm$Ordering;->UNICODE_ASC:Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm$Ordering;

    iget-object v5, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mListener:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;

    invoke-virtual {v3, v4, v5, v2}, Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;->listUserTerms(Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm$Ordering;Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;Lcom/touchtype_fluency/Session;)V

    const-string v3, "SamsungIME_SYNC"

    const-string v4, "extractWordList -"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public getDirectory()Ljava/lang/String;
    .locals 1

    const-string v0, "/data/data/com.sec.android.inputmethod/app_SwiftKey/user"

    return-object v0
.end method

.method public getEngineName()Ljava/lang/String;
    .locals 1

    const-string v0, "SwiftKey"

    return-object v0
.end method

.method public getExistingTermsFromCurrentDLM()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/touchtype_fluency/LicenseException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v6, Lcom/ime/framework/util/Debug;->ENG_MODE:Z

    if-eqz v6, :cond_0

    const-string v6, "SamsungIME_SYNC"

    const-string v7, "getExistingTermsFromCurrentDLM"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    sget-object v6, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mSession:Lcom/touchtype_fluency/Session;

    if-eqz v6, :cond_1

    const/4 v6, 0x0

    sput-object v6, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mSession:Lcom/touchtype_fluency/Session;

    :cond_1
    invoke-static {}, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getSwiftKeySession()Lcom/touchtype_fluency/util/SwiftKeySession;

    move-result-object v3

    invoke-virtual {v3}, Lcom/touchtype_fluency/util/SwiftKeySession;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v6

    sput-object v6, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mSession:Lcom/touchtype_fluency/Session;

    const-string v6, "/data/data/com.sec.android.inputmethod/app_SwiftKey/user"

    const/4 v7, 0x4

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/String;

    sget-object v9, Lcom/touchtype_fluency/ModelSetDescription$Type;->PRIMARY_DYNAMIC_MODEL:Lcom/touchtype_fluency/ModelSetDescription$Type;

    invoke-static {v6, v7, v8, v9}, Lcom/touchtype_fluency/ModelSetDescription;->dynamicWithFile(Ljava/lang/String;I[Ljava/lang/String;Lcom/touchtype_fluency/ModelSetDescription$Type;)Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v0

    sget-object v6, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mSession:Lcom/touchtype_fluency/Session;

    invoke-interface {v6, v0}, Lcom/touchtype_fluency/Session;->load(Lcom/touchtype_fluency/ModelSetDescription;)V

    sget-object v6, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mSession:Lcom/touchtype_fluency/Session;

    invoke-interface {v6}, Lcom/touchtype_fluency/Session;->getTrainer()Lcom/touchtype_fluency/Trainer;

    move-result-object v6

    invoke-interface {v6}, Lcom/touchtype_fluency/Trainer;->getTermCounts()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    iput-object v6, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mWordsExisting:Ljava/util/Set;

    iget-object v6, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mWordsExisting:Ljava/util/Set;

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/touchtype_fluency/Term;

    iget-object v6, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mWordsExisting:Ljava/util/Set;

    invoke-virtual {v4}, Lcom/touchtype_fluency/Term;->getTerm()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getFiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->UPLOAD_FILES:Ljava/util/List;

    return-object v0
.end method

.method public getLatestUpdatedTimestamp()J
    .locals 10

    const-wide/16 v6, 0x0

    iget-object v0, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->LM_FILES:[Ljava/lang/String;

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    new-instance v1, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/data/data/com.sec.android.inputmethod/app_SwiftKey/user"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    cmp-long v5, v8, v6

    if-lez v5, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-wide v6
.end method

.method public getRemovedDBDirectory()Ljava/lang/String;
    .locals 1

    const-string v0, "/data/data/com.sec.android.inputmethod/databases"

    return-object v0
.end method

.method public getRemovedDBFiles()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->REMOVE_DB_FILES:[Ljava/lang/String;

    return-object v0
.end method

.method public getUnigramsFromCloudDLM(Ljava/lang/String;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/touchtype_fluency/Term;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/touchtype_fluency/LicenseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v3, "SamsungIME_SYNC"

    const-string v4, "getUnigramsFromCloudDLM +"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "Samsung_nolimit_flow_f2498e18"

    invoke-static {v3}, Lcom/touchtype_fluency/SwiftKeySDK;->createSession(Ljava/lang/String;)Lcom/touchtype_fluency/Session;

    move-result-object v2

    invoke-static {p1}, Lcom/touchtype_fluency/ModelSetDescription;->fromFile(Ljava/lang/String;)Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/touchtype_fluency/Session;->load(Lcom/touchtype_fluency/ModelSetDescription;)V

    invoke-interface {v2}, Lcom/touchtype_fluency/Session;->getTrainer()Lcom/touchtype_fluency/Trainer;

    move-result-object v3

    invoke-interface {v3}, Lcom/touchtype_fluency/Trainer;->getTermCounts()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v2, v1}, Lcom/touchtype_fluency/Session;->unload(Lcom/touchtype_fluency/ModelSetDescription;)V

    invoke-interface {v2}, Lcom/touchtype_fluency/Session;->dispose()V

    const-string v3, "SamsungIME_SYNC"

    const-string v4, "getUnigramsFromCloudDLM -"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    return-object v3
.end method

.method public getZipEngineDirectory()Ljava/lang/String;
    .locals 1

    const-string v0, "/data/data/com.sec.android.inputmethod/zipSwiftKey"

    return-object v0
.end method

.method public getZipWorkDirectory()Ljava/lang/String;
    .locals 1

    const-string v0, "/data/data/com.sec.android.inputmethod/zipWork"

    return-object v0
.end method

.method public isActiveSession()Z
    .locals 3

    invoke-static {}, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getSwiftKeySession()Lcom/touchtype_fluency/util/SwiftKeySession;

    move-result-object v1

    invoke-static {}, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public mergeUserData(Ljava/io/File;Ljava/io/File;)I
    .locals 9

    const/4 v5, 0x0

    const/4 v4, 0x0

    if-nez p1, :cond_0

    const-string v6, "SamsungIME_SYNC"

    const-string v7, "Error from mergeUserData, couldDir path should not be null."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v5

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->getMergePolicy()I

    move-result v3

    const-string v6, "SamsungIME_SYNC"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sync Merge Policy =  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v3, :pswitch_data_0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mergeUserDataInternal(Ljava/io/File;Ljava/io/File;)I

    move-result v4

    :goto_1
    move v5, v4

    goto :goto_0

    :pswitch_0
    const-string v6, "SamsungIME_SYNC"

    const-string v7, "re-training."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->isContainedSwiftKeyLMWithInCloudLM(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-boolean v6, Lcom/ime/framework/util/Debug;->ENG_MODE:Z

    if-eqz v6, :cond_1

    const-string v6, "SamsungIME_SYNC"

    const-string v7, "SwiftKey LM files exist."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->getExistingTermsFromCurrentDLM()V

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->addUnigramsFromIncomingDLM(Ljava/lang/String;)V

    const/4 v4, 0x1

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->isValideSwiftKeyDLM()Z

    move-result v6

    if-eqz v6, :cond_4

    move v2, v5

    :goto_2
    const-string v5, "SamsungIME_SYNC"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isValideCurrentUserLM : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/touchtype_fluency/LicenseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_3

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->cleanUp()V

    goto :goto_1

    :cond_4
    const/4 v2, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->cleanUp()V

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Lcom/touchtype_fluency/LicenseException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-direct {p0}, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->cleanUp()V

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-direct {p0}, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->cleanUp()V

    goto :goto_1

    :catchall_0
    move-exception v5

    invoke-direct {p0}, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->cleanUp()V

    throw v5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public prepareZip(Ljava/lang/String;)Z
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-boolean v7, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "SamsungIME"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " prepareZip targetDir = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->mkdir()Z

    :cond_1
    iget-object v0, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->LM_FILES:[Ljava/lang/String;

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    new-instance v2, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/data/data/com.sec.android.inputmethod/app_SwiftKey/user"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v7}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance v5, Ljava/io/File;

    const-string v7, "/data/data/com.sec.android.inputmethod/databases"

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v4, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v2, v0, v3

    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v7}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v7, 0x1

    return v7
.end method

.method public prepareZip(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11

    sget-boolean v8, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v8, :cond_0

    const-string v8, "SamsungIME"

    const-string v9, "prepareZip userLM and Extra Files"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "SamsungIME"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "prepareZip zipEngineDir = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " zipCommonDir = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v7}, Ljava/io/File;->mkdir()Z

    :cond_1
    invoke-virtual {p0, v7}, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->deleteAllFiles(Ljava/io/File;)Z

    sget-boolean v8, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v8, :cond_2

    const-string v8, "SamsungIME"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[prepareZip Step 1]copy User LM from UserFolder of SwiftKey to  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->LM_FILES:[Ljava/lang/String;

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_4

    aget-object v1, v0, v3

    new-instance v2, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/data/data/com.sec.android.inputmethod/app_SwiftKey/user"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v8}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {v6}, Ljava/io/File;->mkdir()Z

    :cond_5
    invoke-virtual {p0, v6}, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->deleteAllFiles(Ljava/io/File;)Z

    new-instance v5, Ljava/io/File;

    const-string v8, "/data/data/com.sec.android.inputmethod/databases"

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, "SamsungIME"

    const-string v9, "[prepareZip] cannot find the directory of Removed DB"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    :goto_1
    return v8

    :cond_6
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v4, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_8

    aget-object v2, v0, v3

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_7

    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v8}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    sget-boolean v8, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v8, :cond_9

    const-string v8, "SamsungIME"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[prepareZip Step 2]copied Removed DB files to  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const/4 v8, 0x1

    goto :goto_1
.end method

.method toInitialCaps(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    if-nez p1, :cond_0

    const/4 v7, 0x0

    :goto_0
    return-object v7

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    const-string v7, ""

    goto :goto_0

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    :goto_1
    if-ge v4, v6, :cond_2

    invoke-virtual {p1, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    add-int/2addr v4, v7

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method
