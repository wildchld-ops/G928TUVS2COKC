.class public Lcom/android/settings/NewOneHandOperationSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "NewOneHandOperationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private assistantMenuEnabled:Z

.field private directAccessEnabled:Z

.field private hoverzoomEnabled:Z

.field private mOneHandedInput:Landroid/preference/SwitchPreference;

.field private mPointArea:Landroid/widget/LinearLayout;

.field private mReduceScreenSize:Landroid/preference/SwitchPreference;

.field private mViewPager:Lcom/android/settings/WrapContentHeightViewPager;

.field private mViewPagerAdapter:Lcom/android/settings/OneHandViewPagerAdapter;

.field private magnificationGesturesEnabled:Z

.field private magnifierWindowEnabled:Z

.field private sTalkbackEnabled:Z

.field private talkbackEnabled:Z

.field private universalSwitchEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/NewOneHandOperationSettings$9;

    invoke-direct {v0}, Lcom/android/settings/NewOneHandOperationSettings$9;-><init>()V

    sput-object v0, Lcom/android/settings/NewOneHandOperationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    iput-boolean v0, p0, Lcom/android/settings/NewOneHandOperationSettings;->sTalkbackEnabled:Z

    iput-boolean v0, p0, Lcom/android/settings/NewOneHandOperationSettings;->talkbackEnabled:Z

    iput-boolean v0, p0, Lcom/android/settings/NewOneHandOperationSettings;->hoverzoomEnabled:Z

    iput-boolean v0, p0, Lcom/android/settings/NewOneHandOperationSettings;->magnificationGesturesEnabled:Z

    iput-boolean v0, p0, Lcom/android/settings/NewOneHandOperationSettings;->magnifierWindowEnabled:Z

    iput-boolean v0, p0, Lcom/android/settings/NewOneHandOperationSettings;->universalSwitchEnabled:Z

    iput-boolean v0, p0, Lcom/android/settings/NewOneHandOperationSettings;->assistantMenuEnabled:Z

    iput-boolean v0, p0, Lcom/android/settings/NewOneHandOperationSettings;->directAccessEnabled:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/NewOneHandOperationSettings;)Lcom/android/settings/WrapContentHeightViewPager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/NewOneHandOperationSettings;->mViewPager:Lcom/android/settings/WrapContentHeightViewPager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/NewOneHandOperationSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/NewOneHandOperationSettings;->mReduceScreenSize:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/NewOneHandOperationSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/NewOneHandOperationSettings;->reduceSizeBroadcast(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/NewOneHandOperationSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/NewOneHandOperationSettings;->mOneHandedInput:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/NewOneHandOperationSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/NewOneHandOperationSettings;->oneHandedInputBroadcast(I)V

    return-void
.end method

.method private oneHandedInputBroadcast(I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.ONEHAND_INPUT_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "is_enabled"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private oneHandedInputDisablePopup()V
    .locals 8

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0a1070

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0a0e7b

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v0, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0a0924

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0a08bf

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/settings/NewOneHandOperationSettings$8;

    invoke-direct {v5, p0}, Lcom/android/settings/NewOneHandOperationSettings$8;-><init>(Lcom/android/settings/NewOneHandOperationSettings;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    new-instance v5, Lcom/android/settings/NewOneHandOperationSettings$7;

    invoke-direct {v5, p0}, Lcom/android/settings/NewOneHandOperationSettings$7;-><init>(Lcom/android/settings/NewOneHandOperationSettings;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/settings/NewOneHandOperationSettings$6;

    invoke-direct {v4, p0}, Lcom/android/settings/NewOneHandOperationSettings$6;-><init>(Lcom/android/settings/NewOneHandOperationSettings;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private reduceSizeBroadcast(I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.ONEHAND_REDUCE_SCREEN_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "is_enabled"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private reduceSizeDisablePopup()V
    .locals 8

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0a0a02

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0a0e7b

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v0, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0a0924

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.samsung.android.app.talkback"

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0a09bb

    invoke-virtual {p0, v4}, Lcom/android/settings/NewOneHandOperationSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.google.android.marvin.talkback"

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0a09ba

    invoke-virtual {p0, v4}, Lcom/android/settings/NewOneHandOperationSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0a08bf

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.sec.feature.overlaymagnifier"

    invoke-static {v3, v4}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0a08c4

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.samsung.android.universalswitch"

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUserKnoxMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0a09bc

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.samsung.android.app.assistantmenu"

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0a09e9

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0a09b6

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/settings/NewOneHandOperationSettings$5;

    invoke-direct {v5, p0}, Lcom/android/settings/NewOneHandOperationSettings$5;-><init>(Lcom/android/settings/NewOneHandOperationSettings;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    new-instance v5, Lcom/android/settings/NewOneHandOperationSettings$4;

    invoke-direct {v5, p0}, Lcom/android/settings/NewOneHandOperationSettings$4;-><init>(Lcom/android/settings/NewOneHandOperationSettings;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/settings/NewOneHandOperationSettings$3;

    invoke-direct {v4, p0}, Lcom/android/settings/NewOneHandOperationSettings$3;-><init>(Lcom/android/settings/NewOneHandOperationSettings;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public changeColor(I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/NewOneHandOperationSettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/NewOneHandOperationSettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f02005f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/NewOneHandOperationSettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f020060

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 11

    const/16 v10, 0x8

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    const v6, 0x7f0400c3

    invoke-virtual {v4, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v6, 0x7f100070

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/settings/WrapContentHeightViewPager;

    iput-object v6, p0, Lcom/android/settings/NewOneHandOperationSettings;->mViewPager:Lcom/android/settings/WrapContentHeightViewPager;

    new-instance v6, Lcom/android/settings/OneHandViewPagerAdapter;

    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/settings/OneHandViewPagerAdapter;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/settings/NewOneHandOperationSettings;->mViewPagerAdapter:Lcom/android/settings/OneHandViewPagerAdapter;

    iget-object v6, p0, Lcom/android/settings/NewOneHandOperationSettings;->mViewPager:Lcom/android/settings/WrapContentHeightViewPager;

    iget-object v7, p0, Lcom/android/settings/NewOneHandOperationSettings;->mViewPagerAdapter:Lcom/android/settings/OneHandViewPagerAdapter;

    invoke-virtual {v6, v7}, Lcom/android/settings/WrapContentHeightViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v6, p0, Lcom/android/settings/NewOneHandOperationSettings;->mViewPager:Lcom/android/settings/WrapContentHeightViewPager;

    iget-object v7, p0, Lcom/android/settings/NewOneHandOperationSettings;->mViewPagerAdapter:Lcom/android/settings/OneHandViewPagerAdapter;

    invoke-virtual {v7}, Lcom/android/settings/OneHandViewPagerAdapter;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/settings/WrapContentHeightViewPager;->setOffscreenPageLimit(I)V

    iget-object v6, p0, Lcom/android/settings/NewOneHandOperationSettings;->mViewPager:Lcom/android/settings/WrapContentHeightViewPager;

    new-instance v7, Lcom/android/settings/NewOneHandOperationSettings$1;

    invoke-direct {v7, p0}, Lcom/android/settings/NewOneHandOperationSettings$1;-><init>(Lcom/android/settings/NewOneHandOperationSettings;)V

    invoke-virtual {v6, v7}, Lcom/android/settings/WrapContentHeightViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    const v6, 0x7f1001f0

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/settings/NewOneHandOperationSettings;->mPointArea:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    :goto_0
    iget-object v6, p0, Lcom/android/settings/NewOneHandOperationSettings;->mViewPagerAdapter:Lcom/android/settings/OneHandViewPagerAdapter;

    invoke-virtual {v6}, Lcom/android/settings/OneHandViewPagerAdapter;->getCount()I

    move-result v6

    if-ge v3, v6, :cond_0

    move v0, v3

    const v6, 0x7f040040

    invoke-virtual {v4, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const-string v6, "\u00a0"

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v6, Lcom/android/settings/NewOneHandOperationSettings$2;

    invoke-direct {v6, p0, v0}, Lcom/android/settings/NewOneHandOperationSettings$2;-><init>(Lcom/android/settings/NewOneHandOperationSettings;I)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/android/settings/NewOneHandOperationSettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lcom/android/settings/NewOneHandOperationSettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    if-lez v6, :cond_1

    iget-object v6, p0, Lcom/android/settings/NewOneHandOperationSettings;->mPointArea:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const v7, 0x7f020060

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    iget-object v6, p0, Lcom/android/settings/NewOneHandOperationSettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    if-ne v6, v8, :cond_2

    iget-object v6, p0, Lcom/android/settings/NewOneHandOperationSettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_3

    const v6, 0x7f10005a

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6, v2, v9, v8}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v1, p0, Lcom/android/settings/NewOneHandOperationSettings;->mViewPager:Lcom/android/settings/WrapContentHeightViewPager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/NewOneHandOperationSettings;->mViewPager:Lcom/android/settings/WrapContentHeightViewPager;

    invoke-virtual {v1}, Lcom/android/settings/WrapContentHeightViewPager;->getCurrentItem()I

    move-result v0

    const-string v1, "OneHandOperationSettings"

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

    iget-object v1, p0, Lcom/android/settings/NewOneHandOperationSettings;->mViewPager:Lcom/android/settings/WrapContentHeightViewPager;

    iget-object v2, p0, Lcom/android/settings/NewOneHandOperationSettings;->mViewPagerAdapter:Lcom/android/settings/OneHandViewPagerAdapter;

    invoke-virtual {v1, v2}, Lcom/android/settings/WrapContentHeightViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v1, p0, Lcom/android/settings/NewOneHandOperationSettings;->mViewPager:Lcom/android/settings/WrapContentHeightViewPager;

    iget-object v2, p0, Lcom/android/settings/NewOneHandOperationSettings;->mViewPagerAdapter:Lcom/android/settings/OneHandViewPagerAdapter;

    invoke-virtual {v2}, Lcom/android/settings/OneHandViewPagerAdapter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/WrapContentHeightViewPager;->setOffscreenPageLimit(I)V

    iget-object v1, p0, Lcom/android/settings/NewOneHandOperationSettings;->mViewPager:Lcom/android/settings/WrapContentHeightViewPager;

    invoke-virtual {v1, v0}, Lcom/android/settings/WrapContentHeightViewPager;->setCurrentItem(I)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f070064

    invoke-virtual {p0, v1}, Lcom/android/settings/NewOneHandOperationSettings;->addPreferencesFromResource(I)V

    const-string v1, "reduce_screen_size"

    invoke-virtual {p0, v1}, Lcom/android/settings/NewOneHandOperationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/NewOneHandOperationSettings;->mReduceScreenSize:Landroid/preference/SwitchPreference;

    const-string v1, "one_handed_input"

    invoke-virtual {p0, v1}, Lcom/android/settings/NewOneHandOperationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/NewOneHandOperationSettings;->mOneHandedInput:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0a1072

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0a1073

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0a1074

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0a1075

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/NewOneHandOperationSettings;->mReduceScreenSize:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/android/settings/NewOneHandOperationSettings;->mReduceScreenSize:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v1, p0, Lcom/android/settings/NewOneHandOperationSettings;->mOneHandedInput:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/android/settings/NewOneHandOperationSettings;->mOneHandedInput:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v1, p0, Lcom/android/settings/NewOneHandOperationSettings;->mOneHandedInput:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/NewOneHandOperationSettings;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    const v2, 0x7f0a0e5b

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.helphub.HELP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "helphub:section"

    const-string v3, "one_handed_operation"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/NewOneHandOperationSettings;->startActivity(Landroid/content/Intent;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 12

    const v11, 0x7f0a0eba

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-object v4, p0, Lcom/android/settings/NewOneHandOperationSettings;->mViewPagerAdapter:Lcom/android/settings/OneHandViewPagerAdapter;

    invoke-virtual {v4, v1}, Lcom/android/settings/OneHandViewPagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_0

    iget-object v4, p0, Lcom/android/settings/NewOneHandOperationSettings;->mViewPager:Lcom/android/settings/WrapContentHeightViewPager;

    invoke-virtual {v4, v2}, Lcom/android/settings/WrapContentHeightViewPager;->setCurrentItem(I)V

    :cond_0
    iget-object v4, p0, Lcom/android/settings/NewOneHandOperationSettings;->mReduceScreenSize:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    if-eqz v3, :cond_d

    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isStalkBackEnabled(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/NewOneHandOperationSettings;->sTalkbackEnabled:Z

    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isGEDTalkBackEnabled(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/NewOneHandOperationSettings;->talkbackEnabled:Z

    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v7, "com.sec.feature.overlaymagnifier"

    invoke-static {v4, v7}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "accessibility_magnifier"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_2

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/android/settings/NewOneHandOperationSettings;->hoverzoomEnabled:Z

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "accessibility_display_magnification_enabled"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_3

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lcom/android/settings/NewOneHandOperationSettings;->magnificationGesturesEnabled:Z

    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "finger_magnifier"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_4

    move v4, v5

    :goto_2
    iput-boolean v4, p0, Lcom/android/settings/NewOneHandOperationSettings;->magnifierWindowEnabled:Z

    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isUniversalSwitchEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUserKnoxMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v5

    :goto_3
    iput-boolean v4, p0, Lcom/android/settings/NewOneHandOperationSettings;->universalSwitchEnabled:Z

    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "assistant_menu"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_6

    move v4, v5

    :goto_4
    iput-boolean v4, p0, Lcom/android/settings/NewOneHandOperationSettings;->assistantMenuEnabled:Z

    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "direct_access"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_7

    move v4, v5

    :goto_5
    iput-boolean v4, p0, Lcom/android/settings/NewOneHandOperationSettings;->directAccessEnabled:Z

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v4

    const-string v7, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v4, v7}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v4, v0, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-ne v4, v5, :cond_9

    iget-object v7, p0, Lcom/android/settings/NewOneHandOperationSettings;->mReduceScreenSize:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "any_screen_enabled"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_8

    move v4, v5

    :goto_6
    invoke-virtual {v7, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    new-array v8, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0a02

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-virtual {v7, v11, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :goto_7
    return v6

    :cond_2
    move v4, v6

    goto/16 :goto_0

    :cond_3
    move v4, v6

    goto/16 :goto_1

    :cond_4
    move v4, v6

    goto/16 :goto_2

    :cond_5
    move v4, v6

    goto :goto_3

    :cond_6
    move v4, v6

    goto :goto_4

    :cond_7
    move v4, v6

    goto :goto_5

    :cond_8
    move v4, v6

    goto :goto_6

    :cond_9
    iget-boolean v4, p0, Lcom/android/settings/NewOneHandOperationSettings;->sTalkbackEnabled:Z

    if-nez v4, :cond_a

    iget-boolean v4, p0, Lcom/android/settings/NewOneHandOperationSettings;->talkbackEnabled:Z

    if-nez v4, :cond_a

    iget-boolean v4, p0, Lcom/android/settings/NewOneHandOperationSettings;->hoverzoomEnabled:Z

    if-nez v4, :cond_a

    iget-boolean v4, p0, Lcom/android/settings/NewOneHandOperationSettings;->magnificationGesturesEnabled:Z

    if-nez v4, :cond_a

    iget-boolean v4, p0, Lcom/android/settings/NewOneHandOperationSettings;->magnifierWindowEnabled:Z

    if-nez v4, :cond_a

    iget-boolean v4, p0, Lcom/android/settings/NewOneHandOperationSettings;->universalSwitchEnabled:Z

    if-nez v4, :cond_a

    iget-boolean v4, p0, Lcom/android/settings/NewOneHandOperationSettings;->assistantMenuEnabled:Z

    if-nez v4, :cond_a

    iget-boolean v4, p0, Lcom/android/settings/NewOneHandOperationSettings;->directAccessEnabled:Z

    if-eqz v4, :cond_c

    :cond_a
    invoke-direct {p0}, Lcom/android/settings/NewOneHandOperationSettings;->reduceSizeDisablePopup()V

    :cond_b
    :goto_8
    move v6, v5

    goto :goto_7

    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "any_screen_enabled"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, v5}, Lcom/android/settings/NewOneHandOperationSettings;->reduceSizeBroadcast(I)V

    goto :goto_8

    :cond_d
    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "any_screen_enabled"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, v6}, Lcom/android/settings/NewOneHandOperationSettings;->reduceSizeBroadcast(I)V

    goto :goto_8

    :cond_e
    iget-object v4, p0, Lcom/android/settings/NewOneHandOperationSettings;->mOneHandedInput:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    if-eqz v3, :cond_13

    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "accessibility_display_magnification_enabled"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_f

    move v4, v5

    :goto_9
    iput-boolean v4, p0, Lcom/android/settings/NewOneHandOperationSettings;->magnificationGesturesEnabled:Z

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v4

    const-string v7, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v4, v7}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v4, v0, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-ne v4, v5, :cond_11

    iget-object v7, p0, Lcom/android/settings/NewOneHandOperationSettings;->mOneHandedInput:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "interactionarea_switch"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_10

    move v4, v5

    :goto_a
    invoke-virtual {v7, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    new-array v8, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a1070

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-virtual {v7, v11, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_7

    :cond_f
    move v4, v6

    goto :goto_9

    :cond_10
    move v4, v6

    goto :goto_a

    :cond_11
    iget-boolean v4, p0, Lcom/android/settings/NewOneHandOperationSettings;->magnificationGesturesEnabled:Z

    if-eqz v4, :cond_12

    invoke-direct {p0}, Lcom/android/settings/NewOneHandOperationSettings;->oneHandedInputDisablePopup()V

    goto/16 :goto_8

    :cond_12
    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "interactionarea_switch"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, v5}, Lcom/android/settings/NewOneHandOperationSettings;->oneHandedInputBroadcast(I)V

    goto/16 :goto_8

    :cond_13
    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "interactionarea_switch"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, v6}, Lcom/android/settings/NewOneHandOperationSettings;->oneHandedInputBroadcast(I)V

    goto/16 :goto_8
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/NewOneHandOperationSettings;->mViewPagerAdapter:Lcom/android/settings/OneHandViewPagerAdapter;

    invoke-virtual {v2, v0}, Lcom/android/settings/OneHandViewPagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/android/settings/NewOneHandOperationSettings;->mViewPager:Lcom/android/settings/WrapContentHeightViewPager;

    invoke-virtual {v2, v1}, Lcom/android/settings/WrapContentHeightViewPager;->setCurrentItem(I)V

    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public onResume()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/NewOneHandOperationSettings;->mReduceScreenSize:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/settings/NewOneHandOperationSettings;->mReduceScreenSize:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "any_screen_enabled"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/NewOneHandOperationSettings;->mOneHandedInput:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/NewOneHandOperationSettings;->mOneHandedInput:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "interactionarea_switch"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method
