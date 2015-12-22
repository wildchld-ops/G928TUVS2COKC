.class Lcom/android/settings/dashboard/DashboardSummary$7;
.super Ljava/lang/Object;
.source "DashboardSummary.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dashboard/DashboardSummary;->initializeLayoutBySplitBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/DashboardSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/DashboardSummary;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardSummary$7;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary$7;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-virtual {v2}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary$7;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    # getter for: Lcom/android/settings/dashboard/DashboardSummary;->mHeaderLayout:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/settings/dashboard/DashboardSummary;->access$400(Lcom/android/settings/dashboard/DashboardSummary;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getX()F

    move-result v0

    :goto_1
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary$7;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    # getter for: Lcom/android/settings/dashboard/DashboardSummary;->mSplitBarView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/settings/dashboard/DashboardSummary;->access$600(Lcom/android/settings/dashboard/DashboardSummary;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary$7;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    # getter for: Lcom/android/settings/dashboard/DashboardSummary;->mSplitBarView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/settings/dashboard/DashboardSummary;->access$600(Lcom/android/settings/dashboard/DashboardSummary;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float v1, v0, v2

    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gez v2, :cond_2

    const/4 v1, 0x0

    :cond_2
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary$7;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    # getter for: Lcom/android/settings/dashboard/DashboardSummary;->mSplitBarView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/settings/dashboard/DashboardSummary;->access$600(Lcom/android/settings/dashboard/DashboardSummary;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary$7;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    # getter for: Lcom/android/settings/dashboard/DashboardSummary;->mSplitBarView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/settings/dashboard/DashboardSummary;->access$600(Lcom/android/settings/dashboard/DashboardSummary;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setX(F)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary$7;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    # getter for: Lcom/android/settings/dashboard/DashboardSummary;->mPrefsContainer:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/settings/dashboard/DashboardSummary;->access$500(Lcom/android/settings/dashboard/DashboardSummary;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getX()F

    move-result v0

    goto :goto_1
.end method
