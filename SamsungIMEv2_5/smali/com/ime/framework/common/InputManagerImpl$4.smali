.class Lcom/ime/framework/common/InputManagerImpl$4;
.super Landroid/os/Handler;
.source "InputManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/framework/common/InputManagerImpl;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/common/InputManagerImpl;


# direct methods
.method constructor <init>(Lcom/ime/framework/common/InputManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v25

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mIsSwiftKeyMode:Z
    invoke-static/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->access$2100(Lcom/ime/framework/common/InputManagerImpl;)Z

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mRepository:Lcom/ime/framework/repository/Repository;
    invoke-static/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->access$2200(Lcom/ime/framework/common/InputManagerImpl;)Lcom/ime/framework/repository/Repository;

    move-result-object v27

    const-string v28, "SETTINGS_USE_STANDARD_DATA"

    const/16 v29, 0x1

    invoke-interface/range {v27 .. v29}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v22

    const-string v27, "allow_app_permission"

    const/16 v28, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    const/4 v7, 0x0

    const/4 v14, 0x0

    const-string v27, "ro.csc.sales_code"

    invoke-static/range {v27 .. v27}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v27, v0

    sparse-switch v27, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    const-string v27, "first_pinch_zoom_execution"

    const/16 v28, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mDontShowZoomPinchGuideConsecutively:Z
    invoke-static/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->access$2300(Lcom/ime/framework/common/InputManagerImpl;)Z

    move-result v27

    if-nez v27, :cond_1

    if-eqz v9, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;
    invoke-static/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->access$2400(Lcom/ime/framework/common/InputManagerImpl;)Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v27

    if-nez v27, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->showPinchZoomGuideDialog()V

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mRepository:Lcom/ime/framework/repository/Repository;
    invoke-static/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->access$2200(Lcom/ime/framework/common/InputManagerImpl;)Lcom/ime/framework/repository/Repository;

    move-result-object v27

    const-string v28, "IS_POPUP_SHOW"

    const/16 v29, 0x0

    invoke-interface/range {v27 .. v29}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto :goto_0

    :sswitch_1
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mClipBoardServiceEx:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->access$2500(Lcom/ime/framework/common/InputManagerImpl;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v27

    if-eqz v27, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mClipBoardServiceEx:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->access$2500(Lcom/ime/framework/common/InputManagerImpl;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/sec/clipboard/ClipboardExManager;->isShowing()Z

    move-result v6

    :cond_2
    const-string v27, "first_trace_execution"

    const/16 v28, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mRepository:Lcom/ime/framework/repository/Repository;
    invoke-static/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->access$2200(Lcom/ime/framework/common/InputManagerImpl;)Lcom/ime/framework/repository/Repository;

    move-result-object v27

    const-string v28, "IS_POPUP_SHOW"

    const/16 v29, 0x0

    invoke-interface/range {v27 .. v29}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mDontShowTraceGuideConsecutively:Z
    invoke-static/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->access$2600(Lcom/ime/framework/common/InputManagerImpl;)Z

    move-result v27

    if-nez v27, :cond_0

    if-eqz v9, :cond_0

    if-nez v5, :cond_0

    invoke-static {}, Lcom/ime/framework/repository/KeyboardStatus;->isSetupWizardRunning()Z

    move-result v27

    if-nez v27, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;
    invoke-static/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->access$2400(Lcom/ime/framework/common/InputManagerImpl;)Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v27

    if-nez v27, :cond_0

    invoke-static {}, Lcom/ime/framework/repository/PropertyItems;->isEnableTracePopupGuide()Z

    move-result v27

    if-eqz v27, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mIsPredictionOn:Z
    invoke-static/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->access$2700(Lcom/ime/framework/common/InputManagerImpl;)Z

    move-result v27

    if-eqz v27, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mRepository:Lcom/ime/framework/repository/Repository;
    invoke-static/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->access$2200(Lcom/ime/framework/common/InputManagerImpl;)Lcom/ime/framework/repository/Repository;

    move-result-object v27

    const-string v28, "SETTINGS_DEFAULT_TRACE"

    const/16 v29, 0x0

    invoke-interface/range {v27 .. v29}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v27

    if-eqz v27, :cond_0

    if-nez v6, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->showTraceGuideDialog()V

    goto/16 :goto_0

    :sswitch_2
    const-string v27, "allow_app_permission_checkbox"

    const/16 v28, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    # invokes: Lcom/ime/framework/common/InputManagerImpl;->updateSetupWizardState()V
    invoke-static/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->access$2800(Lcom/ime/framework/common/InputManagerImpl;)V

    invoke-static {}, Lcom/ime/framework/repository/KeyboardStatus;->isSetupWizardRunning()Z

    move-result v27

    if-nez v27, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->isEnabledMagnification()Z

    move-result v27

    if-nez v27, :cond_0

    invoke-static {}, Lcom/ime/framework/repository/InputStatus;->isKNOXStatus()Z

    move-result v27

    if-nez v27, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->isTalkbackEnabled()Z

    move-result v27

    if-nez v27, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->isCurrentCarModeKnobSIP()Z

    move-result v27

    if-nez v27, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->isCurrentCarModeTouchSIP()Z

    move-result v27

    if-nez v27, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mDontShowAllowAppPermissionGuideConsecutively:Z
    invoke-static/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->access$2900(Lcom/ime/framework/common/InputManagerImpl;)Z

    move-result v27

    if-nez v27, :cond_0

    if-eqz v20, :cond_3

    if-nez v8, :cond_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->showAllowAppPermissionGuideDialog()V

    goto/16 :goto_0

    :sswitch_3
    const-string v27, "first_swiftkey_execution"

    const/16 v28, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v27

    sget-object v28, Lcom/sec/android/app/CscFeatureTagSipDummy;->TAG_CSCFEATURE_SIP_DISABLE_PERSONALIZED_DATA:Ljava/lang/String;

    invoke-virtual/range {v27 .. v28}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mRepository:Lcom/ime/framework/repository/Repository;
    invoke-static/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->access$2200(Lcom/ime/framework/common/InputManagerImpl;)Lcom/ime/framework/repository/Repository;

    move-result-object v28

    const-string v29, "SETTINGS_USE_STANDARD_DATA"

    if-nez v12, :cond_4

    const/16 v27, 0x1

    :goto_1
    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    # invokes: Lcom/ime/framework/common/InputManagerImpl;->updateSetupWizardState()V
    invoke-static/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->access$2800(Lcom/ime/framework/common/InputManagerImpl;)V

    invoke-static {}, Lcom/ime/framework/repository/KeyboardStatus;->isSetupWizardRunning()Z

    move-result v27

    if-nez v27, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->isEnabledMagnification()Z

    move-result v27

    if-nez v27, :cond_0

    if-eqz v21, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mIsPredictionOn:Z
    invoke-static/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->access$2700(Lcom/ime/framework/common/InputManagerImpl;)Z

    move-result v27

    if-eqz v27, :cond_5

    const-string v27, "SETTINGS_DEFAULT_PREDICTION_ON"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v28, v0

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mIsPredictionOn:Z
    invoke-static/range {v28 .. v28}, Lcom/ime/framework/common/InputManagerImpl;->access$2700(Lcom/ime/framework/common/InputManagerImpl;)Z

    move-result v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v27

    if-eqz v27, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;
    invoke-static/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->access$2400(Lcom/ime/framework/common/InputManagerImpl;)Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v27

    if-nez v27, :cond_5

    if-eqz v9, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->isTalkbackEnabled()Z

    move-result v27

    if-nez v27, :cond_5

    if-eqz v22, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mDontShowSwiftkeyGuideConsecutively:Z
    invoke-static/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->access$3000(Lcom/ime/framework/common/InputManagerImpl;)Z

    move-result v27

    if-nez v27, :cond_5

    const-string v27, "VZW"

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->showSwiftkeyGuideDialog()V

    goto/16 :goto_0

    :cond_4
    const/16 v27, 0x0

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mRepository:Lcom/ime/framework/repository/Repository;
    invoke-static/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->access$2200(Lcom/ime/framework/common/InputManagerImpl;)Lcom/ime/framework/repository/Repository;

    move-result-object v27

    const-string v28, "IS_POPUP_SHOW"

    const/16 v29, 0x0

    invoke-interface/range {v27 .. v29}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mIsKorMode:Z
    invoke-static/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->access$3100(Lcom/ime/framework/common/InputManagerImpl;)Z

    move-result v27

    if-nez v27, :cond_0

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isNumberInputClass()Z

    move-result v27

    if-nez v27, :cond_0

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isPhoneNumberInputClass()Z

    move-result v27

    if-nez v27, :cond_0

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isDateTimeInputClass()Z

    move-result v27

    if-nez v27, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->isDateTimeNumberPickerEditor()Z

    move-result v27

    if-nez v27, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->isCurrentCarModeKnobSIP()Z

    move-result v27

    if-nez v27, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->isCurrentCarModeTouchSIP()Z

    move-result v27

    if-nez v27, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    const/16 v28, 0x64

    invoke-virtual/range {v27 .. v28}, Lcom/ime/framework/common/InputManagerImpl;->showDiscoverability(I)V

    goto/16 :goto_0

    :sswitch_4
    # getter for: Lcom/ime/framework/common/InputManagerImpl;->sContext:Landroid/content/Context;
    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->access$1600()Landroid/content/Context;

    move-result-object v27

    const v28, 0x7f0d02c9

    const/16 v29, 0x0

    invoke-static/range {v27 .. v29}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :sswitch_5
    const-string v27, "SETTINGS_DEFAULT_PREDICTION_ON"

    const/16 v28, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    const-string v27, "first_xt9_9_execution"

    const/16 v28, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mRepository:Lcom/ime/framework/repository/Repository;
    invoke-static/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->access$2200(Lcom/ime/framework/common/InputManagerImpl;)Lcom/ime/framework/repository/Repository;

    move-result-object v27

    const-string v28, "XT9_DLM_ENABLE"

    const/16 v29, 0x1

    invoke-interface/range {v27 .. v29}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;
    invoke-static/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->access$2400(Lcom/ime/framework/common/InputManagerImpl;)Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v27

    if-nez v27, :cond_6

    if-eqz v14, :cond_6

    invoke-static {}, Lcom/ime/framework/repository/KeyboardStatus;->isSetupWizardRunning()Z

    move-result v27

    if-nez v27, :cond_6

    if-eqz v9, :cond_6

    if-eqz v7, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mDontShowXt9PersonalizerConsecutively:Z
    invoke-static/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->access$3200(Lcom/ime/framework/common/InputManagerImpl;)Z

    move-result v27

    if-nez v27, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mIsChnMode:Z
    invoke-static/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->access$3300(Lcom/ime/framework/common/InputManagerImpl;)Z

    move-result v27

    if-nez v27, :cond_6

    const-string v27, "VZW"

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->showXt9PersonalizerAttentionDialog()V

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mRepository:Lcom/ime/framework/repository/Repository;
    invoke-static/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->access$2200(Lcom/ime/framework/common/InputManagerImpl;)Lcom/ime/framework/repository/Repository;

    move-result-object v27

    const-string v28, "IS_POPUP_SHOW"

    const/16 v29, 0x0

    invoke-interface/range {v27 .. v29}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :sswitch_6
    const-string v27, "first_trace_execution"

    const/16 v28, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v27

    if-eqz v27, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mIsPredictionOn:Z
    invoke-static/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->access$2700(Lcom/ime/framework/common/InputManagerImpl;)Z

    move-result v27

    if-eqz v27, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mRepository:Lcom/ime/framework/repository/Repository;
    invoke-static/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->access$2200(Lcom/ime/framework/common/InputManagerImpl;)Lcom/ime/framework/repository/Repository;

    move-result-object v27

    const-string v28, "SETTINGS_DEFAULT_TRACE"

    const/16 v29, 0x0

    invoke-interface/range {v27 .. v29}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v27

    if-eqz v27, :cond_8

    const/16 v17, 0x1

    :goto_2
    const-string v27, "first_one_handed_execution"

    const/16 v28, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;
    invoke-static/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->access$2400(Lcom/ime/framework/common/InputManagerImpl;)Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mRepository:Lcom/ime/framework/repository/Repository;
    invoke-static/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->access$2200(Lcom/ime/framework/common/InputManagerImpl;)Lcom/ime/framework/repository/Repository;

    move-result-object v27

    const-string v28, "IS_LANDSCAPE"

    const/16 v29, 0x0

    invoke-interface/range {v27 .. v29}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v10

    if-nez v10, :cond_9

    if-nez v17, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mDontShowOneHandedGuideConsecutively:Z
    invoke-static/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->access$3400(Lcom/ime/framework/common/InputManagerImpl;)Z

    move-result v27

    if-nez v27, :cond_9

    if-eqz v9, :cond_9

    if-eqz v4, :cond_7

    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v4, v0, :cond_9

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->getSystemOneHandOperationSettingValue()I

    move-result v27

    if-eqz v27, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->showOneHandedGuideDialog()V

    goto/16 :goto_0

    :cond_8
    const/16 v17, 0x0

    goto :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mRepository:Lcom/ime/framework/repository/Repository;
    invoke-static/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->access$2200(Lcom/ime/framework/common/InputManagerImpl;)Lcom/ime/framework/repository/Repository;

    move-result-object v27

    const-string v28, "IS_POPUP_SHOW"

    const/16 v29, 0x0

    invoke-interface/range {v27 .. v29}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->showPenDetectionGuideDialog()V

    goto/16 :goto_0

    :sswitch_8
    invoke-static {}, Lcom/dragon/android/voiceime/ui/VoiceDialog;->getInstance()Lcom/dragon/android/voiceime/ui/VoiceDialog;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/dragon/android/voiceime/ui/VoiceDialog;->showVoiceLegalInfomation()V

    goto/16 :goto_0

    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mInputController:Lcom/ime/framework/input/InputController;
    invoke-static/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->access$1500(Lcom/ime/framework/common/InputManagerImpl;)Lcom/ime/framework/input/InputController;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Lcom/ime/framework/input/InputController;->predictionWord()Z

    goto/16 :goto_0

    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mInputController:Lcom/ime/framework/input/InputController;
    invoke-static/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->access$1500(Lcom/ime/framework/common/InputManagerImpl;)Lcom/ime/framework/input/InputController;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Lcom/ime/framework/input/InputController;->recaptureWordXT9()V

    goto/16 :goto_0

    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mXt9Version:I
    invoke-static/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->access$3500(Lcom/ime/framework/common/InputManagerImpl;)I

    move-result v27

    const/16 v28, 0x5

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mInputController:Lcom/ime/framework/input/InputController;
    invoke-static/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->access$1500(Lcom/ime/framework/common/InputManagerImpl;)Lcom/ime/framework/input/InputController;

    move-result-object v27

    const/16 v28, 0x1

    const/16 v29, 0x0

    invoke-interface/range {v27 .. v29}, Lcom/ime/framework/input/InputController;->previewTrace(IZ)V

    goto/16 :goto_0

    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mXt9Version:I
    invoke-static/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->access$3500(Lcom/ime/framework/common/InputManagerImpl;)I

    move-result v27

    const/16 v28, 0x5

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mInputController:Lcom/ime/framework/input/InputController;
    invoke-static/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->access$1500(Lcom/ime/framework/common/InputManagerImpl;)Lcom/ime/framework/input/InputController;

    move-result-object v27

    const/16 v28, 0x1

    const/16 v29, 0x1

    invoke-interface/range {v27 .. v29}, Lcom/ime/framework/input/InputController;->previewTrace(IZ)V

    goto/16 :goto_0

    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mXt9Version:I
    invoke-static/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->access$3500(Lcom/ime/framework/common/InputManagerImpl;)I

    move-result v27

    const/16 v28, 0x5

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mInputController:Lcom/ime/framework/input/InputController;
    invoke-static/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->access$1500(Lcom/ime/framework/common/InputManagerImpl;)Lcom/ime/framework/input/InputController;

    move-result-object v27

    const/16 v28, 0x9

    const/16 v29, 0x0

    invoke-interface/range {v27 .. v29}, Lcom/ime/framework/input/InputController;->previewTrace(IZ)V

    goto/16 :goto_0

    :sswitch_e
    const-string v27, "first_pinch_zoom_execution"

    const/16 v28, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    const-string v27, "first_trace_execution"

    const/16 v28, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mDontShowZoomPinchGuideConsecutively:Z
    invoke-static/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->access$2300(Lcom/ime/framework/common/InputManagerImpl;)Z

    move-result v27

    if-nez v27, :cond_a

    if-eqz v13, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;
    invoke-static/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->access$2400(Lcom/ime/framework/common/InputManagerImpl;)Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v27

    if-nez v27, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->showPinchZoomGuideDialog()V

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mDontShowTraceGuideConsecutively:Z
    invoke-static/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->access$2600(Lcom/ime/framework/common/InputManagerImpl;)Z

    move-result v27

    if-nez v27, :cond_b

    if-eqz v16, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;
    invoke-static/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->access$2400(Lcom/ime/framework/common/InputManagerImpl;)Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v27

    if-nez v27, :cond_b

    invoke-static {}, Lcom/ime/framework/repository/PropertyItems;->isEnableTracePopupGuide()Z

    move-result v27

    if-eqz v27, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mIsPredictionOn:Z
    invoke-static/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->access$2700(Lcom/ime/framework/common/InputManagerImpl;)Z

    move-result v27

    if-eqz v27, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mRepository:Lcom/ime/framework/repository/Repository;
    invoke-static/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->access$2200(Lcom/ime/framework/common/InputManagerImpl;)Lcom/ime/framework/repository/Repository;

    move-result-object v27

    const-string v28, "SETTINGS_DEFAULT_TRACE"

    const/16 v29, 0x0

    invoke-interface/range {v27 .. v29}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v27

    if-eqz v27, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->showTraceGuideDialog()V

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mRepository:Lcom/ime/framework/repository/Repository;
    invoke-static/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->access$2200(Lcom/ime/framework/common/InputManagerImpl;)Lcom/ime/framework/repository/Repository;

    move-result-object v27

    const-string v28, "IS_POPUP_SHOW"

    const/16 v29, 0x0

    invoke-interface/range {v27 .. v29}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :sswitch_f
    const-string v27, "first_swiftkey_execution"

    const/16 v28, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    const-string v27, "first_one_handed_execution"

    const/16 v28, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    invoke-static {}, Lcom/ime/framework/repository/KeyboardStatus;->isSetupWizardRunning()Z

    move-result v27

    if-nez v27, :cond_f

    if-eqz v21, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mIsPredictionOn:Z
    invoke-static/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->access$2700(Lcom/ime/framework/common/InputManagerImpl;)Z

    move-result v27

    if-eqz v27, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;
    invoke-static/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->access$2400(Lcom/ime/framework/common/InputManagerImpl;)Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v27

    if-nez v27, :cond_c

    if-eqz v15, :cond_c

    if-eqz v22, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mDontShowSwiftkeyGuideConsecutively:Z
    invoke-static/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->access$3000(Lcom/ime/framework/common/InputManagerImpl;)Z

    move-result v27

    if-nez v27, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mRepository:Lcom/ime/framework/repository/Repository;
    invoke-static/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->access$2200(Lcom/ime/framework/common/InputManagerImpl;)Lcom/ime/framework/repository/Repository;

    move-result-object v27

    const-string v28, "IS_POPUP_SHOW"

    const/16 v29, 0x0

    invoke-interface/range {v27 .. v29}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->showTipsSwiftkeyGuideDialog()V

    goto/16 :goto_0

    :cond_c
    if-eqz v11, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mDontShowOneHandedGuideConsecutively:Z
    invoke-static/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->access$3400(Lcom/ime/framework/common/InputManagerImpl;)Z

    move-result v27

    if-nez v27, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;
    invoke-static/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->access$2400(Lcom/ime/framework/common/InputManagerImpl;)Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v27

    if-nez v27, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->getSystemOneHandOperationSettingValue()I

    move-result v27

    if-eqz v27, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->getSystemHandAdaptableOperationSettingValue()I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mIsOrientationLandscape:Z
    invoke-static/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->access$3600(Lcom/ime/framework/common/InputManagerImpl;)Z

    move-result v27

    if-nez v27, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->showTipsOneHandedGuideDialog()V

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->isTipsDialogDismissed()Z

    move-result v27

    if-nez v27, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mRepository:Lcom/ime/framework/repository/Repository;
    invoke-static/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->access$2200(Lcom/ime/framework/common/InputManagerImpl;)Lcom/ime/framework/repository/Repository;

    move-result-object v27

    const-string v28, "IS_POPUP_SHOW"

    const/16 v29, 0x0

    invoke-interface/range {v27 .. v29}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->showTipsDialogByIndex()V

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mRepository:Lcom/ime/framework/repository/Repository;
    invoke-static/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->access$2200(Lcom/ime/framework/common/InputManagerImpl;)Lcom/ime/framework/repository/Repository;

    move-result-object v27

    const-string v28, "IS_POPUP_SHOW"

    const/16 v29, 0x0

    invoke-interface/range {v27 .. v29}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mRepository:Lcom/ime/framework/repository/Repository;
    invoke-static/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->access$2200(Lcom/ime/framework/common/InputManagerImpl;)Lcom/ime/framework/repository/Repository;

    move-result-object v27

    const-string v28, "IS_POPUP_SHOW"

    const/16 v29, 0x0

    invoke-interface/range {v27 .. v29}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :sswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mInputController:Lcom/ime/framework/input/InputController;
    invoke-static/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->access$1500(Lcom/ime/framework/common/InputManagerImpl;)Lcom/ime/framework/input/InputController;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Lcom/ime/framework/input/InputController;->updateSuggestionForSwiftKey()V

    goto/16 :goto_0

    :sswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mViewController:Lcom/ime/framework/view/ViewController;
    invoke-static/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->access$300(Lcom/ime/framework/common/InputManagerImpl;)Lcom/ime/framework/view/ViewController;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Lcom/ime/framework/view/ViewController;->showSymbolPopupKeyboard()V

    goto/16 :goto_0

    :sswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    # invokes: Lcom/ime/framework/common/InputManagerImpl;->updateCandidates()V
    invoke-static/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->access$3700(Lcom/ime/framework/common/InputManagerImpl;)V

    goto/16 :goto_0

    :sswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    # invokes: Lcom/ime/framework/common/InputManagerImpl;->buildSuggestions()V
    invoke-static/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->access$3800(Lcom/ime/framework/common/InputManagerImpl;)V

    goto/16 :goto_0

    :sswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Ljava/util/ArrayList;

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/ime/framework/common/InputManagerImpl;->setCandidates(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :sswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->isEmoticonMode()Z

    move-result v27

    if-nez v27, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->updateVOHWRSuggestion()V

    goto/16 :goto_0

    :sswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/ime/framework/common/InputManagerImpl;->getKeyboardKeyList(Z)Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/ime/framework/common/InputManagerImpl;->getInputView(Z)Landroid/view/View;

    move-result-object v27

    check-cast v27, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/ime/framework/view/AbstractKeyboardView;->mQwertyKey:Lcom/ime/framework/view/Keyboard$Key;

    move-object/from16 v23, v0

    if-eqz v19, :cond_0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/ime/framework/view/Keyboard$Key;

    if-eqz v23, :cond_10

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget v27, v27, v28

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aget v28, v28, v29

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_10

    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/ime/framework/view/Keyboard$Key;->focusstate:Z

    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/ime/framework/view/Keyboard$Key;->pressedstate:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/ime/framework/common/InputManagerImpl;->getInputView(Z)Landroid/view/View;

    move-result-object v27

    check-cast v27, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/ime/framework/view/AbstractKeyboardView;->mCurrentKey:Lcom/ime/framework/view/Keyboard$Key;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/ime/framework/common/InputManagerImpl;->getInputView(Z)Landroid/view/View;

    move-result-object v27

    check-cast v27, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/AbstractKeyboardView;->invalidateKey(Lcom/ime/framework/view/Keyboard$Key;)V

    goto/16 :goto_0

    :sswitch_17
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mViewController:Lcom/ime/framework/view/ViewController;
    invoke-static/range {v27 .. v27}, Lcom/ime/framework/common/InputManagerImpl;->access$300(Lcom/ime/framework/common/InputManagerImpl;)Lcom/ime/framework/view/ViewController;

    move-result-object v28

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_11

    const/16 v27, 0x1

    :goto_3
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-interface {v0, v1}, Lcom/ime/framework/view/ViewController;->setToolbarVisiblility(Z)V

    goto/16 :goto_0

    :cond_11
    const/16 v27, 0x0

    goto :goto_3

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x11 -> :sswitch_1
        0x13 -> :sswitch_9
        0x14 -> :sswitch_12
        0x16 -> :sswitch_3
        0x17 -> :sswitch_6
        0x18 -> :sswitch_e
        0x19 -> :sswitch_7
        0x1a -> :sswitch_f
        0x1c -> :sswitch_b
        0x1d -> :sswitch_c
        0x1e -> :sswitch_5
        0x1f -> :sswitch_a
        0x24 -> :sswitch_10
        0x27 -> :sswitch_11
        0x28 -> :sswitch_14
        0x29 -> :sswitch_13
        0x32 -> :sswitch_15
        0x33 -> :sswitch_d
        0x35 -> :sswitch_16
        0x39 -> :sswitch_4
        0x46 -> :sswitch_2
        0x4d -> :sswitch_8
        0x4e -> :sswitch_17
    .end sparse-switch
.end method
