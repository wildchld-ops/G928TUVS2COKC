.class Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$6;
.super Ljava/lang/Object;
.source "RecentsMultiWindowActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$6;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/high16 v3, -0x40800000    # -1.0f

    iget-object v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$6;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    # getter for: Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerScrollIdlePage:I
    invoke-static {v1}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$000(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$6;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    # getter for: Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerCount:I
    invoke-static {v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$100(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$6;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    # getter for: Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerScrollIdlePage:I
    invoke-static {v1}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$000(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v1, 0x0

    :goto_1
    return v1

    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$6;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    # setter for: Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mStartTouchX:F
    invoke-static {v1, v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$702(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;F)F

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$6;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    # getter for: Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mStartTouchX:F
    invoke-static {v1}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$700(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)F

    move-result v1

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$6;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    # getter for: Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mStartTouchX:F
    invoke-static {v1}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$700(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$6;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    # getter for: Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mAppListViewPagerAdapter:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$SpiltPagerAdapter;
    invoke-static {v1}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$600(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$SpiltPagerAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$6;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    # getter for: Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerScrollIdlePage:I
    invoke-static {v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$000(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$SpiltPagerAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/multiwindow/SplitAppListFragment;

    iget-object v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$6;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    # getter for: Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mStartTouchX:F
    invoke-static {v1}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$700(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->scrollAnimation(FF)V

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$6;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    # setter for: Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mStartTouchX:F
    invoke-static {v1, v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$702(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;F)F

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$6;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    # getter for: Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mStartTouchX:F
    invoke-static {v1}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$700(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)F

    move-result v1

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$6;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    # getter for: Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mAppListViewPagerAdapter:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$SpiltPagerAdapter;
    invoke-static {v1}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$600(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$SpiltPagerAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$6;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    # getter for: Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerScrollIdlePage:I
    invoke-static {v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$000(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$SpiltPagerAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/multiwindow/SplitAppListFragment;

    invoke-virtual {v0, v3, v3}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->scrollAnimation(FF)V

    iget-object v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$6;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    # setter for: Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mStartTouchX:F
    invoke-static {v1, v3}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$702(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;F)F

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$6;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    # setter for: Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mStartTouchX:F
    invoke-static {v1, v3}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$702(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;F)F

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
