.class Lcom/android/systemui/recents/model/TaskStack$3;
.super Ljava/lang/Object;
.source "TaskStack.java"

# interfaces
.implements Lcom/android/systemui/recents/model/TaskFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/model/TaskStack;->filterExcludeTask(Lcom/android/systemui/recents/model/Task;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/model/TaskStack;

.field final synthetic val$t:Lcom/android/systemui/recents/model/Task;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/model/TaskStack$3;->this$0:Lcom/android/systemui/recents/model/TaskStack;

    iput-object p2, p0, Lcom/android/systemui/recents/model/TaskStack$3;->val$t:Lcom/android/systemui/recents/model/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptTask(Lcom/android/systemui/recents/model/Task;I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$3;->val$t:Lcom/android/systemui/recents/model/Task;

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
