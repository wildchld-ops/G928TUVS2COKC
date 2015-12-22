.class Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;
.super Ljava/lang/Object;
.source "ToggleScreenMagnificationPreferenceFragment.java"

# interfaces
.implements Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->onInstallSwitchBarToggleSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeCheckedChanged(Lcom/android/settings/widget/ToggleSwitch;Z)Z
    .locals 16

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    const v11, 0x7f0a08bf

    invoke-virtual {v10, v11}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    invoke-virtual {v12}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a0924

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v4, v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # setter for: Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->dialog_content:Ljava/lang/String;
    invoke-static {v10, v11}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->access$002(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;Ljava/lang/String;)Ljava/lang/String;

    const/4 v10, 0x1

    move/from16 v0, p2

    if-ne v0, v10, :cond_13

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v10

    const-string v11, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FINGER_AIR_VIEW"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    # getter for: Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->dialog_content:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->access$000(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n- "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    invoke-virtual {v12}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a1157

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # setter for: Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->dialog_content:Ljava/lang/String;
    invoke-static {v10, v11}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->access$002(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    # getter for: Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->option_flag:I
    invoke-static {v11}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->access$100(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    # setter for: Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->option_flag:I
    invoke-static {v10, v11}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->access$102(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;I)I

    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v10

    if-eqz v10, :cond_7

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    # invokes: Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v10}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->access$200(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;)Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "air_view_master_onoff"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_6

    const/4 v2, 0x1

    :cond_0
    :goto_0
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v10

    const-string v11, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    # getter for: Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->option_flag:I
    invoke-static {v11}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->access$100(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;)I

    move-result v11

    add-int/lit8 v11, v11, 0x4

    # setter for: Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->option_flag:I
    invoke-static {v10, v11}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->access$102(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;I)I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    # getter for: Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->dialog_content:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->access$000(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n- "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    invoke-virtual {v12}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a09fe

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # setter for: Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->dialog_content:Ljava/lang/String;
    invoke-static {v10, v11}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->access$002(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    # getter for: Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->dialog_content:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->access$000(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n- "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    invoke-virtual {v12}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a09df

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # setter for: Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->dialog_content:Ljava/lang/String;
    invoke-static {v10, v11}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->access$002(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    iget-object v10, v10, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->context:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/settings/Utils;->isSupportPenUsp10(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    # invokes: Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v10}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->access$500(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;)Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "air_button_onoff"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_b

    const/4 v1, 0x1

    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    # invokes: Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v10}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->access$600(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;)Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "pen_writing_buddy"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_c

    const/4 v9, 0x1

    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    # invokes: Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v10}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->access$700(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;)Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "any_screen_enabled"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    # invokes: Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v10}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->access$800(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;)Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "interactionarea_switch"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_d

    :cond_3
    const/4 v5, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    iget-object v10, v10, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v11, "com.sec.feature.floating_side_softkey"

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_f

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    # invokes: Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v10}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->access$900(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;)Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "sidesoftkey_switch"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_e

    const/4 v7, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    # getter for: Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->dialog_content:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->access$000(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n- "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    invoke-virtual {v12}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a0a01

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # setter for: Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->dialog_content:Ljava/lang/String;
    invoke-static {v10, v11}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->access$002(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    # getter for: Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->dialog_content:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->access$000(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n- "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    invoke-virtual {v12}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a0a02

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # setter for: Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->dialog_content:Ljava/lang/String;
    invoke-static {v10, v11}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->access$002(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;Ljava/lang/String;)Ljava/lang/String;

    :goto_5
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    # getter for: Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->option_flag:I
    invoke-static {v11}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->access$100(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;)I

    move-result v11

    add-int/lit8 v11, v11, 0x8

    # setter for: Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->option_flag:I
    invoke-static {v10, v11}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->access$102(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;I)I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    # getter for: Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->dialog_content:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->access$000(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n- "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    invoke-virtual {v12}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a08c4

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # setter for: Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->dialog_content:Ljava/lang/String;
    invoke-static {v10, v11}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->access$002(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    # invokes: Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v10}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->access$1000(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;)Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "finger_magnifier"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_10

    const/4 v3, 0x1

    :goto_6
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    iget-object v10, v10, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->context:Landroid/content/Context;

    const-string v11, "com.samsung.android.universalswitch"

    invoke-static {v10, v11}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    # getter for: Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->dialog_content:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->access$000(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n- "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    invoke-virtual {v12}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a08db

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # setter for: Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->dialog_content:Ljava/lang/String;
    invoke-static {v10, v11}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->access$002(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    # invokes: Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v10}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->access$1100(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;)Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "universal_switch_enabled"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_11

    const/4 v8, 0x1

    :cond_4
    :goto_7
    if-nez v2, :cond_5

    if-nez v6, :cond_5

    if-nez v1, :cond_5

    if-nez v9, :cond_5

    if-nez v5, :cond_5

    if-nez v7, :cond_5

    if-nez v3, :cond_5

    if-eqz v8, :cond_12

    :cond_5
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    const/4 v11, 0x1

    # invokes: Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->showDialog(I)V
    invoke-static {v10, v11}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->access$1200(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;I)V

    :goto_8
    const/4 v10, 0x0

    return v10

    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    # invokes: Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v10}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->access$300(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;)Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "finger_air_view"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_8

    const/4 v2, 0x1

    :goto_9
    goto/16 :goto_0

    :cond_8
    const/4 v2, 0x0

    goto :goto_9

    :cond_9
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v10

    const-string v11, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v10

    const-string v11, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    # getter for: Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->option_flag:I
    invoke-static {v11}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->access$100(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;)I

    move-result v11

    add-int/lit8 v11, v11, 0x2

    # setter for: Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->option_flag:I
    invoke-static {v10, v11}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->access$102(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;I)I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    # getter for: Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->dialog_content:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->access$000(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n- "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    invoke-virtual {v12}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a1157

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # setter for: Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->dialog_content:Ljava/lang/String;
    invoke-static {v10, v11}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->access$002(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    # invokes: Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v10}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->access$400(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;)Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "pen_hovering"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_a

    const/4 v6, 0x1

    :goto_a
    goto/16 :goto_0

    :cond_a
    const/4 v6, 0x0

    goto :goto_a

    :cond_b
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_c
    const/4 v9, 0x0

    goto/16 :goto_2

    :cond_d
    const/4 v5, 0x0

    goto/16 :goto_3

    :cond_e
    const/4 v7, 0x0

    goto/16 :goto_4

    :cond_f
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    # getter for: Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->dialog_content:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->access$000(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n- "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    invoke-virtual {v12}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a1069

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # setter for: Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->dialog_content:Ljava/lang/String;
    invoke-static {v10, v11}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->access$002(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_5

    :cond_10
    const/4 v3, 0x0

    goto/16 :goto_6

    :cond_11
    const/4 v8, 0x0

    goto/16 :goto_7

    :cond_12
    invoke-virtual/range {p1 .. p2}, Lcom/android/settings/widget/ToggleSwitch;->setCheckedInternal(Z)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    invoke-virtual {v10}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "checked"

    move/from16 v0, p2

    invoke-virtual {v10, v11, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    iget-object v11, v11, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    move/from16 v0, p2

    invoke-virtual {v10, v11, v0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    goto/16 :goto_8

    :cond_13
    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/android/settings/widget/ToggleSwitch;->setCheckedInternal(Z)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    iget-object v10, v10, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->context:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/settings/Utils;->isSupportPenUsp10(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_14

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    iget-object v10, v10, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "air_button_onoff"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_14
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    invoke-virtual {v10}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "checked"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    iget-object v11, v11, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    goto/16 :goto_8
.end method
