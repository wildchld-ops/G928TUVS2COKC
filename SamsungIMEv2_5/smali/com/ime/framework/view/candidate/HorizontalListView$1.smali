.class Lcom/ime/framework/view/candidate/HorizontalListView$1;
.super Landroid/database/DataSetObserver;
.source "HorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/framework/view/candidate/HorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/view/candidate/HorizontalListView;


# direct methods
.method constructor <init>(Lcom/ime/framework/view/candidate/HorizontalListView;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/view/candidate/HorizontalListView$1;->this$0:Lcom/ime/framework/view/candidate/HorizontalListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView$1;->this$0:Lcom/ime/framework/view/candidate/HorizontalListView;

    const/4 v1, 0x1

    # setter for: Lcom/ime/framework/view/candidate/HorizontalListView;->mDataChanged:Z
    invoke-static {v0, v1}, Lcom/ime/framework/view/candidate/HorizontalListView;->access$002(Lcom/ime/framework/view/candidate/HorizontalListView;Z)Z

    iget-object v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView$1;->this$0:Lcom/ime/framework/view/candidate/HorizontalListView;

    const/4 v1, 0x0

    # setter for: Lcom/ime/framework/view/candidate/HorizontalListView;->mHasNotifiedRunningLowOnData:Z
    invoke-static {v0, v1}, Lcom/ime/framework/view/candidate/HorizontalListView;->access$102(Lcom/ime/framework/view/candidate/HorizontalListView;Z)Z

    iget-object v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView$1;->this$0:Lcom/ime/framework/view/candidate/HorizontalListView;

    invoke-virtual {v0}, Lcom/ime/framework/view/candidate/HorizontalListView;->invalidate()V

    iget-object v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView$1;->this$0:Lcom/ime/framework/view/candidate/HorizontalListView;

    invoke-virtual {v0}, Lcom/ime/framework/view/candidate/HorizontalListView;->requestLayout()V

    return-void
.end method

.method public onInvalidated()V
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView$1;->this$0:Lcom/ime/framework/view/candidate/HorizontalListView;

    const/4 v1, 0x0

    # setter for: Lcom/ime/framework/view/candidate/HorizontalListView;->mHasNotifiedRunningLowOnData:Z
    invoke-static {v0, v1}, Lcom/ime/framework/view/candidate/HorizontalListView;->access$102(Lcom/ime/framework/view/candidate/HorizontalListView;Z)Z

    iget-object v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView$1;->this$0:Lcom/ime/framework/view/candidate/HorizontalListView;

    # invokes: Lcom/ime/framework/view/candidate/HorizontalListView;->reset()V
    invoke-static {v0}, Lcom/ime/framework/view/candidate/HorizontalListView;->access$200(Lcom/ime/framework/view/candidate/HorizontalListView;)V

    iget-object v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView$1;->this$0:Lcom/ime/framework/view/candidate/HorizontalListView;

    invoke-virtual {v0}, Lcom/ime/framework/view/candidate/HorizontalListView;->invalidate()V

    iget-object v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView$1;->this$0:Lcom/ime/framework/view/candidate/HorizontalListView;

    invoke-virtual {v0}, Lcom/ime/framework/view/candidate/HorizontalListView;->requestLayout()V

    return-void
.end method
