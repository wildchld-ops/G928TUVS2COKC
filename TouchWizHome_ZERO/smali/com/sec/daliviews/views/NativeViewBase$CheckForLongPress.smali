.class Lcom/sec/daliviews/views/NativeViewBase$CheckForLongPress;
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
    name = "CheckForLongPress"
.end annotation


# instance fields
.field private mOriginalWindowAttachCount:I

.field final synthetic this$0:Lcom/sec/daliviews/views/NativeViewBase;


# direct methods
.method constructor <init>(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/daliviews/views/NativeViewBase$CheckForLongPress;->this$0:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rememberWindowAttachCount()V
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase$CheckForLongPress;->this$0:Lcom/sec/daliviews/views/NativeViewBase;

    # getter for: Lcom/sec/daliviews/views/NativeViewBase;->mWindowAttachCount:I
    invoke-static {v0}, Lcom/sec/daliviews/views/NativeViewBase;->access$400(Lcom/sec/daliviews/views/NativeViewBase;)I

    move-result v0

    iput v0, p0, Lcom/sec/daliviews/views/NativeViewBase$CheckForLongPress;->mOriginalWindowAttachCount:I

    return-void
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase$CheckForLongPress;->this$0:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/NativeViewBase;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/daliviews/views/NativeViewBase$CheckForLongPress;->mOriginalWindowAttachCount:I

    iget-object v1, p0, Lcom/sec/daliviews/views/NativeViewBase$CheckForLongPress;->this$0:Lcom/sec/daliviews/views/NativeViewBase;

    # getter for: Lcom/sec/daliviews/views/NativeViewBase;->mWindowAttachCount:I
    invoke-static {v1}, Lcom/sec/daliviews/views/NativeViewBase;->access$400(Lcom/sec/daliviews/views/NativeViewBase;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase$CheckForLongPress;->this$0:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/NativeViewBase;->performLongClick()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase$CheckForLongPress;->this$0:Lcom/sec/daliviews/views/NativeViewBase;

    const/4 v1, 0x1

    # setter for: Lcom/sec/daliviews/views/NativeViewBase;->mHasPerformedLongPress:Z
    invoke-static {v0, v1}, Lcom/sec/daliviews/views/NativeViewBase;->access$502(Lcom/sec/daliviews/views/NativeViewBase;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase$CheckForLongPress;->this$0:Lcom/sec/daliviews/views/NativeViewBase;

    const/4 v1, 0x0

    # setter for: Lcom/sec/daliviews/views/NativeViewBase;->mIsCheckingForLongPress:Z
    invoke-static {v0, v1}, Lcom/sec/daliviews/views/NativeViewBase;->access$602(Lcom/sec/daliviews/views/NativeViewBase;Z)Z

    return-void
.end method
