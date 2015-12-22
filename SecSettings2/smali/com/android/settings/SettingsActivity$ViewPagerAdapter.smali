.class public Lcom/android/settings/SettingsActivity$ViewPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewPagerAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/settings/SettingsActivity;


# direct methods
.method public constructor <init>(Lcom/android/settings/SettingsActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/SettingsActivity$ViewPagerAdapter;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    iput-object p2, p0, Lcom/android/settings/SettingsActivity$ViewPagerAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/support/v4/view/ViewPager;

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SettingsActivity$ViewPagerAdapter;->this$0:Lcom/android/settings/SettingsActivity;

    # getter for: Lcom/android/settings/SettingsActivity;->mDashboardTabcategories:Ljava/util/List;
    invoke-static {v0}, Lcom/android/settings/SettingsActivity;->access$1200(Lcom/android/settings/SettingsActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 7

    move v3, p2

    move-object v2, p1

    check-cast v2, Landroid/support/v4/view/ViewPager;

    iget-object v4, p0, Lcom/android/settings/SettingsActivity$ViewPagerAdapter;->this$0:Lcom/android/settings/SettingsActivity;

    # getter for: Lcom/android/settings/SettingsActivity;->mDashboardTabcategories:Ljava/util/List;
    invoke-static {v4}, Lcom/android/settings/SettingsActivity;->access$1200(Lcom/android/settings/SettingsActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dashboard/DashboardCategory;

    iget-object v5, p0, Lcom/android/settings/SettingsActivity$ViewPagerAdapter;->this$0:Lcom/android/settings/SettingsActivity;

    iget-object v4, p0, Lcom/android/settings/SettingsActivity$ViewPagerAdapter;->this$0:Lcom/android/settings/SettingsActivity;

    # getter for: Lcom/android/settings/SettingsActivity;->mDashboardTabcategories:Ljava/util/List;
    invoke-static {v4}, Lcom/android/settings/SettingsActivity;->access$1200(Lcom/android/settings/SettingsActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/dashboard/DashboardCategory;

    iget-object v6, p0, Lcom/android/settings/SettingsActivity$ViewPagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4, v6}, Lcom/android/settings/SettingsActivity;->updateTabTileView(Lcom/android/settings/dashboard/DashboardCategory;Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    return-object v1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
