.class Lcom/sec/daliviews/dragAndDrop/DragAndDrop$3;
.super Ljava/lang/Object;
.source "DragAndDrop.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->dragEnd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/daliviews/dragAndDrop/DragAndDrop;


# direct methods
.method constructor <init>(Lcom/sec/daliviews/dragAndDrop/DragAndDrop;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$3;->this$0:Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$3;->this$0:Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    # invokes: Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->onDragEnd()V
    invoke-static {v0}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->access$400(Lcom/sec/daliviews/dragAndDrop/DragAndDrop;)V

    iget-object v0, p0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$3;->this$0:Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    # getter for: Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->mDragListener:Lcom/sec/daliviews/dragAndDrop/DragAndDrop$OnDragListener;
    invoke-static {v0}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->access$100(Lcom/sec/daliviews/dragAndDrop/DragAndDrop;)Lcom/sec/daliviews/dragAndDrop/DragAndDrop$OnDragListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$3;->this$0:Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    # getter for: Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->mDragListener:Lcom/sec/daliviews/dragAndDrop/DragAndDrop$OnDragListener;
    invoke-static {v0}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->access$100(Lcom/sec/daliviews/dragAndDrop/DragAndDrop;)Lcom/sec/daliviews/dragAndDrop/DragAndDrop$OnDragListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$OnDragListener;->onDragEnd()V

    :goto_0
    return-void

    :cond_0
    # getter for: Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mDragListener null calling onDragEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
