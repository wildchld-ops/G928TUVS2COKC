.class Lcom/sec/daliviews/dragAndDrop/DragAndDrop$4;
.super Ljava/lang/Object;
.source "DragAndDrop.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->dragCancel(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

.field final synthetic val$draggedItemDeleted:Z


# direct methods
.method constructor <init>(Lcom/sec/daliviews/dragAndDrop/DragAndDrop;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$4;->this$0:Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    iput-boolean p2, p0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$4;->val$draggedItemDeleted:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$4;->this$0:Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    iget-boolean v1, p0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$4;->val$draggedItemDeleted:Z

    # invokes: Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->onDragCancel(Z)V
    invoke-static {v0, v1}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->access$500(Lcom/sec/daliviews/dragAndDrop/DragAndDrop;Z)V

    return-void
.end method
