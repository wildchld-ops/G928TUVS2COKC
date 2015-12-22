.class public Lcom/android/settings/spen/PenAirViewSettingsMenu;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PenAirViewSettingsMenu.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# static fields
.field private static mActivity:Landroid/app/Activity;


# instance fields
.field private mAirViewDialog:Landroid/app/AlertDialog;

.field private mAirViewObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mPointArea:Landroid/widget/LinearLayout;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTalkbackDisableDialog:Landroid/app/AlertDialog;

.field private mViewPager:Lcom/android/settings/WrapContentHeightViewPager;

.field private mViewPagerAdapter:Lcom/android/settings/spen/PenAirViewPagerAdapter;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    iput-object v0, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mAirViewDialog:Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    new-instance v0, Lcom/android/settings/spen/PenAirViewSettingsMenu$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/spen/PenAirViewSettingsMenu$1;-><init>(Lcom/android/settings/spen/PenAirViewSettingsMenu;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mAirViewObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000()Landroid/app/Activity;
    .locals 1

    sget-object v0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/spen/PenAirViewSettingsMenu;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/spen/PenAirViewSettingsMenu;)Lcom/android/settings/WrapContentHeightViewPager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mViewPager:Lcom/android/settings/WrapContentHeightViewPager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/spen/PenAirViewSettingsMenu;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/spen/PenAirViewSettingsMenu;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/spen/PenAirViewSettingsMenu;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/spen/PenAirViewSettingsMenu;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private dismissAllDialog()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method private showTalkBackDisableDialog()V
    .locals 4

    invoke-direct {p0}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->dismissAllDialog()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0a115d

    invoke-virtual {p0, v2}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "com.samsung.android.app.talkback"

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0a09bb

    invoke-virtual {p0, v2}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "com.google.android.marvin.talkback"

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0a09ba

    invoke-virtual {p0, v2}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0a08bf

    invoke-virtual {p0, v2}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mActivity:Landroid/app/Activity;

    const-string v2, "com.sec.feature.overlaymagnifier"

    invoke-static {v1, v2}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0a08c4

    invoke-virtual {p0, v2}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    sget-object v2, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a14ef

    invoke-virtual {p0, v2}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a1155

    new-instance v3, Lcom/android/settings/spen/PenAirViewSettingsMenu$5;

    invoke-direct {v3, p0}, Lcom/android/settings/spen/PenAirViewSettingsMenu$5;-><init>(Lcom/android/settings/spen/PenAirViewSettingsMenu;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/android/settings/spen/PenAirViewSettingsMenu$4;

    invoke-direct {v3, p0}, Lcom/android/settings/spen/PenAirViewSettingsMenu$4;-><init>(Lcom/android/settings/spen/PenAirViewSettingsMenu;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    iget-object v1, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/settings/spen/PenAirViewSettingsMenu$6;

    invoke-direct {v2, p0}, Lcom/android/settings/spen/PenAirViewSettingsMenu$6;-><init>(Lcom/android/settings/spen/PenAirViewSettingsMenu;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method


# virtual methods
.method public changeColor(I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f02005f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f020060

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v1, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "PenAirViewSettings"

    const-string v1, "onCreate() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sput-object v0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mActivity:Landroid/app/Activity;

    sget-object v0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x0

    const v5, 0x7f040010

    invoke-virtual {p1, v5, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v5, 0x7f100070

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/settings/WrapContentHeightViewPager;

    iput-object v5, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mViewPager:Lcom/android/settings/WrapContentHeightViewPager;

    new-instance v5, Lcom/android/settings/spen/PenAirViewPagerAdapter;

    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/settings/spen/PenAirViewPagerAdapter;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mViewPagerAdapter:Lcom/android/settings/spen/PenAirViewPagerAdapter;

    iget-object v5, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mViewPager:Lcom/android/settings/WrapContentHeightViewPager;

    iget-object v6, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mViewPagerAdapter:Lcom/android/settings/spen/PenAirViewPagerAdapter;

    invoke-virtual {v5, v6}, Lcom/android/settings/WrapContentHeightViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v5, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mViewPager:Lcom/android/settings/WrapContentHeightViewPager;

    iget-object v6, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mViewPagerAdapter:Lcom/android/settings/spen/PenAirViewPagerAdapter;

    invoke-virtual {v6}, Lcom/android/settings/spen/PenAirViewPagerAdapter;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/settings/WrapContentHeightViewPager;->setOffscreenPageLimit(I)V

    iget-object v5, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mViewPager:Lcom/android/settings/WrapContentHeightViewPager;

    new-instance v6, Lcom/android/settings/spen/PenAirViewSettingsMenu$2;

    invoke-direct {v6, p0}, Lcom/android/settings/spen/PenAirViewSettingsMenu$2;-><init>(Lcom/android/settings/spen/PenAirViewSettingsMenu;)V

    invoke-virtual {v5, v6}, Lcom/android/settings/WrapContentHeightViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    const v5, 0x7f1001f0

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mPointArea:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mViewPagerAdapter:Lcom/android/settings/spen/PenAirViewPagerAdapter;

    invoke-virtual {v5}, Lcom/android/settings/spen/PenAirViewPagerAdapter;->getCount()I

    move-result v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    move v0, v2

    const v5, 0x7f040040

    invoke-virtual {p1, v5, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v5, 0x7f0a1156

    invoke-virtual {p0, v5}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    add-int/lit8 v7, v2, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    const/4 v7, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v5, Lcom/android/settings/spen/PenAirViewSettingsMenu$3;

    invoke-direct {v5, p0, v0}, Lcom/android/settings/spen/PenAirViewSettingsMenu$3;-><init>(Lcom/android/settings/spen/PenAirViewSettingsMenu;I)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-lez v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f020060

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    const v5, 0x7f10005a

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    return-object v1
.end method

.method public onDestroyView()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    return-void
.end method

.method public onPause()V
    .locals 2

    const-string v0, "PenAirViewSettings"

    const-string v1, "onPause() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mAirViewObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onResume()V
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "PenAirViewSettings"

    const-string v5, "onResume() "

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    sget-object v4, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "pen_hovering"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_1

    move v0, v2

    :goto_0
    iget-object v4, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v4, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v4, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    sget-object v4, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mActivity:Landroid/app/Activity;

    const-string v5, "content://com.sec.knox.provider2/KioskMode"

    const-string v6, "isAirViewModeAllowed"

    invoke-static {v4, v5, v6}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v4, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v4, v3}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mAirViewObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void

    :cond_1
    move v0, v3

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    const-string v0, "PenAirViewSettings"

    const-string v1, "onStrop() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v4}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v4

    if-eq p1, v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_7

    const/4 v0, 0x0

    const/4 v1, 0x0

    sget-object v4, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mActivity:Landroid/app/Activity;

    const-string v5, "com.sec.feature.overlaymagnifier"

    invoke-static {v4, v5}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accessibility_magnifier"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_4

    move v0, v2

    :cond_2
    :goto_1
    sget-object v4, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "finger_magnifier"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_5

    move v1, v2

    :goto_2
    sget-object v4, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accessibility_display_magnification_enabled"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v2, :cond_3

    if-nez v0, :cond_3

    if-eqz v1, :cond_6

    :cond_3
    invoke-direct {p0}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->showTalkBackDisableDialog()V

    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_1

    :cond_5
    move v1, v3

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering_information_preview"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering_icon_label"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering_list_scroll"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering_link_preview"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isSupportPenUsp10(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering_air_menu"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "pen_hovering"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "pen_hovering_information_preview"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "pen_hovering_icon_label"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "pen_hovering_list_scroll"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "pen_hovering_link_preview"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isSupportPenUsp10(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "pen_hovering_air_menu"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method
