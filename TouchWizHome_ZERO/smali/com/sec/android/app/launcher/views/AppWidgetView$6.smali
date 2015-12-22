.class Lcom/sec/android/app/launcher/views/AppWidgetView$6;
.super Ljava/lang/Object;
.source "AppWidgetView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/views/AppWidgetView;->resizeContent(IIIIII)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/views/AppWidgetView;

.field final synthetic val$height:I

.field final synthetic val$resizeRequest:Lcom/sec/android/app/launcher/views/AppWidgetView$ResizeRequest;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/views/AppWidgetView;IILcom/sec/android/app/launcher/views/AppWidgetView$ResizeRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/AppWidgetView$6;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetView;

    iput p2, p0, Lcom/sec/android/app/launcher/views/AppWidgetView$6;->val$width:I

    iput p3, p0, Lcom/sec/android/app/launcher/views/AppWidgetView$6;->val$height:I

    iput-object p4, p0, Lcom/sec/android/app/launcher/views/AppWidgetView$6;->val$resizeRequest:Lcom/sec/android/app/launcher/views/AppWidgetView$ResizeRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetView$6;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetView;

    # getter for: Lcom/sec/android/app/launcher/views/AppWidgetView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;
    invoke-static {v0}, Lcom/sec/android/app/launcher/views/AppWidgetView;->access$1100(Lcom/sec/android/app/launcher/views/AppWidgetView;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "AppWidgetView"

    const-string v1, "AppWidgetView.resizeContent() mSurfaceTexture is null."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetView$6;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetView;

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/AppWidgetView$6;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetView;

    # getter for: Lcom/sec/android/app/launcher/views/AppWidgetView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;
    invoke-static {v1}, Lcom/sec/android/app/launcher/views/AppWidgetView;->access$1200(Lcom/sec/android/app/launcher/views/AppWidgetView;)Landroid/graphics/SurfaceTexture;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/launcher/views/AppWidgetView$6;->val$width:I

    iget v3, p0, Lcom/sec/android/app/launcher/views/AppWidgetView$6;->val$height:I

    iget-object v4, p0, Lcom/sec/android/app/launcher/views/AppWidgetView$6;->val$resizeRequest:Lcom/sec/android/app/launcher/views/AppWidgetView$ResizeRequest;

    iget v4, v4, Lcom/sec/android/app/launcher/views/AppWidgetView$ResizeRequest;->spanX:I

    iget-object v5, p0, Lcom/sec/android/app/launcher/views/AppWidgetView$6;->val$resizeRequest:Lcom/sec/android/app/launcher/views/AppWidgetView$ResizeRequest;

    iget v5, v5, Lcom/sec/android/app/launcher/views/AppWidgetView$ResizeRequest;->spanY:I

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/launcher/views/AppWidgetView;->setSurfaceTextureDefaultSize(Landroid/graphics/SurfaceTexture;IIII)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetView$6;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetView;

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/AppWidgetView$6;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetView;

    # getter for: Lcom/sec/android/app/launcher/views/AppWidgetView;->mWidgetWidth:I
    invoke-static {v1}, Lcom/sec/android/app/launcher/views/AppWidgetView;->access$1300(Lcom/sec/android/app/launcher/views/AppWidgetView;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/AppWidgetView$6;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetView;

    # getter for: Lcom/sec/android/app/launcher/views/AppWidgetView;->mWidgetHeight:I
    invoke-static {v2}, Lcom/sec/android/app/launcher/views/AppWidgetView;->access$1400(Lcom/sec/android/app/launcher/views/AppWidgetView;)I

    move-result v2

    # invokes: Lcom/sec/android/app/launcher/views/AppWidgetView;->resizeHostView(II)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/launcher/views/AppWidgetView;->access$1500(Lcom/sec/android/app/launcher/views/AppWidgetView;II)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetView$6;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetView;

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/AppWidgetView$6;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetView;

    # getter for: Lcom/sec/android/app/launcher/views/AppWidgetView;->mWidgetWidth:I
    invoke-static {v1}, Lcom/sec/android/app/launcher/views/AppWidgetView;->access$1300(Lcom/sec/android/app/launcher/views/AppWidgetView;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/AppWidgetView$6;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetView;

    # getter for: Lcom/sec/android/app/launcher/views/AppWidgetView;->mWidgetHeight:I
    invoke-static {v2}, Lcom/sec/android/app/launcher/views/AppWidgetView;->access$1400(Lcom/sec/android/app/launcher/views/AppWidgetView;)I

    move-result v2

    # invokes: Lcom/sec/android/app/launcher/views/AppWidgetView;->updateAppWidgetSize(II)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/launcher/views/AppWidgetView;->access$1600(Lcom/sec/android/app/launcher/views/AppWidgetView;II)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetView$6;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetView;

    # getter for: Lcom/sec/android/app/launcher/views/AppWidgetView;->mResizeRequests:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/sec/android/app/launcher/views/AppWidgetView;->access$1700(Lcom/sec/android/app/launcher/views/AppWidgetView;)Ljava/util/LinkedList;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/AppWidgetView$6;->val$resizeRequest:Lcom/sec/android/app/launcher/views/AppWidgetView$ResizeRequest;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetView$6;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetView;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/app/launcher/views/AppWidgetView;->mResizingContent:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/launcher/views/AppWidgetView;->access$1802(Lcom/sec/android/app/launcher/views/AppWidgetView;Z)Z

    const-string v0, "AppWidgetView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resizeContent runnable: sent resize request to android: w "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/launcher/views/AppWidgetView$6;->val$width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " h "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/launcher/views/AppWidgetView$6;->val$height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Number of resize requests now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/AppWidgetView$6;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetView;

    # getter for: Lcom/sec/android/app/launcher/views/AppWidgetView;->mResizeRequests:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/sec/android/app/launcher/views/AppWidgetView;->access$1700(Lcom/sec/android/app/launcher/views/AppWidgetView;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
