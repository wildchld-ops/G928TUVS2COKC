.class Lcom/sec/daliviews/layouts/LayoutBase$1;
.super Ljava/lang/Object;
.source "LayoutBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/daliviews/layouts/LayoutBase;->OnLayoutEventCallback(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/daliviews/layouts/LayoutBase;

.field final synthetic val$etype:I

.field final synthetic val$evalue:I


# direct methods
.method constructor <init>(Lcom/sec/daliviews/layouts/LayoutBase;II)V
    .locals 0

    iput-object p1, p0, Lcom/sec/daliviews/layouts/LayoutBase$1;->this$0:Lcom/sec/daliviews/layouts/LayoutBase;

    iput p2, p0, Lcom/sec/daliviews/layouts/LayoutBase$1;->val$etype:I

    iput p3, p0, Lcom/sec/daliviews/layouts/LayoutBase$1;->val$evalue:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/daliviews/layouts/LayoutBase$1;->this$0:Lcom/sec/daliviews/layouts/LayoutBase;

    # getter for: Lcom/sec/daliviews/layouts/LayoutBase;->mLayoutEventListener:Lcom/sec/daliviews/layouts/LayoutBase$OnLayoutEventListener;
    invoke-static {v0}, Lcom/sec/daliviews/layouts/LayoutBase;->access$000(Lcom/sec/daliviews/layouts/LayoutBase;)Lcom/sec/daliviews/layouts/LayoutBase$OnLayoutEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/layouts/LayoutBase$1;->this$0:Lcom/sec/daliviews/layouts/LayoutBase;

    # getter for: Lcom/sec/daliviews/layouts/LayoutBase;->mLayoutEventListener:Lcom/sec/daliviews/layouts/LayoutBase$OnLayoutEventListener;
    invoke-static {v0}, Lcom/sec/daliviews/layouts/LayoutBase;->access$000(Lcom/sec/daliviews/layouts/LayoutBase;)Lcom/sec/daliviews/layouts/LayoutBase$OnLayoutEventListener;

    move-result-object v0

    iget v1, p0, Lcom/sec/daliviews/layouts/LayoutBase$1;->val$etype:I

    iget v2, p0, Lcom/sec/daliviews/layouts/LayoutBase$1;->val$evalue:I

    invoke-interface {v0, v1, v2}, Lcom/sec/daliviews/layouts/LayoutBase$OnLayoutEventListener;->onLayoutEvent(II)V

    :cond_0
    return-void
.end method
