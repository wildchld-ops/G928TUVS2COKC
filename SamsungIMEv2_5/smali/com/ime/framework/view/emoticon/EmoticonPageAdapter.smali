.class public Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "EmoticonPageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ime/framework/view/emoticon/EmoticonPageAdapter$EmoticonPageAdapterListener;
    }
.end annotation


# instance fields
.field private mAbstractEmoticonLayout:Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;

.field private mBitmapList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCount:I

.field private mCurrentCategory:I

.field private mEmoticonAdapter:Lcom/ime/framework/view/emoticon/EmoticonAdapter;

.field private mEmoticonAdapterListener:Lcom/ime/framework/view/emoticon/EmoticonAdapter$EmoticonAdapterListener;

.field private mEmoticonCacheView:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/widget/GridView;",
            ">;"
        }
    .end annotation
.end field

.field private mEmoticonList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mEmoticonManager:Lcom/ime/framework/emoticon/EmoticonManager;

.field private mFontSize:F

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInitialBitmapCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private mInputManager:Lcom/ime/framework/common/InputManager;

.field private mInputMethod:I

.field private mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

.field private mItemBackgroundResId:I

.field private mItemheight:I

.field private mItemwidth:I

.field private mLayoutPadding:I

.field private mLayoutPaddingBottom:I

.field private mLayoutPaddingTop:I

.field private mRecentGrid:Landroid/widget/GridView;

.field private mTypeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mEmoticonAdapterListener:Lcom/ime/framework/view/emoticon/EmoticonAdapter$EmoticonAdapterListener;

    iput v1, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mItemBackgroundResId:I

    iput v1, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mItemwidth:I

    iput v1, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mItemheight:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mCurrentCategory:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mEmoticonCacheView:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mEmoticonAdapterListener:Lcom/ime/framework/view/emoticon/EmoticonAdapter$EmoticonAdapterListener;

    iput v1, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mItemBackgroundResId:I

    iput v1, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mItemwidth:I

    iput v1, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mItemheight:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mCurrentCategory:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mEmoticonCacheView:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mEmoticonAdapterListener:Lcom/ime/framework/view/emoticon/EmoticonAdapter$EmoticonAdapterListener;

    iput v1, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mItemBackgroundResId:I

    iput v1, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mItemwidth:I

    iput v1, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mItemheight:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mCurrentCategory:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mEmoticonCacheView:Landroid/util/SparseArray;

    iput-object p3, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mAbstractEmoticonLayout:Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;

    iput-object p1, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v0, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    iget-object v0, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    iput v0, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mInputMethod:I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mEmoticonList:Ljava/util/ArrayList;

    const/4 v0, 0x6

    iput v0, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mCount:I

    new-instance v0, Lcom/ime/framework/view/emoticon/EmoticonAdapter;

    iget-object v1, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mEmoticonList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mAbstractEmoticonLayout:Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;

    invoke-direct {v0, v1, v2, v3}, Lcom/ime/framework/view/emoticon/EmoticonAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;)V

    iput-object v0, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mEmoticonAdapter:Lcom/ime/framework/view/emoticon/EmoticonAdapter;

    iget-object v0, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mBitmapList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mBitmapList:Ljava/util/ArrayList;

    :goto_0
    invoke-static {}, Lcom/ime/framework/emoticon/EmoticonManager;->getInstance()Lcom/ime/framework/emoticon/EmoticonManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mEmoticonManager:Lcom/ime/framework/emoticon/EmoticonManager;

    iget-object v0, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mEmoticonManager:Lcom/ime/framework/emoticon/EmoticonManager;

    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/widget/GridView;

    invoke-direct {v0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mRecentGrid:Landroid/widget/GridView;

    goto :goto_1
.end method


# virtual methods
.method public clearEmoticonCacheView()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mEmoticonCacheView:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mEmoticonCacheView:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mEmoticonCacheView:Landroid/util/SparseArray;

    :cond_0
    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    if-nez p2, :cond_0

    instance-of v0, p3, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    check-cast p3, Landroid/widget/GridView;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mCount:I

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1

    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v0, -0x2

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public getRecentPageGridView()Landroid/widget/GridView;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mRecentGrid:Landroid/widget/GridView;

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 10

    const/16 v9, 0x8

    const/4 v8, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mEmoticonCacheView:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/widget/GridView;

    move-object v1, v0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/GridView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Landroid/widget/GridView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Lcom/ime/framework/view/emoticon/CustomViewPager;

    invoke-virtual {v4, v1}, Lcom/ime/framework/view/emoticon/CustomViewPager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    if-nez p2, :cond_8

    iget-object v4, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mAbstractEmoticonLayout:Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;

    invoke-virtual {v4}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->getLatestEmoticon()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mEmoticonList:Ljava/util/ArrayList;

    :goto_1
    if-nez v1, :cond_9

    iget-object v4, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f03002c

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iget v4, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mInputMethod:I

    if-ne v4, v9, :cond_1

    iget-object v4, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0028

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/GridView;->setNumColumns(I)V

    :cond_1
    iget v4, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mLayoutPadding:I

    iget v5, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mLayoutPaddingTop:I

    iget v6, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mLayoutPadding:I

    iget v7, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mLayoutPaddingBottom:I

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/widget/GridView;->setPadding(IIII)V

    invoke-virtual {v1, v8}, Landroid/widget/GridView;->setClipToPadding(Z)V

    const/high16 v4, 0x2000000

    invoke-virtual {v1, v4}, Landroid/widget/GridView;->setScrollBarStyle(I)V

    new-instance v4, Lcom/ime/framework/view/emoticon/EmoticonAdapter;

    iget-object v5, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mEmoticonList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mAbstractEmoticonLayout:Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;

    invoke-direct {v4, v5, v6, v7}, Lcom/ime/framework/view/emoticon/EmoticonAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;)V

    iput-object v4, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mEmoticonAdapter:Lcom/ime/framework/view/emoticon/EmoticonAdapter;

    iget-object v4, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mEmoticonAdapter:Lcom/ime/framework/view/emoticon/EmoticonAdapter;

    iget-object v5, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mAbstractEmoticonLayout:Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;

    invoke-virtual {v4, v5}, Lcom/ime/framework/view/emoticon/EmoticonAdapter;->setEmoticonAdapterListener(Lcom/ime/framework/view/emoticon/EmoticonAdapter$EmoticonAdapterListener;)V

    iget-object v4, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mEmoticonAdapter:Lcom/ime/framework/view/emoticon/EmoticonAdapter;

    iget-object v5, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Lcom/ime/framework/view/emoticon/EmoticonAdapter;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v4, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mEmoticonAdapter:Lcom/ime/framework/view/emoticon/EmoticonAdapter;

    iget v5, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mFontSize:F

    invoke-virtual {v4, v5}, Lcom/ime/framework/view/emoticon/EmoticonAdapter;->setFontSize(F)V

    iget-object v4, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mEmoticonAdapter:Lcom/ime/framework/view/emoticon/EmoticonAdapter;

    iget v5, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mItemwidth:I

    invoke-virtual {v4, v5}, Lcom/ime/framework/view/emoticon/EmoticonAdapter;->setEmoticonWidth(I)V

    iget-object v4, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mEmoticonAdapter:Lcom/ime/framework/view/emoticon/EmoticonAdapter;

    iget v5, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mItemheight:I

    invoke-virtual {v4, v5}, Lcom/ime/framework/view/emoticon/EmoticonAdapter;->setEmoticonHeight(I)V

    iget-object v4, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mEmoticonAdapter:Lcom/ime/framework/view/emoticon/EmoticonAdapter;

    iget v5, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mItemBackgroundResId:I

    invoke-virtual {v4, v5}, Lcom/ime/framework/view/emoticon/EmoticonAdapter;->setItemBackgroundResId(I)V

    iget-object v4, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mEmoticonAdapter:Lcom/ime/framework/view/emoticon/EmoticonAdapter;

    invoke-virtual {v4, p2}, Lcom/ime/framework/view/emoticon/EmoticonAdapter;->setCurrentCategory(I)V

    iget-object v4, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mEmoticonAdapter:Lcom/ime/framework/view/emoticon/EmoticonAdapter;

    invoke-virtual {v1, v4}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v4, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mEmoticonCacheView:Landroid/util/SparseArray;

    if-nez v4, :cond_2

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mEmoticonCacheView:Landroid/util/SparseArray;

    :cond_2
    iget-object v4, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mEmoticonCacheView:Landroid/util/SparseArray;

    invoke-virtual {v4, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_2
    iget-object v4, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mInitialBitmapCache:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mInitialBitmapCache:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, p2, :cond_4

    if-nez p2, :cond_3

    iget-object v4, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mAbstractEmoticonLayout:Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;

    invoke-virtual {v4}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->getNeedInitialization()Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    iget-object v5, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mEmoticonAdapter:Lcom/ime/framework/view/emoticon/EmoticonAdapter;

    iget-object v4, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mInitialBitmapCache:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v5, v4, p2}, Lcom/ime/framework/view/emoticon/EmoticonAdapter;->setInitialBitmapCache(Ljava/util/ArrayList;I)V

    :cond_4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/GridView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v1, v8, v8}, Landroid/widget/GridView;->scrollTo(II)V

    if-nez p2, :cond_5

    iput-object v1, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mRecentGrid:Landroid/widget/GridView;

    :cond_5
    invoke-virtual {v1}, Landroid/widget/GridView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v1}, Landroid/widget/GridView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Lcom/ime/framework/view/emoticon/CustomViewPager;

    invoke-virtual {v4, v1}, Lcom/ime/framework/view/emoticon/CustomViewPager;->removeView(Landroid/view/View;)V

    :cond_6
    if-nez p2, :cond_b

    iget-object v4, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mEmoticonList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_b

    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0d02cd

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v2, 0x0

    iget v4, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mInputMethod:I

    if-eq v4, v9, :cond_7

    iget-object v4, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_7
    iget-object v4, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090b61

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    :goto_3
    invoke-virtual {v3, v8, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    check-cast p1, Lcom/ime/framework/view/emoticon/CustomViewPager;

    invoke-virtual {p1, v3}, Lcom/ime/framework/view/emoticon/CustomViewPager;->addView(Landroid/view/View;)V

    :goto_4
    return-object v3

    :cond_8
    iget-object v4, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mEmoticonManager:Lcom/ime/framework/emoticon/EmoticonManager;

    invoke-virtual {v4, p2}, Lcom/ime/framework/emoticon/EmoticonManager;->getEmoticonMapByCategory(I)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mEmoticonList:Ljava/util/ArrayList;

    goto/16 :goto_1

    :cond_9
    invoke-virtual {v1}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    check-cast v4, Lcom/ime/framework/view/emoticon/EmoticonAdapter;

    iput-object v4, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mEmoticonAdapter:Lcom/ime/framework/view/emoticon/EmoticonAdapter;

    goto/16 :goto_2

    :cond_a
    iget-object v4, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090581

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_3

    :cond_b
    check-cast p1, Lcom/ime/framework/view/emoticon/CustomViewPager;

    invoke-virtual {p1, v1}, Lcom/ime/framework/view/emoticon/CustomViewPager;->addView(Landroid/view/View;)V

    move-object v3, v1

    goto :goto_4

    :catch_0
    move-exception v4

    goto/16 :goto_0
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

.method public notifyDataSetChanged()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mRecentGrid:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mRecentGrid:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/ime/framework/view/emoticon/EmoticonAdapter;

    invoke-virtual {v0}, Lcom/ime/framework/view/emoticon/EmoticonAdapter;->notifyDataSetChanged()V

    :cond_0
    invoke-super {p0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setEmoticonAdapterListener(Lcom/ime/framework/view/emoticon/EmoticonAdapter$EmoticonAdapterListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mEmoticonAdapterListener:Lcom/ime/framework/view/emoticon/EmoticonAdapter$EmoticonAdapterListener;

    return-void
.end method

.method public setEmoticonHeight(I)V
    .locals 0

    iput p1, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mItemheight:I

    return-void
.end method

.method public setEmoticonWidth(I)V
    .locals 0

    iput p1, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mItemwidth:I

    return-void
.end method

.method public setFontSize(F)V
    .locals 0

    iput p1, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mFontSize:F

    return-void
.end method

.method public setInitialBitmapCache(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mInitialBitmapCache:Ljava/util/ArrayList;

    return-void
.end method

.method public setItemBackgroundResId(I)V
    .locals 0

    iput p1, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mItemBackgroundResId:I

    return-void
.end method

.method public setLayoutPadding(IIII)V
    .locals 0

    iput p1, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mLayoutPadding:I

    iput p2, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mLayoutPaddingTop:I

    iput p4, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mLayoutPaddingBottom:I

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->mTypeface:Landroid/graphics/Typeface;

    return-void
.end method
