.class Lcom/android/systemui/recents/views/TaskStackView$4;
.super Ljava/lang/Object;
.source "TaskStackView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/TaskStackView;->startEnterRecentsAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/TaskStackView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/TaskStackView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackView$4;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v7, 0x1

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView$4;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    iput-boolean v7, v4, Lcom/android/systemui/recents/views/TaskStackView;->mStartEnterAnimationCompleted:Z

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView$4;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v4, v4, Lcom/android/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/DozeTrigger;->poke()V

    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView$4;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isTouchExplorationEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView$4;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskView;->requestAccessibilityFocus()Z

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView$4;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView$4;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v5, v5, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/systemui/recents/model/TaskStack;->indexOfTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v5

    iput v5, v4, Lcom/android/systemui/recents/views/TaskStackView;->mPrevAccessibilityFocusedIndex:I

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView$4;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v4, v4, Lcom/android/systemui/recents/views/TaskStackView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithAltTab:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView$4;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v4, v4, Lcom/android/systemui/recents/views/TaskStackView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->launchedHasConfigurationChanged:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView$4;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView$4;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    iget v5, v5, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    check-cast v3, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v3, v7}, Lcom/android/systemui/recents/views/TaskView;->setFocusedTask(Z)V

    :cond_1
    return-void
.end method
