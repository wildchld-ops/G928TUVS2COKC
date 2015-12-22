.class public Lcom/android/settings/motion/MotionSettings2015;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MotionSettings2015.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final mMotionFeatures:[Ljava/lang/String;


# instance fields
.field private mAllDisabledDialog:Landroid/app/AlertDialog;

.field private mExpandAppSwitch:Landroid/preference/SwitchPreference;

.field private mMergedMutePauseSwitch:Landroid/preference/SwitchPreference;

.field private mMoveAppSwitch:Landroid/preference/SwitchPreference;

.field private mPalmSwipeSwitch:Landroid/preference/SwitchPreference;

.field private final mPalmSwipeToCaptureObserver:Landroid/database/ContentObserver;

.field private final mPalmSwipeToCaptureObserverInteraction:Landroid/database/ContentObserver;

.field private mPickUpSwitch:Landroid/preference/SwitchPreference;

.field private mPickUpToCallOutSwitch:Landroid/preference/SwitchPreference;

.field private mPointArea:Landroid/widget/LinearLayout;

.field private mResolver:Landroid/content/ContentResolver;

.field private mViewPager:Lcom/android/settings/WrapContentHeightViewPager;

.field private mViewPagerAdapter:Lcom/android/settings/motion/MotionViewPagerAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "pick_up_to_call_out_switch"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "pick_up_switch"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "merged_mute_or_pause_switch"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "palm_swipe_switch"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "move_app_switch"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "expand_app_switch"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/motion/MotionSettings2015;->mMotionFeatures:[Ljava/lang/String;

    new-instance v0, Lcom/android/settings/motion/MotionSettings2015$5;

    invoke-direct {v0}, Lcom/android/settings/motion/MotionSettings2015$5;-><init>()V

    sput-object v0, Lcom/android/settings/motion/MotionSettings2015;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/motion/MotionSettings2015;->mAllDisabledDialog:Landroid/app/AlertDialog;

    new-instance v0, Lcom/android/settings/motion/MotionSettings2015$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/motion/MotionSettings2015$1;-><init>(Lcom/android/settings/motion/MotionSettings2015;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/motion/MotionSettings2015;->mPalmSwipeToCaptureObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/motion/MotionSettings2015$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/motion/MotionSettings2015$2;-><init>(Lcom/android/settings/motion/MotionSettings2015;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/motion/MotionSettings2015;->mPalmSwipeToCaptureObserverInteraction:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/motion/MotionSettings2015;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/motion/MotionSettings2015;->mPalmSwipeSwitch:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/motion/MotionSettings2015;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings2015;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/motion/MotionSettings2015;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings2015;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/motion/MotionSettings2015;)Lcom/android/settings/WrapContentHeightViewPager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/motion/MotionSettings2015;->mViewPager:Lcom/android/settings/WrapContentHeightViewPager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/motion/MotionSettings2015;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings2015;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/motion/MotionSettings2015;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/motion/MotionSettings2015;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/motion/MotionSettings2015;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings2015;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private dismissAllDialog()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/motion/MotionSettings2015;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/motion/MotionSettings2015;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/motion/MotionSettings2015;->mAllDisabledDialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method private makeTalkBackDisablePopup()V
    .locals 6

    invoke-direct {p0}, Lcom/android/settings/motion/MotionSettings2015;->dismissAllDialog()V

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings2015;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->getEnabledTalkbackName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f0a09b1

    invoke-virtual {p0, v2}, Lcom/android/settings/motion/MotionSettings2015;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const v5, 0x7f0a112b

    invoke-virtual {p0, v5}, Lcom/android/settings/motion/MotionSettings2015;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings2015;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a1131

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a1155

    new-instance v4, Lcom/android/settings/motion/MotionSettings2015$6;

    invoke-direct {v4, p0}, Lcom/android/settings/motion/MotionSettings2015$6;-><init>(Lcom/android/settings/motion/MotionSettings2015;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/motion/MotionSettings2015;->mAllDisabledDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/android/settings/motion/MotionSettings2015;->mAllDisabledDialog:Landroid/app/AlertDialog;

    new-instance v3, Lcom/android/settings/motion/MotionSettings2015$7;

    invoke-direct {v3, p0}, Lcom/android/settings/motion/MotionSettings2015$7;-><init>(Lcom/android/settings/motion/MotionSettings2015;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v2, p0, Lcom/android/settings/motion/MotionSettings2015;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private maketurnOffUniversalPopup()V
    .locals 6

    const v5, 0x7f0a08db

    invoke-direct {p0}, Lcom/android/settings/motion/MotionSettings2015;->dismissAllDialog()V

    const v1, 0x7f0a09b1

    invoke-virtual {p0, v1}, Lcom/android/settings/motion/MotionSettings2015;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const v4, 0x7f0a112b

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionSettings2015;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0, v5}, Lcom/android/settings/motion/MotionSettings2015;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p0, v5}, Lcom/android/settings/motion/MotionSettings2015;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings2015;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a1131

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a1155

    new-instance v3, Lcom/android/settings/motion/MotionSettings2015$8;

    invoke-direct {v3, p0}, Lcom/android/settings/motion/MotionSettings2015$8;-><init>(Lcom/android/settings/motion/MotionSettings2015;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/motion/MotionSettings2015;->mAllDisabledDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/settings/motion/MotionSettings2015;->mAllDisabledDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/settings/motion/MotionSettings2015$9;

    invoke-direct {v2, p0}, Lcom/android/settings/motion/MotionSettings2015$9;-><init>(Lcom/android/settings/motion/MotionSettings2015;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Lcom/android/settings/motion/MotionSettings2015;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public changeColor(I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/motion/MotionSettings2015;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/motion/MotionSettings2015;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f02005f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/motion/MotionSettings2015;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f020060

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 14

    const/16 v13, 0x8

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings2015;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    const v7, 0x7f0400c3

    invoke-virtual {v4, v7, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v7, 0x7f100070

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/settings/WrapContentHeightViewPager;

    iput-object v7, p0, Lcom/android/settings/motion/MotionSettings2015;->mViewPager:Lcom/android/settings/WrapContentHeightViewPager;

    new-instance v7, Lcom/android/settings/motion/MotionViewPagerAdapter;

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings2015;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/settings/motion/MotionViewPagerAdapter;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/settings/motion/MotionSettings2015;->mViewPagerAdapter:Lcom/android/settings/motion/MotionViewPagerAdapter;

    iget-object v7, p0, Lcom/android/settings/motion/MotionSettings2015;->mViewPager:Lcom/android/settings/WrapContentHeightViewPager;

    iget-object v8, p0, Lcom/android/settings/motion/MotionSettings2015;->mViewPagerAdapter:Lcom/android/settings/motion/MotionViewPagerAdapter;

    invoke-virtual {v7, v8}, Lcom/android/settings/WrapContentHeightViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v7, p0, Lcom/android/settings/motion/MotionSettings2015;->mViewPager:Lcom/android/settings/WrapContentHeightViewPager;

    iget-object v8, p0, Lcom/android/settings/motion/MotionSettings2015;->mViewPagerAdapter:Lcom/android/settings/motion/MotionViewPagerAdapter;

    invoke-virtual {v8}, Lcom/android/settings/motion/MotionViewPagerAdapter;->getCount()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/settings/WrapContentHeightViewPager;->setOffscreenPageLimit(I)V

    iget-object v7, p0, Lcom/android/settings/motion/MotionSettings2015;->mViewPager:Lcom/android/settings/WrapContentHeightViewPager;

    new-instance v8, Lcom/android/settings/motion/MotionSettings2015$3;

    invoke-direct {v8, p0}, Lcom/android/settings/motion/MotionSettings2015$3;-><init>(Lcom/android/settings/motion/MotionSettings2015;)V

    invoke-virtual {v7, v8}, Lcom/android/settings/WrapContentHeightViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    const v7, 0x7f1001f0

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/settings/motion/MotionSettings2015;->mPointArea:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/settings/motion/MotionSettings2015;->mViewPagerAdapter:Lcom/android/settings/motion/MotionViewPagerAdapter;

    invoke-virtual {v7}, Lcom/android/settings/motion/MotionViewPagerAdapter;->getCount()I

    move-result v6

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v6, :cond_0

    move v0, v3

    const v7, 0x7f040040

    invoke-virtual {v4, v7, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v7, 0x7f0a1156

    invoke-virtual {p0, v7}, Lcom/android/settings/motion/MotionSettings2015;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    add-int/lit8 v9, v3, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v7, Lcom/android/settings/motion/MotionSettings2015$4;

    invoke-direct {v7, p0, v0}, Lcom/android/settings/motion/MotionSettings2015$4;-><init>(Lcom/android/settings/motion/MotionSettings2015;I)V

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p0, Lcom/android/settings/motion/MotionSettings2015;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v7, p0, Lcom/android/settings/motion/MotionSettings2015;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    if-lez v7, :cond_1

    iget-object v7, p0, Lcom/android/settings/motion/MotionSettings2015;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v12}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    const v8, 0x7f020060

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    iget-object v7, p0, Lcom/android/settings/motion/MotionSettings2015;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    if-ne v7, v10, :cond_2

    iget-object v7, p0, Lcom/android/settings/motion/MotionSettings2015;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    const v7, 0x7f10005a

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings2015;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, v2, v11, v10}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings2015;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v1, p0, Lcom/android/settings/motion/MotionSettings2015;->mViewPager:Lcom/android/settings/WrapContentHeightViewPager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/motion/MotionSettings2015;->mViewPager:Lcom/android/settings/WrapContentHeightViewPager;

    invoke-virtual {v1}, Lcom/android/settings/WrapContentHeightViewPager;->getCurrentItem()I

    move-result v0

    const-string v1, "MotionSettings2015"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConfigurationChanged() : position : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/motion/MotionSettings2015;->mViewPager:Lcom/android/settings/WrapContentHeightViewPager;

    iget-object v2, p0, Lcom/android/settings/motion/MotionSettings2015;->mViewPagerAdapter:Lcom/android/settings/motion/MotionViewPagerAdapter;

    invoke-virtual {v1, v2}, Lcom/android/settings/WrapContentHeightViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v1, p0, Lcom/android/settings/motion/MotionSettings2015;->mViewPager:Lcom/android/settings/WrapContentHeightViewPager;

    iget-object v2, p0, Lcom/android/settings/motion/MotionSettings2015;->mViewPagerAdapter:Lcom/android/settings/motion/MotionViewPagerAdapter;

    invoke-virtual {v2}, Lcom/android/settings/motion/MotionViewPagerAdapter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/WrapContentHeightViewPager;->setOffscreenPageLimit(I)V

    iget-object v1, p0, Lcom/android/settings/motion/MotionSettings2015;->mViewPager:Lcom/android/settings/WrapContentHeightViewPager;

    invoke-virtual {v1, v0}, Lcom/android/settings/WrapContentHeightViewPager;->setCurrentItem(I)V

    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p1, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lcom/android/settings/motion/MotionSettings2015;->mPalmSwipeSwitch:Landroid/preference/SwitchPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/settings/motion/MotionSettings2015;->mPalmSwipeSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionSettings2015;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings2015;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion/MotionSettings2015;->mResolver:Landroid/content/ContentResolver;

    const v4, 0x7f070062

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionSettings2015;->addPreferencesFromResource(I)V

    const-string v4, "pick_up_switch"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionSettings2015;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, p0, Lcom/android/settings/motion/MotionSettings2015;->mPickUpSwitch:Landroid/preference/SwitchPreference;

    const-string v4, "pick_up_to_call_out_switch"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionSettings2015;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, p0, Lcom/android/settings/motion/MotionSettings2015;->mPickUpToCallOutSwitch:Landroid/preference/SwitchPreference;

    const-string v4, "merged_mute_or_pause_switch"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionSettings2015;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, p0, Lcom/android/settings/motion/MotionSettings2015;->mMergedMutePauseSwitch:Landroid/preference/SwitchPreference;

    const-string v4, "palm_swipe_switch"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionSettings2015;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, p0, Lcom/android/settings/motion/MotionSettings2015;->mPalmSwipeSwitch:Landroid/preference/SwitchPreference;

    const-string v4, "move_app_switch"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionSettings2015;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, p0, Lcom/android/settings/motion/MotionSettings2015;->mMoveAppSwitch:Landroid/preference/SwitchPreference;

    const-string v4, "expand_app_switch"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionSettings2015;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, p0, Lcom/android/settings/motion/MotionSettings2015;->mExpandAppSwitch:Landroid/preference/SwitchPreference;

    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings2015;->mPickUpSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings2015;->mPickUpSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings2015;->mPickUpToCallOutSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings2015;->mPickUpToCallOutSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings2015;->mMergedMutePauseSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings2015;->mMergedMutePauseSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings2015;->mPalmSwipeSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings2015;->mPalmSwipeSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings2015;->mMoveAppSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings2015;->mMoveAppSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings2015;->mExpandAppSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings2015;->mExpandAppSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    sget-object v0, Lcom/android/settings/motion/MotionSettings2015;->mMotionFeatures:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings2015;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/android/settings/Utils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/settings/motion/MotionSettings2015;->removePreference(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/motion/MotionSettings2015;->mPalmSwipeSwitch:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings2015;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/motion/MotionSettings2015;->mPalmSwipeToCaptureObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings2015;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/motion/MotionSettings2015;->mPalmSwipeToCaptureObserverInteraction:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    :goto_0
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings2015;->mViewPagerAdapter:Lcom/android/settings/motion/MotionViewPagerAdapter;

    invoke-virtual {v4, v0}, Lcom/android/settings/motion/MotionViewPagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings2015;->mViewPager:Lcom/android/settings/WrapContentHeightViewPager;

    invoke-virtual {v4, v1}, Lcom/android/settings/WrapContentHeightViewPager;->setCurrentItem(I)V

    :cond_0
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings2015;->mPickUpSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings2015;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "motion_pick_up"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    :goto_1
    return v3

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings2015;->mPickUpToCallOutSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings2015;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "motion_pick_up_to_call_out"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings2015;->mMergedMutePauseSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings2015;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "motion_merged_mute_pause"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings2015;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "motion_overturn"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_5
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings2015;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "surface_palm_touch"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings2015;->mPalmSwipeSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    if-ne v2, v3, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings2015;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUserKnoxMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings2015;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isUniversalSwitchEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-direct {p0}, Lcom/android/settings/motion/MotionSettings2015;->maketurnOffUniversalPopup()V

    goto :goto_1

    :cond_7
    if-ne v2, v3, :cond_8

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings2015;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-direct {p0}, Lcom/android/settings/motion/MotionSettings2015;->makeTalkBackDisablePopup()V

    goto :goto_1

    :cond_8
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings2015;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "surface_palm_swipe"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_9
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings2015;->mMoveAppSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings2015;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "motion_move_app"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_a
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings2015;->mExpandAppSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings2015;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "motion_expand_app"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/motion/MotionSettings2015;->mViewPagerAdapter:Lcom/android/settings/motion/MotionViewPagerAdapter;

    invoke-virtual {v2, v0}, Lcom/android/settings/motion/MotionViewPagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/android/settings/motion/MotionSettings2015;->mViewPager:Lcom/android/settings/WrapContentHeightViewPager;

    invoke-virtual {v2, v1}, Lcom/android/settings/WrapContentHeightViewPager;->setCurrentItem(I)V

    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public onResume()V
    .locals 10

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "false"

    aput-object v5, v4, v7

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings2015;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v8, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v9, "isScreenCaptureEnabled"

    invoke-static {v5, v8, v9, v4}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    const/4 v5, -0x1

    if-eq v1, v5, :cond_0

    if-eq v1, v6, :cond_0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :cond_0
    iget-object v8, p0, Lcom/android/settings/motion/MotionSettings2015;->mPickUpSwitch:Landroid/preference/SwitchPreference;

    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings2015;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "motion_pick_up"

    invoke-static {v5, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_5

    move v5, v6

    :goto_0
    invoke-virtual {v8, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v8, p0, Lcom/android/settings/motion/MotionSettings2015;->mPickUpToCallOutSwitch:Landroid/preference/SwitchPreference;

    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings2015;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "motion_pick_up_to_call_out"

    invoke-static {v5, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_6

    move v5, v6

    :goto_1
    invoke-virtual {v8, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v8, p0, Lcom/android/settings/motion/MotionSettings2015;->mMergedMutePauseSwitch:Landroid/preference/SwitchPreference;

    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings2015;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "motion_merged_mute_pause"

    invoke-static {v5, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_7

    move v5, v6

    :goto_2
    invoke-virtual {v8, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings2015;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "access_control_enabled"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :cond_1
    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings2015;->mPalmSwipeSwitch:Landroid/preference/SwitchPreference;

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings2015;->mPalmSwipeSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v7}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings2015;->mPalmSwipeSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings2015;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "surface_palm_swipe"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    :goto_3
    iget-object v8, p0, Lcom/android/settings/motion/MotionSettings2015;->mMoveAppSwitch:Landroid/preference/SwitchPreference;

    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings2015;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "motion_move_app"

    invoke-static {v5, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_a

    move v5, v6

    :goto_4
    invoke-virtual {v8, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v8, p0, Lcom/android/settings/motion/MotionSettings2015;->mExpandAppSwitch:Landroid/preference/SwitchPreference;

    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings2015;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "motion_expand_app"

    invoke-static {v5, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_b

    move v5, v6

    :goto_5
    invoke-virtual {v8, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings2015;->mPalmSwipeSwitch:Landroid/preference/SwitchPreference;

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings2015;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "surface_palm_swipe"

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/motion/MotionSettings2015;->mPalmSwipeToCaptureObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v8, v6, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings2015;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "access_control_enabled"

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/motion/MotionSettings2015;->mPalmSwipeToCaptureObserverInteraction:Landroid/database/ContentObserver;

    invoke-virtual {v5, v8, v6, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_3
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v5

    const-string v8, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v5, v8}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings2015;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v5, v0, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-ne v5, v6, :cond_4

    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings2015;->mPalmSwipeSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v7}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_4
    return-void

    :cond_5
    move v5, v7

    goto/16 :goto_0

    :cond_6
    move v5, v7

    goto/16 :goto_1

    :cond_7
    move v5, v7

    goto/16 :goto_2

    :cond_8
    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings2015;->mPalmSwipeSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v8, p0, Lcom/android/settings/motion/MotionSettings2015;->mPalmSwipeSwitch:Landroid/preference/SwitchPreference;

    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings2015;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "surface_palm_swipe"

    invoke-static {v5, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_9

    move v5, v6

    :goto_6
    invoke-virtual {v8, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_3

    :cond_9
    move v5, v7

    goto :goto_6

    :cond_a
    move v5, v7

    goto :goto_4

    :cond_b
    move v5, v7

    goto :goto_5
.end method
