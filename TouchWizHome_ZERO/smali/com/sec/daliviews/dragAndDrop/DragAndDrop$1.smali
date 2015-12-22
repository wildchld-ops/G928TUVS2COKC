.class Lcom/sec/daliviews/dragAndDrop/DragAndDrop$1;
.super Ljava/lang/Object;
.source "DragAndDrop.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->resizeStart(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

.field final synthetic val$item:Lcom/sec/daliviews/views/Item;

.field final synthetic val$view:Lcom/sec/daliviews/views/NativeViewBase;


# direct methods
.method constructor <init>(Lcom/sec/daliviews/dragAndDrop/DragAndDrop;Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$1;->this$0:Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    iput-object p2, p0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$1;->val$view:Lcom/sec/daliviews/views/NativeViewBase;

    iput-object p3, p0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$1;->val$item:Lcom/sec/daliviews/views/Item;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$1;->this$0:Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    iget-object v1, p0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$1;->val$view:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v2

    iget-object v1, p0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$1;->val$item:Lcom/sec/daliviews/views/Item;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/Item;->getPeer()J

    move-result-wide v4

    # invokes: Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->onResizeStart(JJ)V
    invoke-static {v0, v2, v3, v4, v5}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->access$000(Lcom/sec/daliviews/dragAndDrop/DragAndDrop;JJ)V

    iget-object v0, p0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$1;->this$0:Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    # getter for: Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->mDragListener:Lcom/sec/daliviews/dragAndDrop/DragAndDrop$OnDragListener;
    invoke-static {v0}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->access$100(Lcom/sec/daliviews/dragAndDrop/DragAndDrop;)Lcom/sec/daliviews/dragAndDrop/DragAndDrop$OnDragListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$1;->this$0:Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    # getter for: Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->mDragListener:Lcom/sec/daliviews/dragAndDrop/DragAndDrop$OnDragListener;
    invoke-static {v0}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->access$100(Lcom/sec/daliviews/dragAndDrop/DragAndDrop;)Lcom/sec/daliviews/dragAndDrop/DragAndDrop$OnDragListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$1;->val$view:Lcom/sec/daliviews/views/NativeViewBase;

    iget-object v2, p0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$1;->val$item:Lcom/sec/daliviews/views/Item;

    invoke-interface {v0, v1, v2}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$OnDragListener;->onResizeStart(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V

    :goto_0
    return-void

    :cond_0
    # getter for: Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mDragListener null calling resizeStart"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
