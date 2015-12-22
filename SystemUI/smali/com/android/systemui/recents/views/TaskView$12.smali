.class Lcom/android/systemui/recents/views/TaskView$12;
.super Ljava/lang/Object;
.source "TaskView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/TaskView;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/TaskView;

.field final synthetic val$tv:Lcom/android/systemui/recents/views/TaskView;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskView;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskView$12;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iput-object p2, p0, Lcom/android/systemui/recents/views/TaskView$12;->val$tv:Lcom/android/systemui/recents/views/TaskView;

    iput-object p3, p0, Lcom/android/systemui/recents/views/TaskView$12;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 v1, 0x0

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView$12;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView$12;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView$12;->val$tv:Lcom/android/systemui/recents/views/TaskView;

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView$12;->val$tv:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v4

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView$12;->val$v:Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskView$12;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v5, v5, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    if-ne v0, v5, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v2, v3, v4, v0, v1}, Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;->onTaskViewClicked(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;ZZ)V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method
