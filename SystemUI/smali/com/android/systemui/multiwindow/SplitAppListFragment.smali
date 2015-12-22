.class public Lcom/android/systemui/multiwindow/SplitAppListFragment;
.super Landroid/support/v4/app/Fragment;
.source "SplitAppListFragment.java"

# interfaces
.implements Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$FragmentUpdateCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/multiwindow/SplitAppListFragment$AppListItemGridViewHolder;,
        Lcom/android/systemui/multiwindow/SplitAppListFragment$GridViewAdapter;,
        Lcom/android/systemui/multiwindow/SplitAppListFragment$LoadAsyncTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Recents_SplitAppListFragment"


# instance fields
.field private final SAVE_STATE_PAGE:Ljava/lang/String;

.field private mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

.field private mAppListItemScaleAnimationRatio:I

.field private mAppListShadowDistance:F

.field private mAppListShadowOpacity:F

.field private mAppListStrokeOpacity:F

.field private mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

.field private mGridView:Landroid/widget/GridView;

.field private mGridViewAdapter:Lcom/android/systemui/multiwindow/SplitAppListFragment$GridViewAdapter;

.field mHandler:Landroid/os/Handler;

.field mLastTouchX:F

.field private mMainLayout:Landroid/view/View;

.field private mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

.field private mMultiWindowItemNum:I

.field private mMultiWindowUsageStatus:Lcom/android/systemui/multiwindow/MultiWindowUsageStatus;

.field mNeedDarkFont:Z

.field private mPageNum:I

.field private mSelectedAppPackage:Ljava/lang/String;

.field mViewPagerIconClickListener:Landroid/view/View$OnClickListener;

.field mViewPagerIconKeyListener:Landroid/view/View$OnKeyListener;

.field mViewPagerIconTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mPageNum:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mSelectedAppPackage:Ljava/lang/String;

    const-string v0, "page"

    iput-object v0, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->SAVE_STATE_PAGE:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mNeedDarkFont:Z

    new-instance v0, Lcom/android/systemui/multiwindow/SplitAppListFragment$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/multiwindow/SplitAppListFragment$1;-><init>(Lcom/android/systemui/multiwindow/SplitAppListFragment;)V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mViewPagerIconClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/systemui/multiwindow/SplitAppListFragment$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/multiwindow/SplitAppListFragment$2;-><init>(Lcom/android/systemui/multiwindow/SplitAppListFragment;)V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mViewPagerIconTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/android/systemui/multiwindow/SplitAppListFragment$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/multiwindow/SplitAppListFragment$3;-><init>(Lcom/android/systemui/multiwindow/SplitAppListFragment;)V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mViewPagerIconKeyListener:Landroid/view/View$OnKeyListener;

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mLastTouchX:F

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/multiwindow/SplitAppListFragment;)Lcom/android/systemui/multiwindow/SplitAppListFragment$GridViewAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mGridViewAdapter:Lcom/android/systemui/multiwindow/SplitAppListFragment$GridViewAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/multiwindow/SplitAppListFragment;)Landroid/widget/GridView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mGridView:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/multiwindow/SplitAppListFragment;Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->applyShadePressEffect(Landroid/view/MotionEvent;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/multiwindow/SplitAppListFragment;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mMultiWindowItemNum:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/multiwindow/SplitAppListFragment;)Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/multiwindow/SplitAppListFragment;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mAppListStrokeOpacity:F

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/multiwindow/SplitAppListFragment;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mAppListShadowDistance:F

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/multiwindow/SplitAppListFragment;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mAppListShadowOpacity:F

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/multiwindow/SplitAppListFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mSelectedAppPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/multiwindow/SplitAppListFragment;)Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/multiwindow/SplitAppListFragment;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mPageNum:I

    return v0
.end method

.method private applyShadePressEffect(Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/multiwindow/SplitAppListFragment$AppListItemGridViewHolder;

    iget v4, v1, Lcom/android/systemui/multiwindow/SplitAppListFragment$AppListItemGridViewHolder;->position:I

    iget v5, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mPageNum:I

    iget v6, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mMultiWindowItemNum:I

    mul-int/2addr v5, v6

    add-int v2, v4, v5

    iget-object v4, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    invoke-virtual {v4}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getMultiWindowAppListInfo()Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->getViewPagerAppListItem(I)Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    :cond_0
    iget-object v4, v1, Lcom/android/systemui/multiwindow/SplitAppListFragment$AppListItemGridViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/16 v5, 0xff

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v4, v1, Lcom/android/systemui/multiwindow/SplitAppListFragment$AppListItemGridViewHolder;->labelView:Landroid/widget/TextView;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_1
    :goto_0
    iget-object v4, v1, Lcom/android/systemui/multiwindow/SplitAppListFragment$AppListItemGridViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->invalidate()V

    :cond_2
    return-void

    :cond_3
    iget-object v4, v1, Lcom/android/systemui/multiwindow/SplitAppListFragment$AppListItemGridViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/16 v5, 0x88

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v4, v1, Lcom/android/systemui/multiwindow/SplitAppListFragment$AppListItemGridViewHolder;->labelView:Landroid/widget/TextView;

    const v5, 0x3f07ae14    # 0.53f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0
.end method

.method private insertLogPair(Lcom/samsung/android/multiwindow/MultiWindowStyle;Landroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    const-string v3, "RCVP"

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_0

    new-array v1, v6, [Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v2, "RCVP"

    aput-object v2, v1, v4

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    const-string v2, "SPLW"

    aput-object v2, v1, v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mSelectedAppPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    iget-object v2, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    const/4 v3, 0x0

    invoke-static {v2, v1, v0, v3}, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper;->insertMultipleStatusLog(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;[J)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    iput-object v3, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    iget-object v3, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    invoke-virtual {v3}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const-string v6, "multiwindow_facade"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iput-object v3, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    new-instance v3, Lcom/android/systemui/multiwindow/MultiWindowUsageStatus;

    iget-object v6, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    invoke-direct {v3, v6}, Lcom/android/systemui/multiwindow/MultiWindowUsageStatus;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mMultiWindowUsageStatus:Lcom/android/systemui/multiwindow/MultiWindowUsageStatus;

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0f0050

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mAppListItemScaleAnimationRatio:I

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0c04cf

    invoke-virtual {v3, v6, v0, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    iput v3, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mAppListShadowDistance:F

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0c04d0

    invoke-virtual {v3, v6, v1, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    iput v3, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mAppListShadowOpacity:F

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0c04ce

    invoke-virtual {v3, v6, v2, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    iput v3, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mAppListStrokeOpacity:F

    iget-object v3, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    invoke-virtual {v3}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "need_dark_font"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_1

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mNeedDarkFont:Z

    if-eqz p1, :cond_0

    iget v3, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mPageNum:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    const-string v3, "page"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mPageNum:I

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    invoke-virtual {v3}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getMultiWindowAppListInfo()Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->getMultiWindowItemNum()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mMultiWindowItemNum:I

    new-instance v3, Lcom/android/systemui/multiwindow/SplitAppListFragment$GridViewAdapter;

    iget v4, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mPageNum:I

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/multiwindow/SplitAppListFragment$GridViewAdapter;-><init>(Lcom/android/systemui/multiwindow/SplitAppListFragment;I)V

    iput-object v3, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mGridViewAdapter:Lcom/android/systemui/multiwindow/SplitAppListFragment$GridViewAdapter;

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void

    :cond_1
    move v3, v5

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v1, "Recents_SplitAppListFragment"

    const-string v2, "onCreateView()"

    invoke-static {v1, v2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    invoke-virtual {v1}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getSelectedAppPackageInfo()Landroid/util/Pair;

    move-result-object v1

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mSelectedAppPackage:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v5, :cond_0

    const v1, 0x7f040001

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mMainLayout:Landroid/view/View;

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mMainLayout:Landroid/view/View;

    const v2, 0x7f0e00aa

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mGridView:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mViewPagerIconKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    invoke-virtual {v1, p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->registerCallbacks(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$FragmentUpdateCallbacks;)V

    new-instance v0, Lcom/android/systemui/multiwindow/SplitAppListFragment$LoadAsyncTask;

    invoke-direct {v0, p0}, Lcom/android/systemui/multiwindow/SplitAppListFragment$LoadAsyncTask;-><init>(Lcom/android/systemui/multiwindow/SplitAppListFragment;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Void;

    aput-object v4, v1, v3

    aput-object v4, v1, v5

    const/4 v2, 0x2

    aput-object v4, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/systemui/multiwindow/SplitAppListFragment$LoadAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mMainLayout:Landroid/view/View;

    return-object v1

    :cond_0
    const v1, 0x7f040002

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mMainLayout:Landroid/view/View;

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    invoke-virtual {v0, p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->unregisterCallbacks(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$FragmentUpdateCallbacks;)V

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "page"

    iget v1, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mPageNum:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public scrollAnimation(FF)V
    .locals 24

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mMainLayout:Landroid/view/View;

    if-eqz v3, :cond_3

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v3, p2, v3

    if-nez v3, :cond_4

    new-instance v2, Landroid/view/animation/ScaleAnimation;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mMainLayout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScaleX()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mMainLayout:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getScaleY()F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v4, 0x96

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    new-instance v3, Lcom/android/systemui/multiwindow/SplitAppListFragment$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/systemui/multiwindow/SplitAppListFragment$5;-><init>(Lcom/android/systemui/multiwindow/SplitAppListFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mMainLayout:Landroid/view/View;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/View;->setScaleX(F)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mMainLayout:Landroid/view/View;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/View;->setScaleY(F)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mMainLayout:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getChildCount()I

    move-result v3

    add-int/lit8 v18, v3, -0x1

    :goto_0
    if-ltz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mGridView:Landroid/widget/GridView;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/view/ViewGroup;

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v21, v3, -0x1

    :goto_1
    if-ltz v21, :cond_0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    const v3, 0x7f0e00ad

    invoke-virtual {v15, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getImageAlpha()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x437f0000    # 255.0f

    div-float v16, v3, v4

    const/16 v3, 0xff

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageAlpha(I)V

    new-instance v11, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    move/from16 v0, v16

    invoke-direct {v11, v0, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v4, 0x96

    invoke-virtual {v11, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    add-int/lit8 v21, v21, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v18, v18, -0x1

    goto :goto_0

    :cond_1
    const v3, 0x7f7fffff    # Float.MAX_VALUE

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mLastTouchX:F

    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mMainLayout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    :cond_3
    return-void

    :cond_4
    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mAppListItemScaleAnimationRatio:I

    int-to-float v4, v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    div-float v6, p2, p1

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    sub-float v22, v3, v4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mLastTouchX:F

    cmpl-float v3, v3, p2

    if-lez v3, :cond_6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mLastTouchX:F

    sub-float v3, v3, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v20

    :goto_3
    const/high16 v3, 0x41200000    # 10.0f

    cmpl-float v3, v20, v3

    if-lez v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mMainLayout:Landroid/view/View;

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/view/View;->setScaleX(F)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mMainLayout:Landroid/view/View;

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/view/View;->setScaleY(F)V

    new-instance v13, Landroid/graphics/Canvas;

    invoke-direct {v13}, Landroid/graphics/Canvas;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getChildCount()I

    move-result v3

    add-int/lit8 v18, v3, -0x1

    :goto_4
    if-ltz v18, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mGridView:Landroid/widget/GridView;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/view/ViewGroup;

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v21, v3, -0x1

    :goto_5
    if-ltz v21, :cond_7

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    const v3, 0x7f0e00ad

    invoke-virtual {v15, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float v3, v3, p2

    div-float v3, v3, p1

    float-to-int v3, v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageAlpha(I)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mLastTouchX:F

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v3, v3, v4

    if-nez v3, :cond_5

    const v3, 0x7f0e00b0

    invoke-virtual {v15, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-virtual {v13, v12}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    const/4 v3, 0x4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const v3, 0x7f0e00af

    invoke-virtual {v15, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    invoke-virtual {v14, v12}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    add-int/lit8 v21, v21, -0x1

    goto :goto_5

    :cond_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mLastTouchX:F

    sub-float v3, p2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v20

    goto/16 :goto_3

    :cond_7
    add-int/lit8 v18, v18, -0x1

    goto/16 :goto_4

    :cond_8
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mLastTouchX:F

    invoke-virtual {v13}, Landroid/graphics/Canvas;->release()V

    goto/16 :goto_2
.end method

.method public setPageNum(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mPageNum:I

    return-void
.end method

.method public startActivitySafe(Landroid/content/Intent;)V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, p1, v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Recents_SplitAppListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in startActivityAsUserSafe() mContext="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startActivityViewPagerAppList(ILjava/lang/String;)V
    .locals 28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getMultiWindowAppListInfo()Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->getFlashBarIntent(I)Ljava/util/List;

    move-result-object v15

    const/4 v8, 0x0

    new-instance v22, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v23, 0x1

    invoke-direct/range {v22 .. v23}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v23

    if-eqz v23, :cond_2

    const/16 v23, 0xc

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    const/4 v8, 0x1

    :goto_0
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v23

    if-lez v23, :cond_8

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/Intent;

    invoke-virtual {v12}, Landroid/content/Intent;->getFlags()I

    move-result v23

    const/high16 v24, 0x8000000

    and-int v23, v23, v24

    if-eqz v23, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-object/from16 v23, v0

    const/16 v24, 0xf

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getRunningTasks(II)Ljava/util/List;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-object/from16 v23, v0

    const/16 v24, 0xa

    const/16 v25, 0x3

    invoke-virtual/range {v23 .. v25}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getRunningTasks(II)Ljava/util/List;

    move-result-object v18

    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    const-string v23, "Recents_SplitAppListFragment"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "startActivityViewPagerAppList / intent : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " / component : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, -0x1

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v11, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_0

    const-string v23, "Recents_SplitAppListFragment"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "same component - info.baseActivity : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget-object v0, v11, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " / info.id : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget v0, v11, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " / info. : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget-object v0, v11, Landroid/app/ActivityManager$RunningTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v0, v11, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    move/from16 v23, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    const/4 v13, 0x1

    goto :goto_1

    :cond_2
    const/16 v23, 0x3

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    goto/16 :goto_0

    :cond_3
    if-nez v13, :cond_0

    iget v0, v11, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    move/from16 v19, v0

    const-string v23, "Recents_SplitAppListFragment"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "- not resumed task Id: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v14, 0x0

    const/16 v23, -0x1

    move/from16 v0, v19

    move/from16 v1, v23

    if-eq v0, v1, :cond_5

    :try_start_0
    const-string v23, "Recents_SplitAppListFragment"

    const-string v24, "moveOnlySpecificTaskToFront()"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v19

    move-object/from16 v2, v24

    move/from16 v3, v25

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->moveOnlySpecificTaskToFront(ILandroid/os/Bundle;ILcom/samsung/android/multiwindow/MultiWindowStyle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v14, 0x1

    :cond_5
    :goto_2
    if-nez v14, :cond_6

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->startActivitySafe(Landroid/content/Intent;)V

    :cond_6
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v12}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->insertLogPair(Lcom/samsung/android/multiwindow/MultiWindowStyle;Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    move-object/from16 v23, v0

    const v24, 0x10a0042

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->overridePendingTransition(II)V

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getMultiWindowAppListInfo()Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->findResolveInfoByPackage(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getMultiWindowAppListInfo()Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->getViewPagerAppListItem(I)Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v16

    if-eqz v20, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mMultiWindowUsageStatus:Lcom/android/systemui/multiwindow/MultiWindowUsageStatus;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/multiwindow/MultiWindowUsageStatus;->storeAppUsageCount(Landroid/content/pm/ResolveInfo;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mMultiWindowUsageStatus:Lcom/android/systemui/multiwindow/MultiWindowUsageStatus;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui/multiwindow/MultiWindowUsageStatus;->storeAppUsageCount(Landroid/content/pm/ResolveInfo;)V

    :cond_7
    if-eqz v8, :cond_a

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->finishActivity()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_8
    :goto_4
    return-void

    :catch_0
    move-exception v7

    const-string v23, "Recents_SplitAppListFragment"

    const-string v24, "Exception in moveOnlySpecificTaskToFront()"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_9
    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->startActivitySafe(Landroid/content/Intent;)V

    goto :goto_3

    :catch_1
    move-exception v7

    const-string v23, "Recents_SplitAppListFragment"

    const-string v24, "Activity is null"

    invoke-static/range {v23 .. v24}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    new-instance v24, Lcom/android/systemui/multiwindow/SplitAppListFragment$4;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/multiwindow/SplitAppListFragment$4;-><init>(Lcom/android/systemui/multiwindow/SplitAppListFragment;)V

    const-wide/16 v26, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4
.end method

.method public updateSelectedPackageName(Landroid/util/Pair;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v1, "Recents_SplitAppListFragment"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSelectedPackageName"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mSelectedAppPackage:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mGridViewAdapter:Lcom/android/systemui/multiwindow/SplitAppListFragment$GridViewAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/multiwindow/SplitAppListFragment$GridViewAdapter;->notifyDataSetChanged()V

    return-void
.end method
