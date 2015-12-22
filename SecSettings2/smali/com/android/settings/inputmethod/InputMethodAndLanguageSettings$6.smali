.class final Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$6;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "InputMethodAndLanguageSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v10

    array-length v10, v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    const-string v10, "phone_language"

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {p1}, Lcom/android/settings/inputmethod/UserDictionaryList;->getUserDictionaryLocalesSet(Landroid/content/Context;)Ljava/util/TreeSet;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v10, "key_user_dictionary_settings"

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v10, "textservices"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/textservice/TextServicesManager;

    invoke-static {p1}, Lcom/android/settings/Utils;->isInstalledAnySpellCheckerPakcage(Landroid/content/Context;)Z

    move-result v1

    const-string v10, "InputMethodAndLanguageSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isInstalledAnySpellCheckerPakcage = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Landroid/view/textservice/TextServicesManager;->isSpellCheckerEnabled()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v7}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v5

    if-eqz v5, :cond_9

    const-string v10, "com.sec.android.inputmethod"

    invoke-virtual {v5}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-nez v1, :cond_2

    const-string v10, "spellcheckers_settings"

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    if-nez v1, :cond_3

    const-string v10, "key_user_dictionary_settings"

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    const-string v10, "input_method"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodManager;->isCurrentInputMethodAsSamsungKeyboard()Z

    move-result v10

    if-eqz v10, :cond_4

    const-string v10, "InputMethodAndLanguageSettings"

    const-string v11, "Current IME is Samsung Keyboard"

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "spellcheckers_settings"

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v10, "key_user_dictionary_settings"

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    # invokes: Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->haveInputDeviceWithVibrator()Z
    invoke-static {}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->access$1000()Z

    move-result v10

    if-nez v10, :cond_5

    const-string v10, "game_controller_settings_category"

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v10, "vibrate_input_devices"

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    new-instance v8, Landroid/speech/tts/TtsEngines;

    invoke-direct {v8, p1}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8}, Landroid/speech/tts/TtsEngines;->getEngines()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_6

    const-string v10, "tts_settings"

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    new-instance v0, Lcom/android/settings/voice/VoiceInputHelper;

    invoke-direct {v0, p1}, Lcom/android/settings/voice/VoiceInputHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/settings/voice/VoiceInputHelper;->hasItems()Z

    move-result v10

    if-nez v10, :cond_7

    const-string v10, "voice_input_settings"

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v11, "com.sec.feature.spen_usp"

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x2

    if-ge v9, v10, :cond_8

    const-string v10, "handwriting_language"

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    return-object v2

    :cond_9
    const-string v10, "InputMethodAndLanguageSettings"

    const-string v11, "cannot find spellcheckerinfo"

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_a

    const-string v10, "spellcheckers_settings"

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    if-nez v1, :cond_3

    const-string v10, "key_user_dictionary_settings"

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const v19, 0x7f0a081a

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    new-instance v10, Lcom/android/settings/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string v19, "device_policy"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v15, v19

    check-cast v15, Landroid/app/admin/DevicePolicyManager;

    const-string v19, "input_method"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual/range {v16 .. v16}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v9

    if-nez v9, :cond_0

    const/4 v2, 0x0

    :goto_0
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v2, :cond_1

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodInfo;

    new-instance v10, Lcom/android/settings/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v10, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v10, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    :cond_1
    const-string v19, "input"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/input/InputManager;

    const/4 v5, 0x0

    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v4

    const/4 v6, 0x0

    :goto_2
    array-length v0, v4

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v6, v0, :cond_6

    aget v19, v4, v6

    invoke-static/range {v19 .. v19}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v19

    if-nez v19, :cond_2

    invoke-virtual {v3}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v19

    if-nez v19, :cond_3

    :cond_2
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x1

    invoke-virtual {v3}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v7

    invoke-virtual {v12, v7}, Landroid/hardware/input/InputManager;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_4

    invoke-virtual {v12, v14}, Landroid/hardware/input/InputManager;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v13

    :goto_4
    if-eqz v13, :cond_5

    invoke-virtual {v13}, Landroid/hardware/input/KeyboardLayout;->toString()Ljava/lang/String;

    move-result-object v18

    :goto_5
    new-instance v10, Lcom/android/settings/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v10, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v10, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    move-object/from16 v0, v18

    iput-object v0, v10, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    move-object/from16 v0, v18

    iput-object v0, v10, Lcom/android/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    const/4 v13, 0x0

    goto :goto_4

    :cond_5
    const v19, 0x7f0a0836

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    goto :goto_5

    :cond_6
    if-eqz v5, :cond_7

    new-instance v10, Lcom/android/settings/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string v19, "builtin_keyboard_settings"

    move-object/from16 v0, v19

    iput-object v0, v10, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const v19, 0x7f0a086f

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v10, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    return-object v11
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/provider/SearchIndexableResource;

    invoke-direct {v0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    const v1, 0x7f070051

    iput v1, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/provider/SearchIndexableResource;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
