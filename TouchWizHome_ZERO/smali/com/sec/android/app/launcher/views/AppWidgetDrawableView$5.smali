.class Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$5;
.super Ljava/lang/Object;
.source "AppWidgetDrawableView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->resizeContent(IIIIII)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

.field final synthetic val$height:I

.field final synthetic val$resizeRequest:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$ResizeRequest;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$ResizeRequest;II)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$5;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    iput-object p2, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$5;->val$resizeRequest:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$ResizeRequest;

    iput p3, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$5;->val$width:I

    iput p4, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$5;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$5;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$5;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    # getter for: Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mWidgetWidth:I
    invoke-static {v1}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->access$900(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$5;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    # getter for: Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mWidgetHeight:I
    invoke-static {v2}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->access$1000(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;)I

    move-result v2

    # invokes: Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->resizeHostView(II)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->access$1100(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;II)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$5;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$5;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    # getter for: Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mWidgetWidth:I
    invoke-static {v1}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->access$900(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$5;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    # getter for: Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mWidgetHeight:I
    invoke-static {v2}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->access$1000(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;)I

    move-result v2

    # invokes: Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->updateAppWidgetSize(II)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->access$1200(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;II)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$5;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    # getter for: Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mResizeRequests:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->access$700(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;)Ljava/util/LinkedList;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$5;->val$resizeRequest:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$ResizeRequest;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$5;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mResizingContent:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->access$1402(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;Z)Z

    const-string v0, "AppWidgetDrawableView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resizeContent runnable: sent resize request to android: w "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$5;->val$width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " h "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$5;->val$height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Number of resize requests now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$5;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    # getter for: Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mResizeRequests:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->access$700(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
