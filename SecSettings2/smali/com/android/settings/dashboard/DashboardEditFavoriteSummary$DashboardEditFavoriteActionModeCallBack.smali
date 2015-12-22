.class Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;
.super Ljava/lang/Object;
.source "DashboardEditFavoriteSummary.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DashboardEditFavoriteActionModeCallBack"
.end annotation


# instance fields
.field private mActionBack:Landroid/widget/ImageView;

.field private mCount:Landroid/widget/TextView;

.field private mMultiSelectActionBarView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;


# direct methods
.method private constructor <init>(Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;->this$0:Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;-><init>(Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;->this$0:Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->select:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->access$202(Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;->this$0:Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040074

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;->mMultiSelectActionBarView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;->mMultiSelectActionBarView:Landroid/view/View;

    const v1, 0x7f10011b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;->mActionBack:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;->mActionBack:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;->this$0:Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;

    const v2, 0x7f0a1271

    invoke-virtual {v1, v2}, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;->mActionBack:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack$1;

    invoke-direct {v1, p0}, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack$1;-><init>(Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;->mActionBack:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setHoverPopupType(I)V

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;->mMultiSelectActionBarView:Landroid/view/View;

    const v1, 0x7f10011c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;->mCount:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;->updateSelectionMenu()V

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    return v3
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;->this$0:Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->SaveFavoriteTile()V

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;->this$0:Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public updateSelectionMenu()V
    .locals 9

    const/16 v8, 0x9

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->getCheckedTileCount()I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;->this$0:Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;

    invoke-virtual {v2}, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0e65

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;->this$0:Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;

    # getter for: Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->mBottomText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->access$400(Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;)Landroid/widget/TextView;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;->this$0:Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;

    invoke-virtual {v2}, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0e66

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;->mCount:Landroid/widget/TextView;

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
