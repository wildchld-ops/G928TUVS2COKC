.class public interface abstract Lcom/ime/framework/common/InputManager;
.super Ljava/lang/Object;
.source "InputManager.java"


# static fields
.field public static final KEY_ALT_CAPSLOCK:I = 0x5

.field public static final KEY_ALT_CLOSE_NUMLOCK:I = 0x6

.field public static final KEY_ALT_NUMLOCK:I = 0x2

.field public static final KEY_ALT_TAP:I = 0x3

.field public static final KEY_NONE_ALT:I = 0x0

.field public static final KEY_PRESSING_DOWN:I = 0x1

.field public static final KEY_PRESSING_INTERRUPT:I = 0x4

.field public static final mTipsPopupCMKey:I = 0x1

.field public static final mTipsPopupInvalid:I = -0x1

.field public static final mTipsPopupRemoveWords:I = 0x3

.field public static final mTipsPopupSwiftKeyLearns:I = 0x2

.field public static final mTipsPopupTrace:I


# virtual methods
.method public abstract FrequencyUpdateHanja(Ljava/lang/String;)V
.end method

.method public abstract IsHardwareAcceleratedDrawingEnabled()Z
.end method

.method public abstract IsKeyboardShowinginProgress()Z
.end method

.method public abstract SearchHanja()V
.end method

.method public abstract SetSymbolLock(Z)V
.end method

.method public abstract addWordIntoTypoList(Ljava/lang/String;)V
.end method

.method public abstract afterConfigrationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
.end method

.method public abstract asyncCheckAndConfigPowerSavingMode()V
.end method

.method public abstract beforeConfigrationChanged(Landroid/content/res/Configuration;)Z
.end method

.method public abstract buildSuggestions(I)V
.end method

.method public abstract cancelPreviewTrace()V
.end method

.method public abstract changeToFloatingKeyboardModeForEasyMode(I)V
.end method

.method public abstract changeToFullWidthSwitchMode(Z)V
.end method

.method public abstract changeToNormalKeyboardModeForEasyMode(I)V
.end method

.method public abstract cleanUpResources()V
.end method

.method public abstract clearLastestEmoticonList()V
.end method

.method public abstract clearTypoList()V
.end method

.method public abstract closeKeyboard()V
.end method

.method public abstract closeVoiceView()V
.end method

.method public abstract computeCurrentKeyCode(II)I
.end method

.method public abstract computeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V
.end method

.method public abstract convertToAndroidKeyCodeForDTMF(I)I
.end method

.method public abstract createKeyMap()V
.end method

.method public abstract createKeyMapForMinikeyboard(Ljava/util/List;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ime/framework/view/Keyboard$Key;",
            ">;II)V"
        }
    .end annotation
.end method

.method public abstract deleteAllTextInEditor()V
.end method

.method public abstract dismissAllDialog()V
.end method

.method public abstract dismissClipboard()V
.end method

.method public abstract dismissPopupKeyboard()V
.end method

.method public abstract dismissPopupKeyboardWithoutFloatingAndSplit()V
.end method

.method public abstract dispatchTouchEventOnSoftInputPanel(Landroid/view/MotionEvent;)V
.end method

.method public abstract displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
.end method

.method public abstract doRecaptureWord(Z)V
.end method

.method public abstract doSpellChecker(Ljava/lang/String;I)Z
.end method

.method public abstract dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract evaluateFullscreenMode()Z
.end method

.method public abstract existTermInAutoText(Ljava/lang/String;)Z
.end method

.method public abstract existTermInDLM(Ljava/lang/String;)Z
.end method

.method public abstract existTextBeforeCursor()Z
.end method

.method public abstract finishComposing(Z)V
.end method

.method public abstract finishComposingText()V
.end method

.method public abstract finishInput()V
.end method

.method public abstract finishInputView(Z)V
.end method

.method public abstract getAltPressedState()I
.end method

.method public abstract getAnyScreenRunning()Z
.end method

.method public abstract getBackCorrectionWord()Ljava/lang/String;
.end method

.method public abstract getBackingView()Landroid/view/View;
.end method

.method public abstract getBackupKeyboardHeight()I
.end method

.method public abstract getCachedDrawable(I)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getCandidateView(Z)Landroid/view/View;
.end method

.method public abstract getCandidateViewHeight()I
.end method

.method public abstract getCandidates()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCandidatesDisplayedCount()I
.end method

.method public abstract getCandidateviewStatus()I
.end method

.method public abstract getChineseLanguageCurrentView()Landroid/view/View;
.end method

.method public abstract getCloudCandidateUpdate()Z
.end method

.method public abstract getCloudDBInstance()Lcom/sec/android/inputmethod/databases/CloudLinkProvider;
.end method

.method public abstract getCloudLinkFeatureStatus()I
.end method

.method public abstract getCompletions()[Landroid/view/inputmethod/CompletionInfo;
.end method

.method public abstract getContactCandidateUpdate()Z
.end method

.method public abstract getContactDBInstance()Lcom/sec/android/inputmethod/databases/ContactLinkProvider;
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getContextAwareUniqueID()Ljava/lang/String;
.end method

.method public abstract getCtrlPressedState()Z
.end method

.method public abstract getCurrentCursorPosition()I
.end method

.method public abstract getCurrentFocusedKey()Lcom/ime/framework/view/Keyboard$Key;
.end method

.method public abstract getCurrentFocusedKeyForMinikeyboard()Lcom/ime/framework/view/Keyboard$Key;
.end method

.method public abstract getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;
.end method

.method public abstract getCurrentInputCountryCode()Ljava/lang/String;
.end method

.method public abstract getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;
.end method

.method public abstract getCurrentInputLanguage()Lcom/ime/framework/common/Language;
.end method

.method public abstract getCurrentInputLanguageCode()Ljava/lang/String;
.end method

.method public abstract getCurrentInputLanguageName()Ljava/lang/CharSequence;
.end method

.method public abstract getCurrentInputScriptype()I
.end method

.method public abstract getCurrentKeyUmlautString(Lcom/ime/framework/view/KeboardKeyInfo;)Ljava/lang/StringBuilder;
.end method

.method public abstract getCurrentMemory(Ljava/lang/String;)V
.end method

.method public abstract getCurrentPackageName()Ljava/lang/String;
.end method

.method public abstract getCurrentThaiVowelPageNum()I
.end method

.method public abstract getDebugLevel()I
.end method

.method public abstract getDefaultEnglishLanguage()Lcom/ime/framework/common/Language;
.end method

.method public abstract getDefaultKeyboardHeight()I
.end method

.method public abstract getDefaultMultimodalkey()Ljava/lang/String;
.end method

.method public abstract getDefaultMultimodalkeyOnHwr()Ljava/lang/String;
.end method

.method public abstract getDeleteCount()I
.end method

.method public abstract getDoneButton()Landroid/view/View;
.end method

.method public abstract getDontShowTraceGuideConsecutively()Z
.end method

.method public abstract getDontShowZoomPinchGuideConsecutively()Z
.end method

.method public abstract getEditorEnterAction()I
.end method

.method public abstract getEmoticonManager()Lcom/ime/framework/emoticon/EmoticonManager;
.end method

.method public abstract getEmoticonViewHeight()I
.end method

.method public abstract getFastRepository()Lcom/ime/framework/repository/FastRepository;
.end method

.method public abstract getFirstIndexOfSelectedLatinLanguage()I
.end method

.method public abstract getFloatingKeyboardWidth()I
.end method

.method public abstract getFocusZoneInfoForMultiWindow()I
.end method

.method public abstract getFractionOrientedWidth(I)I
.end method

.method public abstract getFractionOrientedheight(I)I
.end method

.method public abstract getHWManager()Lcom/ime/framework/engine/bsthwr/HWManager;
.end method

.method public abstract getHanjaCandidate()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHanjaStatus()Z
.end method

.method public abstract getHwPhonepadEnKeyboard()Lcom/ime/framework/view/DefaultKeyboard;
.end method

.method public abstract getHwPhonepadKrKeyboard()Lcom/ime/framework/view/DefaultKeyboard;
.end method

.method public abstract getHwrCandidateStatus()I
.end method

.method public abstract getIWindowManager()Landroid/view/IWindowManager;
.end method

.method public abstract getInputController()Lcom/ime/framework/input/InputController;
.end method

.method public abstract getInputLanguage()I
.end method

.method public abstract getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;
.end method

.method public abstract getInputView(Z)Landroid/view/View;
.end method

.method public abstract getIsChnEngMixedInput()Z
.end method

.method public abstract getIsCloseWb()Z
.end method

.method public abstract getIsFinishingHanjaShowing()Z
.end method

.method public abstract getIsNumInputmodeBy123Key()Z
.end method

.method public abstract getIsPendingUpdateCandidateView()Z
.end method

.method public abstract getIsSpellViewBackSpace()Z
.end method

.method public abstract getIsUserSelecting()Z
.end method

.method public abstract getKeyPositions([Landroid/graphics/Rect;)I
.end method

.method public abstract getKeyboardHeightDelta()I
.end method

.method public abstract getKeyboardHeightLevel()I
.end method

.method public abstract getKeyboardKeyList(Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/ime/framework/view/Keyboard$Key;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getKeyboardViewHeight()I
.end method

.method public abstract getKeyboardViewWidth()I
.end method

.method public abstract getLabelFromCurrentView(I)Ljava/lang/CharSequence;
.end method

.method public abstract getLangPopupShown()Z
.end method

.method public abstract getLocaleLanguage()Lcom/ime/framework/common/Language;
.end method

.method public abstract getMicEffectView()Landroid/view/View;
.end method

.method public abstract getMobileKeyboardCandidateView(I)Landroid/view/View;
.end method

.method public abstract getMobileKeyboardSymPage()I
.end method

.method public abstract getNeedChangeKeyboardHeight()Z
.end method

.method public abstract getNextInputLanguageName()Ljava/lang/CharSequence;
.end method

.method public abstract getNextTipsDlg(I)I
.end method

.method public abstract getPhoneticSpellScrollView(Z)Landroid/view/View;
.end method

.method public abstract getPopupCandidateView()Lcom/ime/framework/view/PopupCandidateView;
.end method

.method public abstract getPopupKeyboardView()Lcom/ime/framework/view/PopupKeyboardView;
.end method

.method public abstract getPrevTipsDlg(I)I
.end method

.method public abstract getPreviousInputLanguageName()Ljava/lang/CharSequence;
.end method

.method public abstract getPrivateImeOptionsController()Lcom/ime/framework/common/PrivateImeOptionsController;
.end method

.method public abstract getRemoteControllerState()I
.end method

.method public abstract getRepository()Lcom/ime/framework/repository/Repository;
.end method

.method public abstract getResources()Landroid/content/res/Resources;
.end method

.method public abstract getRestartLangPopup()Z
.end method

.method public abstract getSelectedLanguageId(I)I
.end method

.method public abstract getSelectedLanguageList()[Lcom/ime/framework/common/Language;
.end method

.method public abstract getSelectedLanguageScriptType(I)I
.end method

.method public abstract getSelectedLanguageSize()I
.end method

.method public abstract getSelectedNumOfText()I
.end method

.method public abstract getSelectedWord()Ljava/lang/String;
.end method

.method public abstract getService()Lcom/ime/framework/common/AbstractInputMethod;
.end method

.method public abstract getSharedPreferences()Landroid/content/SharedPreferences;
.end method

.method public abstract getShiftState()Z
.end method

.method public abstract getShiftStateController()Lcom/ime/framework/common/ShiftStateController;
.end method

.method public abstract getSpaceLanguageChange()Z
.end method

.method public abstract getSpellLayout()Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;
.end method

.method public abstract getSplitRightKeyboardWidth()I
.end method

.method public abstract getStateCandidate()I
.end method

.method public abstract getSuggestionActiveIndex()I
.end method

.method public abstract getSupportLanguageList()[Lcom/ime/framework/common/Language;
.end method

.method public abstract getSwiftkeyVersion()I
.end method

.method public abstract getSymbHistoryList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSymbolLock()Z
.end method

.method public abstract getSystemHandAdaptableOperationSettingValue()I
.end method

.method public abstract getSystemLocale()Ljava/util/Locale;
.end method

.method public abstract getSystemOneHandOperationSettingValue()I
.end method

.method public abstract getSystemOneHandSwitchStateSettingValue()I
.end method

.method public abstract getTalkBackEnable()Z
.end method

.method public abstract getToolbarPopupWindow()Landroid/widget/PopupWindow;
.end method

.method public abstract getTotalSupportLanguageList()V
.end method

.method public abstract getTransparencyLevel()I
.end method

.method public abstract getUmlautManager()Lcom/ime/framework/input/umlaut/UmlautManager;
.end method

.method public abstract getUniversalSwitchMode()Z
.end method

.method public abstract getValidWindowToken()Landroid/os/IBinder;
.end method

.method public abstract getViewController()Lcom/ime/framework/view/ViewController;
.end method

.method public abstract getViewFromDecoreView(I)Landroid/view/View;
.end method

.method public abstract getVisibilityOfCandidateContentLayout()Z
.end method

.method public abstract getVoiceRecognitionTrigger()Lcom/google/android/voiceime/VoiceRecognitionTrigger;
.end method

.method public abstract getWacomState()Z
.end method

.method public abstract getWordCandidateData()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWordToAddMyWordList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getXt9DBController()Lcom/ime/framework/engine/xt9/Xt9DBController;
.end method

.method public abstract getXt9DownloadableLanguageList()[Lcom/ime/framework/common/Language;
.end method

.method public abstract getXt9NextWordPrediction()Z
.end method

.method public abstract getXt9Recapture()Z
.end method

.method public abstract getXt9Version()I
.end method

.method public abstract getmIsFullSeclectedTextState()Z
.end method

.method public abstract guidePopupIsHidden()V
.end method

.method public abstract handleOcrKey()V
.end method

.method public abstract handleRangeChange(ZZ)V
.end method

.method public abstract hasCurrentSequence()Z
.end method

.method public abstract hasPrevNextButton()Z
.end method

.method public abstract inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract inflateWithCache(ILandroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract initDelteCount()V
.end method

.method public abstract initHwrPanel(Landroid/widget/FrameLayout;)V
.end method

.method public abstract initHwrPanelWithVOHWRResource()V
.end method

.method public abstract initLanguageSettingsWithSystemLocale()Z
.end method

.method public abstract initModulesWithService(Lcom/ime/framework/common/AbstractInputMethod;)V
.end method

.method public abstract initSelectedLanguage()V
.end method

.method public abstract initialzeSettingValues()V
.end method

.method public abstract insertLogByThread(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract insertLogByThread(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract invalidateHwrBackgound()V
.end method

.method public abstract invalidateHwrRect()V
.end method

.method public abstract invalidateKey(I)V
.end method

.method public abstract invalidateKeyboardView()V
.end method

.method public abstract isAccessibilityEnabled()Z
.end method

.method public abstract isAcuteAccentState()Z
.end method

.method public abstract isAutoReplacementSupportedLanguage(Lcom/ime/framework/common/Language;)Z
.end method

.method public abstract isAvailableLanguage(I)Z
.end method

.method public abstract isBTPeripheralConnected()Z
.end method

.method public abstract isBstHwrCandidates()Z
.end method

.method public abstract isCHAT_ON()Z
.end method

.method public abstract isCandidateExpandDismissedByTouchInterceptor()Z
.end method

.method public abstract isCandidateExpanded()Z
.end method

.method public abstract isCandidateViewShown()Z
.end method

.method public abstract isCarInDrivingMode()Z
.end method

.method public abstract isCheckDontShowPinchZoomGuide()Z
.end method

.method public abstract isCheckDontShowPredictiveTextGuide()Z
.end method

.method public abstract isChineseLanguageMode()Z
.end method

.method public abstract isChineseSpellText()Z
.end method

.method public abstract isChineseStrokeModeOn()Z
.end method

.method public abstract isChnDomain(Ljava/lang/CharSequence;)Z
.end method

.method public abstract isChnMode()Z
.end method

.method public abstract isClipboardShowing()Z
.end method

.method public abstract isContactLinkFeatureEnabled()Z
.end method

.method public abstract isContainInTypoList(Ljava/lang/String;)Z
.end method

.method public abstract isControlPanelDisabled()Z
.end method

.method public abstract isCurrentCarModeKnobSIP()Z
.end method

.method public abstract isCurrentCarModeTouchSIP()Z
.end method

.method public abstract isCurrentLanguageUseSpaceBetweenWords()Z
.end method

.method public abstract isCurrentSpaceStatusSuggestion()Z
.end method

.method public abstract isDaMode()Z
.end method

.method public abstract isDateTimeNumberPickerEditor()Z
.end method

.method public abstract isDeviceHasHardware12Key()Z
.end method

.method public abstract isDeviceHasHardwareKeypad()Z
.end method

.method public abstract isDiscoverabilityShown()Z
.end method

.method public abstract isDragonVoiceMode()Z
.end method

.method public abstract isDualLandMode()Z
.end method

.method public abstract isDynamicKDB()Z
.end method

.method public abstract isEFGISLanguageID(I)Z
.end method

.method public abstract isEmojiLMLoaded()Z
.end method

.method public abstract isEmoticonDisabled()Z
.end method

.method public abstract isEmoticonMode()Z
.end method

.method public abstract isEmptyComposingSpan()Z
.end method

.method public abstract isEmptyEditText()Z
.end method

.method public abstract isEnableAutoCorrection()Z
.end method

.method public abstract isEnableAutoCorrection(C)Z
.end method

.method public abstract isEnableAutoCorrectionDA()Z
.end method

.method public abstract isEnableHongKongLanguage()Z
.end method

.method public abstract isEnableOneHandKeypad()Z
.end method

.method public abstract isEnableRemoteController()Z
.end method

.method public abstract isEnableSimplifiedChineseOrTaiwanLanguage()Z
.end method

.method public abstract isEnableSpellChecker()Z
.end method

.method public abstract isEnableTraceInPassword()Z
.end method

.method public abstract isEnabledMagnification()Z
.end method

.method public abstract isEncryptedScreen()Z
.end method

.method public abstract isEnglishUSTypeCountry(Ljava/lang/String;)Z
.end method

.method public abstract isExplicitTextSelection()Z
.end method

.method public abstract isFileNameInputOption()Z
.end method

.method public abstract isFocusOnCandidateView()Z
.end method

.method public abstract isForcePredictionOff()Z
.end method

.method public abstract isFullLandMode()Z
.end method

.method public abstract isFullScreesnHwrPackage()Z
.end method

.method public abstract isFullWidthMode()Z
.end method

.method public abstract isFullscreenMode()Z
.end method

.method public abstract isGetOcrString()Z
.end method

.method public abstract isHKChineseLanguageMode()Z
.end method

.method public abstract isHKTWBinaryByCSC()Z
.end method

.method public abstract isHWKeyboardConnected()Z
.end method

.method public abstract isHWKeyboardOpen()Z
.end method

.method public abstract isHandWritingHasBoonUsed()Z
.end method

.method public abstract isHeadsetConnected()Z
.end method

.method public abstract isHwDpadKey(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract isHwPhonepad()Z
.end method

.method public abstract isHwUmlautPopupShown()Z
.end method

.method public abstract isInMultiTapInput()Z
.end method

.method public abstract isInRepeatKey()Z
.end method

.method public abstract isIndochinaLanguage()Z
.end method

.method public abstract isInputViewShown()Z
.end method

.method public abstract isInstallableLanguage(I)Z
.end method

.method public abstract isJapaneseLanguageMode()Z
.end method

.method public abstract isKeyGuardScreen()Z
.end method

.method public abstract isKeyboardTypeDisabled()Z
.end method

.method public abstract isKorMode()Z
.end method

.method public abstract isKoreaLanguage()Z
.end method

.method public abstract isLandscapePhonenumberMode()Z
.end method

.method public abstract isLatinLanguageID(I)Z
.end method

.method public abstract isMiniKeyboardOnScreen()Z
.end method

.method public abstract isMiniKeyboardView()Z
.end method

.method public abstract isMobileKeyboard()Z
.end method

.method public abstract isMobileKeyboardKeyFeedbackEnable(II)Z
.end method

.method public abstract isMobileKeyboardNeedFresh()Z
.end method

.method public abstract isMobileKeyboardSYMCandidate()Z
.end method

.method public abstract isMobileKeyboardSupportedLanguage(I)Z
.end method

.method public abstract isMobileKeyboardUmlautCandidate()Z
.end method

.method public abstract isModeChangePopupShown()Z
.end method

.method public abstract isMultiWordAdded()Z
.end method

.method public abstract isMultiwindowPhone()Z
.end method

.method public abstract isNeedToLoadHwrLibrary()Z
.end method

.method public abstract isNeedToRemoveKPMEx()Z
.end method

.method public abstract isNeedToRemoveLPMHistory()Z
.end method

.method public abstract isNextWordOnSpaceEnabled()Z
.end method

.method public abstract isNotSoftFuncKbd()Z
.end method

.method public abstract isNotUseAltGrKeyInCountry()Z
.end method

.method public abstract isNoteModel()Z
.end method

.method public abstract isNumberMyanmar(I)Z
.end method

.method public abstract isNumberOnlyEditor()Z
.end method

.method public abstract isNumberSymbolOnlyEditor()Z
.end method

.method public abstract isOneHandKeypadRightSet()Z
.end method

.method public abstract isOrientationChanged()Z
.end method

.method public abstract isOrientationLandscape()Z
.end method

.method public abstract isPenDetectionHwrMode()Z
.end method

.method public abstract isPhoneModel()Z
.end method

.method public abstract isPopupInputMethod()Z
.end method

.method public abstract isPopupWindowShown()Z
.end method

.method public abstract isPowerSavingMode()Z
.end method

.method public abstract isPredictionOffInputOption()Z
.end method

.method public abstract isPressedRangeKey()Z
.end method

.method public abstract isPridictionOn()Z
.end method

.method public abstract isQwertyLookInputMethod()Z
.end method

.method public abstract isRapidInput()Z
.end method

.method public abstract isRecaptureWord()Z
.end method

.method public abstract isRegisteredOcrSIPTextReceiver()Z
.end method

.method public abstract isRequiredChinaServerURL()Z
.end method

.method public abstract isRestatingInMmsRecipientOnKoreanMode()Z
.end method

.method public abstract isShortCutMode()Z
.end method

.method public abstract isShowCMToolbar()Z
.end method

.method public abstract isShownKeyboardView()Z
.end method

.method public abstract isShownMobileKeyboardPopup()Z
.end method

.method public abstract isShownSoftFuncKbd()Z
.end method

.method public abstract isShuangPinMode()Z
.end method

.method public abstract isSimplifiedChineseLanguageMode()Z
.end method

.method public abstract isSmartPrediction()Z
.end method

.method public abstract isSogouHotwordUpdateSupported()Z
.end method

.method public abstract isSpellCheckerSupportedLanguage(Lcom/ime/framework/common/Language;)Z
.end method

.method public abstract isSpellViewShown()Z
.end method

.method public abstract isSplitEnableOneHandKeypad()Z
.end method

.method public abstract isSplitOneHandKeypadRightSet()Z
.end method

.method public abstract isStartInputView()Z
.end method

.method public abstract isSupportFloatingHandWriting()Z
.end method

.method public abstract isSupportingKPM()Z
.end method

.method public abstract isSurveyModeEnabled()Z
.end method

.method public abstract isSwiftKeyMode()Z
.end method

.method public abstract isSwiftPhonepadInput()Z
.end method

.method public abstract isSymbolPopupKeyboardOnScreen()Z
.end method

.method public abstract isSymforVO()Z
.end method

.method public abstract isSympageClicked()Z
.end method

.method public abstract isTabletMode()Z
.end method

.method public abstract isTabletPhonepadNumberInputMode()Z
.end method

.method public abstract isTalkbackEnabled()Z
.end method

.method public abstract isThisKeyEnable(ILjava/lang/CharSequence;)Z
.end method

.method public abstract isTipsDialogDismissed()Z
.end method

.method public abstract isTipsPopup()Z
.end method

.method public abstract isToolbarNotRequired()Z
.end method

.method public abstract isToolbarVisible()Z
.end method

.method public abstract isTouchExplorationEnabled()Z
.end method

.method public abstract isTouchSymInCandidate()Z
.end method

.method public abstract isTouchUmlauntInCandidate()Z
.end method

.method public abstract isTraceOn()Z
.end method

.method public abstract isTransparentKeypad()Z
.end method

.method public abstract isUpdateKeyboardCodeValues()Z
.end method

.method public abstract isUseBstHWRPanel()Z
.end method

.method public abstract isUseDHWRPanel()Z
.end method

.method public abstract isUseGlobalKey()Z
.end method

.method public abstract isUsePopupKeyboard()Z
.end method

.method public abstract isUseVOHWRPanel()Z
.end method

.method public abstract isUseVOResourceManager()Z
.end method

.method public abstract isUseXT9Panel()Z
.end method

.method public abstract isUsedSplitKeyboard()Z
.end method

.method public abstract isUsingOnlyQwertyNumberAndSymbolKeyboard()Z
.end method

.method public abstract isVoiceInputSelected()Z
.end method

.method public abstract isWaitingforHWRResource()Z
.end method

.method public abstract isXT9DBUpdateSupported()Z
.end method

.method public abstract makeAutoReplacePrefKey(Lcom/ime/framework/common/Language;)Ljava/lang/String;
.end method

.method public abstract makeSelectLanguagePrefKey(I)Ljava/lang/String;
.end method

.method public abstract makeSelectLanguagePrefKey(Lcom/ime/framework/common/Language;)Ljava/lang/String;
.end method

.method public abstract makeSpellCheckerPrefKey(Lcom/ime/framework/common/Language;)Ljava/lang/String;
.end method

.method public abstract moveTrace(FFJ)V
.end method

.method public abstract needRtlSupport()Z
.end method

.method public abstract needToBackUpMobileKeyboardCustomKey(Z)V
.end method

.method public abstract nextSymbolsPage()V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onHwrPanelLongPressed(Landroid/graphics/Point;)Z
.end method

.method public abstract onHwrTouchCancel(IIJ)Z
.end method

.method public abstract onHwrTouchDown(IIJ)Z
.end method

.method public abstract onHwrTouchMove(IIJ)Z
.end method

.method public abstract onHwrTouchUp(IIJ)Z
.end method

.method public abstract onKey(I[I)V
.end method

.method public abstract onKeyDown(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract onKeyDownBeforeCallingSuperMethod(ILandroid/view/KeyEvent;)V
.end method

.method public abstract onKeyUp(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract onPress(I)V
.end method

.method public abstract onRelease(I)V
.end method

.method public abstract onTalkbackReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public abstract onText(Ljava/lang/CharSequence;)V
.end method

.method public abstract openInputMethodSetting(Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation
.end method

.method public abstract pickSuggestionManually(ILjava/lang/CharSequence;)V
.end method

.method public abstract playSoundEffect(I)V
.end method

.method public abstract playSoundEffect(IZ)V
.end method

.method public abstract playVibrateEffect(IZ)V
.end method

.method public abstract playVibrateEffect(IZZ)V
.end method

.method public abstract postPredictionWordMessage()V
.end method

.method public abstract postRecaptureWordXT9Message()V
.end method

.method public abstract prevSymbolsPage()V
.end method

.method public abstract previewTrace(Z)V
.end method

.method public abstract previewTraceforXT9()V
.end method

.method public abstract processKnobKeyEvents(Landroid/view/KeyEvent;)V
.end method

.method public abstract registerOcrSIPTextReceiver()V
.end method

.method public abstract releaseAllKeyPressed()V
.end method

.method public abstract releaseTrace(FFJ)V
.end method

.method public abstract reloadPredictionOnForLanguageChange()V
.end method

.method public abstract removeCachedMMKeyIconDrawable()V
.end method

.method public abstract removeMessageForMSG_KEY_SENT_TEXT_BY_INPUTCONNECTION()V
.end method

.method public abstract removeTerm(I)V
.end method

.method public abstract removeTerm(Ljava/lang/String;)V
.end method

.method public abstract requestHideSelf(I)V
.end method

.method public abstract resetAddwordListFile()V
.end method

.method public abstract resetBackUpInputMethodForMultiWindowArrangeSplit()V
.end method

.method public abstract resetHandWritingHasBoonUsed()V
.end method

.method public abstract resetKeyboardHeightDelta()V
.end method

.method public abstract resetKeyboardHeightLevel()V
.end method

.method public abstract resetMobileKeyboardByLocaleChange()V
.end method

.method public abstract resetMultiTap()V
.end method

.method public abstract resetMultiwindowArrange()V
.end method

.method public abstract resetNeedMakeNewViewForFloating()V
.end method

.method public abstract resetRemovedWordDB()V
.end method

.method public abstract resetSymbolsPage()V
.end method

.method public abstract saveToSymbHistory(Ljava/lang/String;)V
.end method

.method public abstract searchHanjaDirectly(Ljava/lang/String;)V
.end method

.method public abstract sendDownUpKeyEvents(I)V
.end method

.method public abstract sendInputLanguage()V
.end method

.method public abstract sendInputMethodType(I)V
.end method

.method public abstract sendSideSyncShiftState(Z)V
.end method

.method public abstract sendTalkbackDescription(Ljava/lang/String;)V
.end method

.method public abstract sendTalkbackDescriptionOnWindowShown()V
.end method

.method public abstract sendTouchEvent(Landroid/view/MotionEvent;Z)V
.end method

.method public abstract setAltPressedState(IZ)V
.end method

.method public abstract setAvailableHWRLanguage()V
.end method

.method public abstract setBackingView(Landroid/view/View;)V
.end method

.method public abstract setCandidateExpandDismissedByTouchInterceptor(Z)V
.end method

.method public abstract setCandidateExpandedFlag(Z)V
.end method

.method public abstract setCandidateView(Landroid/view/View;)V
.end method

.method public abstract setCandidates(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setCandidatesDelayed(Ljava/util/ArrayList;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract setCandidatesViewShown(Z)V
.end method

.method public abstract setCandidateviewStatus(I)V
.end method

.method public abstract setCarInDrivingMode(Z)V
.end method

.method public abstract setCheckDontShowPinchZoomGuide(Z)V
.end method

.method public abstract setCheckDontShowPredictiveTextGuide(Z)V
.end method

.method public abstract setChineseStrokeMode(Z)V
.end method

.method public abstract setCloseWb(Z)V
.end method

.method public abstract setCloudCandidateUpdate(Z)V
.end method

.method public abstract setCompletions([Landroid/view/inputmethod/CompletionInfo;)V
.end method

.method public abstract setContactCandidateUpdate(Z)V
.end method

.method public abstract setContextAwareUniqueID(Ljava/lang/String;)V
.end method

.method public abstract setCtrlPressedState(Z)V
.end method

.method public abstract setCurrentThaiVowelPageNum(I)V
.end method

.method public abstract setCursorMoveByComposingText(Z)V
.end method

.method public abstract setDefaultKeyboardHeight(I)V
.end method

.method public abstract setDefaultMMKeyBySecProductFeature()I
.end method

.method public abstract setDoneButton(Landroid/view/View;)V
.end method

.method public abstract setDontShowAllowAppPermissionGuideConsecutively(Z)V
.end method

.method public abstract setDontShowEmptyShortcutsGuideConsecutively(Z)V
.end method

.method public abstract setDontShowGestureGuideConsecutively(Z)V
.end method

.method public abstract setDontShowOneHandedGuideConsecutively(Z)V
.end method

.method public abstract setDontShowPenDetectionGuideConsecutively(Z)V
.end method

.method public abstract setDontShowSwiftkeyGuideConsecutively(Z)V
.end method

.method public abstract setDontShowTipTraceGuideConsecutively(Z)V
.end method

.method public abstract setDontShowTraceGuideConsecutively(Z)V
.end method

.method public abstract setDontShowXt9PersonalizerAttentionConsecutively(Z)V
.end method

.method public abstract setDontShowZoomPinchGuideConsecutively(Z)V
.end method

.method public abstract setEmoticonCategory(I)V
.end method

.method public abstract setEmoticonPopupKey(Lcom/ime/framework/view/Keyboard$Key;Ljava/lang/CharSequence;)V
.end method

.method public abstract setExtractArea(Landroid/view/View;)V
.end method

.method public abstract setFloatingInputMethod()V
.end method

.method public abstract setFocusOnCandidateView(Z)V
.end method

.method public abstract setFullLandMode(Z)V
.end method

.method public abstract setGetOcrString(Z)V
.end method

.method public abstract setHWkeyboardConnectionSetting()V
.end method

.method public abstract setHanjaStaus(Z)V
.end method

.method public abstract setHardwareAcceleratedDrawingEnabled(Z)V
.end method

.method public abstract setHwrCandidateStatus(IZ)V
.end method

.method public abstract setHwrPanelRect(IIII)V
.end method

.method public abstract setInMultiTapInput(Z)V
.end method

.method public abstract setInputFieldChanged(Z)V
.end method

.method public abstract setInputMethod(I)V
.end method

.method public abstract setInputRange(I)V
.end method

.method public abstract setInputView(Landroid/view/View;)V
.end method

.method public abstract setIsBstHwrCandidates(Z)V
.end method

.method public abstract setIsCurrentCarModeKnobSip(Z)V
.end method

.method public abstract setIsCurrentCarModeTouchSip(Z)V
.end method

.method public abstract setIsFinishingHanjaShowing(Z)V
.end method

.method public abstract setIsHwPhonepad(Z)V
.end method

.method public abstract setIsNumInputmodeBy123Key(Z)V
.end method

.method public abstract setIsPendingUpdateCandidateView(Z)V
.end method

.method public abstract setIsPrivateImeOptionsCSC(Z)V
.end method

.method public abstract setIsShuangPinMode(Z)V
.end method

.method public abstract setIsSpellViewBackSpace(Z)V
.end method

.method public abstract setIsUserSelecting(Z)V
.end method

.method public abstract setKeyboard(Lcom/ime/framework/view/Keyboard;)V
.end method

.method public abstract setKeyboardHeightDelta(I)V
.end method

.method public abstract setKeyboardHeightLevel(I)V
.end method

.method public abstract setKeyboardShowingStatus(Z)V
.end method

.method public abstract setKeyboardSize(II)V
.end method

.method public abstract setLangPopupShown(Z)V
.end method

.method public abstract setLanguage(IZ)V
.end method

.method public abstract setMagnitudeLevelFromSettingValue()V
.end method

.method public abstract setMaxlengthReached(Z)V
.end method

.method public abstract setMobileKeyboard(Z)V
.end method

.method public abstract setMobileKeyboardNeedFresh(Z)V
.end method

.method public abstract setMobileKeyboardSymPage(I)V
.end method

.method public abstract setMobilekeyboardSYMCandidate(Z)V
.end method

.method public abstract setMobilekeyboardUmlautCandidate(Z)V
.end method

.method public abstract setModeChangePopupShown(Z)V
.end method

.method public abstract setMultiWindowArrangeSplit(Z)V
.end method

.method public abstract setMultiWordAdded(Z)V
.end method

.method public abstract setNeedChangeKeyboardHeight(Z)V
.end method

.method public abstract setNeedToHideKeyboard(Z)V
.end method

.method public abstract setNeedToRemoveKPMEx(Z)V
.end method

.method public abstract setNeedToRemoveLPMHistory(Z)V
.end method

.method public abstract setOneHandBgDim(Z)V
.end method

.method public abstract setOneHandKeypadRightSet(Z)V
.end method

.method public abstract setOneHandLayoutShown()V
.end method

.method public abstract setPenDetectionHwrMode(Z)V
.end method

.method public abstract setPhoneticSpellLayout(Ljava/util/ArrayList;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract setPopupDialog(Landroid/app/Dialog;)V
.end method

.method public abstract setPreOneHandSettingValue(I)V
.end method

.method public abstract setPredictionModeForExceptionLanguage(Landroid/view/inputmethod/EditorInfo;)V
.end method

.method public abstract setPreferenceInputMethod()V
.end method

.method public abstract setPridictionFlag(Z)V
.end method

.method public abstract setProdictionWord(Z)V
.end method

.method public abstract setQwertyInputMethod()V
.end method

.method public abstract setRestartLangPopup(Z)V
.end method

.method public abstract setSelectionBgOnCandidateList(IZ)V
.end method

.method public abstract setShowCMToolbar(Z)V
.end method

.method public abstract setShownMobileKeyboardPopup(Z)V
.end method

.method public abstract setSideSynShiftState(Z)V
.end method

.method public abstract setSideSyncKeyLanguage(I)V
.end method

.method public abstract setSideSyncLanguage(I)V
.end method

.method public abstract setSideSyncPredictiveText(Ljava/lang/String;)V
.end method

.method public abstract setSideSyncShiftPressedState(Z)V
.end method

.method public abstract setSoundEffectController(Lcom/ime/framework/effect/SoundEffectController;)V
.end method

.method public abstract setSpaceLanguageChange(Z)V
.end method

.method public abstract setSpellLayout(Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;)V
.end method

.method public abstract setSplitInputMethod()V
.end method

.method public abstract setSymPageClick(Z)V
.end method

.method public abstract setSymforVO(Z)V
.end method

.method public abstract setTipsDialogDismissed(Z)V
.end method

.method public abstract setToolbarVisibility(Z)V
.end method

.method public abstract setTouchSyminCandidate(Z)V
.end method

.method public abstract setTouchUmlauntInCandidate(Z)V
.end method

.method public abstract setUniversalSwitchMode(Z)V
.end method

.method public abstract setVibrateController(Lcom/ime/framework/effect/VibrateController;)V
.end method

.method public abstract setWindowShownState(Z)V
.end method

.method public abstract setWordCandidateData(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setXt9DBController(Lcom/ime/framework/engine/xt9/Xt9DBController;)V
.end method

.method public abstract setXt9NextWordPrediction(Z)V
.end method

.method public abstract setXt9Recapture(Z)V
.end method

.method public abstract setmIsFullSeclectedTextState(Z)V
.end method

.method public abstract showAllowAppPermissionGuideDialog()V
.end method

.method public abstract showDiscoverability(I)V
.end method

.method public abstract showDlgMsgBox()V
.end method

.method public abstract showDlgMsgBoxOriginal()V
.end method

.method public abstract showEmptyShortcutsGuideDialog()V
.end method

.method public abstract showHalfFullWidthSwitchDialog()V
.end method

.method public abstract showImePicker()V
.end method

.method public abstract showImeVersionInfo()V
.end method

.method public abstract showKeyboardAfterClipboardClosed(Z)V
.end method

.method public abstract showLanguageSelectDialog()V
.end method

.method public abstract showModeChangePopupKeyboard()V
.end method

.method public abstract showModeChangePopupKeyboard(I)V
.end method

.method public abstract showOneHandedGuideDialog()V
.end method

.method public abstract showOrDismissPoup(Landroid/view/View;Lcom/ime/framework/view/toolbar/ToolBarView$ContentViewType;)V
.end method

.method public abstract showPenDetectionGuideDialog()V
.end method

.method public abstract showPenDetectionGuidePopupMessage()V
.end method

.method public abstract showPinchZoomGuideDialog()V
.end method

.method public abstract showSoftFuncKbd()V
.end method

.method public abstract showSwiftkeyGuideDialog()V
.end method

.method public abstract showSwiftkeyRemoveTermDialog(Ljava/lang/String;I)V
.end method

.method public abstract showSwiftkeyRemoveTermDialogForcely(Ljava/lang/String;I)V
.end method

.method public abstract showSymbolPopupKeyboard()V
.end method

.method public abstract showTipsDialog()V
.end method

.method public abstract showTipsDialogByIndex()V
.end method

.method public abstract showTipsHwrInstallGuideDialog()V
.end method

.method public abstract showTraceGuideDialog()V
.end method

.method public abstract showTraceGuidePopupMessage()V
.end method

.method public abstract showVoiceLegalInformation()V
.end method

.method public abstract showXt9PersonalizerAttentionDialog()V
.end method

.method public abstract showXt9_9RemoveTermDialog(Ljava/lang/String;I)V
.end method

.method public abstract startBoost(I)V
.end method

.method public abstract startHwLongPressPopup(Ljava/lang/Class;Ljava/lang/CharSequence;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation
.end method

.method public abstract startInput(Landroid/view/inputmethod/EditorInfo;Z)V
.end method

.method public abstract startInputView(Landroid/view/inputmethod/EditorInfo;Z)V
.end method

.method public abstract startSuggestionDelay()V
.end method

.method public abstract startTrace(FFJ)V
.end method

.method public abstract startVoiceListening()V
.end method

.method public abstract suggestionPicked(Ljava/lang/String;)V
.end method

.method public abstract swipeDown()V
.end method

.method public abstract swipeLeft()V
.end method

.method public abstract swipeRight()V
.end method

.method public abstract swipeUp()V
.end method

.method public abstract toggleLanguage(Z)V
.end method

.method public abstract translatelanguageID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract translatelanguageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract trimSwiftkeyMemory()V
.end method

.method public abstract unregisterOcrSIPTextReceiver()V
.end method

.method public abstract updateAcuteAccentState(Z)V
.end method

.method public abstract updateCandidates(I)V
.end method

.method public abstract updateChineseFullStopCharacter()V
.end method

.method public abstract updateConfiguration()V
.end method

.method public abstract updateCtrlState()V
.end method

.method public abstract updateEmoticonPopupKey(Ljava/lang/CharSequence;)V
.end method

.method public abstract updateIndianToggleState()V
.end method

.method public abstract updateIndianVowelRowState()V
.end method

.method public abstract updateKeyboardView()V
.end method

.method public abstract updateMagnificationStatus()V
.end method

.method public abstract updatePhoneticSpell(I)V
.end method

.method public abstract updatePhoneticSpell(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updatePhoneticSpellLayoutStatus()V
.end method

.method public abstract updatePopupKeyboard()V
.end method

.method public abstract updateSelection(IIIIII)V
.end method

.method public abstract updateShiftState()V
.end method

.method public abstract updateSoftFuncKeyboardView()V
.end method

.method public abstract updateSpellView()V
.end method

.method public abstract updateSpellView(Ljava/lang/CharSequence;Z)V
.end method

.method public abstract updateSpellViewCloudIcon(Z)V
.end method

.method public abstract updateSupportLanguageListforSwiftkey()V
.end method

.method public abstract updateSytemOneHandOperationSetting(Z)V
.end method

.method public abstract updateThaiKeyboardView(I)V
.end method

.method public abstract updateTipsPopupCheckBoxStatus(Z)V
.end method

.method public abstract updateVOHWRSuggestion()V
.end method

.method public abstract updateVOHWRSuggestion(I)V
.end method

.method public abstract updateViewStatus()V
.end method

.method public abstract updateWacomState()V
.end method

.method public abstract useAnimationOfExpandCandidate()Z
.end method

.method public abstract useAnimationOfMiniKeyboard()Z
.end method

.method public abstract useOnlyNormalKeyboard()Z
.end method

.method public abstract viewClicked(Z)V
.end method

.method public abstract windowHidden()V
.end method
