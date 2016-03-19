.class public Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;
.super Ljava/lang/Object;
.source "CharacterMapHelper.java"


# static fields
.field private static final CHARMAP_INITIAL_KO:Ljava/lang/String; = "initialcharmap_ko.json"

.field private static final CHINESE_PINYIN_TAG:Ljava/lang/String; = "pinyin"

.field private static final CHINESE_ZHUYIN_TAG:Ljava/lang/String; = "zhuyin"

.field private static final CHUNJIIN_TAG:Ljava/lang/String; = "chunjiin"

.field private static final INITIAL_TAG:Ljava/lang/String; = "initial"

.field private static final JAPANESE_TAG:Ljava/lang/String; = "japanese"

.field private static final MULTI_CHARMAP_CN_PINYIN:Ljava/lang/String; = "multicharmap_pinyin.json"

.field private static final MULTI_CHARMAP_CN_ZHUYIN:Ljava/lang/String; = "multicharmap_zhuyin.json"

.field private static final MULTI_CHARMAP_JA:Ljava/lang/String; = "multicharmap_ja.json"

.field private static final MULTI_CHARMAP_KO:Ljava/lang/String; = "multicharmap_ko.json"

.field private static sInstance:Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;


# instance fields
.field chinesePinyinTagSelector:Lcom/touchtype_fluency/TagSelector;

.field chineseZhuyinTagSelector:Lcom/touchtype_fluency/TagSelector;

.field chunjiinTagSelector:Lcom/touchtype_fluency/TagSelector;

.field initialTagSelector:Lcom/touchtype_fluency/TagSelector;

.field private isFlowStarted:Z

.field japaneseTagSelector:Lcom/touchtype_fluency/TagSelector;

.field private mAssetManager:Landroid/content/res/AssetManager;

.field private mInputManager:Lcom/ime/framework/common/InputManager;

.field private mIs:Ljava/io/InputStream;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper$1;

    invoke-direct {v0, p0}, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper$1;-><init>(Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;)V

    iput-object v0, p0, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;->initialTagSelector:Lcom/touchtype_fluency/TagSelector;

    new-instance v0, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper$2;

    invoke-direct {v0, p0}, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper$2;-><init>(Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;)V

    iput-object v0, p0, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;->chunjiinTagSelector:Lcom/touchtype_fluency/TagSelector;

    new-instance v0, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper$3;

    invoke-direct {v0, p0}, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper$3;-><init>(Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;)V

    iput-object v0, p0, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;->japaneseTagSelector:Lcom/touchtype_fluency/TagSelector;

    new-instance v0, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper$4;

    invoke-direct {v0, p0}, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper$4;-><init>(Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;)V

    iput-object v0, p0, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;->chinesePinyinTagSelector:Lcom/touchtype_fluency/TagSelector;

    new-instance v0, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper$5;

    invoke-direct {v0, p0}, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper$5;-><init>(Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;)V

    iput-object v0, p0, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;->chineseZhuyinTagSelector:Lcom/touchtype_fluency/TagSelector;

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;->isFlowStarted:Z

    return-void
.end method

.method public static newInstance()Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;
    .locals 1

    sget-object v0, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;->sInstance:Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;

    invoke-direct {v0}, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;-><init>()V

    sput-object v0, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;->sInstance:Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;

    :cond_0
    sget-object v0, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;->sInstance:Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;

    return-object v0
.end method


# virtual methods
.method public clearChracterMap(Lcom/touchtype_fluency/InputMapper;)V
    .locals 2

    :try_start_0
    const-string v1, "{\"charmap\":{}}"

    invoke-interface {p1, v1}, Lcom/touchtype_fluency/InputMapper;->addCharacterMap(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/touchtype_fluency/InputMapper;->removeAllCharacterMaps()V
    :try_end_0
    .catch Lcom/touchtype_fluency/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/touchtype_fluency/InvalidDataException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method public disableKorInitialInput(Lcom/touchtype_fluency/InputMapper;)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;->initialTagSelector:Lcom/touchtype_fluency/TagSelector;

    invoke-interface {p1, v1}, Lcom/touchtype_fluency/InputMapper;->disableCharacterMaps(Lcom/touchtype_fluency/TagSelector;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public enableKorInitialInput(Lcom/touchtype_fluency/InputMapper;)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;->initialTagSelector:Lcom/touchtype_fluency/TagSelector;

    invoke-interface {p1, v1}, Lcom/touchtype_fluency/InputMapper;->enableCharacterMaps(Lcom/touchtype_fluency/TagSelector;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public endChonjiinFlow(Lcom/touchtype_fluency/InputMapper;)V
    .locals 1

    iget-boolean v0, p0, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;->isFlowStarted:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;->isFlowStarted:Z

    goto :goto_0
.end method

.method public loadChnPinyinCharacterMap(Lcom/touchtype_fluency/InputMapper;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;->unLoadAllCharacterMap(Lcom/touchtype_fluency/InputMapper;)V

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;->mAssetManager:Landroid/content/res/AssetManager;

    :try_start_0
    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;->mAssetManager:Landroid/content/res/AssetManager;

    const-string v2, "multicharmap_pinyin.json"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;->mIs:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;->mIs:Ljava/io/InputStream;

    invoke-interface {p1, v1}, Lcom/touchtype_fluency/InputMapper;->addCharacterMap(Ljava/io/InputStream;)V
    :try_end_0
    .catch Lcom/touchtype_fluency/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/touchtype_fluency/InvalidDataException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method public loadChnZhuyinCharacterMap(Lcom/touchtype_fluency/InputMapper;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;->unLoadAllCharacterMap(Lcom/touchtype_fluency/InputMapper;)V

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;->mAssetManager:Landroid/content/res/AssetManager;

    :try_start_0
    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;->mAssetManager:Landroid/content/res/AssetManager;

    const-string v2, "multicharmap_zhuyin.json"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;->mIs:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;->mIs:Ljava/io/InputStream;

    invoke-interface {p1, v1}, Lcom/touchtype_fluency/InputMapper;->addCharacterMap(Ljava/io/InputStream;)V
    :try_end_0
    .catch Lcom/touchtype_fluency/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/touchtype_fluency/InvalidDataException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method public loadJpnMultiCharacterMap(Lcom/touchtype_fluency/InputMapper;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;->unLoadAllCharacterMap(Lcom/touchtype_fluency/InputMapper;)V

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;->mAssetManager:Landroid/content/res/AssetManager;

    :try_start_0
    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;->mAssetManager:Landroid/content/res/AssetManager;

    const-string v2, "multicharmap_ja.json"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;->mIs:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;->mIs:Ljava/io/InputStream;

    invoke-interface {p1, v1}, Lcom/touchtype_fluency/InputMapper;->addCharacterMap(Ljava/io/InputStream;)V
    :try_end_0
    .catch Lcom/touchtype_fluency/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/touchtype_fluency/InvalidDataException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method public loadKorCharacterMapWithInitialInput(Lcom/touchtype_fluency/InputMapper;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;->unLoadAllCharacterMap(Lcom/touchtype_fluency/InputMapper;)V

    invoke-virtual {p0, p1}, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;->loadKorInitialInputCharacterMap(Lcom/touchtype_fluency/InputMapper;)V

    invoke-virtual {p0, p1}, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;->loadKorMultiCharacterMap(Lcom/touchtype_fluency/InputMapper;)V

    return-void
.end method

.method public loadKorInitialInputCharacterMap(Lcom/touchtype_fluency/InputMapper;)V
    .locals 3

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;->mAssetManager:Landroid/content/res/AssetManager;

    :try_start_0
    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;->mAssetManager:Landroid/content/res/AssetManager;

    const-string v2, "initialcharmap_ko.json"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;->mIs:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;->mIs:Ljava/io/InputStream;

    invoke-interface {p1, v1}, Lcom/touchtype_fluency/InputMapper;->addCharacterMap(Ljava/io/InputStream;)V
    :try_end_0
    .catch Lcom/touchtype_fluency/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/touchtype_fluency/InvalidDataException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method public loadKorMultiCharacterMap(Lcom/touchtype_fluency/InputMapper;)V
    .locals 5

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getPreferenceInputMethodOnKor()I

    move-result v1

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v2

    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    iput-object v3, p0, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;->mAssetManager:Landroid/content/res/AssetManager;

    :try_start_0
    iget-object v3, p0, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;->mAssetManager:Landroid/content/res/AssetManager;

    const-string v4, "multicharmap_ko.json"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;->mIs:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;->mIs:Ljava/io/InputStream;

    invoke-interface {p1, v3}, Lcom/touchtype_fluency/InputMapper;->addCharacterMap(Ljava/io/InputStream;)V
    :try_end_0
    .catch Lcom/touchtype_fluency/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/touchtype_fluency/InvalidDataException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method public startChonjiinFlow(Lcom/touchtype_fluency/InputMapper;)V
    .locals 1

    iget-boolean v0, p0, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;->isFlowStarted:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;->isFlowStarted:Z

    invoke-virtual {p0, p1}, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;->disableKorInitialInput(Lcom/touchtype_fluency/InputMapper;)V

    goto :goto_0
.end method

.method public unLoadAllCharacterMap(Lcom/touchtype_fluency/InputMapper;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;->initialTagSelector:Lcom/touchtype_fluency/TagSelector;

    invoke-interface {p1, v1}, Lcom/touchtype_fluency/InputMapper;->removeCharacterMaps(Lcom/touchtype_fluency/TagSelector;)V

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;->chunjiinTagSelector:Lcom/touchtype_fluency/TagSelector;

    invoke-interface {p1, v1}, Lcom/touchtype_fluency/InputMapper;->removeCharacterMaps(Lcom/touchtype_fluency/TagSelector;)V

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;->japaneseTagSelector:Lcom/touchtype_fluency/TagSelector;

    invoke-interface {p1, v1}, Lcom/touchtype_fluency/InputMapper;->removeCharacterMaps(Lcom/touchtype_fluency/TagSelector;)V

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;->chinesePinyinTagSelector:Lcom/touchtype_fluency/TagSelector;

    invoke-interface {p1, v1}, Lcom/touchtype_fluency/InputMapper;->removeCharacterMaps(Lcom/touchtype_fluency/TagSelector;)V

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;->chineseZhuyinTagSelector:Lcom/touchtype_fluency/TagSelector;

    invoke-interface {p1, v1}, Lcom/touchtype_fluency/InputMapper;->removeCharacterMaps(Lcom/touchtype_fluency/TagSelector;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;->mAssetManager:Landroid/content/res/AssetManager;

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;->mIs:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;->mIs:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;->mIs:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
