.class Lcom/android/systemui/recents/model/TaskStack$4;
.super Ljava/lang/Object;
.source "TaskStack.java"

# interfaces
.implements Lcom/android/systemui/recents/model/TaskFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/model/TaskStack;->filterSplitTasks(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/model/TaskStack;

.field final synthetic val$isSplitRecent:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/model/TaskStack;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/model/TaskStack$4;->this$0:Lcom/android/systemui/recents/model/TaskStack;

    iput-boolean p2, p0, Lcom/android/systemui/recents/model/TaskStack$4;->val$isSplitRecent:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptTask(Lcom/android/systemui/recents/model/Task;I)Z
    .locals 4

    const/high16 v3, 0x800000

    iget-boolean v0, p0, Lcom/android/systemui/recents/model/TaskStack$4;->val$isSplitRecent:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$4;->this$0:Lcom/android/systemui/recents/model/TaskStack;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, p1, Lcom/android/systemui/recents/model/Task;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/model/TaskStack;->isSupportMultiWindow(Landroid/content/pm/ActivityInfo;Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/2addr v0, v3

    if-eq v0, v3, :cond_0

    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
