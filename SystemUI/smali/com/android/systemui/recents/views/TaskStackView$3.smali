.class Lcom/android/systemui/recents/views/TaskStackView$3;
.super Ljava/lang/Object;
.source "TaskStackView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/TaskStackView;->focusTask(IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/TaskStackView;

.field final synthetic val$animateFocusedState:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/TaskStackView;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackView$3;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    iput-boolean p2, p0, Lcom/android/systemui/recents/views/TaskStackView$3;->val$animateFocusedState:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView$3;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    iget v2, v2, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView$3;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    iget v2, v2, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView$3;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v3, v3, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView$3;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v2, v2, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView$3;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    iget v3, v3, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/model/Task;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView$3;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2, v0}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/recents/views/TaskStackView$3;->val$animateFocusedState:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/TaskView;->setFocusedTask(Z)V

    :cond_0
    return-void
.end method
