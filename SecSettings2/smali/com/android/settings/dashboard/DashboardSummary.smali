.class public Lcom/android/settings/dashboard/DashboardSummary;
.super Landroid/app/Fragment;
.source "DashboardSummary.java"

# interfaces
.implements Landroid/view/MenuItem$OnActionExpandListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnHoverListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dashboard/DashboardSummary$HomePackageReceiver;
    }
.end annotation


# static fields
.field private static mPreferToolbar:Landroid/widget/Toolbar;

.field private static mSplitBarMovedLeftWeight:F

.field private static mUserUpdateSplit:Z


# instance fields
.field private InitialDashboardId:J

.field private bEasymode:Z

.field private mAirplaneObserver:Landroid/database/ContentObserver;

.field private mArrayTileView:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/dashboard/DashboardTileView;",
            ">;"
        }
    .end annotation
.end field

.field private mDashboard:Landroid/view/ViewGroup;

.field private mDevelopmentPreferences:Landroid/content/SharedPreferences;

.field private mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mFavoriteDashboard:Landroid/view/ViewGroup;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderLayout:Landroid/widget/LinearLayout;

.field private mHomePackageReceiver:Lcom/android/settings/dashboard/DashboardSummary$HomePackageReceiver;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mMainContainerView:[Landroid/view/ViewGroup;

.field private mMainToolbar:Landroid/widget/Toolbar;

.field private mPrefsContainer:Landroid/view/ViewGroup;

.field private mPrevCategory:Lcom/android/settings/dashboard/DashboardCategory;

.field private mPrevTileView:Lcom/android/settings/dashboard/DashboardTileView;

.field private mSearchMenuItem:Landroid/view/MenuItem;

.field private mSplitBarLayoutChangeListner:Landroid/view/View$OnLayoutChangeListener;

.field private mSplitBarView:Landroid/view/View;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mUpdateLayoutBySplitChange:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/dashboard/DashboardSummary;->mUserUpdateSplit:Z

    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lcom/android/settings/dashboard/DashboardSummary;->mSplitBarMovedLeftWeight:F

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    iput-boolean v2, p0, Lcom/android/settings/dashboard/DashboardSummary;->mUpdateLayoutBySplitChange:Z

    iput-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSplitBarLayoutChangeListner:Landroid/view/View$OnLayoutChangeListener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mArrayTileView:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->InitialDashboardId:J

    iput-boolean v2, p0, Lcom/android/settings/dashboard/DashboardSummary;->bEasymode:Z

    new-instance v0, Lcom/android/settings/dashboard/DashboardSummary$1;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/DashboardSummary$1;-><init>(Lcom/android/settings/dashboard/DashboardSummary;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/dashboard/DashboardSummary$HomePackageReceiver;

    invoke-direct {v0, p0, v3}, Lcom/android/settings/dashboard/DashboardSummary$HomePackageReceiver;-><init>(Lcom/android/settings/dashboard/DashboardSummary;Lcom/android/settings/dashboard/DashboardSummary$1;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mHomePackageReceiver:Lcom/android/settings/dashboard/DashboardSummary$HomePackageReceiver;

    new-instance v0, Lcom/android/settings/dashboard/DashboardSummary$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/dashboard/DashboardSummary$2;-><init>(Lcom/android/settings/dashboard/DashboardSummary;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAirplaneObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/dashboard/DashboardSummary;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/DashboardSummary;->rebuildUI(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/dashboard/DashboardSummary;)Lcom/android/settings/dashboard/DashboardTileView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mPrevTileView:Lcom/android/settings/dashboard/DashboardTileView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/dashboard/DashboardSummary;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/dashboard/DashboardSummary;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mHeaderLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/dashboard/DashboardSummary;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mPrefsContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/dashboard/DashboardSummary;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSplitBarView:Landroid/view/View;

    return-object v0
.end method

.method private getSelectedTopLevelDashboardId(I)J
    .locals 6

    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardSummary;->mArrayTileView:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    const/16 v0, 0x400

    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardSummary;->mArrayTileView:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/dashboard/DashboardTileView;

    invoke-virtual {v4}, Lcom/android/settings/dashboard/DashboardTileView;->getTile()Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v1

    iget-object v4, v1, Lcom/android/settings/dashboard/DashboardTile;->fragment:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, v1, Lcom/android/settings/dashboard/DashboardTile;->fragment:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v0

    :cond_0
    :goto_1
    if-ne v0, p1, :cond_2

    iget-wide v4, v1, Lcom/android/settings/dashboard/DashboardTile;->id:J

    :goto_2
    return-wide v4

    :cond_1
    iget-object v4, v1, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, v1, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->getTargetPkgByIntent(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const-wide/16 v4, 0x0

    goto :goto_2
.end method

.method private initializeLayoutBySplitBar()V
    .locals 10

    iget-object v7, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSplitBarView:Landroid/view/View;

    if-eqz v7, :cond_0

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v7, p0, Lcom/android/settings/dashboard/DashboardSummary;->mPrefsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget v3, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    add-float v6, v1, v3

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "com.android.settings_preferences"

    const/4 v9, 0x4

    invoke-virtual {v7, v8, v9}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v7, "split_bar_left_wegigh"

    invoke-interface {v5, v7, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v7

    sput v7, Lcom/android/settings/dashboard/DashboardSummary;->mSplitBarMovedLeftWeight:F

    sget v7, Lcom/android/settings/dashboard/DashboardSummary;->mSplitBarMovedLeftWeight:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    sget v7, Lcom/android/settings/dashboard/DashboardSummary;->mSplitBarMovedLeftWeight:F

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    sget v7, Lcom/android/settings/dashboard/DashboardSummary;->mSplitBarMovedLeftWeight:F

    sub-float v7, v6, v7

    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, p0, Lcom/android/settings/dashboard/DashboardSummary;->mPrefsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v7, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSplitBarLayoutChangeListner:Landroid/view/View$OnLayoutChangeListener;

    if-nez v7, :cond_1

    new-instance v7, Lcom/android/settings/dashboard/DashboardSummary$7;

    invoke-direct {v7, p0}, Lcom/android/settings/dashboard/DashboardSummary$7;-><init>(Lcom/android/settings/dashboard/DashboardSummary;)V

    iput-object v7, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSplitBarLayoutChangeListner:Landroid/view/View$OnLayoutChangeListener;

    :cond_1
    return-void
.end method

.method private rebuildFavoriteContainer(Landroid/content/Context;)V
    .locals 32

    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/DashboardSummary;->mFavoriteDashboard:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    move-object/from16 v2, p1

    check-cast v2, Lcom/android/settings/SettingsActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/settings/SettingsActivity;->getFavoriteCategories(Z)Lcom/android/settings/dashboard/DashboardCategory;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/DashboardSummary;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040072

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/dashboard/DashboardSummary;->mFavoriteDashboard:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v13

    const v2, 0x7f100119

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout;

    const v2, 0x7f100114

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/settings/dashboard/DashboardCategory;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f10011a

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_button_background"

    const/4 v6, 0x0

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_5

    const/16 v24, 0x1

    :goto_1
    if-eqz v24, :cond_1

    const v2, 0x7f0202ef

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_1
    new-instance v2, Lcom/android/settings/dashboard/DashboardSummary$6;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/settings/dashboard/DashboardSummary$6;-><init>(Lcom/android/settings/dashboard/DashboardSummary;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0a126f

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0a08bb

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/dashboard/DashboardSummary;->bEasymode:Z

    if-eqz v2, :cond_6

    const/16 v2, 0x8

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    const v2, 0x7f100116

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    const v2, 0x7f100113

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual/range {v21 .. v21}, Lcom/android/settings/dashboard/DashboardCategory;->getTilesCount()I

    move-result v30

    const/16 v2, 0x9

    move/from16 v0, v30

    if-le v0, v2, :cond_2

    const/16 v30, 0x9

    :cond_2
    move-object/from16 v2, p1

    check-cast v2, Lcom/android/settings/SettingsActivity;

    move/from16 v0, v30

    invoke-virtual {v2, v0}, Lcom/android/settings/SettingsActivity;->setFavoriteCount(I)V

    if-eqz v30, :cond_3

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Setting_ConfigQuickSettigs"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "HIDE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_3
    const/16 v2, 0x8

    invoke-virtual {v13, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    const/16 v23, 0x0

    :goto_4
    move/from16 v0, v23

    move/from16 v1, v30

    if-ge v0, v1, :cond_8

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/DashboardCategory;->getTile(I)Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v5

    new-instance v27, Lcom/android/settings/dashboard/DashboardFavoriteTileView;

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/settings/dashboard/DashboardFavoriteTileView;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v27 .. v27}, Lcom/android/settings/dashboard/DashboardFavoriteTileView;->getImageView()Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual/range {v27 .. v27}, Lcom/android/settings/dashboard/DashboardFavoriteTileView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual/range {v27 .. v27}, Lcom/android/settings/dashboard/DashboardFavoriteTileView;->getStatusTextView()Landroid/widget/TextView;

    move-result-object v8

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/settings/dashboard/DashboardSummary;->updateFavoriteTileView(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/settings/dashboard/DashboardTile;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Lcom/android/settings/dashboard/DashboardFavoriteTileView;->setTile(Lcom/android/settings/dashboard/DashboardTile;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v26

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    div-int v31, v26, v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d00ea

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    div-int/lit8 v15, v31, 0x2

    div-int/lit8 v16, v22, 0x2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d00eb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v25

    invoke-virtual/range {v27 .. v27}, Lcom/android/settings/dashboard/DashboardFavoriteTileView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    instance-of v2, v9, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v2, :cond_4

    sub-int v2, v15, v25

    sub-int v3, v16, v25

    add-int v6, v15, v25

    add-int v7, v16, v25

    invoke-virtual {v9, v2, v3, v6, v7}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    :cond_4
    move-object/from16 v0, v27

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_4

    :cond_5
    const/16 v24, 0x0

    goto/16 :goto_1

    :cond_6
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_7
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/DashboardSummary;->mFavoriteDashboard:Landroid/view/ViewGroup;

    invoke-virtual {v2, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v18, v2, v28

    const-string v2, "DashboardSummary"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rebuildUI took: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " ms"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private rebuildMainContainer(Landroid/content/Context;)V
    .locals 25

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/DashboardSummary;->mArrayTileView:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_0
    move-object/from16 v2, p1

    check-cast v2, Lcom/android/settings/SettingsActivity;

    const/4 v3, 0x1

    const-string v6, "main_mode"

    invoke-virtual {v2, v3, v6}, Lcom/android/settings/SettingsActivity;->getDashboardCategories(ZLjava/lang/String;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v15

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/dashboard/DashboardSummary;->mMainContainerView:[Landroid/view/ViewGroup;

    new-array v2, v15, [Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/dashboard/DashboardSummary;->mMainContainerView:[Landroid/view/ViewGroup;

    const/16 v19, 0x0

    :goto_0
    move/from16 v0, v19

    if-ge v0, v15, :cond_6

    move/from16 v0, v19

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settings/dashboard/DashboardCategory;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/DashboardSummary;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04006e

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v13

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f100113

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f100115

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const v2, 0x7f100114

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    invoke-virtual {v11, v4}, Lcom/android/settings/dashboard/DashboardCategory;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/dashboard/DashboardSummary;->mMainContainerView:[Landroid/view/ViewGroup;

    const v2, 0x7f100116

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    aput-object v2, v3, v19

    const v2, 0x7f100113

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    if-nez v19, :cond_2

    const/16 v2, 0x8

    invoke-virtual {v14, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-virtual {v11}, Lcom/android/settings/dashboard/DashboardCategory;->getTilesCount()I

    move-result v24

    const/16 v18, 0x0

    :goto_1
    move/from16 v0, v18

    move/from16 v1, v24

    if-ge v0, v1, :cond_5

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/android/settings/dashboard/DashboardCategory;->getTile(I)Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v5

    new-instance v21, Lcom/android/settings/dashboard/DashboardTileView;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/settings/dashboard/DashboardTileView;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v21 .. v21}, Lcom/android/settings/dashboard/DashboardTileView;->getImageView()Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual/range {v21 .. v21}, Lcom/android/settings/dashboard/DashboardTileView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual/range {v21 .. v21}, Lcom/android/settings/dashboard/DashboardTileView;->getStatusTextView()Landroid/widget/TextView;

    move-result-object v8

    iget-wide v2, v11, Lcom/android/settings/dashboard/DashboardCategory;->id:J

    long-to-int v9, v2

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/settings/dashboard/DashboardSummary;->updateTileView(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/settings/dashboard/DashboardTile;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;I)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lcom/android/settings/dashboard/DashboardTileView;->setTile(Lcom/android/settings/dashboard/DashboardTile;)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/DashboardTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/DashboardSummary;->mArrayTileView:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string v2, "LAND"

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v3

    const-string v6, "SEC_FLOATING_FEATURE_COMMON_CONFIG_HIDE_STATUS_BAR"

    invoke-virtual {v3, v6}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->orientation:I

    move/from16 v20, v0

    const/4 v2, 0x2

    move/from16 v0, v20

    if-ne v0, v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/DashboardSummary;->mMainContainerView:[Landroid/view/ViewGroup;

    aget-object v2, v2, v19

    check-cast v2, Lcom/android/settings/dashboard/DashboardContainerView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/settings/dashboard/DashboardContainerView;->SetNumColumns(I)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/DashboardSummary;->mMainContainerView:[Landroid/view/ViewGroup;

    aget-object v2, v2, v19

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Landroid/view/ViewGroup;

    invoke-virtual {v2, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummary;->setInitialFragment()V

    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v16, v2, v22

    const-string v2, "DashboardSummary"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rebuildUI took: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " ms"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private rebuildUI(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DashboardSummary"

    const-string v1, "Cannot build the DashboardSummary UI yet as the Fragment is not added"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/DashboardSummary;->rebuildFavoriteContainer(Landroid/content/Context;)V

    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isSplitTabViewType()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mPrevCategory:Lcom/android/settings/dashboard/DashboardCategory;

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/dashboard/DashboardSummary;->rebuildSplitTabDashBoard(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardCategory;)V

    :goto_1
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/dashboard/DashboardSummary$5;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/dashboard/DashboardSummary$5;-><init>(Lcom/android/settings/dashboard/DashboardSummary;Landroid/content/Context;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/DashboardSummary;->rebuildMainContainer(Landroid/content/Context;)V

    goto :goto_1
.end method

.method private sendRebuildUI()V
    .locals 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private setInitialFragment()V
    .locals 20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/DashboardSummary;->mPrevTileView:Lcom/android/settings/dashboard/DashboardTileView;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/DashboardSummary;->mPrevTileView:Lcom/android/settings/dashboard/DashboardTileView;

    invoke-virtual {v2}, Lcom/android/settings/dashboard/DashboardTileView;->getTile()Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v2

    iget-wide v10, v2, Lcom/android/settings/dashboard/DashboardTile;->id:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/android/settings/dashboard/DashboardSummary;->switchToTile(J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/settings/dashboard/DashboardSummary;->InitialDashboardId:J

    const-wide/16 v18, 0x0

    cmp-long v2, v10, v18

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/settings/dashboard/DashboardSummary;->InitialDashboardId:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/android/settings/dashboard/DashboardSummary;->switchToTile(J)V

    goto :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v13

    const-class v2, Lcom/android/settings/Settings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/DashboardSummary;->mArrayTileView:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/DashboardSummary;->mArrayTileView:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/dashboard/DashboardTileView;

    invoke-virtual {v2}, Lcom/android/settings/dashboard/DashboardTileView;->performClick()Z

    goto :goto_0

    :cond_3
    const-string v2, ":settings:show_fragment"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, ":settings:show_fragment_args"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    const-string v2, ":settings:show_fragment_title_resid"

    const/4 v5, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const-string v2, ":settings:show_fragment_title"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-gtz v7, :cond_4

    if-nez v8, :cond_4

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget v7, v2, Landroid/content/pm/ActivityInfo;->labelRes:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    const-string v2, ":settings:top_level_dashboard_rank"

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v5, ":settings:prefs"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/dashboard/DashboardSummary;->getSelectedTopLevelDashboardId(I)J

    move-result-wide v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/settings/dashboard/DashboardSummary;->InitialDashboardId:J

    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/settings/dashboard/DashboardSummary;->InitialDashboardId:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/android/settings/dashboard/DashboardSummary;->switchToTile(J)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v11}, Lcom/android/settings/dashboard/DashboardSummary;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;ZLandroid/app/Fragment;I)V

    goto/16 :goto_0

    :catch_0
    move-exception v15

    invoke-virtual {v15}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    goto :goto_1

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v12

    instance-of v2, v12, Lcom/android/settings/SettingsActivity;

    if-eqz v2, :cond_5

    check-cast v12, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v12}, Lcom/android/settings/SettingsActivity;->getTopLevelDashboardId()J

    move-result-wide v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/settings/dashboard/DashboardSummary;->InitialDashboardId:J

    goto :goto_2
.end method

.method private setTitleFromBackStack()I
    .locals 5

    const/4 v4, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    if-ne v1, v4, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/DashboardSummary;->setTitleFromBackStackEntry(Landroid/app/FragmentManager$BackStackEntry;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    goto :goto_1
.end method

.method private setTitleFromBackStackEntry(Landroid/app/FragmentManager$BackStackEntry;)V
    .locals 3

    invoke-interface {p1}, Landroid/app/FragmentManager$BackStackEntry;->getBreadCrumbTitleRes()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Landroid/app/FragmentManager$BackStackEntry;->getBreadCrumbTitle()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method private showOnlineHelpDialog(Landroid/content/Intent;)V
    .locals 13

    const/4 v12, 0x0

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    move-object v5, p1

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f0401ff

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v8, 0x7f100457

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const v8, 0x7f100082

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a15ad

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a1272

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v8, "onlinehelp_show_dialog"

    invoke-interface {v7, v8, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a15ac

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0a0e5e

    new-instance v10, Lcom/android/settings/dashboard/DashboardSummary$10;

    invoke-direct {v10, p0, v0, v3, v5}, Lcom/android/settings/dashboard/DashboardSummary$10;-><init>(Lcom/android/settings/dashboard/DashboardSummary;Landroid/widget/CheckBox;Landroid/content/SharedPreferences$Editor;Landroid/content/Intent;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0a0166

    new-instance v10, Lcom/android/settings/dashboard/DashboardSummary$9;

    invoke-direct {v10, p0}, Lcom/android/settings/dashboard/DashboardSummary$9;-><init>(Lcom/android/settings/dashboard/DashboardSummary;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/android/settings/dashboard/DashboardSummary$8;

    invoke-direct {v9, p0}, Lcom/android/settings/dashboard/DashboardSummary$8;-><init>(Lcom/android/settings/dashboard/DashboardSummary;)V

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v9, "com.android.settings"

    const-string v10, "HQST"

    invoke-static {v8, v9, v10}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private updateFavoriteTileView(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/settings/dashboard/DashboardTile;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 4

    const/4 v2, 0x0

    iget v1, p3, Lcom/android/settings/dashboard/DashboardTile;->iconRes:I

    if-lez v1, :cond_0

    iget v1, p3, Lcom/android/settings/dashboard/DashboardTile;->iconRes:I

    invoke-virtual {p4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    iget v1, p3, Lcom/android/settings/dashboard/DashboardTile;->categoryId:I

    iget-wide v2, p3, Lcom/android/settings/dashboard/DashboardTile;->id:J

    long-to-int v2, v2

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->getFavoriteTileBackgroundId(II)I

    move-result v1

    invoke-virtual {p4, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget v1, p3, Lcom/android/settings/dashboard/DashboardTile;->categoryId:I

    iget-wide v2, p3, Lcom/android/settings/dashboard/DashboardTile;->id:J

    long-to-int v2, v2

    invoke-static {p1, v1, v2}, Lcom/android/settings/Utils;->getTileIconColor(Landroid/content/Context;II)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p4, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p3, p2}, Lcom/android/settings/dashboard/DashboardTile;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p3, p2}, Lcom/android/settings/dashboard/DashboardTile;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p6, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p4, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    invoke-virtual {p6, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateTileView(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/settings/dashboard/DashboardTile;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;I)V
    .locals 4

    const/4 v2, 0x0

    iget v1, p3, Lcom/android/settings/dashboard/DashboardTile;->iconRes:I

    if-lez v1, :cond_0

    iget v1, p3, Lcom/android/settings/dashboard/DashboardTile;->iconRes:I

    invoke-virtual {p4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    iget-wide v2, p3, Lcom/android/settings/dashboard/DashboardTile;->id:J

    long-to-int v1, v2

    invoke-static {p7, v1}, Lcom/android/settings/Utils;->getTileBackgroundId(II)I

    move-result v1

    invoke-virtual {p4, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09007c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p4, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p3, p2}, Lcom/android/settings/dashboard/DashboardTile;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p3, p2}, Lcom/android/settings/dashboard/DashboardTile;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p6, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p4, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    invoke-virtual {p6, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public getSwitchBar()Lcom/android/settings/widget/SwitchBar;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/widget/SwitchBar;-><init>(Landroid/content/Context;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->twSetDrawDuringWindowsAnimating(Z)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 13

    const-wide/32 v6, 0x7f1005e5

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->isResumed()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v0

    if-ne v0, v4, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a0f76

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/android/settings/dashboard/DashboardTileView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/dashboard/DashboardSummary;->mPreferToolbar:Landroid/widget/Toolbar;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/settings/dashboard/DashboardSummary;->mPreferToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->dismissPopupMenus()V

    :cond_3
    move-object v12, p1

    check-cast v12, Lcom/android/settings/dashboard/DashboardTileView;

    invoke-virtual {v12}, Lcom/android/settings/dashboard/DashboardTileView;->getTile()Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v11

    iget-object v0, v11, Lcom/android/settings/dashboard/DashboardTile;->fragment:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f100126

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v10

    if-eqz v10, :cond_4

    iget-object v0, v11, Lcom/android/settings/dashboard/DashboardTile;->fragment:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, ":settings:prefs"

    invoke-virtual {v0, v1, v4}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    iget-wide v0, v11, Lcom/android/settings/dashboard/DashboardTile;->id:J

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/dashboard/DashboardSummary;->switchToTile(J)V

    iget-object v1, v11, Lcom/android/settings/dashboard/DashboardTile;->fragment:Ljava/lang/String;

    iget v5, v11, Lcom/android/settings/dashboard/DashboardTile;->titleRes:I

    iget-object v6, v11, Lcom/android/settings/dashboard/DashboardTile;->title:Ljava/lang/CharSequence;

    move-object v0, p0

    move v7, v4

    move-object v8, v2

    move v9, v3

    invoke-virtual/range {v0 .. v9}, Lcom/android/settings/dashboard/DashboardSummary;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;ZLandroid/app/Fragment;I)V

    goto :goto_0

    :cond_5
    iget-object v0, v11, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-wide v0, v11, Lcom/android/settings/dashboard/DashboardTile;->id:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_6

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v11, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/DashboardSummary;->showOnlineHelpDialog(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_6
    iget-wide v0, v11, Lcom/android/settings/dashboard/DashboardTile;->id:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.android.settings"

    const-string v2, "HQST"

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, v11, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 22

    invoke-super/range {p0 .. p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v17

    if-eqz v17, :cond_5

    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v10, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/dashboard/DashboardSummary;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardSummary;->mPrefsContainer:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move/from16 v17, v0

    iget v0, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move/from16 v18, v0

    add-float v16, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardSummary;->mSplitBarView:Landroid/view/View;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    sget-boolean v17, Lcom/android/settings/dashboard/DashboardSummary;->mUserUpdateSplit:Z

    if-nez v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardSummary;->mPrefsContainer:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0c000b

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0c000c

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardSummary;->mPrefsContainer:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void

    :cond_1
    int-to-float v0, v10

    move/from16 v17, v0

    iget v0, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    div-float v14, v17, v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0d00cd

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0d00ce

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v17

    move/from16 v0, v17

    int-to-float v12, v0

    const/16 v17, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0c000d

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v0, v1, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v13

    cmpl-float v17, v14, v12

    if-lez v17, :cond_4

    int-to-float v0, v4

    move/from16 v17, v0

    cmpg-float v17, v14, v17

    if-gtz v17, :cond_4

    int-to-double v0, v4

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4059000000000000L    # 100.0

    mul-double v18, v18, v20

    int-to-double v0, v10

    move-wide/from16 v20, v0

    div-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v8, v0

    iput v4, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    sub-int v17, v10, v4

    move/from16 v0, v17

    iput v0, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardSummary;->mPrefsContainer:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const-string v18, "com.android.settings_preferences"

    const/16 v19, 0x4

    invoke-virtual/range {v17 .. v19}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v17, "split_bar_left_wegigh"

    move-object/from16 v0, v17

    invoke-interface {v2, v0, v8}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2
    :goto_0
    const-string v17, "LAND"

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v18

    const-string v19, "SEC_FLOATING_FEATURE_COMMON_CONFIG_HIDE_STATUS_BAR"

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    const/4 v15, 0x1

    move-object/from16 v0, p1

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    const/4 v15, 0x2

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardSummary;->mMainContainerView:[Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardSummary;->mMainContainerView:[Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    if-lez v17, :cond_0

    const/4 v5, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardSummary;->mMainContainerView:[Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v5, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardSummary;->mMainContainerView:[Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    aget-object v17, v17, v5

    check-cast v17, Lcom/android/settings/dashboard/DashboardContainerView;

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/android/settings/dashboard/DashboardContainerView;->SetNumColumns(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    cmpg-float v17, v14, v12

    if-gtz v17, :cond_2

    float-to-double v0, v13

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4059000000000000L    # 100.0

    mul-double v18, v18, v20

    int-to-double v0, v10

    move-wide/from16 v20, v0

    div-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v8, v0

    float-to-int v0, v13

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    int-to-float v0, v10

    move/from16 v17, v0

    sub-float v17, v17, v13

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardSummary;->mPrefsContainer:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const-string v18, "com.android.settings_preferences"

    const/16 v19, 0x4

    invoke-virtual/range {v17 .. v19}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v17, "split_bar_left_wegigh"

    move-object/from16 v0, v17

    invoke-interface {v2, v0, v8}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/dashboard/DashboardSummary;->rebuildFavoriteContainer(Landroid/content/Context;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v17

    check-cast v17, Lcom/android/settings/SettingsActivity;

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/SettingsActivity;->refreshQuickSettingsView()V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ":android:current_dashboard_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/dashboard/DashboardSummary;->InitialDashboardId:J

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/Utils;->isSplitTabViewType()Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/settings/SettingsActivity;

    iget-wide v2, p0, Lcom/android/settings/dashboard/DashboardSummary;->InitialDashboardId:J

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/SettingsActivity;->setInitialDashboardCategory(J)Lcom/android/settings/dashboard/DashboardCategory;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mPrevCategory:Lcom/android/settings/dashboard/DashboardCategory;

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "development"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mLayoutInflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_2

    const v1, 0x7f040075

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_3

    const v3, 0x7f100121

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Landroid/view/ViewGroup;

    const v3, 0x7f100122

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mPrefsContainer:Landroid/view/ViewGroup;

    const v3, 0x7f100127

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSplitBarView:Landroid/view/View;

    const v3, 0x7f10011d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mHeaderLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f100125

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/settings/widget/SwitchBar;

    iput-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const v3, 0x7f10011f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Toolbar;

    iput-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mMainToolbar:Landroid/widget/Toolbar;

    const v3, 0x7f100124

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Toolbar;

    sput-object v3, Lcom/android/settings/dashboard/DashboardSummary;->mPreferToolbar:Landroid/widget/Toolbar;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    sget-object v4, Lcom/android/settings/dashboard/DashboardSummary;->mPreferToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setActionBar(Landroid/widget/Toolbar;)V

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardSummary;->setTitleFromBackStack()I

    sget-object v3, Lcom/android/settings/dashboard/DashboardSummary;->mPreferToolbar:Landroid/widget/Toolbar;

    new-instance v4, Lcom/android/settings/dashboard/DashboardSummary$4;

    invoke-direct {v4, p0}, Lcom/android/settings/dashboard/DashboardSummary$4;-><init>(Lcom/android/settings/dashboard/DashboardSummary;)V

    invoke-virtual {v3, v4}, Landroid/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/android/settings/Utils;->isSplitTabViewType()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mMainToolbar:Landroid/widget/Toolbar;

    const v4, 0x7f0a016f

    invoke-virtual {v3, v4}, Landroid/widget/Toolbar;->setTitle(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mMainToolbar:Landroid/widget/Toolbar;

    const v4, 0x7f120008

    invoke-virtual {v3, v4}, Landroid/widget/Toolbar;->inflateMenu(I)V

    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mMainToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v3}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v3, 0x7f10060f

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSearchMenuItem:Landroid/view/MenuItem;

    const v3, 0x7f100610

    invoke-interface {v0, v3}, Landroid/view/Menu;->removeItem(I)V

    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v3, p0}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardSummary;->initializeLayoutBySplitBar()V

    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSplitBarView:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSplitBarView:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSplitBarView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSplitBarLayoutChangeListner:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isEasyModeStatus(Landroid/content/ContentResolver;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->bEasymode:Z

    return-object v2

    :cond_2
    const v1, 0x7f04006d

    goto/16 :goto_0

    :cond_3
    const v3, 0x7f100111

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mFavoriteDashboard:Landroid/view/ViewGroup;

    const v3, 0x7f100112

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Landroid/view/ViewGroup;

    goto :goto_1
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    const/4 v1, 0x4

    const/4 v3, -0x1

    :try_start_0
    invoke-static {v1, v3}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V

    :cond_2
    :goto_1
    move v1, v2

    goto :goto_0

    :cond_3
    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    const/4 v1, 0x1

    const/4 v3, -0x1

    invoke-static {v1, v3}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 10

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v0

    if-ne v0, v4, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a0f76

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return v3

    :cond_0
    const-class v0, Lcom/android/settings/dashboard/SearchResultsSummary;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v5, 0x7f0a0da5

    move-object v0, p0

    move-object v6, v2

    move v7, v4

    move-object v8, v2

    move v9, v3

    invoke-virtual/range {v0 .. v9}, Lcom/android/settings/dashboard/DashboardSummary;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;ZLandroid/app/Fragment;I)V

    invoke-interface {p1}, Landroid/view/MenuItem;->collapseActionView()Z

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAirplaneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onResume()V
    .locals 5

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/dashboard/DashboardSummary;->rebuildUI(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSplitBarView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isEasyModeStatus(Landroid/content/ContentResolver;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->bEasymode:Z

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/settings/dashboard/DashboardSummary$3;

    invoke-direct {v1, p0}, Lcom/android/settings/dashboard/DashboardSummary$3;-><init>(Lcom/android/settings/dashboard/DashboardSummary;)V

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAirplaneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardSummary;->sendRebuildUI()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mPrevTileView:Lcom/android/settings/dashboard/DashboardTileView;

    if-eqz v0, :cond_0

    const-string v0, ":android:current_dashboard_id"

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mPrevTileView:Lcom/android/settings/dashboard/DashboardTileView;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/DashboardTileView;->getTile()Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v1

    iget-wide v2, v1, Lcom/android/settings/dashboard/DashboardTile;->id:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 35

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v32

    if-nez v32, :cond_0

    const/16 v32, 0x0

    :goto_0
    return v32

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/16 v23, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    const v33, 0x7f0d00ce

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/16 v32, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x7f0c000d

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    move/from16 v0, v32

    move/from16 v1, v33

    invoke-static {v0, v1, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v27

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    const v33, 0x7f0d00cd

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    const/16 v16, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/view/ViewGroup;

    move/from16 v32, v0

    if-eqz v32, :cond_1

    check-cast p1, Landroid/view/ViewGroup;

    const/16 v32, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    :cond_1
    if-nez v23, :cond_2

    const/16 v32, 0x0

    goto :goto_0

    :cond_2
    if-nez v2, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    const v33, 0x7f0202e6

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v32

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/dashboard/DashboardSummary;->mUpdateLayoutBySplitChange:Z

    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/dashboard/DashboardSummary;->mUpdateLayoutBySplitChange:Z

    move/from16 v32, v0

    if-eqz v32, :cond_4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/dashboard/DashboardSummary;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v32, 0x1

    sput-boolean v32, Lcom/android/settings/dashboard/DashboardSummary;->mUserUpdateSplit:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardSummary;->mPrefsContainer:Landroid/view/ViewGroup;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout$LayoutParams;

    iget v8, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move-object/from16 v0, v20

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move/from16 v19, v0

    add-float v30, v8, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v32, v0

    div-float v9, v16, v32

    mul-float v12, v30, v9

    sub-float v14, v30, v12

    iput v12, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move-object/from16 v0, v20

    iput v14, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v32, v0

    div-float v33, v12, v30

    mul-float v32, v32, v33

    move/from16 v0, v32

    float-to-int v13, v0

    sub-int v15, v18, v13

    iput v13, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move-object/from16 v0, v20

    iput v15, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v32

    if-eqz v32, :cond_1b

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardSummary;->mPrefsContainer:Landroid/view/ViewGroup;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/dashboard/DashboardSummary;->mUpdateLayoutBySplitChange:Z

    :cond_4
    const/16 v32, 0x1

    goto/16 :goto_0

    :cond_5
    const/16 v32, 0x2

    move/from16 v0, v32

    if-ne v2, v0, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardSummary;->mSplitBarView:Landroid/view/View;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getWidth()I

    move-result v25

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardSummary;->mSplitBarView:Landroid/view/View;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getX()F

    move-result v17

    add-float v29, v17, v28

    div-int/lit8 v32, v25, 0x2

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    add-float v16, v17, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardSummary;->mSplitBarView:Landroid/view/View;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v32

    check-cast v32, Landroid/view/View;

    check-cast v32, Landroid/view/View;

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getWidth()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v32

    if-eqz v32, :cond_d

    const v24, 0x3eae147a    # 0.33999997f

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v5, v32, v27

    sub-int v32, v18, v7

    move/from16 v0, v32

    int-to-float v11, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v32, v0

    cmpl-float v32, v28, v32

    if-lez v32, :cond_9

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v32, v0

    cmpg-float v32, v29, v32

    if-gtz v32, :cond_9

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v32, v28, v32

    add-float v16, v16, v32

    cmpl-float v32, v16, v11

    if-lez v32, :cond_7

    add-float v32, v11, v22

    cmpg-float v32, v16, v32

    if-gtz v32, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardSummary;->mHeaderLayout:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v32

    move/from16 v0, v32

    if-le v0, v7, :cond_6

    move/from16 v16, v11

    div-int/lit8 v32, v25, 0x2

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v17, v16, v32

    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/dashboard/DashboardSummary;->mUpdateLayoutBySplitChange:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardSummary;->mSplitBarView:Landroid/view/View;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    goto/16 :goto_1

    :cond_6
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/dashboard/DashboardSummary;->mUpdateLayoutBySplitChange:Z

    goto/16 :goto_1

    :cond_7
    add-float v32, v11, v22

    cmpl-float v32, v16, v32

    if-lez v32, :cond_8

    cmpg-float v32, v16, v5

    if-gtz v32, :cond_8

    move/from16 v16, v5

    div-int/lit8 v32, v25, 0x2

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v17, v16, v32

    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/dashboard/DashboardSummary;->mUpdateLayoutBySplitChange:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardSummary;->mSplitBarView:Landroid/view/View;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    goto/16 :goto_1

    :cond_8
    cmpg-float v32, v16, v11

    if-gtz v32, :cond_3

    div-int/lit8 v32, v25, 0x2

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v17, v16, v32

    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/dashboard/DashboardSummary;->mUpdateLayoutBySplitChange:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardSummary;->mSplitBarView:Landroid/view/View;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    goto/16 :goto_1

    :cond_9
    const/16 v32, 0x0

    cmpg-float v32, v28, v32

    if-gez v32, :cond_3

    const/16 v32, 0x0

    cmpl-float v32, v29, v32

    if-ltz v32, :cond_3

    add-float v16, v16, v28

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v32, v0

    div-float v26, v16, v32

    cmpg-float v32, v26, v24

    if-gez v32, :cond_a

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v32, v0

    mul-float v16, v32, v24

    div-int/lit8 v32, v25, 0x2

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v17, v16, v32

    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/dashboard/DashboardSummary;->mUpdateLayoutBySplitChange:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardSummary;->mSplitBarView:Landroid/view/View;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    goto/16 :goto_1

    :cond_a
    add-float v32, v11, v22

    cmpl-float v32, v16, v32

    if-lez v32, :cond_b

    cmpg-float v32, v16, v5

    if-gtz v32, :cond_b

    div-int/lit8 v32, v25, 0x2

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v17, v16, v32

    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/dashboard/DashboardSummary;->mUpdateLayoutBySplitChange:Z

    goto/16 :goto_1

    :cond_b
    add-float v32, v11, v22

    cmpg-float v32, v16, v32

    if-gtz v32, :cond_c

    cmpl-float v32, v16, v11

    if-lez v32, :cond_c

    move/from16 v16, v11

    div-int/lit8 v32, v25, 0x2

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v17, v16, v32

    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/dashboard/DashboardSummary;->mUpdateLayoutBySplitChange:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardSummary;->mSplitBarView:Landroid/view/View;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    goto/16 :goto_1

    :cond_c
    div-int/lit8 v32, v25, 0x2

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v17, v16, v32

    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/dashboard/DashboardSummary;->mUpdateLayoutBySplitChange:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardSummary;->mSplitBarView:Landroid/view/View;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    goto/16 :goto_1

    :cond_d
    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v32, v0

    cmpl-float v32, v28, v32

    if-lez v32, :cond_11

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v32, v0

    cmpg-float v32, v29, v32

    if-gtz v32, :cond_11

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v32, v28, v32

    add-float v16, v16, v32

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v32, v0

    div-float v26, v16, v32

    const v32, 0x3f28f5c3    # 0.66f

    cmpl-float v32, v26, v32

    if-lez v32, :cond_e

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v32, v0

    const v33, 0x3f28f5c3    # 0.66f

    mul-float v16, v32, v33

    div-int/lit8 v32, v25, 0x2

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v17, v16, v32

    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/dashboard/DashboardSummary;->mUpdateLayoutBySplitChange:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardSummary;->mSplitBarView:Landroid/view/View;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    goto/16 :goto_1

    :cond_e
    cmpg-float v32, v16, v22

    if-gtz v32, :cond_f

    cmpl-float v32, v16, v27

    if-lez v32, :cond_f

    div-int/lit8 v32, v25, 0x2

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v17, v16, v32

    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/dashboard/DashboardSummary;->mUpdateLayoutBySplitChange:Z

    goto/16 :goto_1

    :cond_f
    cmpl-float v32, v16, v22

    if-lez v32, :cond_10

    int-to-float v0, v7

    move/from16 v32, v0

    cmpg-float v32, v16, v32

    if-gtz v32, :cond_10

    int-to-float v0, v7

    move/from16 v16, v0

    div-int/lit8 v32, v25, 0x2

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v17, v16, v32

    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/dashboard/DashboardSummary;->mUpdateLayoutBySplitChange:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardSummary;->mSplitBarView:Landroid/view/View;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    goto/16 :goto_1

    :cond_10
    div-int/lit8 v32, v25, 0x2

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v17, v16, v32

    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/dashboard/DashboardSummary;->mUpdateLayoutBySplitChange:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardSummary;->mSplitBarView:Landroid/view/View;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    goto/16 :goto_1

    :cond_11
    const/16 v32, 0x0

    cmpg-float v32, v28, v32

    if-gez v32, :cond_3

    const/16 v32, 0x0

    cmpl-float v32, v29, v32

    if-ltz v32, :cond_3

    add-float v16, v16, v28

    int-to-float v0, v7

    move/from16 v32, v0

    cmpg-float v32, v16, v32

    if-gtz v32, :cond_14

    cmpl-float v32, v16, v22

    if-lez v32, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardSummary;->mHeaderLayout:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v32

    move/from16 v0, v32

    if-le v0, v7, :cond_13

    int-to-float v0, v7

    move/from16 v16, v0

    div-int/lit8 v32, v25, 0x2

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v17, v16, v32

    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/dashboard/DashboardSummary;->mUpdateLayoutBySplitChange:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardSummary;->mSplitBarView:Landroid/view/View;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    :cond_12
    :goto_3
    const-string v32, "DashboardSummary"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "mSplitBarView.setX(newSplitBarPosX)4 : "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardSummary;->mSplitBarView:Landroid/view/View;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    goto/16 :goto_1

    :cond_13
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/dashboard/DashboardSummary;->mUpdateLayoutBySplitChange:Z

    goto :goto_3

    :cond_14
    cmpg-float v32, v16, v22

    if-gtz v32, :cond_15

    cmpl-float v32, v16, v27

    if-lez v32, :cond_15

    move/from16 v16, v27

    div-int/lit8 v32, v25, 0x2

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v17, v16, v32

    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/dashboard/DashboardSummary;->mUpdateLayoutBySplitChange:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardSummary;->mSplitBarView:Landroid/view/View;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    goto :goto_3

    :cond_15
    int-to-float v0, v7

    move/from16 v32, v0

    cmpl-float v32, v16, v32

    if-lez v32, :cond_12

    div-int/lit8 v32, v25, 0x2

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v17, v16, v32

    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/dashboard/DashboardSummary;->mUpdateLayoutBySplitChange:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardSummary;->mSplitBarView:Landroid/view/View;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    goto/16 :goto_3

    :cond_16
    const/16 v32, 0x1

    move/from16 v0, v32

    if-ne v2, v0, :cond_18

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/dashboard/DashboardSummary;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    sget v32, Lcom/android/settings/dashboard/DashboardSummary;->mSplitBarMovedLeftWeight:F

    iget v0, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move/from16 v33, v0

    cmpl-float v32, v32, v33

    if-eqz v32, :cond_17

    iget v0, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move/from16 v32, v0

    sput v32, Lcom/android/settings/dashboard/DashboardSummary;->mSplitBarMovedLeftWeight:F

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v32

    const-string v33, "com.android.settings_preferences"

    const/16 v34, 0x4

    invoke-virtual/range {v32 .. v34}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v32, "split_bar_left_wegigh"

    sget v33, Lcom/android/settings/dashboard/DashboardSummary;->mSplitBarMovedLeftWeight:F

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    const v33, 0x7f0202e5

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v32

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardSummary;->mSplitBarView:Landroid/view/View;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->requestLayout()V

    goto/16 :goto_1

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardSummary;->mPrefsContainer:Landroid/view/ViewGroup;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/view/ViewGroup;->getX()F

    move-result v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardSummary;->mSplitBarView:Landroid/view/View;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getWidth()I

    move-result v33

    div-int/lit8 v33, v33, 0x2

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    sub-float v31, v32, v33

    const/16 v32, 0x0

    cmpg-float v32, v31, v32

    if-gez v32, :cond_19

    const/16 v31, 0x0

    :cond_19
    const/16 v32, 0x3

    move/from16 v0, v32

    if-eq v2, v0, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardSummary;->mSplitBarView:Landroid/view/View;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    :cond_1a
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/dashboard/DashboardSummary;->mUpdateLayoutBySplitChange:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    const v33, 0x7f0202e5

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v32

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :cond_1b
    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardSummary;->mPrefsContainer:Landroid/view/ViewGroup;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2
.end method

.method public rebuildSplitTabDashBoard(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardCategory;)V
    .locals 13

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mArrayTileView:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04006e

    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    const v0, 0x7f100114

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f100116

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {p2}, Lcom/android/settings/dashboard/DashboardCategory;->getTilesCount()I

    move-result v12

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v12, :cond_3

    invoke-virtual {p2, v10}, Lcom/android/settings/dashboard/DashboardCategory;->getTile(I)Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v3

    new-instance v11, Lcom/android/settings/dashboard/DashboardTileView;

    invoke-direct {v11, p1}, Lcom/android/settings/dashboard/DashboardTileView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v11}, Lcom/android/settings/dashboard/DashboardTileView;->getImageView()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v11}, Lcom/android/settings/dashboard/DashboardTileView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v11}, Lcom/android/settings/dashboard/DashboardTileView;->getStatusTextView()Landroid/widget/TextView;

    move-result-object v6

    iget-wide v0, p2, Lcom/android/settings/dashboard/DashboardCategory;->id:J

    long-to-int v7, v0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/dashboard/DashboardSummary;->updateTileView(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/settings/dashboard/DashboardTile;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;I)V

    invoke-virtual {v11, v3}, Lcom/android/settings/dashboard/DashboardTileView;->setTile(Lcom/android/settings/dashboard/DashboardTile;)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v11, p0}, Lcom/android/settings/dashboard/DashboardTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mArrayTileView:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v8, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Landroid/view/ViewGroup;

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mPrevCategory:Lcom/android/settings/dashboard/DashboardCategory;

    if-eq v0, p2, :cond_4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mPrevTileView:Lcom/android/settings/dashboard/DashboardTileView;

    :cond_4
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardSummary;->setInitialFragment()V

    :cond_5
    iput-object p2, p0, Lcom/android/settings/dashboard/DashboardSummary;->mPrevCategory:Lcom/android/settings/dashboard/DashboardCategory;

    goto/16 :goto_0
.end method

.method public redrawDashboard()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/DashboardSummary;->rebuildMainContainer(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public redrawFavorite()V
    .locals 1

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/DashboardSummary;->rebuildFavoriteContainer(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->refreshQuickSettingsView()V

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mFavoriteDashboard:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;ZLandroid/app/Fragment;I)V
    .locals 6

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v1

    if-eqz p8, :cond_2

    invoke-virtual {v1, p8, p9}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    const-class v4, Lcom/android/settings/dashboard/SearchResultsSummary;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v2, "main_content"

    const/high16 v4, 0x10b0000

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    const-string v4, ":settings:prefs"

    invoke-virtual {v3, v4}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    const v4, 0x7f1003eb

    invoke-virtual {v3, v4, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    :goto_1
    if-lez p5, :cond_6

    invoke-virtual {v3, p5}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(I)Landroid/app/FragmentTransaction;

    :cond_3
    :goto_2
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    :cond_4
    const/16 v4, 0x1003

    invoke-virtual {v3, v4}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    if-eqz p4, :cond_5

    const-string v4, ":settings:prefs"

    invoke-virtual {v3, v4}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    :cond_5
    const v4, 0x7f100126

    const-string v5, "main_content2"

    invoke-virtual {v3, v4, v1, v5}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_1

    :cond_6
    if-eqz p6, :cond_3

    invoke-virtual {v3, p6}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    goto :goto_2
.end method

.method public switchToTile(J)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mArrayTileView:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mArrayTileView:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/dashboard/DashboardTileView;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/DashboardTileView;->getTile()Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v1

    iget-wide v2, v1, Lcom/android/settings/dashboard/DashboardTile;->id:J

    cmp-long v1, p1, v2

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mPrevTileView:Lcom/android/settings/dashboard/DashboardTileView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mPrevTileView:Lcom/android/settings/dashboard/DashboardTileView;

    const v2, 0x7f02006b

    invoke-virtual {v1, v2}, Lcom/android/settings/dashboard/DashboardTileView;->setBackgroundResource(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mArrayTileView:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/dashboard/DashboardTileView;

    const v2, 0x7f02006c

    invoke-virtual {v1, v2}, Lcom/android/settings/dashboard/DashboardTileView;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mArrayTileView:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/dashboard/DashboardTileView;

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mPrevTileView:Lcom/android/settings/dashboard/DashboardTileView;

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
