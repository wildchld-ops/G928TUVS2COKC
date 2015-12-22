.class Lcom/sec/daliviews/views/NativeViewBase$PerformClick;
.super Ljava/lang/Object;
.source "NativeViewBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/daliviews/views/NativeViewBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PerformClick"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/daliviews/views/NativeViewBase;


# direct methods
.method constructor <init>(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/daliviews/views/NativeViewBase$PerformClick;->this$0:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v0, 0x0

    # getter for: Lcom/sec/daliviews/views/NativeViewBase;->mAccessiblityEnabled:Z
    invoke-static {}, Lcom/sec/daliviews/views/NativeViewBase;->access$800()Z

    move-result v1

    if-eqz v1, :cond_0

    # getter for: Lcom/sec/daliviews/views/NativeViewBase;->mFocusedView:Lcom/sec/daliviews/views/NativeViewBase;
    invoke-static {}, Lcom/sec/daliviews/views/NativeViewBase;->access$900()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    if-eqz v1, :cond_0

    # getter for: Lcom/sec/daliviews/views/NativeViewBase;->mFocusedView:Lcom/sec/daliviews/views/NativeViewBase;
    invoke-static {}, Lcom/sec/daliviews/views/NativeViewBase;->access$900()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/daliviews/views/NativeViewBase;->performClick()Z

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/sec/daliviews/views/NativeViewBase$PerformClick;->this$0:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/NativeViewBase;->performClick()Z

    :cond_1
    return-void
.end method
