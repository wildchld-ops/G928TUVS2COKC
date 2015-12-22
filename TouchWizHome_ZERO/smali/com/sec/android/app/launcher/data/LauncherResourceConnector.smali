.class public Lcom/sec/android/app/launcher/data/LauncherResourceConnector;
.super Lcom/sec/daliviews/resource/ResourceConnector;
.source "LauncherResourceConnector.java"


# static fields
.field private static final ERR_INVALID_CONTENT_FORMAT:Ljava/lang/String; = "Invalid icon path, expected format \"content:/<item_id>/<image_type>\""

.field private static final ERR_INVALID_FORMAT:Ljava/lang/String; = "Invalid icon path, expected format \"<res_type>:/<item_id>[/<image_type>]\""

.field private static final ERR_UNSUPPORTED_TYPE:Ljava/lang/String; = "Unsupported resource type!"

.field private static final TAG:Ljava/lang/String; = "ResourceConnector"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/daliviews/resource/ResourceConnector;-><init>()V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/LauncherResourceConnector;->mContext:Landroid/content/Context;

    return-void
.end method

.method private loadResBitmap(I)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/LauncherResourceConnector;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sec/daliviews/utils/BitmapUtils;->decode(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private loadResBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/LauncherResourceConnector;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/sec/daliviews/utils/BitmapUtils;->decode(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private loadShapeBitmap(II)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/LauncherResourceConnector;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/sec/android/app/launcher/utils/Utils;->getBitmapWithColor(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v3, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v7, 0x3

    const-string v6, "/"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    if-ge v6, v8, :cond_0

    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Invalid icon path, expected format \"<res_type>:/<item_id>[/<image_type>]\""

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    const/4 v6, 0x0

    aget-object v4, v5, v6

    const/4 v2, 0x0

    const-string v6, "res:"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    array-length v6, v5

    if-ne v6, v7, :cond_1

    aget-object v2, v5, v9

    aget-object v6, v5, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :goto_0
    const-string v6, "res:"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    array-length v6, v5

    if-ne v6, v7, :cond_2

    invoke-direct {p0, v2, v1}, Lcom/sec/android/app/launcher/data/LauncherResourceConnector;->loadResBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v3

    :goto_1
    return-object v3

    :cond_1
    aget-object v6, v5, v9

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_2
    invoke-direct {p0, v1}, Lcom/sec/android/app/launcher/data/LauncherResourceConnector;->loadResBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_1

    :cond_3
    const-string v6, "shape:"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    aget-object v6, v5, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/launcher/data/LauncherResourceConnector;->loadShapeBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_1

    :cond_4
    const-string v6, "content:"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    array-length v6, v5

    if-ge v6, v7, :cond_5

    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Invalid icon path, expected format \"content:/<item_id>/<image_type>\""

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_5
    array-length v6, v5

    if-le v6, v7, :cond_6

    aget-object v3, v5, v7

    :cond_6
    aget-object v6, v5, v8

    invoke-static {v1, v6, v3}, Lcom/sec/android/app/launcher/data/DataItemBase;->loadImage(ILjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_1

    :cond_7
    const-string v6, "ResourceConnector"

    const-string v7, "Unsupported resource type!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
