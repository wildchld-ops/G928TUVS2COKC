.class public Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;
.super Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;
.source "ToggleAccessibilityServicePreferenceFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field static final sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;


# instance fields
.field private KCountry:Ljava/lang/String;

.field private KLanguage:Ljava/lang/String;

.field private TCountry:Ljava/lang/String;

.field private TLanguage:Ljava/lang/String;

.field private isTalkBack:Z

.field private isUniversalSwitch:Z

.field private mComponentName:Landroid/content/ComponentName;

.field private mDisableExclusiveOptionsFlag:I

.field private mDisableExclusiveOptionsMessage:Ljava/lang/String;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

.field private mShownDialogId:I

.field private talkbackType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    sput-object v0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->TCountry:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->TLanguage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->KCountry:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->KLanguage:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->isTalkBack:Z

    iput-boolean v2, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->isUniversalSwitch:Z

    iput v2, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->talkbackType:I

    new-instance v0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$1;-><init>(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    iput v2, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mDisableExclusiveOptionsFlag:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->updateSwitchBarToggleSwitch()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;)Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->isTalkBack:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->isTalkBack:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->isUniversalSwitch:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->isUniversalSwitch:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->handleConfirmServiceEnabled(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->showDialog(I)V

    return-void
.end method

.method private checkTalkbackTypeByComponentName(Landroid/accessibilityservice/AccessibilityServiceInfo;)I
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    const v5, 0x7f0a0940

    new-array v6, v10, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    const-string v2, "com.samsung.android.app.talkback.TalkBackService"

    const-string v3, "com.google.android.marvin.talkback.TalkBackService"

    const-string v4, "com.samsung.android.universalswitch.SwitchControlService"

    const-string v5, "com.samsung.android.app.talkback.TalkBackService"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iput v9, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->talkbackType:I

    :goto_0
    iget v5, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->talkbackType:I

    return v5

    :cond_0
    const-string v5, "com.google.android.marvin.talkback.TalkBackService"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iput v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->talkbackType:I

    goto :goto_0

    :cond_1
    const-string v5, "com.samsung.android.universalswitch.SwitchControlService"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "\uc720\ub2c8\ubc84\uc15c \uc2a4\uc704\uce58"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    const/4 v5, 0x2

    iput v5, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->talkbackType:I

    goto :goto_0

    :cond_3
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->talkbackType:I

    goto :goto_0
.end method

.method private createConfirmCredentialReasonMessage()Ljava/lang/String;
    .locals 5

    const v0, 0x7f0a0a22

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getAccessibilityServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :sswitch_0
    const v0, 0x7f0a0a20

    goto :goto_0

    :sswitch_1
    const v0, 0x7f0a0a21

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
    .end sparse-switch
.end method

.method private createEnableDialogContentView(Landroid/accessibilityservice/AccessibilityServiceInfo;)Landroid/view/View;
    .locals 24

    const-string v19, "layout_inflater"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    const v19, 0x7f0400a4

    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    const v19, 0x7f10018e

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncrypted()Z

    move-result v3

    const-string v19, "ToggleAccessibilityServicePreferenceFragment"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "createEnableDialogContentView and isDeviceEncrypted : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v3, v0, :cond_2

    const v19, 0x7f0a0a1e

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    const v19, 0x7f10018f

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v19, 0x7f0a0a1d

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/android/settings/Utils;->isLocaleRTL()Z

    move-result v19

    if-eqz v19, :cond_1

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "\u200f"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_1
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v19, 0x7f100190

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    const v19, 0x1090034

    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    const v19, 0x1020342

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    const v20, 0x10804ca

    invoke-virtual/range {v19 .. v20}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0900d3

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getColor(I)I

    move-result v19

    sget-object v20, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    const v19, 0x1020346

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->setCapabilitiesText(Landroid/widget/TextView;Z)V

    const v19, 0x7f0a0a23

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v19, 0x1020347

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v12, v1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->setCapabilitiesText(Landroid/widget/TextView;Z)V

    invoke-virtual/range {p1 .. p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v19

    const v20, 0x7f0a09bb

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    const v19, 0x7f0a0a25

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilityInfos()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v9, :cond_4

    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;

    const v19, 0x1090034

    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    const v19, 0x1020342

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    const v20, 0x10804ca

    invoke-virtual/range {v19 .. v20}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0900d3

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getColor(I)I

    move-result v19

    sget-object v20, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    const v19, 0x1020346

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->setCapabilitiesText(Landroid/widget/TextView;Z)V

    iget v0, v8, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;->titleResId:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v19, 0x1020347

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v12, v1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->setCapabilitiesText(Landroid/widget/TextView;Z)V

    iget v0, v8, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;->descResId:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2

    :cond_2
    if-nez v3, :cond_0

    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_3
    const v19, 0x7f0a0a24

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_4
    return-object v11
.end method

.method private getAccessibilityServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;
    .locals 7

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    :try_start_0
    iget-object v5, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    :goto_1
    return-object v2

    :catch_0
    move-exception v5

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private handleConfirmServiceEnabled(Z)V
    .locals 3

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->onCheckingstatus(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p1}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "checked"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method private setCapabilitiesText(Landroid/widget/TextView;Z)V
    .locals 4

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const-string v1, "sec-roboto-light"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    :goto_0
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01bf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    const-string v1, "sec-roboto-light"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private updateSwitchBarToggleSwitch()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enabled_accessibility_services"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, v0}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncrypted()Z

    move-result v0

    if-ne p1, v4, :cond_0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    invoke-direct {p0, v4}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->handleConfirmServiceEnabled(Z)V

    const-string v1, "ToggleAccessibilityServicePreferenceFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult OK and isDeviceEncrypted checked : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v0, v4, :cond_0

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->clearEncryptionPassword()V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "require_password_to_decrypt"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v5}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->handleConfirmServiceEnabled(Z)V

    goto :goto_0
.end method

.method public onCheckingstatus(Z)Z
    .locals 10

    const/4 v9, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    :try_start_0
    iget-object v7, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    if-nez v7, :cond_0

    const/4 v7, 0x4

    invoke-virtual {p0, v7}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->showDialog(I)V

    :goto_0
    return v5

    :cond_0
    iget-object v7, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mTtsEngine:Landroid/speech/tts/TtsEngines;

    iget-object v8, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v8}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/speech/tts/TtsEngines;->getLocalePrefForEngine(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->TCountry:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mTtsEngine:Landroid/speech/tts/TtsEngines;

    iget-object v8, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v8}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/speech/tts/TtsEngines;->getLocalePrefForEngine(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->TLanguage:Ljava/lang/String;

    iget-object v7, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->KCountry:Ljava/lang/String;

    iget-object v7, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->KLanguage:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getAccessibilityServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v3

    if-nez v3, :cond_1

    move v5, v6

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    :cond_1
    invoke-direct {p0, v3}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->checkTalkbackTypeByComponentName(Landroid/accessibilityservice/AccessibilityServiceInfo;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget v8, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->talkbackType:I

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->isTalkBackExclusiveOptionEnabled(Landroid/content/Context;I)Landroid/os/Bundle;

    move-result-object v0

    const-string v7, "is_enabled"

    invoke-virtual {v0, v7, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v7, "dialog_content"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mDisableExclusiveOptionsMessage:Ljava/lang/String;

    const-string v7, "option_flag"

    invoke-virtual {v0, v7, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mDisableExclusiveOptionsFlag:I

    if-eqz v4, :cond_2

    const/4 v6, 0x6

    invoke-virtual {p0, v6}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->showDialog(I)V

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v8, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v7

    if-gez v7, :cond_3

    const/4 v6, 0x5

    invoke-virtual {p0, v6}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->showDialog(I)V

    goto :goto_0

    :cond_3
    iget-object v7, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->TCountry:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->KCountry:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->TLanguage:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->KLanguage:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    :cond_4
    invoke-virtual {p0, v9}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->showDialog(I)V

    goto/16 :goto_0

    :cond_5
    move v5, v6

    goto/16 :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13

    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncrypted()Z

    move-result v0

    const-string v10, "ToggleAccessibilityServicePreferenceFragment"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onClick isDeviceEncrypted : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    packed-switch p2, :pswitch_data_0

    new-instance v10, Ljava/lang/IllegalArgumentException;

    invoke-direct {v10}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v10

    :pswitch_0
    iget v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_0

    iget v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_4

    :cond_0
    iget v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    const/4 v10, 0x1

    if-ne v0, v10, :cond_2

    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->createConfirmCredentialReasonMessage()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    invoke-static {v8, v10}, Lcom/android/settings/ConfirmDeviceCredentialActivity;->createIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v7

    const/4 v10, 0x1

    invoke-virtual {p0, v7, v10}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-nez v0, :cond_1

    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->handleConfirmServiceEnabled(Z)V

    goto :goto_0

    :cond_3
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->handleConfirmServiceEnabled(Z)V

    goto :goto_0

    :cond_4
    iget v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_7

    iget v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_5

    const/4 v2, 0x1

    :goto_1
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v10, 0x3

    invoke-static {v4, v10}, Lcom/android/settings/Utils;->SetAirViewMasterValue(Landroid/content/Context;I)V

    :goto_2
    new-instance v5, Landroid/content/Intent;

    const-string v10, "com.sec.gesture.FINGER_AIR_VIEW_SETTINGS_CHANGED"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v10, "isEnable"

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v10, v5, v11}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "multi_window_enabled"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v10, v2}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "checked"

    invoke-virtual {v10, v11, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v10, v2}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "pen_hovering"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "finger_air_view"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "finger_air_view_highlight"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_7
    iget v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    const/4 v11, 0x6

    if-ne v10, v11, :cond_c

    iget v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    const/4 v11, 0x6

    if-ne v10, v11, :cond_8

    const/4 v2, 0x1

    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v11, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v10

    if-gez v10, :cond_9

    iget v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->talkbackType:I

    const/4 v11, 0x2

    if-eq v10, v11, :cond_9

    const/4 v10, 0x5

    invoke-virtual {p0, v10}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->showDialog(I)V

    goto/16 :goto_0

    :cond_8
    const/4 v2, 0x0

    goto :goto_3

    :cond_9
    iget-object v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->TCountry:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->KCountry:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->TLanguage:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->KLanguage:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    :cond_a
    iget v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->talkbackType:I

    const/4 v11, 0x2

    if-eq v10, v11, :cond_b

    const/4 v10, 0x4

    invoke-virtual {p0, v10}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->showDialog(I)V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    iget v11, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mDisableExclusiveOptionsFlag:I

    invoke-static {v10, v11}, Lcom/android/settings/Utils;->turnOffTalkBackExclusiveOptions(Landroid/content/Context;I)V

    iget-object v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v10, v2}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "checked"

    invoke-virtual {v10, v11, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v10, v2}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_c
    iget v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    const/4 v11, 0x4

    if-ne v10, v11, :cond_e

    iget v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    const/4 v11, 0x4

    if-ne v10, v11, :cond_d

    const/4 v2, 0x1

    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    iget v11, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mDisableExclusiveOptionsFlag:I

    invoke-static {v10, v11}, Lcom/android/settings/Utils;->turnOffTalkBackExclusiveOptions(Landroid/content/Context;I)V

    iget-object v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v10, v2}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "checked"

    invoke-virtual {v10, v11, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v10, v2}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_d
    const/4 v2, 0x0

    goto :goto_4

    :cond_e
    iget v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    const/4 v11, 0x5

    if-ne v10, v11, :cond_10

    iget v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    const/4 v11, 0x5

    if-ne v10, v11, :cond_f

    const/4 v2, 0x1

    :goto_5
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    iget v11, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mDisableExclusiveOptionsFlag:I

    invoke-static {v10, v11}, Lcom/android/settings/Utils;->turnOffTalkBackExclusiveOptions(Landroid/content/Context;I)V

    iget-object v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mTtsEngine:Landroid/speech/tts/TtsEngines;

    iget-object v11, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v11}, Landroid/speech/tts/TextToSpeech;->getDefaultEngine()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v10, v11, v12}, Landroid/speech/tts/TtsEngines;->updateLocalePrefForEngine(Ljava/lang/String;Ljava/util/Locale;)V

    iget-object v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v10, v2}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "checked"

    invoke-virtual {v10, v11, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v10, v2}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_f
    const/4 v2, 0x0

    goto :goto_5

    :cond_10
    iget v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    const/4 v11, 0x7

    if-ne v10, v11, :cond_1

    const-string v1, "com.samsung.android.universalswitch.preferencesettings.ADDSWITCH"

    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v9}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->startActivity(Landroid/content/Intent;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto/16 :goto_0

    :pswitch_1
    iget v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    const/4 v11, 0x4

    if-eq v10, v11, :cond_11

    iget v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    const/4 v11, 0x5

    if-ne v10, v11, :cond_1

    :cond_11
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->handleConfirmServiceEnabled(Z)V

    goto/16 :goto_0

    :pswitch_2
    iget v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_12

    iget v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    const/4 v11, 0x2

    if-eq v10, v11, :cond_12

    iget v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    const/4 v11, 0x7

    if-ne v10, v11, :cond_14

    :cond_12
    iget v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_13

    iget-object v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "checked"

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    const/4 v11, 0x1

    invoke-virtual {p0, v10, v11}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_13
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->handleConfirmServiceEnabled(Z)V

    goto/16 :goto_0

    :cond_14
    iget v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    const/4 v11, 0x4

    if-eq v10, v11, :cond_15

    iget v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    const/4 v11, 0x5

    if-ne v10, v11, :cond_1

    :cond_15
    iget v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    const/4 v11, 0x4

    if-eq v10, v11, :cond_16

    iget v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    const/4 v11, 0x5

    if-ne v10, v11, :cond_17

    :cond_16
    const/4 v2, 0x1

    :goto_6
    new-instance v6, Landroid/content/Intent;

    const-string v10, "com.android.settings.TTS_SETTINGS"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->startActivity(Landroid/content/Intent;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto/16 :goto_0

    :cond_17
    const/4 v2, 0x0

    goto :goto_6

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 16

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance v10, Ljava/lang/IllegalArgumentException;

    invoke-direct {v10}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v10

    :pswitch_0
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getAccessibilityServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v4

    if-nez v4, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    const v10, 0x7f0a0a1c

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    aput-object v13, v11, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->createEnableDialogContentView(Landroid/accessibilityservice/AccessibilityServiceInfo;)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f0a08b9

    move-object/from16 v0, p0

    invoke-virtual {v10, v11, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const/high16 v11, 0x1040000

    move-object/from16 v0, p0

    invoke-virtual {v10, v11, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    const v10, 0x7f0a08db

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {v2, v9}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {v2}, Landroid/app/AlertDialog;->create()V

    const/4 v10, -0x1

    invoke-virtual {v2, v10}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setFilterTouchesWhenObscured(Z)V

    goto :goto_0

    :pswitch_1
    const/4 v10, 0x2

    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getAccessibilityServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v4

    if-nez v4, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v11, 0x7f0a0a26

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {v4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v14

    aput-object v14, v12, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f0a0a27

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {v4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v14

    aput-object v14, v12, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f0a0e5e

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v10, v11, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const/high16 v11, 0x1040000

    move-object/from16 v0, p0

    invoke-virtual {v10, v11, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_2
    const/4 v10, 0x3

    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    const v10, 0x7f0a0941

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v10, 0x7f0a0942

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_1
    const/4 v10, 0x3

    move/from16 v0, p1

    if-ne v0, v10, :cond_d

    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f0a0cc2

    move-object/from16 v0, p0

    invoke-virtual {v10, v11, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const/high16 v11, 0x1040000

    move-object/from16 v0, p0

    invoke-virtual {v10, v11, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_3
    const/4 v10, 0x4

    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->talkbackType:I

    if-nez v10, :cond_4

    const v10, 0x7f0a0945

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v10, 0x7f0a0947

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    :cond_3
    :goto_2
    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const/high16 v11, 0x1040000

    move-object/from16 v0, p0

    invoke-virtual {v10, v11, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f0a080f

    move-object/from16 v0, p0

    invoke-virtual {v10, v11, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f0a08b9

    move-object/from16 v0, p0

    invoke-virtual {v10, v11, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->talkbackType:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_5

    const v10, 0x7f0a1019

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const v13, 0x7f0a09bc

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const v10, 0x7f0a0947

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_5
    const v10, 0x7f0a0943

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v10, 0x7f0a0947

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getAccessibilityServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v4

    if-nez v4, :cond_6

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_6
    const v10, 0x7f0a0940

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    aput-object v13, v11, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "Universal switch"

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->talkbackType:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_3

    invoke-virtual {v5, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    const v10, 0x7f0a1019

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const v13, 0x7f0a09bc

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const v10, 0x7f0a094b

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const v13, 0x7f0a09bc

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->TLanguage:Ljava/lang/String;

    aput-object v13, v11, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_2

    :pswitch_4
    const/4 v10, 0x5

    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    const v10, 0x7f0a0948

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->talkbackType:I

    if-nez v10, :cond_8

    const v10, 0x7f0a0945

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v10, 0x7f0a094a

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v3, v11, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :cond_7
    :goto_3
    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const/high16 v11, 0x1040000

    move-object/from16 v0, p0

    invoke-virtual {v10, v11, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f0a080f

    move-object/from16 v0, p0

    invoke-virtual {v10, v11, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f0a08b9

    move-object/from16 v0, p0

    invoke-virtual {v10, v11, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->talkbackType:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_9

    const v10, 0x7f0a1019

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const v13, 0x7f0a09bc

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const v10, 0x7f0a094b

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const v13, 0x7f0a09bc

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object v3, v11, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_9
    const v10, 0x7f0a0943

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v10, 0x7f0a0949

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v3, v11, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getAccessibilityServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v4

    if-nez v4, :cond_a

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_a
    const v10, 0x7f0a0940

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    aput-object v13, v11, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "Universal switch"

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->talkbackType:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_7

    invoke-virtual {v5, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const v10, 0x7f0a1019

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const v13, 0x7f0a09bc

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const v10, 0x7f0a094b

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const v13, 0x7f0a09bc

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object v3, v11, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    :pswitch_5
    const/4 v10, 0x6

    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getAccessibilityServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v4

    if-nez v4, :cond_b

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->talkbackType:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_c

    const v10, 0x7f0a1019

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    aput-object v13, v11, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    :goto_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mDisableExclusiveOptionsMessage:Ljava/lang/String;

    goto/16 :goto_1

    :cond_c
    const v10, 0x7f0a0940

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    aput-object v13, v11, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    :pswitch_6
    const/4 v10, 0x7

    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    const v10, 0x7f0a1526

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v10, 0x7f0a1527

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_d
    const/4 v10, 0x6

    move/from16 v0, p1

    if-ne v0, v10, :cond_e

    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f0a08b9

    move-object/from16 v0, p0

    invoke-virtual {v10, v11, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const/high16 v11, 0x1040000

    move-object/from16 v0, p0

    invoke-virtual {v10, v11, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto/16 :goto_0

    :cond_e
    const/4 v10, 0x7

    move/from16 v0, p1

    if-ne v0, v10, :cond_f

    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f0a1529

    move-object/from16 v0, p0

    invoke-virtual {v10, v11, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f0a1528

    move-object/from16 v0, p0

    invoke-virtual {v10, v11, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto/16 :goto_0

    :cond_f
    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x104000a

    move-object/from16 v0, p0

    invoke-virtual {v10, v11, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    :cond_0
    iput-object v1, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    return-void
.end method

.method protected onInstallSwitchBarToggleSwitch()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onInstallSwitchBarToggleSwitch()V

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    new-instance v1, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$2;-><init>(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/SettingsContentObserver;->unregister(Landroid/content/ContentResolver;)V

    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceToggled(Ljava/lang/String;Z)V
    .locals 14

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings/accessibility/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v11

    if-ne v4, v11, :cond_0

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    :cond_0
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v10

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-interface {v4, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :cond_1
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0x3a

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-interface {v4, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v9, Lcom/android/settings/accessibility/AccessibilitySettings;->sInstalledServices:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    invoke-interface {v9, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_5

    add-int/lit8 v11, v6, -0x1

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_5
    const/4 v7, 0x0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "enabled_accessibility_services"

    invoke-static {v11, v12, v7}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    if-eqz v7, :cond_7

    sget-object v1, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v1, v7}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_6

    const/4 v0, 0x1

    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "accessibility_enabled"

    if-eqz v0, :cond_9

    const/4 v11, 0x1

    :goto_2
    invoke-static {v12, v13, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-nez v0, :cond_8

    const-string v11, "ToggleAccessibilityServicePreferenceFragment"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "STOP package : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "ToggleAccessibilityServicePreferenceFragment"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "STOP class   : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v13}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/settings/accessibility/AccessibilityUtils;->getServiceTaskName(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/settings/accessibility/AccessibilityUtils;->forceStopServiceIfNeeded(Landroid/content/Context;Ljava/lang/String;)V

    const-string v11, "ToggleAccessibilityServicePreferenceFragment"

    const-string v12, "force stop service"

    invoke-static {v11, v12}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_3
    return-void

    :cond_9
    const/4 v11, 0x0

    goto :goto_2

    :cond_a
    const-string v11, "ToggleAccessibilityServicePreferenceFragment"

    const-string v12, "stop service normally"

    invoke-static {v11, v12}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method protected onProcessArguments(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onProcessArguments(Landroid/os/Bundle;)V

    const-string v3, "settings_title"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "settings_component_name"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iput-object v2, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mSettingsTitle:Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mSettingsIntent:Landroid/content/Intent;

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->setHasOptionsMenu(Z)V

    :cond_0
    const-string v3, "component_name"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    iput-object v3, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    return-void
.end method

.method public onResume()V
    .locals 6

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/accessibility/SettingsContentObserver;->register(Landroid/content/ContentResolver;)V

    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->updateSwitchBarToggleSwitch()V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, ":android:show_fragment"

    const-class v4, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onResume()V

    :try_start_0
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->isAccessibilityServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getAccessibilityServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->isAccessibilityServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    goto :goto_0
.end method
