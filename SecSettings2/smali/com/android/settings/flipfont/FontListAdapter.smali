.class public Lcom/android/settings/flipfont/FontListAdapter;
.super Landroid/widget/BaseAdapter;
.source "FontListAdapter.java"


# static fields
.field private static mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;


# instance fields
.field context:Landroid/content/Context;

.field private currentThemePath:Ljava/lang/String;

.field private downloadFontString:Ljava/lang/String;

.field private droidSansFont:Landroid/graphics/Typeface;

.field private mContext:Landroid/content/Context;

.field private mCurrentFontString:Ljava/lang/String;

.field private mCurrentThemeFontIndex:I

.field public mFontAssetManager:Landroid/content/res/AssetManager;

.field public mFontNames:Ljava/util/Vector;

.field public mFontPackageNames:Ljava/util/Vector;

.field mInflater:Landroid/view/LayoutInflater;

.field public mInstalledApplications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCurrentSelectedThemeFont:Z

.field private mIsCurrentThemeAdapted:Z

.field private mIsFontPreviewActivity:Z

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field public mTypefaceFiles:Ljava/util/Vector;

.field public mTypefaceFinder:Lcom/android/settings/flipfont/TypefaceFinder;

.field private mTypefaces:Ljava/util/Vector;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 11

    const/4 v8, 0x0

    const/4 v7, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object v7, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    iput-object v7, p0, Lcom/android/settings/flipfont/FontListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object v7, p0, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    iput-object v7, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;

    new-instance v6, Lcom/android/settings/flipfont/TypefaceFinder;

    invoke-direct {v6}, Lcom/android/settings/flipfont/TypefaceFinder;-><init>()V

    iput-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/android/settings/flipfont/TypefaceFinder;

    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iput-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iput-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iput-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iput-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/Vector;

    iput-object v7, p0, Lcom/android/settings/flipfont/FontListAdapter;->droidSansFont:Landroid/graphics/Typeface;

    const-string v6, ""

    iput-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    const-string v6, ""

    iput-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->mCurrentFontString:Ljava/lang/String;

    iput-boolean v8, p0, Lcom/android/settings/flipfont/FontListAdapter;->mIsFontPreviewActivity:Z

    const-string v6, ""

    iput-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->currentThemePath:Ljava/lang/String;

    iput-boolean v8, p0, Lcom/android/settings/flipfont/FontListAdapter;->mIsCurrentThemeAdapted:Z

    iput-boolean v8, p0, Lcom/android/settings/flipfont/FontListAdapter;->mIsCurrentSelectedThemeFont:Z

    iput v8, p0, Lcom/android/settings/flipfont/FontListAdapter;->mCurrentThemeFontIndex:I

    iput-object p1, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/android/settings/flipfont/TypefaceFinder;

    iput-object p1, v6, Lcom/android/settings/flipfont/TypefaceFinder;->context:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    iput-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a1424

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a158c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->mCurrentFontString:Ljava/lang/String;

    :try_start_0
    iget-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v7, 0x80

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->mInstalledApplications:Ljava/util/List;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    iget-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->mInstalledApplications:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_1

    iget-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->mInstalledApplications:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ApplicationInfo;

    iget-object v3, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v6, "com.monotype.android.font."

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v7, 0x80

    invoke-virtual {v6, v3, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v6, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;

    iget-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/android/settings/flipfont/TypefaceFinder;

    iget-object v7, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v6, v7, v3}, Lcom/android/settings/flipfont/TypefaceFinder;->findTypefaces(Landroid/content/res/AssetManager;Ljava/lang/String;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/android/settings/flipfont/TypefaceFinder;

    iget-object v7, p0, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v8, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    iget-object v9, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    iget-object v10, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/settings/flipfont/TypefaceFinder;->getSansEntries(Landroid/content/pm/PackageManager;Ljava/util/Vector;Ljava/util/Vector;Ljava/util/Vector;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    new-instance v2, Ljava/io/File;

    const-string v6, "/system/fonts/UIFont.ttf"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "/system/fonts/UIFont.ttf"

    invoke-static {v6}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->droidSansFont:Landroid/graphics/Typeface;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    return-void

    :catch_0
    move-exception v1

    const-string v6, "FontListAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "font package not found, just use default font, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    :try_start_2
    const-string v6, "/system/fonts/DroidSans.ttf"

    invoke-static {v6}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->droidSansFont:Landroid/graphics/Typeface;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static destroyInstance()V
    .locals 1

    sget-object v0, Lcom/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    :cond_0
    return-void
.end method

.method private getFont(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 13

    const/4 v10, 0x0

    const-string v11, ".xml"

    const-string v12, ".ttf"

    invoke-virtual {p1, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x0

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    :cond_0
    if-eqz v2, :cond_1

    const-string v11, "shaonv"

    invoke-virtual {v2, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    :cond_1
    const-string v11, "kaiti"

    invoke-virtual {v2, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "miao"

    invoke-virtual {v2, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    :cond_2
    move-object v1, v2

    const-string v11, ".ttf"

    const-string v12, "_prev.ttf"

    invoke-virtual {v1, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    :try_start_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "/system/fonts/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    return-object v3

    :catch_0
    move-exception v4

    const/4 v11, 0x0

    :try_start_1
    iput-object v11, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;

    iget-object v11, p0, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v12, 0x80

    invoke-virtual {v11, p2, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v11, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v11, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-object v10, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "fonts/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fonts/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;

    invoke-static {v10, v11}, Lcom/android/settings/flipfont/FontCache;->get(Ljava/lang/String;Landroid/content/res/AssetManager;)Landroid/graphics/Typeface;

    move-result-object v3

    goto :goto_0

    :catch_1
    move-exception v5

    move-object v3, v10

    goto :goto_0

    :catch_2
    move-exception v7

    invoke-direct {p0, v6, p2}, Lcom/android/settings/flipfont/FontListAdapter;->getFontfromCR(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    goto :goto_0

    :cond_3
    const/4 v11, 0x0

    :try_start_3
    iput-object v11, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;

    iget-object v11, p0, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v12, 0x80

    invoke-virtual {v11, p2, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v11, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v11, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :try_start_4
    iget-object v10, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "fonts/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fonts/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;

    invoke-static {v10, v11}, Lcom/android/settings/flipfont/FontCache;->get(Ljava/lang/String;Landroid/content/res/AssetManager;)Landroid/graphics/Typeface;

    move-result-object v3

    goto/16 :goto_0

    :catch_3
    move-exception v4

    move-object v3, v10

    goto/16 :goto_0

    :catch_4
    move-exception v4

    invoke-direct {p0, v6, p2}, Lcom/android/settings/flipfont/FontListAdapter;->getFontfromCR(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    goto/16 :goto_0
.end method

.method private getFontfromCR(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 15

    const/4 v2, 0x0

    :try_start_0
    iget-object v13, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "content://"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/fonts/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {v2, v12}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v7

    const/4 v6, 0x0

    :try_start_2
    const-string v13, "font"

    const/4 v14, 0x0

    invoke-static {v13, v14}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v6

    const/4 v4, 0x0

    const/4 v8, 0x0

    :try_start_3
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_15
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    new-instance v9, Ljava/io/BufferedOutputStream;

    invoke-direct {v9, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_16
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_13
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/16 v13, 0x400

    :try_start_5
    new-array v1, v13, [B

    const/4 v10, 0x0

    :goto_0
    invoke-virtual {v7, v1}, Ljava/io/InputStream;->read([B)I

    move-result v10

    if-lez v10, :cond_3

    const/4 v13, 0x0

    invoke-virtual {v9, v1, v13, v10}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_14
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v8, v9

    move-object v4, v5

    :goto_1
    const/4 v11, 0x0

    if-eqz v8, :cond_0

    :try_start_6
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_b

    :cond_0
    :goto_2
    if-eqz v4, :cond_1

    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_c

    :cond_1
    :goto_3
    if-eqz v7, :cond_2

    :try_start_8
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_d

    :cond_2
    :goto_4
    return-object v11

    :catch_1
    move-exception v3

    const/4 v11, 0x0

    goto :goto_4

    :catch_2
    move-exception v3

    const/4 v11, 0x0

    goto :goto_4

    :catch_3
    move-exception v3

    :try_start_9
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    :goto_5
    const/4 v11, 0x0

    goto :goto_4

    :cond_3
    :try_start_a
    invoke-virtual {v9}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_14
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-eqz v9, :cond_4

    :try_start_b
    invoke-virtual {v9}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    :cond_4
    :goto_6
    if-eqz v5, :cond_5

    :try_start_c
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    :cond_5
    :goto_7
    if-eqz v7, :cond_6

    :try_start_d
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    :cond_6
    :goto_8
    :try_start_e
    invoke-static {v6}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v11

    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4

    goto :goto_4

    :catch_4
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v11, 0x0

    goto :goto_4

    :catch_5
    move-exception v3

    :goto_9
    const/4 v11, 0x0

    if-eqz v8, :cond_7

    :try_start_f
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_e

    :cond_7
    :goto_a
    if-eqz v4, :cond_8

    :try_start_10
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_f

    :cond_8
    :goto_b
    if-eqz v7, :cond_2

    :try_start_11
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_6

    goto :goto_4

    :catch_6
    move-exception v13

    goto :goto_4

    :catchall_0
    move-exception v13

    :goto_c
    if-eqz v8, :cond_9

    :try_start_12
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_10

    :cond_9
    :goto_d
    if-eqz v4, :cond_a

    :try_start_13
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_11

    :cond_a
    :goto_e
    if-eqz v7, :cond_b

    :try_start_14
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_12

    :cond_b
    :goto_f
    throw v13

    :catch_7
    move-exception v13

    goto :goto_5

    :catch_8
    move-exception v13

    goto :goto_6

    :catch_9
    move-exception v13

    goto :goto_7

    :catch_a
    move-exception v13

    goto :goto_8

    :catch_b
    move-exception v13

    goto :goto_2

    :catch_c
    move-exception v13

    goto :goto_3

    :catch_d
    move-exception v13

    goto :goto_4

    :catch_e
    move-exception v13

    goto :goto_a

    :catch_f
    move-exception v13

    goto :goto_b

    :catch_10
    move-exception v14

    goto :goto_d

    :catch_11
    move-exception v14

    goto :goto_e

    :catch_12
    move-exception v14

    goto :goto_f

    :catchall_1
    move-exception v13

    move-object v4, v5

    goto :goto_c

    :catchall_2
    move-exception v13

    move-object v8, v9

    move-object v4, v5

    goto :goto_c

    :catch_13
    move-exception v3

    move-object v4, v5

    goto :goto_9

    :catch_14
    move-exception v3

    move-object v8, v9

    move-object v4, v5

    goto :goto_9

    :catch_15
    move-exception v3

    goto/16 :goto_1

    :catch_16
    move-exception v3

    move-object v4, v5

    goto/16 :goto_1
.end method

.method public static getInstanceFontListAdapter(Landroid/content/Context;)Lcom/android/settings/flipfont/FontListAdapter;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/flipfont/FontListAdapter;

    invoke-direct {v0, p0}, Lcom/android/settings/flipfont/FontListAdapter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    :goto_0
    sget-object v0, Lcom/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v0, v3}, Lcom/android/settings/flipfont/FontListAdapter;->setmIsFontPreviewActivity(Z)V

    sget-object v0, Lcom/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iput-object p0, v0, Lcom/android/settings/flipfont/FontListAdapter;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    return-object v0

    :cond_0
    sget-object v0, Lcom/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    sget-object v0, Lcom/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    sget-object v0, Lcom/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v1, v0, Lcom/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a1003

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    const-string v1, "default"

    invoke-virtual {v0, v3, v1}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private setFont(ILandroid/widget/TextView;)V
    .locals 3

    iget-object v2, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/Vector;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v1, p1, :cond_0

    monitor-exit v2

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    if-eqz v0, :cond_1

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getCurrentThemeFontIndex()I
    .locals 1

    iget v0, p0, Lcom/android/settings/flipfont/FontListAdapter;->mCurrentThemeFontIndex:I

    return v0
.end method

.method public getCurrentThemeString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/flipfont/FontListAdapter;->mCurrentFontString:Ljava/lang/String;

    return-object v0
.end method

.method public getFontName(I)Ljava/lang/String;
    .locals 5

    const v4, 0x7f0a0fea

    const v3, 0x7f0a0fe9

    const v2, 0x7f0a0fe8

    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "Cool"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "Rose"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v1, "Choco"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v1, "Rosemary"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v1, "Choco cooky"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_5
    const-string v1, "Cool jazz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_6
    const-string v1, "Samsung sans"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v0, "Samsung Sans"

    goto :goto_0

    :cond_7
    const-string v1, "Apple mint"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0feb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    const-string v1, "Tinker bell"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0fec

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
    const-string v1, "Shao nv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0ff0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_0

    :cond_a
    const-string v1, "Kaiti"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0ff1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_0

    :cond_b
    const-string v1, "Miao"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0ff2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_0

    :cond_c
    const-string v1, "UDRGothic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0fed

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_0

    :cond_d
    const-string v1, "UDMincho"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0fee

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_0

    :cond_e
    const-string v1, "Pop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0fef

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_0

    :cond_f
    const-string v1, "Current theme\'s default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a158c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_0

    :cond_10
    const-string v1, "Foundation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0ff3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_0

    :cond_11
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public getFontTypeface(I)Landroid/graphics/Typeface;
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-le v4, p1, :cond_0

    iget-object v4, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v4, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    invoke-virtual {v4, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/android/settings/flipfont/FontListAdapter;->getFont(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    :cond_0
    if-nez v3, :cond_1

    :try_start_0
    const-string v4, "/system/fonts/DroidSans.ttf"

    invoke-static {v4}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :cond_1
    :goto_0
    return-object v3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getThemeFontCurrentPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/flipfont/FontListAdapter;->currentThemePath:Ljava/lang/String;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const v7, 0x1020014

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/flipfont/FontListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0401ed

    invoke-virtual {v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :goto_0
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/android/settings/flipfont/FontListAdapter;->getFontName(I)Ljava/lang/String;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/settings/flipfont/FontListAdapter;->mIsFontPreviewActivity:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/flipfont/FontListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040099

    invoke-virtual {v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p1, v1}, Lcom/android/settings/flipfont/FontListAdapter;->setFont(ILandroid/widget/TextView;)V

    if-eqz v2, :cond_2

    :goto_1
    return-object v2

    :cond_1
    iget-object v3, p0, Lcom/android/settings/flipfont/FontListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0400f7

    invoke-virtual {v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :cond_2
    move-object v2, v1

    goto :goto_1
.end method

.method public isCurrentThemeFontInstalled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/flipfont/FontListAdapter;->mIsCurrentThemeAdapted:Z

    return v0
.end method

.method public isCurrentThemeFontSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/flipfont/FontListAdapter;->mIsCurrentSelectedThemeFont:Z

    return v0
.end method

.method public loadTypefaces()V
    .locals 9

    iget-boolean v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->mIsFontPreviewActivity:Z

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    sget-object v7, Lcom/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v7, v7, Lcom/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    iget-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    iget-object v7, p0, Lcom/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    iget-object v7, p0, Lcom/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    :cond_0
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/Vector;

    iget-object v7, p0, Lcom/android/settings/flipfont/FontListAdapter;->droidSansFont:Landroid/graphics/Typeface;

    invoke-virtual {v6, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    :goto_0
    iget-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v3, v6, :cond_2

    iget-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v6, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    invoke-virtual {v6, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/android/settings/flipfont/FontListAdapter;->getFont(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    if-nez v4, :cond_1

    iget-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    invoke-virtual {v6, v3}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    invoke-virtual {v6, v3}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v6, v3}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/Vector;

    invoke-virtual {v6, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-boolean v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->mIsFontPreviewActivity:Z

    if-eqz v6, :cond_5

    :try_start_0
    const-string v6, "FontListAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadTypefaces currentThemePath : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/flipfont/FontListAdapter;->currentThemePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->currentThemePath:Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->currentThemePath:Ljava/lang/String;

    invoke-static {v6}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    :cond_3
    iget-boolean v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->mIsCurrentThemeAdapted:Z

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/Vector;

    invoke-virtual {v6, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    iget-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/Vector;

    iget-object v7, p0, Lcom/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    invoke-direct {p0, v7, v8}, Lcom/android/settings/flipfont/FontListAdapter;->getFont(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void

    :cond_6
    :try_start_1
    iget-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/Vector;

    invoke-virtual {v6, v5}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-lez v6, :cond_4

    iget-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/Vector;

    invoke-virtual {v6, v5}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public setInitDownloadFontAndThemeFont()V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, -0x1

    iget-object v7, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/settings/flipfont/FontListAdapter;->mContext:Landroid/content/Context;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/settings/flipfont/FontListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "theme_font_system"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/flipfont/FontListAdapter;->currentThemePath:Ljava/lang/String;

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

    if-eqz v6, :cond_0

    const/16 v7, 0x23

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    :cond_0
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v5, :cond_1

    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    move-object v0, v1

    move-object v4, v5

    :cond_2
    :goto_0
    const-string v7, "Theme"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    iput-boolean v11, p0, Lcom/android/settings/flipfont/FontListAdapter;->mIsCurrentSelectedThemeFont:Z

    :goto_1
    iget-object v7, p0, Lcom/android/settings/flipfont/FontListAdapter;->currentThemePath:Ljava/lang/String;

    if-eqz v7, :cond_7

    const-string v7, ""

    iget-object v8, p0, Lcom/android/settings/flipfont/FontListAdapter;->currentThemePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    iput-boolean v11, p0, Lcom/android/settings/flipfont/FontListAdapter;->mIsCurrentThemeAdapted:Z

    :goto_2
    iget-boolean v7, p0, Lcom/android/settings/flipfont/FontListAdapter;->mIsCurrentThemeAdapted:Z

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    iget-object v8, p0, Lcom/android/settings/flipfont/FontListAdapter;->mCurrentFontString:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v7

    if-ne v7, v9, :cond_8

    iget-object v7, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    iget-object v8, p0, Lcom/android/settings/flipfont/FontListAdapter;->mCurrentFontString:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    iget-object v8, p0, Lcom/android/settings/flipfont/FontListAdapter;->mCurrentFontString:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-lez v7, :cond_3

    iget-object v7, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/android/settings/flipfont/FontListAdapter;->mCurrentThemeFontIndex:I

    :cond_3
    :goto_3
    iget-object v7, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    iget-object v8, p0, Lcom/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v7

    if-ne v7, v9, :cond_4

    iget-object v7, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    iget-object v8, p0, Lcom/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    iget-object v8, p0, Lcom/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void

    :catch_0
    move-exception v7

    move-object v0, v1

    move-object v4, v5

    goto :goto_0

    :catch_1
    move-exception v2

    :goto_4
    :try_start_4
    const-string v6, "default"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v4, :cond_2

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

    :goto_5
    :try_start_6
    const-string v6, "default"

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v4, :cond_2

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

    :goto_6
    if-eqz v4, :cond_5

    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :cond_5
    :goto_7
    throw v7

    :cond_6
    iput-boolean v10, p0, Lcom/android/settings/flipfont/FontListAdapter;->mIsCurrentSelectedThemeFont:Z

    goto :goto_1

    :cond_7
    iput-boolean v10, p0, Lcom/android/settings/flipfont/FontListAdapter;->mIsCurrentThemeAdapted:Z

    goto :goto_2

    :cond_8
    iget-boolean v7, p0, Lcom/android/settings/flipfont/FontListAdapter;->mIsCurrentThemeAdapted:Z

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    iget-object v8, p0, Lcom/android/settings/flipfont/FontListAdapter;->mCurrentFontString:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v7

    if-lez v7, :cond_3

    iget-object v7, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    iget-object v8, p0, Lcom/android/settings/flipfont/FontListAdapter;->mCurrentFontString:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    iget-object v8, p0, Lcom/android/settings/flipfont/FontListAdapter;->mCurrentFontString:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    :catch_5
    move-exception v8

    goto :goto_7

    :catchall_1
    move-exception v7

    move-object v4, v5

    goto :goto_6

    :catchall_2
    move-exception v7

    move-object v0, v1

    move-object v4, v5

    goto :goto_6

    :catch_6
    move-exception v2

    move-object v4, v5

    goto :goto_5

    :catch_7
    move-exception v2

    move-object v0, v1

    move-object v4, v5

    goto :goto_5

    :catch_8
    move-exception v2

    move-object v4, v5

    goto :goto_4

    :catch_9
    move-exception v2

    move-object v0, v1

    move-object v4, v5

    goto :goto_4
.end method

.method public setmIsFontPreviewActivity(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/flipfont/FontListAdapter;->mIsFontPreviewActivity:Z

    return-void
.end method
