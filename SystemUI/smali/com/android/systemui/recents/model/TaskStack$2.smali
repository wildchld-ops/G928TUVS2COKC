.class Lcom/android/systemui/recents/model/TaskStack$2;
.super Ljava/lang/Object;
.source "TaskStack.java"

# interfaces
.implements Lcom/android/systemui/recents/model/TaskFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/model/TaskStack;->filterCoupledTask(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/model/TaskStack;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/model/TaskStack;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/model/TaskStack$2;->this$0:Lcom/android/systemui/recents/model/TaskStack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptTask(Lcom/android/systemui/recents/model/Task;I)Z
    .locals 1

    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->dualScreenTaskInfo:Lcom/samsung/android/dualscreen/TaskInfo;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->dualScreenTaskInfo:Lcom/samsung/android/dualscreen/TaskInfo;

    invoke-virtual {v0}, Lcom/samsung/android/dualscreen/TaskInfo;->isCoupled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
