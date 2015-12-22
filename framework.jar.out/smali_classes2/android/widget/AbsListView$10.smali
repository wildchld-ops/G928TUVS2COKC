.class Landroid/widget/AbsListView$10;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/AbsListView$10;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v1, p0, Landroid/widget/AbsListView$10;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mQCScrollTo:I
    invoke-static {v1}, Landroid/widget/AbsListView;->access$6200(Landroid/widget/AbsListView;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/AbsListView$10;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mQCScrollNext:I
    invoke-static {v2}, Landroid/widget/AbsListView;->access$6300(Landroid/widget/AbsListView;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView$10;->this$0:Landroid/widget/AbsListView;

    iget-object v2, p0, Landroid/widget/AbsListView$10;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mQCScrollTo:I
    invoke-static {v2}, Landroid/widget/AbsListView;->access$6200(Landroid/widget/AbsListView;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView$10;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mQCScrollTo:I
    invoke-static {v1}, Landroid/widget/AbsListView;->access$6200(Landroid/widget/AbsListView;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/AbsListView$10;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mQCScrollFrom:I
    invoke-static {v2}, Landroid/widget/AbsListView;->access$6400(Landroid/widget/AbsListView;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Landroid/widget/AbsListView$10;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mScrollInterpolator:Landroid/view/animation/DecelerateInterpolator;
    invoke-static {v2}, Landroid/widget/AbsListView;->access$6600(Landroid/widget/AbsListView;)Landroid/view/animation/DecelerateInterpolator;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/AbsListView$10;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mQCScrollingCount:I
    invoke-static {v3}, Landroid/widget/AbsListView;->access$6500(Landroid/widget/AbsListView;)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40a00000    # 5.0f

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v0, v1

    iget-object v1, p0, Landroid/widget/AbsListView$10;->this$0:Landroid/widget/AbsListView;

    # operator++ for: Landroid/widget/AbsListView;->mQCScrollingCount:I
    invoke-static {v1}, Landroid/widget/AbsListView;->access$6508(Landroid/widget/AbsListView;)I

    iget-object v1, p0, Landroid/widget/AbsListView$10;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mQCScrollDirection:I
    invoke-static {v1}, Landroid/widget/AbsListView;->access$6700(Landroid/widget/AbsListView;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Landroid/widget/AbsListView$10;->this$0:Landroid/widget/AbsListView;

    # setter for: Landroid/widget/AbsListView;->mQCScrollNext:I
    invoke-static {v1, v0}, Landroid/widget/AbsListView;->access$6302(Landroid/widget/AbsListView;I)I

    iget-object v1, p0, Landroid/widget/AbsListView$10;->this$0:Landroid/widget/AbsListView;

    iget-object v2, p0, Landroid/widget/AbsListView$10;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mQCScrollNext:I
    invoke-static {v2}, Landroid/widget/AbsListView;->access$6300(Landroid/widget/AbsListView;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->setSelection(I)V

    :goto_1
    iget-object v1, p0, Landroid/widget/AbsListView$10;->this$0:Landroid/widget/AbsListView;

    iget-object v2, p0, Landroid/widget/AbsListView$10;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mQCScrollRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Landroid/widget/AbsListView;->access$6800(Landroid/widget/AbsListView;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0x28

    invoke-virtual {v1, v2, v4, v5}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView$10;->this$0:Landroid/widget/AbsListView;

    iget-object v2, p0, Landroid/widget/AbsListView$10;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mQCScrollFrom:I
    invoke-static {v2}, Landroid/widget/AbsListView;->access$6400(Landroid/widget/AbsListView;)I

    move-result v2

    add-int/2addr v2, v0

    # setter for: Landroid/widget/AbsListView;->mQCScrollNext:I
    invoke-static {v1, v2}, Landroid/widget/AbsListView;->access$6302(Landroid/widget/AbsListView;I)I

    iget-object v1, p0, Landroid/widget/AbsListView$10;->this$0:Landroid/widget/AbsListView;

    iget-object v2, p0, Landroid/widget/AbsListView$10;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mQCScrollNext:I
    invoke-static {v2}, Landroid/widget/AbsListView;->access$6300(Landroid/widget/AbsListView;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->setSelection(I)V

    goto :goto_1
.end method
