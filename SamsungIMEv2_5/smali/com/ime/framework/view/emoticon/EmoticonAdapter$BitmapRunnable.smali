.class Lcom/ime/framework/view/emoticon/EmoticonAdapter$BitmapRunnable;
.super Ljava/lang/Object;
.source "EmoticonAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/framework/view/emoticon/EmoticonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapRunnable"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mEmoticon:Ljava/lang/String;

.field private mPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/ime/framework/view/emoticon/EmoticonAdapter;


# direct methods
.method public constructor <init>(Lcom/ime/framework/view/emoticon/EmoticonAdapter;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Paint;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/view/emoticon/EmoticonAdapter$BitmapRunnable;->this$0:Lcom/ime/framework/view/emoticon/EmoticonAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/ime/framework/view/emoticon/EmoticonAdapter$BitmapRunnable;->mBitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/ime/framework/view/emoticon/EmoticonAdapter$BitmapRunnable;->mEmoticon:Ljava/lang/String;

    iput-object p4, p0, Lcom/ime/framework/view/emoticon/EmoticonAdapter$BitmapRunnable;->mPaint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/ime/framework/view/emoticon/EmoticonAdapter$BitmapRunnable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/ime/framework/view/emoticon/EmoticonAdapter$BitmapRunnable;->mEmoticon:Ljava/lang/String;

    iget-object v2, p0, Lcom/ime/framework/view/emoticon/EmoticonAdapter$BitmapRunnable;->this$0:Lcom/ime/framework/view/emoticon/EmoticonAdapter;

    # getter for: Lcom/ime/framework/view/emoticon/EmoticonAdapter;->mEmojiBounds:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/ime/framework/view/emoticon/EmoticonAdapter;->access$000(Lcom/ime/framework/view/emoticon/EmoticonAdapter;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/ime/framework/view/emoticon/EmoticonAdapter$BitmapRunnable;->this$0:Lcom/ime/framework/view/emoticon/EmoticonAdapter;

    # getter for: Lcom/ime/framework/view/emoticon/EmoticonAdapter;->mEmojiBounds:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/ime/framework/view/emoticon/EmoticonAdapter;->access$000(Lcom/ime/framework/view/emoticon/EmoticonAdapter;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/ime/framework/view/emoticon/EmoticonAdapter$BitmapRunnable;->this$0:Lcom/ime/framework/view/emoticon/EmoticonAdapter;

    # getter for: Lcom/ime/framework/view/emoticon/EmoticonAdapter;->mEmojiBounds:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/ime/framework/view/emoticon/EmoticonAdapter;->access$000(Lcom/ime/framework/view/emoticon/EmoticonAdapter;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/ime/framework/view/emoticon/EmoticonAdapter$BitmapRunnable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method
