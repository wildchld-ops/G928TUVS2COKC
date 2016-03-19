.class public Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager;
.super Ljava/lang/Object;
.source "SwiftkeyAutoTextManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager$3;
    }
.end annotation


# static fields
.field private static final DYNAMIC_LM_DIR:Ljava/lang/String; = "autotext"

.field private static final TAG:Ljava/lang/String; = "SwiftkeyAutoTextManager"

.field private static mHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;",
            ">;"
        }
    .end annotation
.end field

.field private static mInstance:Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager;

.field private static mSession:Lcom/touchtype_fluency/Session;


# instance fields
.field public isPharseEmpty:Z

.field public isShortCutEmpty:Z

.field public mContext:Landroid/content/Context;

.field private mMyWordList:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;

.field private mMyWordListener:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;

.field private mSupportLibrary:Lcom/touchtype/samsung/supportlibrary/SupportLibrary;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager;->mHashMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager;->isShortCutEmpty:Z

    iput-boolean v0, p0, Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager;->isPharseEmpty:Z

    new-instance v0, Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager$2;

    invoke-direct {v0, p0}, Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager$2;-><init>(Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager;)V

    iput-object v0, p0, Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager;->mMyWordListener:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;

    iput-object p1, p0, Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager;->loadDynamicLM()V

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager;->mSupportLibrary:Lcom/touchtype/samsung/supportlibrary/SupportLibrary;

    invoke-virtual {v0}, Lcom/touchtype/samsung/supportlibrary/SupportLibrary;->getMyWordList()Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager;->mMyWordList:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager;->mMyWordList:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager;->mMyWordList:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;

    invoke-virtual {v0}, Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;->startUp()V

    invoke-direct {p0}, Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager;->populateWordList()V

    :cond_0
    return-void
.end method

.method static synthetic access$000()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager;->mHashMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager;
    .locals 1

    sget-object v0, Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager;->mInstance:Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager;

    invoke-direct {v0, p0}, Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager;->mInstance:Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager;

    :cond_0
    sget-object v0, Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager;->mInstance:Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Z)Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager;
    .locals 1

    sget-object v0, Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager;->mInstance:Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager;

    if-nez v0, :cond_1

    new-instance v0, Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager;

    invoke-direct {v0, p0}, Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager;->mInstance:Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager;

    :cond_0
    :goto_0
    sget-object v0, Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager;->mInstance:Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager;

    return-object v0

    :cond_1
    if-eqz p1, :cond_0

    sget-object v0, Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager;->mHashMap:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager;->mHashMap:Ljava/util/HashMap;

    new-instance v0, Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager;

    invoke-direct {v0, p0}, Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager;->mInstance:Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager;

    goto :goto_0
.end method

.method private loadDynamicLM()V
    .locals 9

    new-instance v4, Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager$1;

    invoke-direct {v4, p0}, Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager$1;-><init>(Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager;)V

    invoke-static {v4}, Lcom/touchtype/samsung/supportlibrary/SupportLibrary;->getInstance(Lcom/touchtype_fluency/LoggingListener;)Lcom/touchtype/samsung/supportlibrary/SupportLibrary;

    move-result-object v4

    iput-object v4, p0, Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager;->mSupportLibrary:Lcom/touchtype/samsung/supportlibrary/SupportLibrary;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "SwiftKey"

    const v7, 0x8000

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "autotext"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    :cond_0
    :try_start_0
    sget-object v4, Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager;->mSession:Lcom/touchtype_fluency/Session;

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    sput-object v4, Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager;->mSession:Lcom/touchtype_fluency/Session;

    :cond_1
    const-string v4, "Samsung_nolimit_flow_parameter_193196a"

    invoke-static {v4}, Lcom/touchtype_fluency/SwiftKeySDK;->createSession(Ljava/lang/String;)Lcom/touchtype_fluency/Session;

    move-result-object v4

    sput-object v4, Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager;->mSession:Lcom/touchtype_fluency/Session;
    :try_end_0
    .catch Lcom/touchtype_fluency/LicenseException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "autotext.lm"

    const/4 v6, 0x4

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    sget-object v8, Lcom/touchtype_fluency/ModelSetDescription$Type;->OTHER_DYNAMIC_MODEL:Lcom/touchtype_fluency/ModelSetDescription$Type;

    invoke-static {v4, v5, v6, v7, v8}, Lcom/touchtype_fluency/ModelSetDescription;->dynamicWithFile(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Lcom/touchtype_fluency/ModelSetDescription$Type;)Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v2

    sget-object v4, Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager;->mSession:Lcom/touchtype_fluency/Session;

    invoke-interface {v4, v2}, Lcom/touchtype_fluency/Session;->load(Lcom/touchtype_fluency/ModelSetDescription;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v3

    const-string v4, "SwiftkeyAutoTextManager"

    const-string v5, "Invalid SDK license key specified in AutoTextSettings"

    invoke-static {v4, v5}, Lcom/touchtype_fluency/service/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v3

    const-string v4, "SwiftkeyAutoTextManager"

    const-string v5, "Error loading language models in AutoTextSettings"

    invoke-static {v4, v5}, Lcom/touchtype_fluency/service/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private populateWordList()V
    .locals 5

    :try_start_0
    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager;->mMyWordList:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;

    sget-object v2, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm$Ordering;->UNICODE_ASC:Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm$Ordering;

    iget-object v3, p0, Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager;->mMyWordListener:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;

    sget-object v4, Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager;->mSession:Lcom/touchtype_fluency/Session;

    invoke-virtual {v1, v2, v3, v4}, Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;->listUserTerms(Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm$Ordering;Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;Lcom/touchtype_fluency/Session;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public checkUserWord(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/ime/framework/util/Utils;->containsKoreanLetter(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Lcom/touchtype_fluency/Hangul;->split(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    sget-object v2, Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    move-object v1, p1

    goto :goto_0
.end method

.method public getUserWord(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/ime/framework/util/Utils;->containsKoreanLetter(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1}, Lcom/touchtype_fluency/Hangul;->split(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    sget-object v3, Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;

    invoke-virtual {v3}, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;->getTerm()Lcom/touchtype_fluency/Term;

    move-result-object v3

    invoke-virtual {v3}, Lcom/touchtype_fluency/Term;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/touchtype_fluency/Hangul;->join(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v2, p1

    goto :goto_0
.end method

.method public removeCachedAllUserWord()V
    .locals 1

    sget-object v0, Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager;->mHashMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method
