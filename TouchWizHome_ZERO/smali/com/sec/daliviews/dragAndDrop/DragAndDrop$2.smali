.class Lcom/sec/daliviews/dragAndDrop/DragAndDrop$2;
.super Ljava/lang/Object;
.source "DragAndDrop.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->resizeFinished()V
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

    iput-object p1, p0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$2;->this$0:Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$2;->this$0:Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    # invokes: Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->onResizeFinished()V
    invoke-static {v0}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->access$300(Lcom/sec/daliviews/dragAndDrop/DragAndDrop;)V

    return-void
.end method
