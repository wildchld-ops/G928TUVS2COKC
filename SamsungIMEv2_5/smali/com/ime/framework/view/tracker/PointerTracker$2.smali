.class Lcom/ime/framework/view/tracker/PointerTracker$2;
.super Ljava/lang/Object;
.source "PointerTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/framework/view/tracker/PointerTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/view/tracker/PointerTracker;


# direct methods
.method constructor <init>(Lcom/ime/framework/view/tracker/PointerTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/view/tracker/PointerTracker$2;->this$0:Lcom/ime/framework/view/tracker/PointerTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "mytest"

    const-string v1, "Delkey Double tap Time out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ime/framework/view/tracker/PointerTracker$2;->this$0:Lcom/ime/framework/view/tracker/PointerTracker;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/ime/framework/view/tracker/PointerTracker;->mforce:Z

    const-string v0, "mytest"

    const-string v1, "Runnable - mforce : true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/ime/framework/view/tracker/PointerTracker$2;->this$0:Lcom/ime/framework/view/tracker/PointerTracker;

    iget-object v0, p0, Lcom/ime/framework/view/tracker/PointerTracker$2;->this$0:Lcom/ime/framework/view/tracker/PointerTracker;

    iget v2, v0, Lcom/ime/framework/view/tracker/PointerTracker;->mX:I

    iget-object v0, p0, Lcom/ime/framework/view/tracker/PointerTracker$2;->this$0:Lcom/ime/framework/view/tracker/PointerTracker;

    iget v3, v0, Lcom/ime/framework/view/tracker/PointerTracker;->mY:I

    iget-object v0, p0, Lcom/ime/framework/view/tracker/PointerTracker$2;->this$0:Lcom/ime/framework/view/tracker/PointerTracker;

    # getter for: Lcom/ime/framework/view/tracker/PointerTracker;->mDelDoubleEventTime:J
    invoke-static {v0}, Lcom/ime/framework/view/tracker/PointerTracker;->access$000(Lcom/ime/framework/view/tracker/PointerTracker;)J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/ime/framework/view/tracker/PointerTracker;->onDownEvent(IIJI)V

    return-void
.end method
