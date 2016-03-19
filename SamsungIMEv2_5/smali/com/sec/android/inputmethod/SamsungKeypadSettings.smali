.class public Lcom/sec/android/inputmethod/SamsungKeypadSettings;
.super Landroid/app/Activity;
.source "SamsungKeypadSettings.java"

# interfaces
.implements Lcom/sec/android/inputmethod/SettingsDefaultMenuFragment$OnListSelectedListener;
.implements Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$OnDetailMenuSelected;
.implements Lcom/ime/implement/setting/SettingsSplitRatioController$SettingsSplitRatioListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/inputmethod/SamsungKeypadSettings$onKeyBackPressedListener;
    }
.end annotation


# static fields
.field public static final FRAGMENT_ALL:I = 0x4

.field public static final FRAGMENT_INPUT_LANGUAGES:I = 0x0

.field public static final FRAGMENT_KEY_TAP_FEEDBACK:I = 0x2

.field public static final FRAGMENT_OTHER_SETTINGS:I = 0x3

.field public static final FRAGMENT_SMART_TYPING:I = 0x1

.field private static final KEY_PRESS_MODEL_DB_DIR_EX:Ljava/lang/String; = "KeyPressModelEx"

.field protected static final TAG:Ljava/lang/String; = "SamsungKeypadSettings"


# instance fields
.field private mActionBarSubArrow:Landroid/widget/ImageView;

.field private mActionBarTitle:Landroid/widget/TextView;

.field private mAutoReplacementSettingsFragmentTablet:Lcom/ime/implement/setting/AutoReplacementSettingsFragmentTablet;

.field private mAutoTextSettingsFragmentTablet:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;

.field private mBrowserView:Landroid/view/View;

.field private mCurrentMenu:I

.field private mCustomActionBarView:Landroid/view/View;

.field private mDetailsView:Landroid/view/View;

.field private mInputManager:Lcom/ime/framework/common/InputManager;

.field private mIsTabletMode:Z

.field private mKeyboardHeightSettingsFragmentTablet:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

.field private mKeyboardSwipeSettingsFragmentTablet:Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;

.field private mLanguageItemSettingFragment:Lcom/ime/implement/setting/LanguageItemSettingFragment;

.field private mOnkeyBackPressedListener:Lcom/sec/android/inputmethod/SamsungKeypadSettings$onKeyBackPressedListener;

.field private mPersonalizerSettingsFragmentTablet:Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;

.field private mPrevMenu:I

.field private mRepository:Lcom/ime/framework/repository/Repository;

.field private mSamsungKeypadSettingsFragment:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

.field private mSelectedLanguageItem:Ljava/lang/String;

.field private mSettingsDefaultMenuFragment:Lcom/sec/android/inputmethod/SettingsDefaultMenuFragment;

.field private mSettingsSplitRatioController:Lcom/ime/implement/setting/SettingsSplitRatioController;

.field private mSpellCheckerSettingsFragmentTablet:Lcom/ime/implement/setting/SpellCheckerSettingsFragmentTablet;

.field private mSwiftkeyLanguagesSettingsFragment:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mPrevMenu:I

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mSelectedLanguageItem:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/inputmethod/SamsungKeypadSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->removeKPMExFolder()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/inputmethod/SamsungKeypadSettings;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mCurrentMenu:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/inputmethod/SamsungKeypadSettings;)Lcom/ime/implement/setting/AutoReplacementSettingsFragmentTablet;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mAutoReplacementSettingsFragmentTablet:Lcom/ime/implement/setting/AutoReplacementSettingsFragmentTablet;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/inputmethod/SamsungKeypadSettings;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mActionBarSubArrow:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/inputmethod/SamsungKeypadSettings;)Lcom/ime/implement/setting/SpellCheckerSettingsFragmentTablet;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mSpellCheckerSettingsFragmentTablet:Lcom/ime/implement/setting/SpellCheckerSettingsFragmentTablet;

    return-object v0
.end method

.method private getCurrentSubTitle()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    iget v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mCurrentMenu:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0297

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0298

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d029a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0296

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0028

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0192

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0199

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_8
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d02e5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_9
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0048

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_a
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d02df

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_b
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mSelectedLanguageItem:Ljava/lang/String;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private initSplitBarHandler()V
    .locals 23

    const v1, 0x7f1000b5

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mBrowserView:Landroid/view/View;

    const v1, 0x7f1000bc

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mDetailsView:Landroid/view/View;

    new-instance v1, Lcom/ime/implement/setting/SettingsSplitRatioController;

    const v2, 0x7f1000ba

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v2, 0x7f1000b8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v2, 0x7f1000bd

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v2, 0x7f1000b9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const v2, 0x7f1000b6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const v2, 0x7f1000bb

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const v2, 0x7f1000a1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const v2, 0x7f1000a8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const v2, 0x7f1000a5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const v2, 0x7f1000a3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const v2, 0x7f1000a7

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const v2, 0x7f1000a4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->findViewById(I)Landroid/view/View;

    move-result-object v14

    const v2, 0x7f1000a6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->findViewById(I)Landroid/view/View;

    move-result-object v15

    const v2, 0x7f1000bf

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->findViewById(I)Landroid/view/View;

    move-result-object v16

    const v2, 0x7f1000ab

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->findViewById(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v18

    move-object/from16 v2, p0

    move-object/from16 v19, p0

    invoke-direct/range {v1 .. v19}, Lcom/ime/implement/setting/SettingsSplitRatioController;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/app/ActionBar;Lcom/ime/implement/setting/SettingsSplitRatioController$SettingsSplitRatioListener;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mSettingsSplitRatioController:Lcom/ime/implement/setting/SettingsSplitRatioController;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mSettingsSplitRatioController:Lcom/ime/implement/setting/SettingsSplitRatioController;

    invoke-virtual {v1}, Lcom/ime/implement/setting/SettingsSplitRatioController;->showSplitBar()V

    const v1, 0x7f020724

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    const v1, 0x7f020725

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    const/4 v1, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    const/4 v1, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mBrowserView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    const/4 v1, -0x2

    move-object/from16 v0, v20

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mBrowserView:Landroid/view/View;

    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mBrowserView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mDetailsView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private removeKPMExFolder()V
    .locals 9

    iget-object v6, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "KeyPressModelEx"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v5, 0x0

    :goto_0
    array-length v6, v0

    if-ge v5, v6, :cond_1

    aget-object v4, v0, v5

    const-string v6, "SamsungIME"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dir.getAbsolutePath() + filename : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    const-string v6, "SamsungIME"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[delete]dir.getAbsolutePath() + filename : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private removeKPMExFolderByThread()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/inputmethod/SamsungKeypadSettings$1;

    invoke-direct {v1, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettings$1;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettings;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public clearUserModel()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mPersonalizerSettingsFragmentTablet:Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mPersonalizerSettingsFragmentTablet:Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;

    invoke-virtual {v0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->clearUserModel()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getSwiftkeyVersion()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->resetAddwordListFile()V

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->resetRemovedWordDB()V

    invoke-direct {p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->removeKPMExFolderByThread()V

    :cond_1
    return-void
.end method

.method public deleteLanguages(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mSwiftkeyLanguagesSettingsFragment:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mSwiftkeyLanguagesSettingsFragment:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;

    invoke-virtual {v0, p1}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->onFragmentResult(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public getSplitRatioController()Lcom/ime/implement/setting/SettingsSplitRatioController;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mSettingsSplitRatioController:Lcom/ime/implement/setting/SettingsSplitRatioController;

    return-object v0
.end method

.method public initActionBar()V
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    iget-boolean v2, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mIsTabletMode:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030067

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mCustomActionBarView:Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mCustomActionBarView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mCustomActionBarView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/Toolbar;

    invoke-virtual {v1, v5, v5}, Landroid/widget/Toolbar;->setContentInsetsAbsolute(II)V

    iget-object v2, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mCustomActionBarView:Landroid/view/View;

    const v3, 0x7f1000aa

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mActionBarTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mCustomActionBarView:Landroid/view/View;

    const v3, 0x7f1000a9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mActionBarSubArrow:Landroid/widget/ImageView;

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mOnkeyBackPressedListener:Lcom/sec/android/inputmethod/SamsungKeypadSettings$onKeyBackPressedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mOnkeyBackPressedListener:Lcom/sec/android/inputmethod/SamsungKeypadSettings$onKeyBackPressedListener;

    invoke-interface {v0}, Lcom/sec/android/inputmethod/SamsungKeypadSettings$onKeyBackPressedListener;->onBack()V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mIsTabletMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mSettingsSplitRatioController:Lcom/ime/implement/setting/SettingsSplitRatioController;

    invoke-virtual {v0}, Lcom/ime/implement/setting/SettingsSplitRatioController;->setForceInitSplitBar()V

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mSettingsSplitRatioController:Lcom/ime/implement/setting/SettingsSplitRatioController;

    invoke-virtual {v0}, Lcom/ime/implement/setting/SettingsSplitRatioController;->showSplitBar()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v8, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/ime/framework/common/InputManagerImpl;->getInstance(Landroid/content/Context;)Lcom/ime/framework/common/InputManager;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v5, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mRepository:Lcom/ime/framework/repository/Repository;

    if-nez v5, :cond_0

    invoke-static {}, Lcom/ime/framework/repository/RepositoryImpl;->getInstance()Lcom/ime/framework/repository/Repository;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mRepository:Lcom/ime/framework/repository/Repository;

    :cond_0
    iget-object v5, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v6, "TABLET_MODE"

    invoke-interface {v5, v6, v8}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mIsTabletMode:Z

    iget-boolean v5, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mIsTabletMode:Z

    if-eqz v5, :cond_3

    const v5, 0x7f03006f

    invoke-virtual {p0, v5}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->setContentView(I)V

    new-instance v5, Lcom/sec/android/inputmethod/SettingsDefaultMenuFragment;

    invoke-direct {v5}, Lcom/sec/android/inputmethod/SettingsDefaultMenuFragment;-><init>()V

    iput-object v5, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mSettingsDefaultMenuFragment:Lcom/sec/android/inputmethod/SettingsDefaultMenuFragment;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v5

    if-ge v1, v5, :cond_1

    invoke-virtual {v2}, Landroid/app/FragmentManager;->popBackStack()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v5

    const v6, 0x7f1000b7

    iget-object v7, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mSettingsDefaultMenuFragment:Lcom/sec/android/inputmethod/SettingsDefaultMenuFragment;

    invoke-virtual {v5, v6, v7}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentTransaction;->commit()I

    const/4 v3, 0x0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v5, "MENU"

    invoke-virtual {v0, v5, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v3, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    invoke-direct {v3}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;-><init>()V

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    const v5, 0x7f1000be

    invoke-virtual {v4, v5, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v3, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I

    :cond_2
    iput v8, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mCurrentMenu:I

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->initActionBar()V

    invoke-direct {p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->initSplitBarHandler()V

    :goto_1
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    const v6, 0x7f0d0008

    invoke-virtual {v5, v6}, Landroid/app/ActionBar;->setTitle(I)V

    new-instance v5, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    invoke-direct {v5}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;-><init>()V

    iput-object v5, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mSamsungKeypadSettingsFragment:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v5

    const v6, 0x1020002

    iget-object v7, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mSamsungKeypadSettingsFragment:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    invoke-virtual {v5, v6, v7}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_1
.end method

.method public onDetailMenuSeleted(Landroid/preference/Preference;)V
    .locals 9

    const/4 v6, 0x6

    const/4 v5, 0x5

    const/4 v4, 0x4

    const v8, 0x7f1000be

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v3, :pswitch_data_0

    :goto_1
    const-string v3, "select_language_list_"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0xb

    invoke-virtual {p0, v3}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->setCurrentMenu(I)V

    new-instance v3, Lcom/ime/implement/setting/LanguageItemSettingFragment;

    invoke-direct {v3}, Lcom/ime/implement/setting/LanguageItemSettingFragment;-><init>()V

    iput-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mLanguageItemSettingFragment:Lcom/ime/implement/setting/LanguageItemSettingFragment;

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mLanguageItemSettingFragment:Lcom/ime/implement/setting/LanguageItemSettingFragment;

    invoke-virtual {v2, v8, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mSelectedLanguageItem:Ljava/lang/String;

    const-string v3, "sip_input_language"

    iget-object v4, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mSelectedLanguageItem:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mLanguageItemSettingFragment:Lcom/ime/implement/setting/LanguageItemSettingFragment;

    invoke-virtual {v3, v0}, Lcom/ime/implement/setting/LanguageItemSettingFragment;->setArguments(Landroid/os/Bundle;)V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->rebuildActionBar()V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    return-void

    :sswitch_0
    const-string v7, "select_swiftkey_language_list"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :sswitch_1
    const-string v7, "SETTINGS_DEFAULT_PREDICTION_ON"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :sswitch_2
    const-string v7, "SETTINGS_DEFAULT_AUTO_CORRECTION"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v3, 0x2

    goto :goto_0

    :sswitch_3
    const-string v7, "SETTINGS_DEFAULT_SPELL_CHECKER"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v3, 0x3

    goto :goto_0

    :sswitch_4
    const-string v7, "SETTINGS_AUTOTEXT_PHRASE"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v3, v4

    goto :goto_0

    :sswitch_5
    const-string v7, "settings_keyboard_swipe"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v3, v5

    goto :goto_0

    :sswitch_6
    const-string v7, "keyboard_height"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v3, v6

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {p0, v4}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->setCurrentMenu(I)V

    new-instance v3, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;

    invoke-direct {v3}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;-><init>()V

    iput-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mSwiftkeyLanguagesSettingsFragment:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mSwiftkeyLanguagesSettingsFragment:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;

    invoke-virtual {v2, v8, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p0, v5}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->setCurrentMenu(I)V

    new-instance v3, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;

    invoke-direct {v3}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;-><init>()V

    iput-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mPersonalizerSettingsFragmentTablet:Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mPersonalizerSettingsFragmentTablet:Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;

    invoke-virtual {v2, v8, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p0, v6}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->setCurrentMenu(I)V

    new-instance v3, Lcom/ime/implement/setting/AutoReplacementSettingsFragmentTablet;

    invoke-direct {v3}, Lcom/ime/implement/setting/AutoReplacementSettingsFragmentTablet;-><init>()V

    iput-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mAutoReplacementSettingsFragmentTablet:Lcom/ime/implement/setting/AutoReplacementSettingsFragmentTablet;

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mAutoReplacementSettingsFragmentTablet:Lcom/ime/implement/setting/AutoReplacementSettingsFragmentTablet;

    invoke-virtual {v2, v8, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto/16 :goto_1

    :pswitch_3
    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->setCurrentMenu(I)V

    new-instance v3, Lcom/ime/implement/setting/SpellCheckerSettingsFragmentTablet;

    invoke-direct {v3}, Lcom/ime/implement/setting/SpellCheckerSettingsFragmentTablet;-><init>()V

    iput-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mSpellCheckerSettingsFragmentTablet:Lcom/ime/implement/setting/SpellCheckerSettingsFragmentTablet;

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mSpellCheckerSettingsFragmentTablet:Lcom/ime/implement/setting/SpellCheckerSettingsFragmentTablet;

    invoke-virtual {v2, v8, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto/16 :goto_1

    :pswitch_4
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->setCurrentMenu(I)V

    new-instance v3, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;

    invoke-direct {v3}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;-><init>()V

    iput-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mAutoTextSettingsFragmentTablet:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mAutoTextSettingsFragmentTablet:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;

    invoke-virtual {v2, v8, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto/16 :goto_1

    :pswitch_5
    const/16 v3, 0x9

    invoke-virtual {p0, v3}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->setCurrentMenu(I)V

    new-instance v3, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;

    invoke-direct {v3}, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;-><init>()V

    iput-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mKeyboardSwipeSettingsFragmentTablet:Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mKeyboardSwipeSettingsFragmentTablet:Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;

    invoke-virtual {v2, v8, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto/16 :goto_1

    :pswitch_6
    const/16 v3, 0xa

    invoke-virtual {p0, v3}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->setCurrentMenu(I)V

    new-instance v3, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    invoke-direct {v3}, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;-><init>()V

    iput-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mKeyboardHeightSettingsFragmentTablet:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mKeyboardHeightSettingsFragmentTablet:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    invoke-virtual {v2, v8, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x78655bcb -> :sswitch_0
        -0x4935fa4c -> :sswitch_2
        -0x28e82b82 -> :sswitch_5
        0x1ec5caa4 -> :sswitch_3
        0x2c7742d5 -> :sswitch_1
        0x6b3a387f -> :sswitch_6
        0x722508e0 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onListSelected(I)V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget v4, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mPrevMenu:I

    if-ne p1, v4, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    packed-switch p1, :pswitch_data_0

    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v2}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v4

    if-ge v1, v4, :cond_1

    invoke-virtual {v2}, Landroid/app/FragmentManager;->popBackStack()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :pswitch_0
    invoke-virtual {p0, v5}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->setCurrentMenu(I)V

    const-string v4, "MENU"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0, v6}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->setCurrentMenu(I)V

    const-string v4, "MENU"

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, v7}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->setCurrentMenu(I)V

    const-string v4, "MENU"

    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, v8}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->setCurrentMenu(I)V

    const-string v4, "MENU"

    invoke-virtual {v0, v4, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :cond_1
    new-instance v4, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    invoke-direct {v4}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;-><init>()V

    iput-object v4, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mSamsungKeypadSettingsFragment:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    iget-object v4, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mSamsungKeypadSettingsFragment:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    const v4, 0x7f1000be

    iget-object v5, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mSamsungKeypadSettingsFragment:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    invoke-virtual {v3, v4, v5}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    iget-object v4, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mSamsungKeypadSettingsFragment:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    invoke-virtual {v4, v0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->rebuildActionBar()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onOperation(Lcom/ime/implement/setting/SettingsSplitRatioController$SettingsSplitRatioListener$Operation;)V
    .locals 0

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mIsTabletMode:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mSamsungKeypadSettingsFragment:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->PointingPopup:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mSamsungKeypadSettingsFragment:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->pointingDialog:Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mSamsungKeypadSettingsFragment:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->pointingDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mSamsungKeypadSettingsFragment:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->TracePopup:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mSamsungKeypadSettingsFragment:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->traceDialog:Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mSamsungKeypadSettingsFragment:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->traceDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mSamsungKeypadSettingsFragment:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->TracePopup2:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mSamsungKeypadSettingsFragment:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->traceDialog2:Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mSamsungKeypadSettingsFragment:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->traceDialog2:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_2
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mSamsungKeypadSettingsFragment:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->SwipePopup:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mSamsungKeypadSettingsFragment:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->swipeDialog:Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mSamsungKeypadSettingsFragment:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->swipeDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_3
    return-void
.end method

.method protected onResume()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mIsTabletMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mSettingsSplitRatioController:Lcom/ime/implement/setting/SettingsSplitRatioController;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->initSplitBarHandler()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mSettingsSplitRatioController:Lcom/ime/implement/setting/SettingsSplitRatioController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mSettingsSplitRatioController:Lcom/ime/implement/setting/SettingsSplitRatioController;

    invoke-virtual {v0}, Lcom/ime/implement/setting/SettingsSplitRatioController;->showSplitBar()V

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public rebuildActionBar()V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->initActionBar()V

    iget-boolean v2, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mIsTabletMode:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mCurrentMenu:I

    const/4 v3, 0x3

    if-gt v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mActionBarSubArrow:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0906cf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    iget-object v2, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mActionBarTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v4, v4, v4}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getCurrentSubTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mActionBarTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->initSplitBarHandler()V

    iget v2, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mCurrentMenu:I

    iput v2, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mPrevMenu:I

    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mActionBarSubArrow:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mActionBarSubArrow:Landroid/widget/ImageView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setHoverPopupType(I)V

    iget-object v2, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mActionBarSubArrow:Landroid/widget/ImageView;

    new-instance v3, Lcom/sec/android/inputmethod/SamsungKeypadSettings$2;

    invoke-direct {v3, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettings$2;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettings;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setCurrentMenu(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mCurrentMenu:I

    return-void
.end method

.method public setOnKeyBackPressedListener(Lcom/sec/android/inputmethod/SamsungKeypadSettings$onKeyBackPressedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mOnkeyBackPressedListener:Lcom/sec/android/inputmethod/SamsungKeypadSettings$onKeyBackPressedListener;

    return-void
.end method
