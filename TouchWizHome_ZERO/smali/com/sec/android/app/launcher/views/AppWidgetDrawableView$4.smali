.class Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$4;
.super Ljava/lang/Object;
.source "AppWidgetDrawableView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->onSizeChanged(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

.field final synthetic val$height:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;II)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$4;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    iput p2, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$4;->val$width:I

    iput p3, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$4;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$4;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    # getter for: Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mResizeRequests:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->access$700(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$4;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    # getter for: Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mResizeRequests:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->access$700(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$ResizeRequest;

    iget v0, v2, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$ResizeRequest;->spanX:I

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$4;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    # getter for: Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mResizeRequests:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->access$700(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$ResizeRequest;

    iget v1, v2, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$ResizeRequest;->spanY:I

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$4;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    iget v3, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$4;->val$width:I

    iget v4, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$4;->val$height:I

    # invokes: Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->updateWidgetSize(IIII)V
    invoke-static {v2, v3, v4, v0, v1}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->access$800(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;IIII)V

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$4;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    iget-object v3, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$4;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    # getter for: Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mWidgetWidth:I
    invoke-static {v3}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->access$900(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$4;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    # getter for: Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mWidgetHeight:I
    invoke-static {v4}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->access$1000(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;)I

    move-result v4

    # invokes: Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->resizeHostView(II)V
    invoke-static {v2, v3, v4}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->access$1100(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;II)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$4;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    iget-object v3, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$4;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    # getter for: Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mWidgetWidth:I
    invoke-static {v3}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->access$900(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$4;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    # getter for: Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mWidgetHeight:I
    invoke-static {v4}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->access$1000(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;)I

    move-result v4

    # invokes: Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->updateAppWidgetSize(II)V
    invoke-static {v2, v3, v4}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->access$1200(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;II)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$4;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    iget v3, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$4;->val$width:I

    iget v4, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$4;->val$height:I

    iget-object v5, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$4;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->getItemSpanX()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$4;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->getItemSpanY()I

    move-result v6

    # invokes: Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->updateWidgetSize(IIII)V
    invoke-static {v2, v3, v4, v5, v6}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->access$800(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;IIII)V

    goto :goto_0
.end method
