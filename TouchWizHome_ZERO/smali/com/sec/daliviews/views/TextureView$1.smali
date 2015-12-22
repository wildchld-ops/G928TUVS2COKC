.class Lcom/sec/daliviews/views/TextureView$1;
.super Ljava/lang/Object;
.source "TextureView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/daliviews/views/TextureView;->createSurfaceTexture(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/daliviews/views/TextureView;

.field final synthetic val$height:I

.field final synthetic val$texID:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/sec/daliviews/views/TextureView;III)V
    .locals 0

    iput-object p1, p0, Lcom/sec/daliviews/views/TextureView$1;->this$0:Lcom/sec/daliviews/views/TextureView;

    iput p2, p0, Lcom/sec/daliviews/views/TextureView$1;->val$width:I

    iput p3, p0, Lcom/sec/daliviews/views/TextureView$1;->val$height:I

    iput p4, p0, Lcom/sec/daliviews/views/TextureView$1;->val$texID:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/sec/daliviews/views/TextureView$1;->this$0:Lcom/sec/daliviews/views/TextureView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/TextureView;->isValidPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/views/TextureView$1;->this$0:Lcom/sec/daliviews/views/TextureView;

    iget v1, p0, Lcom/sec/daliviews/views/TextureView$1;->val$width:I

    iget v2, p0, Lcom/sec/daliviews/views/TextureView$1;->val$height:I

    iget v3, p0, Lcom/sec/daliviews/views/TextureView$1;->val$texID:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/daliviews/views/TextureView;->runCreateSurfaceTextureTask(III)V

    :goto_0
    return-void

    :cond_0
    # getter for: Lcom/sec/daliviews/views/TextureView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/daliviews/views/TextureView;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View is already destroyed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/daliviews/views/TextureView$1;->this$0:Lcom/sec/daliviews/views/TextureView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
