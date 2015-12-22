.class Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$2;
.super Ljava/lang/Object;
.source "RecentsMultiWindowActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->onCreate(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$2;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$2;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    # setter for: Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerScrollIdlePage:I
    invoke-static {v0, p1}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$002(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;I)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$2;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    const/4 v1, -0x1

    # setter for: Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerScrollIdlePage:I
    invoke-static {v0, v1}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$002(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;I)I

    goto :goto_0
.end method

.method public onPageSelected(I)V
    .locals 8

    const/high16 v7, 0x40000000    # 2.0f

    const v6, 0x3f99999a    # 1.2f

    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$2;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    # getter for: Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerCount:I
    invoke-static {v3}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$100(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)I

    move-result v3

    rem-int/2addr p1, v3

    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$2;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    # getter for: Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerMark:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$300(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$2;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    # getter for: Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerSelectedPage:I
    invoke-static {v4}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$200(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/16 v3, 0x66

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageAlpha(I)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$2;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    # getter for: Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerMark:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$300(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v6, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$2;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    # getter for: Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerMarkerSize:I
    invoke-static {v3}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$400(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$2;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    # getter for: Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerMarkerSize:I
    invoke-static {v4}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$400(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v6

    sub-float/2addr v3, v4

    div-float/2addr v3, v7

    iget-object v4, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$2;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    # getter for: Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerMarkerSize:I
    invoke-static {v4}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$400(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$2;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    # getter for: Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerMarkerSize:I
    invoke-static {v5}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$400(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    const/16 v3, 0xff

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageAlpha(I)V

    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$2;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    # setter for: Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerSelectedPage:I
    invoke-static {v3, p1}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$202(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;I)I

    return-void
.end method
