.class Landroid/content/res/Resources$ProcessPriorityThreadFactory$1;
.super Ljava/lang/Thread;
.source "Resources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/res/Resources$ProcessPriorityThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/res/Resources$ProcessPriorityThreadFactory;


# direct methods
.method constructor <init>(Landroid/content/res/Resources$ProcessPriorityThreadFactory;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Landroid/content/res/Resources$ProcessPriorityThreadFactory$1;->this$0:Landroid/content/res/Resources$ProcessPriorityThreadFactory;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Landroid/content/res/Resources$ProcessPriorityThreadFactory$1;->this$0:Landroid/content/res/Resources$ProcessPriorityThreadFactory;

    # getter for: Landroid/content/res/Resources$ProcessPriorityThreadFactory;->threadPriority:I
    invoke-static {v0}, Landroid/content/res/Resources$ProcessPriorityThreadFactory;->access$000(Landroid/content/res/Resources$ProcessPriorityThreadFactory;)I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    return-void
.end method
