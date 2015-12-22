.class Lcom/sec/daliviews/layouts/PageLayout$2;
.super Ljava/lang/Object;
.source "PageLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/daliviews/layouts/PageLayout;->OnLayoutEventCallback(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/daliviews/layouts/PageLayout;

.field final synthetic val$page:I


# direct methods
.method constructor <init>(Lcom/sec/daliviews/layouts/PageLayout;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/daliviews/layouts/PageLayout$2;->this$0:Lcom/sec/daliviews/layouts/PageLayout;

    iput p2, p0, Lcom/sec/daliviews/layouts/PageLayout$2;->val$page:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/daliviews/layouts/PageLayout$2;->this$0:Lcom/sec/daliviews/layouts/PageLayout;

    # getter for: Lcom/sec/daliviews/layouts/PageLayout;->mPageListener:Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;
    invoke-static {v0}, Lcom/sec/daliviews/layouts/PageLayout;->access$000(Lcom/sec/daliviews/layouts/PageLayout;)Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/layouts/PageLayout$2;->this$0:Lcom/sec/daliviews/layouts/PageLayout;

    # getter for: Lcom/sec/daliviews/layouts/PageLayout;->mPageListener:Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;
    invoke-static {v0}, Lcom/sec/daliviews/layouts/PageLayout;->access$000(Lcom/sec/daliviews/layouts/PageLayout;)Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;

    move-result-object v0

    iget v1, p0, Lcom/sec/daliviews/layouts/PageLayout$2;->val$page:I

    invoke-interface {v0, v1}, Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;->onPageChanged(I)V

    iget-object v0, p0, Lcom/sec/daliviews/layouts/PageLayout$2;->this$0:Lcom/sec/daliviews/layouts/PageLayout;

    # getter for: Lcom/sec/daliviews/layouts/PageLayout;->mPageListener:Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;
    invoke-static {v0}, Lcom/sec/daliviews/layouts/PageLayout;->access$000(Lcom/sec/daliviews/layouts/PageLayout;)Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;->onScrollEnd()V

    :cond_0
    return-void
.end method
