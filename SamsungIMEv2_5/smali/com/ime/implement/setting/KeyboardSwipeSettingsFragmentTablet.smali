.class public Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;
.super Landroid/preference/PreferenceFragment;
.source "KeyboardSwipeSettingsFragmentTablet.java"


# instance fields
.field private isUsingPredictiveText:Z

.field private mContinuousInputSwipe:Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;

.field private mCursorControllSwipe:Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;

.field private mInputManager:Lcom/ime/framework/common/InputManager;

.field private mIsUSAString:Z

.field private mNoneSwipe:Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;

.field protected mRepository:Lcom/ime/framework/repository/Repository;

.field private mSPref:Landroid/content/SharedPreferences;

.field private misTablet:Z

.field private settingActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;Landroid/preference/Preference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->changeSwipe(Landroid/preference/Preference;)V

    return-void
.end method

.method static synthetic access$100(Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method private changeSwipe(Landroid/preference/Preference;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    instance-of v0, p1, Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->mNoneSwipe:Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->mNoneSwipe:Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0}, Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;->selectOption()V

    iget-object v0, p0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->mNoneSwipe:Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0, v2}, Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->mContinuousInputSwipe:Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->mCursorControllSwipe:Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->mContinuousInputSwipe:Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->mContinuousInputSwipe:Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0}, Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;->selectOption()V

    iget-object v0, p0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->mNoneSwipe:Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->mContinuousInputSwipe:Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0, v2}, Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->mCursorControllSwipe:Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->mCursorControllSwipe:Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->mCursorControllSwipe:Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0}, Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;->selectOption()V

    iget-object v0, p0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->mNoneSwipe:Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->mContinuousInputSwipe:Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->mCursorControllSwipe:Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0, v2}, Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v5, 0x1

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, p0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->settingActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->settingActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v4, 0x7f0d0048

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setTitle(I)V

    invoke-virtual {p0, v5}, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->setHasOptionsMenu(Z)V

    :cond_0
    iget-object v4, p0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->settingActivity:Landroid/app/Activity;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->mSPref:Landroid/content/SharedPreferences;

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v4

    iput-object v4, p0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v4, p0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getRepository()Lcom/ime/framework/repository/Repository;

    move-result-object v4

    iput-object v4, p0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->mRepository:Lcom/ime/framework/repository/Repository;

    :cond_1
    iget-object v4, p0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->mRepository:Lcom/ime/framework/repository/Repository;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v5, "TABLET_MODE"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->misTablet:Z

    :cond_2
    const v4, 0x7f030075

    invoke-virtual {p0, v4}, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->addPreferencesFromResource(I)V

    const-string v4, "settings_keyboard_swipe_none"

    invoke-virtual {p0, v4}, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_3

    instance-of v4, v3, Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;

    if-eqz v4, :cond_3

    move-object v4, v3

    check-cast v4, Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;

    iput-object v4, p0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->mNoneSwipe:Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;

    new-instance v4, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet$1;

    invoke-direct {v4, p0}, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet$1;-><init>(Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;)V

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_3
    new-instance v1, Lcom/sec/android/inputmethod/ConfigFeature;

    invoke-direct {v1}, Lcom/sec/android/inputmethod/ConfigFeature;-><init>()V

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/ConfigFeature;->isUSAString()Z

    move-result v4

    iput-boolean v4, p0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->mIsUSAString:Z

    const-string v4, "settings_keyboard_swipe_continuous_input"

    invoke-virtual {p0, v4}, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_5

    instance-of v4, v3, Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;

    if-eqz v4, :cond_5

    move-object v4, v3

    check-cast v4, Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;

    iput-object v4, p0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->mContinuousInputSwipe:Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    iget-boolean v4, p0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->mIsUSAString:Z

    if-eqz v4, :cond_4

    const-string v4, "SWIFTKEY"

    const-string v5, "XT9"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->mContinuousInputSwipe:Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;

    const v5, 0x7f0d0069

    invoke-virtual {v4, v5}, Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;->setTitle(I)V

    :cond_4
    :goto_0
    new-instance v4, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet$2;

    invoke-direct {v4, p0}, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet$2;-><init>(Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;)V

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_5
    const-string v4, "settings_keyboard_swipe_cursor_control"

    invoke-virtual {p0, v4}, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_6

    instance-of v4, v3, Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;

    if-eqz v4, :cond_6

    move-object v4, v3

    check-cast v4, Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;

    iput-object v4, p0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->mCursorControllSwipe:Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;

    new-instance v4, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet$3;

    invoke-direct {v4, p0}, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet$3;-><init>(Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;)V

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_6
    return-void

    :cond_7
    const-string v4, "SWIFTKEY"

    const-string v5, "SWIFTKEY"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4, v2}, Lcom/ime/framework/common/InputManager;->isEnglishUSTypeCountry(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->mContinuousInputSwipe:Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;

    const v5, 0x7f0d006a

    invoke-virtual {v4, v5}, Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;->setTitle(I)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    const/4 v3, 0x0

    const v1, 0x7f030087

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    const v1, 0x102000a

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v1, 0x7f0904dc

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v2, v1

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v6}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    return-object v8
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->settingActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 22

    invoke-super/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->onResume()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->mSPref:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    const-string v19, "SETTINGS_DEFAULT_PREDICTION_ON"

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->isUsingPredictiveText:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->mContinuousInputSwipe:Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->isUsingPredictiveText:Z

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;->setEnabled(Z)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->mIsUSAString:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->isUsingPredictiveText:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->mContinuousInputSwipe:Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;

    move-object/from16 v18, v0

    const v19, 0x7f0d006c

    invoke-virtual/range {v18 .. v19}, Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;->setSummary(I)V

    :goto_0
    const-string v18, "settings_keyboard_swipe"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->mSPref:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    const-string v19, "SETTINGS_DEFAULT_TRACE"

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    if-eqz v18, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->mContinuousInputSwipe:Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;->selectOption()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->mNoneSwipe:Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->mContinuousInputSwipe:Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->mCursorControllSwipe:Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/ime/framework/common/InputManager;->getRepository()Lcom/ime/framework/repository/Repository;

    move-result-object v13

    const-string v18, "INPUT_LANGUAGE"

    const v19, 0x656e4742

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v13, v0, v1}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v7

    const/high16 v18, -0x10000

    and-int v10, v7, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v18

    if-eqz v18, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/ime/framework/common/InputManager;->getSupportLanguageList()[Lcom/ime/framework/common/Language;

    move-result-object v17

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->settingActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    const-string v19, "com.sec.android.inputmethod_preferences"

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    const/4 v8, 0x0

    const/4 v11, -0x1

    const/4 v15, -0x1

    move v4, v10

    const/16 v16, -0x1

    const/4 v3, 0x0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    add-int/lit8 v5, v18, -0x1

    :goto_3
    if-ltz v5, :cond_9

    const-string v18, "0x%08x"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v21, v17, v5

    invoke-virtual/range {v21 .. v21}, Lcom/ime/framework/common/Language;->getId()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v14, v8, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v11, v11, 0x1

    move v15, v5

    aget-object v18, v17, v5

    invoke-virtual/range {v18 .. v18}, Lcom/ime/framework/common/Language;->getId()I

    move-result v18

    const/high16 v19, -0x10000

    and-int v16, v18, v19

    if-nez v3, :cond_1

    move/from16 v0, v16

    if-ne v4, v0, :cond_1

    const/4 v3, 0x1

    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Lcom/ime/framework/common/InputManager;->isEnglishUSTypeCountry(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->mContinuousInputSwipe:Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;

    move-object/from16 v18, v0

    const v19, 0x7f0d006e

    invoke-virtual/range {v18 .. v19}, Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;->setSummary(I)V

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->mContinuousInputSwipe:Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;

    move-object/from16 v18, v0

    const v19, 0x7f0d006d

    invoke-virtual/range {v18 .. v19}, Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;->setSummary(I)V

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->isUsingPredictiveText:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->mContinuousInputSwipe:Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;

    move-object/from16 v18, v0

    const v19, 0x7f0d006b

    invoke-virtual/range {v18 .. v19}, Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;->setSummary(I)V

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->mContinuousInputSwipe:Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;

    move-object/from16 v18, v0

    const v19, 0x7f0d006d

    invoke-virtual/range {v18 .. v19}, Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;->setSummary(I)V

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->mSPref:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    const-string v19, "SETTINGS_DEFAULT_KEYPAD_POINTING"

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    if-eqz v18, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->mCursorControllSwipe:Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;->selectOption()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->mNoneSwipe:Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->mContinuousInputSwipe:Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->mCursorControllSwipe:Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->mNoneSwipe:Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;->selectOption()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->mNoneSwipe:Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->mContinuousInputSwipe:Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->mCursorControllSwipe:Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/ime/framework/common/InputManager;->getXt9DownloadableLanguageList()[Lcom/ime/framework/common/Language;

    move-result-object v17

    goto/16 :goto_2

    :cond_9
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v11, v0, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/ime/framework/common/InputManager;->getLocaleLanguage()Lcom/ime/framework/common/Language;

    move-result-object v9

    invoke-virtual {v9}, Lcom/ime/framework/common/Language;->getId()I

    move-result v18

    const/high16 v19, -0x10000

    and-int v4, v18, v19

    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->isUsingPredictiveText:Z

    move/from16 v18, v0

    if-eqz v18, :cond_e

    const/high16 v18, 0x6a610000

    move/from16 v0, v18

    if-ne v4, v0, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->mContinuousInputSwipe:Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;->setEnabled(Z)V

    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->misTablet:Z

    move/from16 v18, v0

    if-eqz v18, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->getActivity()Landroid/app/Activity;

    move-result-object v18

    check-cast v18, Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    const/16 v19, 0x9

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->setCurrentMenu(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->getActivity()Landroid/app/Activity;

    move-result-object v18

    check-cast v18, Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->rebuildActionBar()V

    :cond_b
    return-void

    :cond_c
    if-eqz v11, :cond_d

    if-nez v3, :cond_a

    :cond_d
    aget-object v18, v17, v15

    invoke-virtual/range {v18 .. v18}, Lcom/ime/framework/common/Language;->getId()I

    move-result v18

    const/high16 v19, -0x10000

    and-int v4, v18, v19

    goto :goto_4

    :cond_e
    const/high16 v18, 0x7a680000

    move/from16 v0, v18

    if-ne v4, v0, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->isUsingPredictiveText:Z

    move/from16 v18, v0

    if-nez v18, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/ime/framework/common/Language;

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->mContinuousInputSwipe:Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;->setEnabled(Z)V

    goto :goto_5

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->mContinuousInputSwipe:Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->isUsingPredictiveText:Z

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;->setEnabled(Z)V

    goto :goto_5

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->mContinuousInputSwipe:Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->isUsingPredictiveText:Z

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;->setEnabled(Z)V

    goto :goto_5
.end method
