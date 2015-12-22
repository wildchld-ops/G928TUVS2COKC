.class public Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;
.super Landroid/widget/FrameLayout;
.source "DashboardEditFavoriteTileView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dashboard/DashboardEditFavoriteTileView$DashboardEditFavoriteTileViewHolder;
    }
.end annotation


# instance fields
.field private mCheckbox:Landroid/widget/CheckBox;

.field private mColSpan:I

.field private mDivider:Landroid/view/View;

.field private mImageView:Landroid/widget/ImageView;

.field private mStatusTextView:Landroid/widget/TextView;

.field private mTile:Lcom/android/settings/dashboard/DashboardTile;

.field private mTitleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v3, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;->mColSpan:I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040071

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100090

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f100091

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;->mTitleTextView:Landroid/widget/TextView;

    const v1, 0x7f100077

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;->mStatusTextView:Landroid/widget/TextView;

    const v1, 0x7f100113

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;->mDivider:Landroid/view/View;

    const v1, 0x7f100040

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {p0, p0}, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f02006b

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;->setBackgroundResource(I)V

    invoke-virtual {p0, v3}, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method public getCheckBox()Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;->mCheckbox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method getColumnSpan()I
    .locals 1

    iget v0, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;->mColSpan:I

    return v0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getStatusTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;->mStatusTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTile()Lcom/android/settings/dashboard/DashboardTile;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;->mTile:Lcom/android/settings/dashboard/DashboardTile;

    return-object v0
.end method

.method public getTitleTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;->mTitleTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    const/16 v6, 0x9

    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->getCheckedTileCount()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView$DashboardEditFavoriteTileViewHolder;

    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    iput-boolean v7, v1, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView$DashboardEditFavoriteTileViewHolder;->isChecked:Z

    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    invoke-static {}, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->UpdateSelectionMenu()V

    :goto_1
    return-void

    :cond_0
    if-ge v0, v6, :cond_1

    iput-boolean v5, v1, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView$DashboardEditFavoriteTileViewHolder;->isChecked:Z

    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a0da4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public setDividerVisibility(Z)V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;->mDivider:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setTile(Lcom/android/settings/dashboard/DashboardTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;->mTile:Lcom/android/settings/dashboard/DashboardTile;

    return-void
.end method
