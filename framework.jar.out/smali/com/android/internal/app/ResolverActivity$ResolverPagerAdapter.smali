.class Lcom/android/internal/app/ResolverActivity$ResolverPagerAdapter;
.super Landroid/widget/SimpleViewPager$PagerAdapter;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResolverPagerAdapter"
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ResolverActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$ResolverPagerAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mViewPager:Landroid/widget/SimpleViewPager;
    invoke-static {p1}, Lcom/android/internal/app/ResolverActivity;->access$3600(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/SimpleViewPager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, v0}, Landroid/widget/SimpleViewPager$PagerAdapter;-><init>(Landroid/widget/SimpleViewPager;)V

    # getter for: Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/internal/app/ResolverActivity;->access$3700(Lcom/android/internal/app/ResolverActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolverPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/widget/SimpleViewPager;

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/widget/SimpleViewPager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolverPagerAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mGridResolveAdapterList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->access$3800(Lcom/android/internal/app/ResolverActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 8

    const/4 v7, 0x3

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$ResolverPagerAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mGridResolveAdapterList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity;->access$3800(Lcom/android/internal/app/ResolverActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$ResolverPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x109012c

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x1020472

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$ResolverPagerAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v1, v4}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v4, Lcom/android/internal/app/ResolverActivity$ItemLongClickListener;

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity$ResolverPagerAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {v4, v5}, Lcom/android/internal/app/ResolverActivity$ItemLongClickListener;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->getCount()I

    move-result v2

    if-nez p2, :cond_0

    if-gt v2, v7, :cond_0

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    const/16 v4, 0x11

    invoke-virtual {v1, v4}, Landroid/widget/GridView;->setGravity(I)V

    :goto_0
    check-cast p1, Landroid/widget/SimpleViewPager;

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/widget/SimpleViewPager;->addView(Landroid/view/View;I)V

    return-object v3

    :cond_0
    invoke-virtual {v1, v7}, Landroid/widget/GridView;->setNumColumns(I)V

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/GridView;->setGravity(I)V

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0

    return-void
.end method
