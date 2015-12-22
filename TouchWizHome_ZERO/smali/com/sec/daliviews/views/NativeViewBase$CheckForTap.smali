.class final Lcom/sec/daliviews/views/NativeViewBase$CheckForTap;
.super Ljava/lang/Object;
.source "NativeViewBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/daliviews/views/NativeViewBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CheckForTap"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/daliviews/views/NativeViewBase;


# direct methods
.method private constructor <init>(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/daliviews/views/NativeViewBase$CheckForTap;->this$0:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/daliviews/views/NativeViewBase$CheckForTap;-><init>(Lcom/sec/daliviews/views/NativeViewBase;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase$CheckForTap;->this$0:Lcom/sec/daliviews/views/NativeViewBase;

    iget v1, v0, Lcom/sec/daliviews/views/NativeViewBase;->mPrivateFlags:I

    const v2, -0x2000001

    and-int/2addr v1, v2

    iput v1, v0, Lcom/sec/daliviews/views/NativeViewBase;->mPrivateFlags:I

    iget-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase$CheckForTap;->this$0:Lcom/sec/daliviews/views/NativeViewBase;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/NativeViewBase;->setPressed(Z)V

    iget-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase$CheckForTap;->this$0:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-static {}, Lcom/sec/daliviews/events/NativeEventHitlist;->getTapTimeout()I

    move-result v1

    # invokes: Lcom/sec/daliviews/views/NativeViewBase;->checkForLongClick(I)V
    invoke-static {v0, v1}, Lcom/sec/daliviews/views/NativeViewBase;->access$700(Lcom/sec/daliviews/views/NativeViewBase;I)V

    return-void
.end method
