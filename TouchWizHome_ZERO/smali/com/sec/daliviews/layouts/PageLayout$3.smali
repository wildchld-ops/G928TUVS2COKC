.class Lcom/sec/daliviews/layouts/PageLayout$3;
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


# direct methods
.method constructor <init>(Lcom/sec/daliviews/layouts/PageLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/daliviews/layouts/PageLayout$3;->this$0:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/layouts/PageLayout$3;->this$0:Lcom/sec/daliviews/layouts/PageLayout;

    # getter for: Lcom/sec/daliviews/layouts/PageLayout;->mMiniPageListener:Lcom/sec/daliviews/layouts/PageLayout$OnMiniPageShouldUpdateListener;
    invoke-static {v0}, Lcom/sec/daliviews/layouts/PageLayout;->access$100(Lcom/sec/daliviews/layouts/PageLayout;)Lcom/sec/daliviews/layouts/PageLayout$OnMiniPageShouldUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/layouts/PageLayout$3;->this$0:Lcom/sec/daliviews/layouts/PageLayout;

    # getter for: Lcom/sec/daliviews/layouts/PageLayout;->mMiniPageListener:Lcom/sec/daliviews/layouts/PageLayout$OnMiniPageShouldUpdateListener;
    invoke-static {v0}, Lcom/sec/daliviews/layouts/PageLayout;->access$100(Lcom/sec/daliviews/layouts/PageLayout;)Lcom/sec/daliviews/layouts/PageLayout$OnMiniPageShouldUpdateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/daliviews/layouts/PageLayout$OnMiniPageShouldUpdateListener;->onMiniPageShouldUpdate()V

    :cond_0
    return-void
.end method
