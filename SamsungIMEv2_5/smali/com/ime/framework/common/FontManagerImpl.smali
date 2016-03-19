.class public final Lcom/ime/framework/common/FontManagerImpl;
.super Ljava/lang/Object;
.source "FontManagerImpl.java"

# interfaces
.implements Lcom/ime/framework/common/FontManager;


# static fields
.field private static final FLIP_FONT_PATH:Ljava/lang/String; = "persist.sys.flipfontpath"

.field private static final FONT_PATH:Ljava/lang/String; = "font_path"

.field private static mInstance:Lcom/ime/framework/common/FontManager;

.field private static oldFlipFont:Ljava/lang/String;


# instance fields
.field private fontPath:Ljava/lang/String;

.field protected mTypefaceFontSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/ime/framework/common/FontManagerImpl;->mInstance:Lcom/ime/framework/common/FontManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ime/framework/common/FontManagerImpl;->mTypefaceFontSet:Ljava/util/HashMap;

    const-string v0, "null"

    iput-object v0, p0, Lcom/ime/framework/common/FontManagerImpl;->fontPath:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/ime/framework/common/FontManagerImpl;->mTypefaceFontSet:Ljava/util/HashMap;

    return-void
.end method

.method public static getInstance()Lcom/ime/framework/common/FontManager;
    .locals 1

    sget-object v0, Lcom/ime/framework/common/FontManagerImpl;->mInstance:Lcom/ime/framework/common/FontManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ime/framework/common/FontManagerImpl;

    invoke-direct {v0}, Lcom/ime/framework/common/FontManagerImpl;-><init>()V

    sput-object v0, Lcom/ime/framework/common/FontManagerImpl;->mInstance:Lcom/ime/framework/common/FontManager;

    :cond_0
    sget-object v0, Lcom/ime/framework/common/FontManagerImpl;->mInstance:Lcom/ime/framework/common/FontManager;

    return-object v0
.end method

.method private setFont(Ljava/lang/String;Landroid/graphics/Typeface;)V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/common/FontManagerImpl;->mTypefaceFontSet:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addWordIntoTypoList(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public clearTypoList()V
    .locals 0

    return-void
.end method

.method public getControlPopupFont()Landroid/graphics/Typeface;
    .locals 2

    const-string v0, "sec-roboto-light"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public getFont(Ljava/lang/String;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/common/FontManagerImpl;->mTypefaceFontSet:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-object p2

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/common/FontManagerImpl;->mTypefaceFontSet:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    move-object p2, v0

    goto :goto_0
.end method

.method public getSystemFont()Landroid/graphics/Typeface;
    .locals 2

    const-string v0, "DROIDSANS_BOLD"

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0, v1}, Lcom/ime/framework/common/FontManagerImpl;->getFont(Ljava/lang/String;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 10

    const-string v6, ""

    new-instance v3, Ljava/io/File;

    const-string v7, "/data/data/com.android.settings/app_fonts/sans.loc"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v0, 0x0

    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v5, :cond_0

    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_0
    move-object v0, v1

    move-object v4, v5

    :cond_1
    :goto_0
    const-string v7, ""

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "SamsungIME"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Flip Font Path = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/ime/framework/common/FontManagerImpl;->setOwnFont(Landroid/content/Context;)V

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v7

    move-object v0, v1

    move-object v4, v5

    goto :goto_0

    :catch_1
    move-exception v2

    :goto_2
    :try_start_4
    const-string v6, "default"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v4, :cond_1

    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    :catch_2
    move-exception v7

    goto :goto_0

    :catch_3
    move-exception v2

    :goto_3
    :try_start_6
    const-string v6, "default"

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v4, :cond_1

    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_0

    :catch_4
    move-exception v7

    goto :goto_0

    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v4, :cond_3

    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :cond_3
    :goto_5
    throw v7

    :cond_4
    if-eqz v6, :cond_2

    sget-object v7, Lcom/ime/framework/common/FontManagerImpl;->oldFlipFont:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "default"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {p0, p1}, Lcom/ime/framework/common/FontManagerImpl;->setOwnFont(Landroid/content/Context;)V

    :goto_6
    sput-object v6, Lcom/ime/framework/common/FontManagerImpl;->oldFlipFont:Ljava/lang/String;

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/ime/framework/common/FontManagerImpl;->setSystemFont()V

    goto :goto_6

    :catch_5
    move-exception v8

    goto :goto_5

    :catchall_1
    move-exception v7

    move-object v4, v5

    goto :goto_4

    :catchall_2
    move-exception v7

    move-object v0, v1

    move-object v4, v5

    goto :goto_4

    :catch_6
    move-exception v2

    move-object v4, v5

    goto :goto_3

    :catch_7
    move-exception v2

    move-object v0, v1

    move-object v4, v5

    goto :goto_3

    :catch_8
    move-exception v2

    move-object v4, v5

    goto :goto_2

    :catch_9
    move-exception v2

    move-object v0, v1

    move-object v4, v5

    goto :goto_2
.end method

.method public isContainInTypoList(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public refreshContextBuffer(Z)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public setOwnFont(Landroid/content/Context;)V
    .locals 4

    :try_start_0
    const-string v1, "DROIDSANS_BOLD"

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-direct {p0, v1, v2}, Lcom/ime/framework/common/FontManagerImpl;->setFont(Ljava/lang/String;Landroid/graphics/Typeface;)V

    const-string v1, "DROIDSANS"

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-direct {p0, v1, v2}, Lcom/ime/framework/common/FontManagerImpl;->setFont(Ljava/lang/String;Landroid/graphics/Typeface;)V

    const-string v1, "SAMSUNGSANS_KEYPAD"

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "fonts/SamsungKeypad-Medium.ttf"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/ime/framework/common/FontManagerImpl;->setFont(Ljava/lang/String;Landroid/graphics/Typeface;)V

    const-string v1, "SAMSUNGSANS_NUM3L"

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "fonts/SamsungSansNum-3L.ttf"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/ime/framework/common/FontManagerImpl;->setFont(Ljava/lang/String;Landroid/graphics/Typeface;)V

    const-string v1, "ROBOTO_REGULAR"

    const-string v2, "/system/fonts/Roboto-Regular.ttf"

    invoke-static {v2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/ime/framework/common/FontManagerImpl;->setFont(Ljava/lang/String;Landroid/graphics/Typeface;)V

    const-string v1, "VOHWRPANEL"

    const-string v2, "VOHWRPANEL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "DHWR"

    const-string v2, "VOHWRPANEL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :try_start_1
    const-string v1, "HANDWRITING"

    const-string v2, "/system/fonts/LindseyforSamsung-Regular.ttf"

    invoke-static {v2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/ime/framework/common/FontManagerImpl;->setFont(Ljava/lang/String;Landroid/graphics/Typeface;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    :try_start_2
    const-string v1, "HAPTIC"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :goto_1
    const-string v1, "ROBOTO_KEYPAD_REGULAR"

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "fonts/Robotokeypad-Regular.ttf"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/ime/framework/common/FontManagerImpl;->setFont(Ljava/lang/String;Landroid/graphics/Typeface;)V

    const-string v1, "ROBOTO_MEDIUM"

    const-string v2, "/system/fonts/Roboto-Medium.ttf"

    invoke-static {v2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/ime/framework/common/FontManagerImpl;->setFont(Ljava/lang/String;Landroid/graphics/Typeface;)V

    const-string v1, "SEC_ROBOTO_LIGHT_REGULAR"

    const-string v2, "sec-roboto-light"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/ime/framework/common/FontManagerImpl;->setFont(Ljava/lang/String;Landroid/graphics/Typeface;)V

    const-string v1, "ROBOTO_LIGHT"

    const-string v2, "/system/fonts/Roboto-Light.ttf"

    invoke-static {v2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/ime/framework/common/FontManagerImpl;->setFont(Ljava/lang/String;Landroid/graphics/Typeface;)V

    :goto_2
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SamsungIME"

    const-string v2, "failed to loading LindseyforSamsung-Regular.ttf"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "HANDWRITING"

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-direct {p0, v1, v2}, Lcom/ime/framework/common/FontManagerImpl;->setFont(Ljava/lang/String;Landroid/graphics/Typeface;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "SamsungIME"

    const-string v2, "own font cannot be loaded"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/ime/framework/common/FontManagerImpl;->setSystemFont()V

    goto :goto_2

    :cond_2
    :try_start_3
    const-string v1, "SAMSUNG_KEYPAD_REGULAR"

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "fonts/Robotokeypad-Regular.ttf"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/ime/framework/common/FontManagerImpl;->setFont(Ljava/lang/String;Landroid/graphics/Typeface;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method

.method public setSystemFont()V
    .locals 3

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const-string v1, "DROIDSANS_BOLD"

    invoke-direct {p0, v1, v0}, Lcom/ime/framework/common/FontManagerImpl;->setFont(Ljava/lang/String;Landroid/graphics/Typeface;)V

    const-string v1, "DROIDSANS_BOLD"

    const/4 v2, 0x1

    invoke-static {v2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/ime/framework/common/FontManagerImpl;->setFont(Ljava/lang/String;Landroid/graphics/Typeface;)V

    const-string v1, "DROIDSANS"

    invoke-direct {p0, v1, v0}, Lcom/ime/framework/common/FontManagerImpl;->setFont(Ljava/lang/String;Landroid/graphics/Typeface;)V

    const-string v1, "SAMSUNGSANS_KEYPAD"

    invoke-direct {p0, v1, v0}, Lcom/ime/framework/common/FontManagerImpl;->setFont(Ljava/lang/String;Landroid/graphics/Typeface;)V

    const-string v1, "SAMSUNGSANS_NUM3L"

    invoke-direct {p0, v1, v0}, Lcom/ime/framework/common/FontManagerImpl;->setFont(Ljava/lang/String;Landroid/graphics/Typeface;)V

    const-string v1, "ROBOTO_REGULAR"

    invoke-direct {p0, v1, v0}, Lcom/ime/framework/common/FontManagerImpl;->setFont(Ljava/lang/String;Landroid/graphics/Typeface;)V

    const-string v1, "HANDWRITING"

    invoke-direct {p0, v1, v0}, Lcom/ime/framework/common/FontManagerImpl;->setFont(Ljava/lang/String;Landroid/graphics/Typeface;)V

    const-string v1, "SAMSUNG_KEYPAD_REGULAR"

    invoke-direct {p0, v1, v0}, Lcom/ime/framework/common/FontManagerImpl;->setFont(Ljava/lang/String;Landroid/graphics/Typeface;)V

    const-string v1, "ROBOTO_KEYPAD_REGULAR"

    invoke-direct {p0, v1, v0}, Lcom/ime/framework/common/FontManagerImpl;->setFont(Ljava/lang/String;Landroid/graphics/Typeface;)V

    const-string v1, "ROBOTO_MEDIUM"

    invoke-direct {p0, v1, v0}, Lcom/ime/framework/common/FontManagerImpl;->setFont(Ljava/lang/String;Landroid/graphics/Typeface;)V

    const-string v1, "SEC_ROBOTO_LIGHT_REGULAR"

    invoke-direct {p0, v1, v0}, Lcom/ime/framework/common/FontManagerImpl;->setFont(Ljava/lang/String;Landroid/graphics/Typeface;)V

    const-string v1, "ROBOTO_LIGHT"

    invoke-direct {p0, v1, v0}, Lcom/ime/framework/common/FontManagerImpl;->setFont(Ljava/lang/String;Landroid/graphics/Typeface;)V

    return-void
.end method
