.class Lcom/android/systemui/settings/ToggleSlider$5;
.super Ljava/lang/Object;
.source "ToggleSlider.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/ToggleSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/ToggleSlider;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/ToggleSlider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 9

    const v8, 0x7f0a009a

    const/4 v7, 0x0

    const/16 v6, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$300(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider$Listener;

    move-result-object v1

    if-eqz v1, :cond_1

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mDiagnosticLogs:Z
    invoke-static {}, Lcom/android/systemui/settings/ToggleSlider;->access$900()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Lcom/android/systemui/statusbar/BaseStatusBar;->setIsAutoBrightBoxChecked(Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mAutomaticAvailable:Z
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$1000(Lcom/android/systemui/settings/ToggleSlider;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mOutdoorMode:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mIsTogglePressed:Z
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$600(Lcom/android/systemui/settings/ToggleSlider;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$400(Lcom/android/systemui/settings/ToggleSlider;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/Prefs;->read(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "outdoor_mode_alert_pref"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mOutdoorModeOn:Z
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$1100(Lcom/android/systemui/settings/ToggleSlider;)Z

    move-result v1

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # invokes: Lcom/android/systemui/settings/ToggleSlider;->showConfirmPopup()V
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$1200(Lcom/android/systemui/settings/ToggleSlider;)V

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # setter for: Lcom/android/systemui/settings/ToggleSlider;->mIsTogglePressed:Z
    invoke-static {v1, v3}, Lcom/android/systemui/settings/ToggleSlider;->access$602(Lcom/android/systemui/settings/ToggleSlider;Z)Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mOutdoorModeOn:Z
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$1100(Lcom/android/systemui/settings/ToggleSlider;)Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1, v2}, Lcom/android/systemui/settings/ToggleSlider;->setOutdoorMode(ZZ)V

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_2

    :cond_4
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUseAutoBrightnessDetail:Z

    if-nez v1, :cond_b

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->ENABLE_AUTO_BRIGHTNESS_ADJUSTMENT:Z
    invoke-static {}, Lcom/android/systemui/settings/ToggleSlider;->access$800()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$1300(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSeekBar;

    move-result-object v4

    if-nez p2, :cond_9

    move v1, v2

    :goto_3
    invoke-virtual {v4, v1}, Lcom/android/systemui/settings/ToggleSeekBar;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$1400(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$1400(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v1

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$1300(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSeekBar;

    move-result-object v1

    if-nez p2, :cond_a

    :goto_4
    invoke-virtual {v1, v2}, Lcom/android/systemui/settings/ToggleSeekBar;->setEnabled(Z)V

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mIsTogglePressed:Z
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$600(Lcom/android/systemui/settings/ToggleSlider;)Z

    move-result v1

    if-eqz v1, :cond_7

    if-nez p2, :cond_6

    const-string v1, "ToggleSlider"

    const-string v2, "onChanged  PMS OUT"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$400(Lcom/android/systemui/settings/ToggleSlider;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "high_brightness_mode_pms_enter"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$300(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider$Listener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mTracking:Z
    invoke-static {v4}, Lcom/android/systemui/settings/ToggleSlider;->access$1500(Lcom/android/systemui/settings/ToggleSlider;)Z

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;
    invoke-static {v5}, Lcom/android/systemui/settings/ToggleSlider;->access$1300(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSeekBar;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/settings/ToggleSeekBar;->getProgress()I

    move-result v5

    invoke-interface {v1, v2, v4, p2, v5}, Lcom/android/systemui/settings/ToggleSlider$Listener;->onChanged(Lcom/android/systemui/settings/ToggleSlider;ZZI)V

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # setter for: Lcom/android/systemui/settings/ToggleSlider;->mIsTogglePressed:Z
    invoke-static {v1, v3}, Lcom/android/systemui/settings/ToggleSlider;->access$602(Lcom/android/systemui/settings/ToggleSlider;Z)Z

    :cond_7
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$1400(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$1400(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v1

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$700(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/CompoundButton;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_8
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v2, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;
    invoke-static {v2}, Lcom/android/systemui/settings/ToggleSlider;->access$1300(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSeekBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/settings/ToggleSeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, p2, v2}, Lcom/android/systemui/settings/ToggleSlider;->updateIcon(ZI)V

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$1400(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$1400(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;
    invoke-static {v2}, Lcom/android/systemui/settings/ToggleSlider;->access$1300(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSeekBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/settings/ToggleSeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, p2, v2}, Lcom/android/systemui/settings/ToggleSlider;->updateIcon(ZI)V

    goto/16 :goto_1

    :cond_9
    move v1, v3

    goto/16 :goto_3

    :cond_a
    move v2, v3

    goto/16 :goto_4

    :cond_b
    if-eqz p2, :cond_f

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mTwSliderLayout:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$1600(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mSliderLayout:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$1700(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$1300(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSeekBar;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/systemui/settings/ToggleSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mTwSlider:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$1900(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/SeekBar;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mTWSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;
    invoke-static {v2}, Lcom/android/systemui/settings/ToggleSlider;->access$1800(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mIsTogglePressed:Z
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$600(Lcom/android/systemui/settings/ToggleSlider;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$300(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider$Listener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mTracking:Z
    invoke-static {v4}, Lcom/android/systemui/settings/ToggleSlider;->access$1500(Lcom/android/systemui/settings/ToggleSlider;)Z

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mTwSlider:Landroid/widget/SeekBar;
    invoke-static {v5}, Lcom/android/systemui/settings/ToggleSlider;->access$1900(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getProgress()I

    move-result v5

    invoke-interface {v1, v2, v4, p2, v5}, Lcom/android/systemui/settings/ToggleSlider$Listener;->onChanged(Lcom/android/systemui/settings/ToggleSlider;ZZI)V

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # setter for: Lcom/android/systemui/settings/ToggleSlider;->mIsTogglePressed:Z
    invoke-static {v1, v3}, Lcom/android/systemui/settings/ToggleSlider;->access$602(Lcom/android/systemui/settings/ToggleSlider;Z)Z

    :cond_c
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$700(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/CompoundButton;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-virtual {v2}, Lcom/android/systemui/settings/ToggleSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$1400(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$1400(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v1

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mTwSliderLayout:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$1600(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$1400(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v1

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mSliderLayout:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$1700(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$1400(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v1

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$1300(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSeekBar;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/systemui/settings/ToggleSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$1400(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v1

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mTwSlider:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$1900(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/SeekBar;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mTWSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;
    invoke-static {v2}, Lcom/android/systemui/settings/ToggleSlider;->access$1800(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$1400(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v1

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$700(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/CompoundButton;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_d
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v2, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mTwSlider:Landroid/widget/SeekBar;
    invoke-static {v2}, Lcom/android/systemui/settings/ToggleSlider;->access$1900(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    mul-int/lit8 v2, v2, 0x19

    invoke-virtual {v1, p2, v2}, Lcom/android/systemui/settings/ToggleSlider;->updateIcon(ZI)V

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$1400(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$1400(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mTwSlider:Landroid/widget/SeekBar;
    invoke-static {v2}, Lcom/android/systemui/settings/ToggleSlider;->access$1900(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    mul-int/lit8 v2, v2, 0x19

    invoke-virtual {v1, p2, v2}, Lcom/android/systemui/settings/ToggleSlider;->updateIcon(ZI)V

    :cond_e
    :goto_5
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$2100(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$2100(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->getMirror()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$2100(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->hideMirror()V

    goto/16 :goto_1

    :cond_f
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mSliderLayout:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$1700(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mTwSliderLayout:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$1600(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mTwSlider:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$1900(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$1300(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSeekBar;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;
    invoke-static {v2}, Lcom/android/systemui/settings/ToggleSlider;->access$2000(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/settings/ToggleSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mIsTogglePressed:Z
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$600(Lcom/android/systemui/settings/ToggleSlider;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$300(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider$Listener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mTracking:Z
    invoke-static {v4}, Lcom/android/systemui/settings/ToggleSlider;->access$1500(Lcom/android/systemui/settings/ToggleSlider;)Z

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;
    invoke-static {v5}, Lcom/android/systemui/settings/ToggleSlider;->access$1300(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSeekBar;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/settings/ToggleSeekBar;->getProgress()I

    move-result v5

    invoke-interface {v1, v2, v4, p2, v5}, Lcom/android/systemui/settings/ToggleSlider$Listener;->onChanged(Lcom/android/systemui/settings/ToggleSlider;ZZI)V

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # setter for: Lcom/android/systemui/settings/ToggleSlider;->mIsTogglePressed:Z
    invoke-static {v1, v3}, Lcom/android/systemui/settings/ToggleSlider;->access$602(Lcom/android/systemui/settings/ToggleSlider;Z)Z

    :cond_10
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$700(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/CompoundButton;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-virtual {v2}, Lcom/android/systemui/settings/ToggleSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$1400(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$1400(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v1

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mSliderLayout:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$1700(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$1400(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v1

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mTwSliderLayout:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$1600(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$1400(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v1

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mTwSlider:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$1900(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$1400(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v1

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$1300(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSeekBar;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;
    invoke-static {v2}, Lcom/android/systemui/settings/ToggleSlider;->access$2000(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/settings/ToggleSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$1400(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v1

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$700(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/CompoundButton;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_11
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v2, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;
    invoke-static {v2}, Lcom/android/systemui/settings/ToggleSlider;->access$1300(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSeekBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/settings/ToggleSeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, p2, v2}, Lcom/android/systemui/settings/ToggleSlider;->updateIcon(ZI)V

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$1400(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$1400(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/settings/ToggleSlider$5;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;
    invoke-static {v2}, Lcom/android/systemui/settings/ToggleSlider;->access$1300(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSeekBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/settings/ToggleSeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, p2, v2}, Lcom/android/systemui/settings/ToggleSlider;->updateIcon(ZI)V

    goto/16 :goto_5
.end method
