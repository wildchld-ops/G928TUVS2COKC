.class public Landroid/app/FragmentBreadCrumbs;
.super Landroid/view/ViewGroup;
.source "FragmentBreadCrumbs.java"

# interfaces
.implements Landroid/app/FragmentManager$OnBackStackChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEFAULT_GRAVITY:I = 0x800013


# instance fields
.field mActivity:Landroid/app/Activity;

.field private mColorPrimary:I

.field mContainer:Landroid/widget/LinearLayout;

.field private mGravity:I

.field mInflater:Landroid/view/LayoutInflater;

.field private mIsDeviceDefault:Z

.field private mIsDeviceDefaultDark:Z

.field private mLayoutResId:I

.field mMaxVisible:I

.field private mOnBreadCrumbClickListener:Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mParentClickListener:Landroid/view/View$OnClickListener;

.field mParentEntry:Landroid/app/BackStackRecord;

.field private mTextColor:I

.field mTopEntry:Landroid/app/BackStackRecord;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/FragmentBreadCrumbs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1160016

    invoke-direct {p0, p1, p2, v0}, Landroid/app/FragmentBreadCrumbs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/FragmentBreadCrumbs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v3, -0x1

    iput v3, p0, Landroid/app/FragmentBreadCrumbs;->mMaxVisible:I

    iput-boolean v6, p0, Landroid/app/FragmentBreadCrumbs;->mIsDeviceDefault:Z

    iput-boolean v5, p0, Landroid/app/FragmentBreadCrumbs;->mIsDeviceDefaultDark:Z

    new-instance v3, Landroid/app/FragmentBreadCrumbs$1;

    invoke-direct {v3, p0}, Landroid/app/FragmentBreadCrumbs$1;-><init>(Landroid/app/FragmentBreadCrumbs;)V

    iput-object v3, p0, Landroid/app/FragmentBreadCrumbs;->mOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x11600b4

    invoke-virtual {v3, v4, v1, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v3, v1, Landroid/util/TypedValue;->data:I

    if-eqz v3, :cond_0

    iput-boolean v5, p0, Landroid/app/FragmentBreadCrumbs;->mIsDeviceDefault:Z

    :cond_0
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x11600b6

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v3, v2, Landroid/util/TypedValue;->data:I

    if-nez v3, :cond_1

    iput-boolean v6, p0, Landroid/app/FragmentBreadCrumbs;->mIsDeviceDefaultDark:Z

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x1010433

    invoke-virtual {v3, v4, v1, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v3, v1, Landroid/util/TypedValue;->resourceId:I

    if-lez v3, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Landroid/app/FragmentBreadCrumbs;->mColorPrimary:I

    :cond_2
    sget-object v3, Lcom/android/internal/R$styleable;->FragmentBreadCrumbs:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const v3, 0x800013

    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroid/app/FragmentBreadCrumbs;->mGravity:I

    const v3, 0x1090055

    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroid/app/FragmentBreadCrumbs;->mLayoutResId:I

    iget-boolean v3, p0, Landroid/app/FragmentBreadCrumbs;->mIsDeviceDefault:Z

    if-nez v3, :cond_3

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Landroid/app/FragmentBreadCrumbs;->mTextColor:I

    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Landroid/app/FragmentBreadCrumbs;)Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mParentClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$100(Landroid/app/FragmentBreadCrumbs;)Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;
    .locals 1

    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mOnBreadCrumbClickListener:Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;

    return-object v0
.end method

.method private createBackStackEntry(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/BackStackRecord;
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/app/BackStackRecord;

    iget-object v1, p0, Landroid/app/FragmentBreadCrumbs;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    check-cast v1, Landroid/app/FragmentManagerImpl;

    invoke-direct {v0, v1}, Landroid/app/BackStackRecord;-><init>(Landroid/app/FragmentManagerImpl;)V

    invoke-virtual {v0, p1}, Landroid/app/BackStackRecord;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    invoke-virtual {v0, p2}, Landroid/app/BackStackRecord;->setBreadCrumbShortTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method private getPreEntry(I)Landroid/app/FragmentManager$BackStackEntry;
    .locals 1

    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mParentEntry:Landroid/app/BackStackRecord;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mParentEntry:Landroid/app/BackStackRecord;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mTopEntry:Landroid/app/BackStackRecord;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mTopEntry:Landroid/app/BackStackRecord;

    goto :goto_0
.end method

.method private getPreEntryCount()I
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mTopEntry:Landroid/app/BackStackRecord;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p0, Landroid/app/FragmentBreadCrumbs;->mParentEntry:Landroid/app/BackStackRecord;

    if-eqz v3, :cond_1

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method public onBackStackChanged()V
    .locals 0

    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->updateCrumbs()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 11

    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Landroid/app/FragmentBreadCrumbs;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget v5, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingTop:I

    iget v8, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingTop:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingBottom:I

    sub-int v1, v8, v9

    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->getLayoutDirection()I

    move-result v7

    iget v8, p0, Landroid/app/FragmentBreadCrumbs;->mGravity:I

    const v9, 0x800007

    and-int v6, v8, v9

    invoke-static {v6, v7}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    iget v3, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingLeft:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int v4, v3, v8

    :goto_1
    iget v8, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingLeft:I

    if-ge v3, v8, :cond_1

    iget v3, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingLeft:I

    :cond_1
    iget v8, p0, Landroid/app/FragmentBreadCrumbs;->mRight:I

    iget v9, p0, Landroid/app/FragmentBreadCrumbs;->mLeft:I

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingRight:I

    sub-int/2addr v8, v9

    if-le v4, v8, :cond_2

    iget v8, p0, Landroid/app/FragmentBreadCrumbs;->mRight:I

    iget v9, p0, Landroid/app/FragmentBreadCrumbs;->mLeft:I

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingRight:I

    sub-int v4, v8, v9

    :cond_2
    invoke-virtual {v0, v3, v5, v4, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :sswitch_0
    iget v8, p0, Landroid/app/FragmentBreadCrumbs;->mRight:I

    iget v9, p0, Landroid/app/FragmentBreadCrumbs;->mLeft:I

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingRight:I

    sub-int v4, v8, v9

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    sub-int v3, v4, v8

    goto :goto_1

    :sswitch_1
    iget v8, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingLeft:I

    iget v9, p0, Landroid/app/FragmentBreadCrumbs;->mRight:I

    iget v10, p0, Landroid/app/FragmentBreadCrumbs;->mLeft:I

    sub-int/2addr v9, v10

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    add-int v3, v8, v9

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int v4, v3, v8

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 8

    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->getChildCount()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Landroid/app/FragmentBreadCrumbs;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    invoke-virtual {p0, v0, p1, p2}, Landroid/app/FragmentBreadCrumbs;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredState()I

    move-result v6

    invoke-static {v5, v6}, Landroid/app/FragmentBreadCrumbs;->combineMeasuredStates(II)I

    move-result v5

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget v6, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingLeft:I

    iget v7, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingRight:I

    add-int/2addr v6, v7

    add-int/2addr v4, v6

    iget v6, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingTop:I

    iget v7, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingBottom:I

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->getSuggestedMinimumHeight()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->getSuggestedMinimumWidth()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4, p1, v5}, Landroid/app/FragmentBreadCrumbs;->resolveSizeAndState(III)I

    move-result v6

    shl-int/lit8 v7, v5, 0x10

    invoke-static {v3, p2, v7}, Landroid/app/FragmentBreadCrumbs;->resolveSizeAndState(III)I

    move-result v7

    invoke-virtual {p0, v6, v7}, Landroid/app/FragmentBreadCrumbs;->setMeasuredDimension(II)V

    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 3

    iput-object p1, p0, Landroid/app/FragmentBreadCrumbs;->mActivity:Landroid/app/Activity;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mInflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x1090057

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/app/FragmentBreadCrumbs;->addView(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/FragmentManager;->addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V

    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->updateCrumbs()V

    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/FragmentBreadCrumbs;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void
.end method

.method public setMaxVisible(I)V
    .locals 2

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "visibleCrumbs must be greater than zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Landroid/app/FragmentBreadCrumbs;->mMaxVisible:I

    return-void
.end method

.method public setOnBreadCrumbClickListener(Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;)V
    .locals 0

    iput-object p1, p0, Landroid/app/FragmentBreadCrumbs;->mOnBreadCrumbClickListener:Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;

    return-void
.end method

.method public setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/app/FragmentBreadCrumbs;->createBackStackEntry(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/BackStackRecord;

    move-result-object v0

    iput-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mParentEntry:Landroid/app/BackStackRecord;

    iput-object p3, p0, Landroid/app/FragmentBreadCrumbs;->mParentClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->updateCrumbs()V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/app/FragmentBreadCrumbs;->createBackStackEntry(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/BackStackRecord;

    move-result-object v0

    iput-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mTopEntry:Landroid/app/BackStackRecord;

    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->updateCrumbs()V

    return-void
.end method

.method updateCrumbs()V
    .locals 26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/FragmentBreadCrumbs;->mActivity:Landroid/app/Activity;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v15

    invoke-direct/range {p0 .. p0}, Landroid/app/FragmentBreadCrumbs;->getPreEntryCount()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v17

    const/4 v8, 0x0

    :goto_0
    add-int v22, v15, v16

    move/from16 v0, v22

    if-ge v8, v0, :cond_a

    move/from16 v0, v16

    if-ge v8, v0, :cond_0

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Landroid/app/FragmentBreadCrumbs;->getPreEntry(I)Landroid/app/FragmentManager$BackStackEntry;

    move-result-object v4

    :goto_1
    move/from16 v0, v17

    if-ge v8, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    if-eq v0, v4, :cond_2

    move v10, v8

    :goto_2
    move/from16 v0, v17

    if-ge v10, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_0
    sub-int v22, v8, v16

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/app/FragmentManager;->getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;

    move-result-object v4

    goto :goto_1

    :cond_1
    move/from16 v17, v8

    :cond_2
    move/from16 v0, v17

    if-lt v8, v0, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/FragmentBreadCrumbs;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/app/FragmentBreadCrumbs;->mLayoutResId:I

    move/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, p0

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    const v22, 0x1020016

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    invoke-interface {v4}, Landroid/app/FragmentManager$BackStackEntry;->getBreadCrumbTitle()Ljava/lang/CharSequence;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/app/FragmentBreadCrumbs;->mIsDeviceDefault:Z

    move/from16 v22, v0

    if-nez v22, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Landroid/app/FragmentBreadCrumbs;->mTextColor:I

    move/from16 v22, v0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    if-nez v8, :cond_4

    const v22, 0x1020032

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/app/FragmentBreadCrumbs;->mIsDeviceDefault:Z

    move/from16 v22, v0

    if-eqz v22, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/app/FragmentBreadCrumbs;->mIsDeviceDefaultDark:Z

    move/from16 v22, v0

    if-nez v22, :cond_8

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    check-cast v14, Landroid/graphics/drawable/StateListDrawable;

    new-instance v13, Landroid/graphics/drawable/RippleDrawable;

    const/16 v22, 0x29

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v22 .. v25}, Landroid/graphics/Color;->argb(IIII)I

    move-result v22

    invoke-static/range {v22 .. v22}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v13, v0, v14, v14}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    instance-of v0, v6, Landroid/graphics/drawable/ColorDrawable;

    move/from16 v22, v0

    if-eqz v22, :cond_5

    move-object v12, v6

    check-cast v12, Landroid/graphics/drawable/ColorDrawable;

    const/16 v22, 0x4c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/app/FragmentBreadCrumbs;->mColorPrimary:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/graphics/Color;->red(I)I

    move-result v23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/app/FragmentBreadCrumbs;->mColorPrimary:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/graphics/Color;->green(I)I

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Landroid/app/FragmentBreadCrumbs;->mColorPrimary:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/graphics/Color;->blue(I)I

    move-result v25

    invoke-static/range {v22 .. v25}, Landroid/graphics/Color;->argb(IIII)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    :cond_5
    move/from16 v0, v16

    if-ge v15, v0, :cond_6

    sub-int v22, v16, v8

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_7

    :cond_6
    move/from16 v0, v16

    if-lt v15, v0, :cond_8

    if-ne v8, v15, :cond_8

    :cond_7
    const-string/jumbo v22, "sec-roboto-light"

    const/16 v23, 0x1

    invoke-static/range {v22 .. v23}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/FragmentBreadCrumbs;->mOnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_a
    add-int v21, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v17

    :goto_3
    move/from16 v0, v17

    move/from16 v1, v21

    if-le v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    add-int/lit8 v23, v17, -0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    add-int/lit8 v17, v17, -0x1

    goto :goto_3

    :cond_b
    const/4 v8, 0x0

    :goto_4
    move/from16 v0, v17

    if-ge v8, v0, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const v22, 0x1020016

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    add-int/lit8 v22, v17, -0x1

    move/from16 v0, v22

    if-ge v8, v0, :cond_d

    const/16 v22, 0x1

    :goto_5
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/app/FragmentBreadCrumbs;->mMaxVisible:I

    move/from16 v22, v0

    if-lez v22, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/app/FragmentBreadCrumbs;->mMaxVisible:I

    move/from16 v22, v0

    sub-int v22, v17, v22

    move/from16 v0, v22

    if-ge v8, v0, :cond_e

    const/16 v22, 0x8

    :goto_6
    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    const v22, 0x1020032

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    move-object/from16 v0, p0

    iget v0, v0, Landroid/app/FragmentBreadCrumbs;->mMaxVisible:I

    move/from16 v22, v0

    sub-int v22, v17, v22

    move/from16 v0, v22

    if-le v8, v0, :cond_f

    if-eqz v8, :cond_f

    const/16 v22, 0x0

    :goto_7
    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_d
    const/16 v22, 0x0

    goto :goto_5

    :cond_e
    const/16 v22, 0x0

    goto :goto_6

    :cond_f
    const/16 v22, 0x8

    goto :goto_7

    :cond_10
    return-void
.end method
