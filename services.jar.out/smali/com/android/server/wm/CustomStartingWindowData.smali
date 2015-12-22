.class public Lcom/android/server/wm/CustomStartingWindowData;
.super Ljava/lang/Object;
.source "CustomStartingWindowData.java"


# static fields
.field private static final CUSTOM_STARTING_WINDOW_FILE_NAME:Ljava/lang/String; = "CustomStartingWindowImage"

.field public static final CUSTOM_STARTING_WINDOW_IMAGE_PATH:Ljava/lang/String; = "com.samsung.android.startingwindow.IMAGE_PATH"

.field public static final CUSTOM_STARTING_WINDOW_LAYOUT_RESID:Ljava/lang/String; = "com.samsung.android.startingwindow.LAYOUT_RESID"

.field public static final CUSTOM_STARTING_WINDOW_REVERSE_LAYOUT_RESID:Ljava/lang/String; = "com.samsung.android.startingwindow.REVERSE_LAYOUT_RESID"

.field static final SAFE_DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "CustomStartingWindowData"

.field private static mContext:Landroid/content/Context;


# instance fields
.field public bitmapIsLoaded:Z

.field public customImage:Ljava/lang/String;

.field public key:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field public resIdOfDefaultLayout:I

.field public resIdOfReverseLayout:I

.field public taskUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/server/wm/CustomStartingWindowData;->SAFE_DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wm/CustomStartingWindowData;->key:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/wm/CustomStartingWindowData;->packageName:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/CustomStartingWindowData;->taskUserId:I

    iput v1, p0, Lcom/android/server/wm/CustomStartingWindowData;->resIdOfDefaultLayout:I

    iput v1, p0, Lcom/android/server/wm/CustomStartingWindowData;->resIdOfReverseLayout:I

    iput-object v2, p0, Lcom/android/server/wm/CustomStartingWindowData;->customImage:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/server/wm/CustomStartingWindowData;->bitmapIsLoaded:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;I)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/wm/CustomStartingWindowData;->key:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/server/wm/CustomStartingWindowData;->packageName:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/CustomStartingWindowData;->taskUserId:I

    iput v4, p0, Lcom/android/server/wm/CustomStartingWindowData;->resIdOfDefaultLayout:I

    iput v4, p0, Lcom/android/server/wm/CustomStartingWindowData;->resIdOfReverseLayout:I

    iput-object v5, p0, Lcom/android/server/wm/CustomStartingWindowData;->customImage:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/android/server/wm/CustomStartingWindowData;->bitmapIsLoaded:Z

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/CustomStartingWindowData;->key:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/wm/CustomStartingWindowData;->key:Ljava/lang/String;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/wm/CustomStartingWindowData;->key:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/CustomStartingWindowData;->key:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/CustomStartingWindowData;->packageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/wm/CustomStartingWindowData;->taskUserId:I

    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "com.samsung.android.startingwindow.LAYOUT_RESID"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/CustomStartingWindowData;->resIdOfDefaultLayout:I

    iget v1, p0, Lcom/android/server/wm/CustomStartingWindowData;->resIdOfDefaultLayout:I

    if-eqz v1, :cond_2

    const-string v1, "CustomStartingWindowData"

    const-string v2, "CustomStartingWindow DefaultLayout support app"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v1, "com.samsung.android.startingwindow.REVERSE_LAYOUT_RESID"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/CustomStartingWindowData;->resIdOfReverseLayout:I

    iget v1, p0, Lcom/android/server/wm/CustomStartingWindowData;->resIdOfReverseLayout:I

    if-eqz v1, :cond_3

    const-string v1, "CustomStartingWindowData"

    const-string v2, "CustomStartingWindow Reverse Layout support app"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string v1, "com.samsung.android.startingwindow.IMAGE_PATH"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/CustomStartingWindowData;->customImage:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/wm/CustomStartingWindowData;->customImage:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "CustomStartingWindowData"

    const-string v2, "CustomStartingWindow custom Image Path support app"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getBitmapFile(Ljava/io/File;I)Ljava/io/File;
    .locals 2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    new-instance v0, Ljava/io/File;

    const-string v1, "CustomStartingWindowImage_port.jpg"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/io/File;

    const-string v1, "CustomStartingWindowImage.jpg"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v1, "CustomStartingWindowImage_land.jpg"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getBitmap(I)Landroid/graphics/Bitmap;
    .locals 14

    const-wide/16 v12, 0x400

    const/4 v6, 0x0

    const/4 v2, 0x0

    iget-object v7, p0, Lcom/android/server/wm/CustomStartingWindowData;->customImage:Ljava/lang/String;

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v5, 0x0

    const/4 v3, 0x0

    iget-object v7, p0, Lcom/android/server/wm/CustomStartingWindowData;->customImage:Ljava/lang/String;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/server/wm/CustomStartingWindowData;->customImage:Ljava/lang/String;

    const-string v8, "auto"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    new-instance v3, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/data/user/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/wm/CustomStartingWindowData;->taskUserId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wm/CustomStartingWindowData;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/custom_image/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-direct {p0, v3, p1}, Lcom/android/server/wm/CustomStartingWindowData;->getBitmapFile(Ljava/io/File;I)Ljava/io/File;

    move-result-object v5

    :cond_3
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_6

    :try_start_0
    new-instance v7, Landroid/graphics/BitmapFactory;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    sget-boolean v7, Lcom/android/server/wm/CustomStartingWindowData;->SAFE_DEBUG:Z

    if-eqz v7, :cond_4

    const-string v7, "CustomStartingWindowData"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CustomStartingWindow getImageFromCustomFile "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v0

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", bitmap : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    move-object v6, v2

    goto/16 :goto_0

    :cond_5
    new-instance v3, Ljava/io/File;

    iget-object v7, p0, Lcom/android/server/wm/CustomStartingWindowData;->customImage:Ljava/lang/String;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v4

    sget-boolean v7, Lcom/android/server/wm/CustomStartingWindowData;->SAFE_DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "CustomStartingWindowData"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CustomStartingWindow taking bitmap from custom file is fail by OOM. just show original starting window. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v10

    div-long/2addr v10, v12

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v10

    div-long/2addr v10, v12

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    sget-boolean v7, Lcom/android/server/wm/CustomStartingWindowData;->SAFE_DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "CustomStartingWindowData"

    const-string v8, "CustomStartingWindow getTaskImage from file is failed. file not exists"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
