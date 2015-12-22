.class Lcom/sec/daliviews/graphics/DisplayList$UnknownBitmapCache;
.super Ljava/lang/Object;
.source "DisplayList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/daliviews/graphics/DisplayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UnknownBitmapCache"
.end annotation


# instance fields
.field mBitmap:Landroid/graphics/Bitmap;

.field mCanvas:Landroid/graphics/Canvas;

.field mHeight:I

.field mWidth:I

.field final synthetic this$0:Lcom/sec/daliviews/graphics/DisplayList;


# direct methods
.method constructor <init>(Lcom/sec/daliviews/graphics/DisplayList;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/sec/daliviews/graphics/DisplayList$UnknownBitmapCache;->this$0:Lcom/sec/daliviews/graphics/DisplayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/sec/daliviews/graphics/DisplayList$UnknownBitmapCache;->mWidth:I

    iput v0, p0, Lcom/sec/daliviews/graphics/DisplayList$UnknownBitmapCache;->mHeight:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/daliviews/graphics/DisplayList$UnknownBitmapCache;->mBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/graphics/DisplayList$UnknownBitmapCache;->mCanvas:Landroid/graphics/Canvas;

    return-void
.end method


# virtual methods
.method getResizedCanvas(IIZ)Landroid/graphics/Canvas;
    .locals 3

    iput p1, p0, Lcom/sec/daliviews/graphics/DisplayList$UnknownBitmapCache;->mWidth:I

    iput p2, p0, Lcom/sec/daliviews/graphics/DisplayList$UnknownBitmapCache;->mHeight:I

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/daliviews/graphics/DisplayList$UnknownBitmapCache;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/sec/daliviews/graphics/DisplayList$UnknownBitmapCache;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sec/daliviews/graphics/DisplayList$UnknownBitmapCache;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/graphics/DisplayList$UnknownBitmapCache;->mCanvas:Landroid/graphics/Canvas;

    const/16 v1, -0x100

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/daliviews/graphics/DisplayList$UnknownBitmapCache;->mCanvas:Landroid/graphics/Canvas;

    return-object v0
.end method
