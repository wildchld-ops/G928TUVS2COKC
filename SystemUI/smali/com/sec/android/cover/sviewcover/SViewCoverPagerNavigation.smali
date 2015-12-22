.class public Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;
.super Landroid/widget/LinearLayout;
.source "SViewCoverPagerNavigation.java"

# interfaces
.implements Lcom/sec/android/cover/widget/PagedView$PageSwitchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation$1;,
        Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation$PageType;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mIndicatorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation$PageType;",
            ">;"
        }
    .end annotation
.end field

.field private mPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SViewCoverPagerNavigation"

    sput-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;->mPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    return-void
.end method

.method private getNavigationImage(Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation$PageType;)I
    .locals 2

    sget-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation$1;->$SwitchMap$com$sec$android$cover$sviewcover$SViewCoverPagerNavigation$PageType:[I

    invoke-virtual {p1}, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation$PageType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget v0, Lcom/sec/android/sviewcover/R$drawable;->clear_page_indicator_normal:I

    :goto_0
    return v0

    :pswitch_0
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->page_indicator_camera:I

    goto :goto_0

    :pswitch_1
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->page_indicator_camera_dim:I

    goto :goto_0

    :pswitch_2
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->clear_page_indicator_focus:I

    goto :goto_0

    :pswitch_3
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->clear_page_indicator_normal:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getPagesList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation$PageType;",
            ">;"
        }
    .end annotation

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;->mPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    if-nez v3, :cond_1

    const/4 v2, 0x0

    :cond_0
    return-object v2

    :cond_1
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;->mPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    invoke-virtual {v3}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->getPageCount()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;->mPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    invoke-virtual {v3, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->isCameraPage(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;->mPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    invoke-virtual {v3}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->getCurrentPage()I

    move-result v3

    if-ne v0, v3, :cond_2

    sget-object v3, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation$PageType;->current_camera:Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation$PageType;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation$PageType;->camera:Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation$PageType;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;->mPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    invoke-virtual {v3}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->getCurrentPage()I

    move-result v3

    if-ne v0, v3, :cond_4

    sget-object v3, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation$PageType;->current_normal:Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation$PageType;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    sget-object v3, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation$PageType;->normal:Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation$PageType;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private initWidgetNavigationLayout(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation$PageType;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;->removeAllViews()V

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/sec/android/sviewcover/R$dimen;->sview_cover_navigation_padding:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    new-instance v0, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation$PageType;

    invoke-direct {p0, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;->getNavigationImage(Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation$PageType;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v0, v2, v6, v2, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;->invalidate()V

    return-void
.end method

.method private updateWidgetNavigationLayout(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation$PageType;",
            ">;)V"
        }
    .end annotation

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;->mIndicatorList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v3, v4, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;->initWidgetNavigationLayout(Ljava/util/ArrayList;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;->mIndicatorList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eq v3, v4, :cond_2

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation$PageType;

    invoke-direct {p0, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;->getNavigationImage(Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation$PageType;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onPageSwitched(Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;->updateLayout()V

    return-void
.end method

.method public onPageSwitching(Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method public setPager(Lcom/sec/android/cover/sviewcover/SViewCoverPager;)V
    .locals 2

    if-nez p1, :cond_0

    sget-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;->TAG:Ljava/lang/String;

    const-string v1, "setPager(): received null as argument!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;->mPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;->mPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    invoke-virtual {v0, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->setPageSwitchListener(Lcom/sec/android/cover/widget/PagedView$PageSwitchListener;)V

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const/16 p1, 0x8

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public updateLayout()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;->getPagesList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;->mIndicatorList:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    invoke-direct {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;->initWidgetNavigationLayout(Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;->mIndicatorList:Ljava/util/ArrayList;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;->mIndicatorList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;->updateWidgetNavigationLayout(Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;->mIndicatorList:Ljava/util/ArrayList;

    goto :goto_0
.end method
