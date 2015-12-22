.class public Lcom/android/settings/accessibility/colorblind/ColorChipReport;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ColorChipReport.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private cvdCalculator:Ldmc/cvd/cvdcalculator/CVDCalculator;

.field private isSwitch:Z

.field private mCVDType:I

.field private mCVDseverity:F

.field private final mColorBlindObserver:Landroid/database/ContentObserver;

.field private mColourAdjustment:Landroid/widget/TextView;

.field private mColourAdjustment1:Landroid/widget/TextView;

.field private mColourAdjustmentDefaultImage:Landroid/widget/ImageView;

.field private mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

.field private mColourAdjustmentSeekBar1:Landroid/widget/SeekBar;

.field private final mColourAdjustmentSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mGreyscaleAndNegativeColorDialog:Landroid/app/AlertDialog;

.field private mGreyscaleDialog:Landroid/app/AlertDialog;

.field private final mGreyscaleObserver:Landroid/database/ContentObserver;

.field private final mNegColorObserver:Landroid/database/ContentObserver;

.field private mNegativeColorDialog:Landroid/app/AlertDialog;

.field private mResultText:Landroid/widget/TextView;

.field private mRetestDialog:Landroid/app/AlertDialog;

.field private mSettingValue:Lcom/android/settings/accessibility/colorblind/ColorChipSettingValue;

.field protected mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTestCheck:I

.field protected mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

.field private mUserParameter:F

.field private rel:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    iput v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mCVDType:I

    iput-boolean v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->isSwitch:Z

    iput-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mRetestDialog:Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mNegativeColorDialog:Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mGreyscaleDialog:Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mGreyscaleAndNegativeColorDialog:Landroid/app/AlertDialog;

    iput v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mTestCheck:I

    iput-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->rel:Landroid/view/View;

    new-instance v0, Lcom/android/settings/accessibility/colorblind/ColorChipReport$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/colorblind/ColorChipReport$2;-><init>(Lcom/android/settings/accessibility/colorblind/ColorChipReport;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColorBlindObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/accessibility/colorblind/ColorChipReport$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/colorblind/ColorChipReport$3;-><init>(Lcom/android/settings/accessibility/colorblind/ColorChipReport;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mNegColorObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/accessibility/colorblind/ColorChipReport$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/colorblind/ColorChipReport$4;-><init>(Lcom/android/settings/accessibility/colorblind/ColorChipReport;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mGreyscaleObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/accessibility/colorblind/ColorChipReport$16;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport$16;-><init>(Lcom/android/settings/accessibility/colorblind/ColorChipReport;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method private CheckSwitch()Z
    .locals 6

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "color_blind"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v3, "ColorChipReport"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CheckSwitch state : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private CheckTestRecord()V
    .locals 10

    const/16 v9, 0xa

    const/high16 v4, 0x41200000    # 10.0f

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    const/16 v0, 0x9

    new-array v6, v0, [I

    fill-array-data v6, :array_0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "color_blind_test"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mTestCheck:I

    iget v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mTestCheck:I

    if-ne v0, v8, :cond_2

    iput-boolean v8, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->isSwitch:Z

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustment:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustment1:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar1:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mUserParameter:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar1:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mUserParameter:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "color_blind"

    invoke-static {v0, v1, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustment:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustment1:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v8}, Landroid/widget/SeekBar;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar1:Landroid/widget/SeekBar;

    invoke-virtual {v0, v8}, Landroid/widget/SeekBar;->setEnabled(Z)V

    iget v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mCVDType:I

    iget-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mSettingValue:Lcom/android/settings/accessibility/colorblind/ColorChipSettingValue;

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v7, v9, v3}, Landroid/view/accessibility/AccessibilityManager;->setmDNIeAccessibilityMode(IZ)Z

    invoke-virtual {v7, v3, v6}, Landroid/view/accessibility/AccessibilityManager;->setmDNIeColorBlind(Z[I)Z

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->isOptionsMenuEnable()V

    :goto_1
    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v8}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->cvdCalculator:Ldmc/cvd/cvdcalculator/CVDCalculator;

    iget v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mCVDType:I

    iget v2, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mCVDseverity:F

    float-to-double v2, v2

    iget v4, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mUserParameter:F

    float-to-double v4, v4

    invoke-virtual/range {v0 .. v5}, Ldmc/cvd/cvdcalculator/CVDCalculator;->getRGBCMY(IDD)[I

    move-result-object v6

    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/accessibility/AccessibilityManager;

    iget v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mCVDseverity:F

    const v1, 0x3f19999a    # 0.6f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    invoke-virtual {v7, v9, v8}, Landroid/view/accessibility/AccessibilityManager;->setmDNIeAccessibilityMode(IZ)Z

    :cond_1
    invoke-virtual {v7, v8, v6}, Landroid/view/accessibility/AccessibilityManager;->setmDNIeColorBlind(Z[I)Z

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->RetestOperate()V

    goto :goto_1

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private CreateGreyscaleAndNegativeColorDialog()V
    .locals 7

    const v6, 0x7f0a0a0e

    const v5, 0x7f0a0960

    iget-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mGreyscaleAndNegativeColorDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mGreyscaleAndNegativeColorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a153c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a09af

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const v4, 0x7f0a09b2

    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0, v6}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p0, v6}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a079c

    new-instance v2, Lcom/android/settings/accessibility/colorblind/ColorChipReport$13;

    invoke-direct {v2, p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport$13;-><init>(Lcom/android/settings/accessibility/colorblind/ColorChipReport;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/settings/accessibility/colorblind/ColorChipReport$14;

    invoke-direct {v2, p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport$14;-><init>(Lcom/android/settings/accessibility/colorblind/ColorChipReport;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/settings/accessibility/colorblind/ColorChipReport$15;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport$15;-><init>(Lcom/android/settings/accessibility/colorblind/ColorChipReport;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mGreyscaleAndNegativeColorDialog:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private CreateGreyscaleDialog()V
    .locals 6

    const v5, 0x7f0a0a0e

    iget-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mGreyscaleDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mGreyscaleDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a153c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a09b1

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const v4, 0x7f0a09b2

    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a079c

    new-instance v2, Lcom/android/settings/accessibility/colorblind/ColorChipReport$10;

    invoke-direct {v2, p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport$10;-><init>(Lcom/android/settings/accessibility/colorblind/ColorChipReport;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/settings/accessibility/colorblind/ColorChipReport$11;

    invoke-direct {v2, p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport$11;-><init>(Lcom/android/settings/accessibility/colorblind/ColorChipReport;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/settings/accessibility/colorblind/ColorChipReport$12;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport$12;-><init>(Lcom/android/settings/accessibility/colorblind/ColorChipReport;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mGreyscaleDialog:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private CreateNegativeColorDialog()V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mNegativeColorDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mNegativeColorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a153c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a153d

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a079c

    new-instance v2, Lcom/android/settings/accessibility/colorblind/ColorChipReport$7;

    invoke-direct {v2, p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport$7;-><init>(Lcom/android/settings/accessibility/colorblind/ColorChipReport;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/settings/accessibility/colorblind/ColorChipReport$8;

    invoke-direct {v2, p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport$8;-><init>(Lcom/android/settings/accessibility/colorblind/ColorChipReport;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/settings/accessibility/colorblind/ColorChipReport$9;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport$9;-><init>(Lcom/android/settings/accessibility/colorblind/ColorChipReport;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mNegativeColorDialog:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private InitControls(Z)V
    .locals 7

    const/16 v6, 0xa

    const/high16 v5, 0x41200000    # 10.0f

    const/4 v2, 0x0

    const/16 v4, 0x8

    invoke-direct {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->CheckSwitch()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->isSwitch:Z

    invoke-virtual {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "color_blind_test"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mTestCheck:I

    iget-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->rel:Landroid/view/View;

    const v3, 0x7f100099

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentDefaultImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->rel:Landroid/view/View;

    const v3, 0x7f10009a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustment:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->rel:Landroid/view/View;

    const v3, 0x7f10009b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustment1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->rel:Landroid/view/View;

    const v3, 0x7f10009c

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->rel:Landroid/view/View;

    const v3, 0x7f10009d

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar1:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar1:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v6}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar1:Landroid/widget/SeekBar;

    invoke-virtual {v1, v6}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mUserParameter:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar1:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mUserParameter:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->rel:Landroid/view/View;

    const v3, 0x7f100098

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mResultText:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mTestCheck:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mResultText:Landroid/widget/TextView;

    const v3, 0x7f0a1536

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v3, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "color_blind"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v3, v1}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    iget-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-direct {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->installSwitchBarToggleSwitch()V

    iget-boolean v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->isSwitch:Z

    invoke-direct {p0, v1}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->SetSwitchOnOff(Z)V

    return-void

    :cond_0
    iget v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mCVDType:I

    iget-object v3, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mSettingValue:Lcom/android/settings/accessibility/colorblind/ColorChipSettingValue;

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mResultText:Landroid/widget/TextView;

    const v3, 0x7f0a1537

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustment:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustment1:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar1:Landroid/widget/SeekBar;

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mResultText:Landroid/widget/TextView;

    const v3, 0x7f0a1538

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method private RetestOperate()V
    .locals 4

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->isSwitch:Z

    invoke-virtual {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "color_blind_test"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "toStartActivity"

    const-string v2, "fromSwitchOn"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.app.colorblind"

    const-string v3, "com.samsung.android.app.colorblind.ColorChipStart"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private SetSwitchOnOff(Z)V
    .locals 9

    const/high16 v8, 0x41200000    # 10.0f

    const/4 v4, 0x1

    const v7, 0x3e99999a    # 0.3f

    const/4 v5, 0x0

    const/16 v6, 0x9

    new-array v0, v6, [I

    fill-array-data v0, :array_0

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "high_contrast"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_1

    move v2, v4

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "greyscale_mode"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_2

    move v1, v4

    :goto_1
    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->CreateGreyscaleAndNegativeColorDialog()V

    iget-object v4, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mGreyscaleAndNegativeColorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    :cond_0
    :goto_2
    return-void

    :cond_1
    move v2, v5

    goto :goto_0

    :cond_2
    move v1, v5

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->CreateNegativeColorDialog()V

    iget-object v4, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mNegativeColorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->CreateGreyscaleDialog()V

    iget-object v4, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mGreyscaleDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->CheckTestRecord()V

    goto :goto_2

    :cond_6
    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->setHasOptionsMenu(Z)V

    iput-boolean v5, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->isSwitch:Z

    iget-object v4, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustment:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v4, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustment1:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v4, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4, v7}, Landroid/widget/SeekBar;->setAlpha(F)V

    iget-object v4, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar1:Landroid/widget/SeekBar;

    invoke-virtual {v4, v7}, Landroid/widget/SeekBar;->setAlpha(F)V

    iget-object v4, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    iget v6, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mUserParameter:F

    mul-float/2addr v6, v8

    float-to-int v6, v6

    invoke-virtual {v4, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v4, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar1:Landroid/widget/SeekBar;

    iget v6, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mUserParameter:F

    mul-float/2addr v6, v8

    float-to-int v6, v6

    invoke-virtual {v4, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "color_blind"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v4, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustment:Landroid/widget/TextView;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustment1:Landroid/widget/TextView;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar1:Landroid/widget/SeekBar;

    invoke-virtual {v4, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "high_contrast"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "greyscale_mode"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "accessibility"

    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityManager;

    const/16 v4, 0xa

    invoke-virtual {v3, v4, v5}, Landroid/view/accessibility/AccessibilityManager;->setmDNIeAccessibilityMode(IZ)Z

    invoke-virtual {v3, p1, v0}, Landroid/view/accessibility/AccessibilityManager;->setmDNIeColorBlind(Z[I)Z

    goto/16 :goto_2

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/colorblind/ColorChipReport;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->SetSwitchOnOff(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/accessibility/colorblind/ColorChipReport;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/accessibility/colorblind/ColorChipReport;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->isSwitch:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/settings/accessibility/colorblind/ColorChipReport;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mCVDType:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/settings/accessibility/colorblind/ColorChipReport;)Lcom/android/settings/accessibility/colorblind/ColorChipSettingValue;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mSettingValue:Lcom/android/settings/accessibility/colorblind/ColorChipSettingValue;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/accessibility/colorblind/ColorChipReport;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/accessibility/colorblind/ColorChipReport;)F
    .locals 1

    iget v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mCVDseverity:F

    return v0
.end method

.method static synthetic access$1500(Lcom/android/settings/accessibility/colorblind/ColorChipReport;)Ldmc/cvd/cvdcalculator/CVDCalculator;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->cvdCalculator:Ldmc/cvd/cvdcalculator/CVDCalculator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/accessibility/colorblind/ColorChipReport;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mRetestDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/accessibility/colorblind/ColorChipReport;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/accessibility/colorblind/ColorChipReport;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->RetestOperate()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/accessibility/colorblind/ColorChipReport;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/accessibility/colorblind/ColorChipReport;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->CheckTestRecord()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/accessibility/colorblind/ColorChipReport;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/accessibility/colorblind/ColorChipReport;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/accessibility/colorblind/ColorChipReport;)F
    .locals 1

    iget v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mUserParameter:F

    return v0
.end method

.method static synthetic access$902(Lcom/android/settings/accessibility/colorblind/ColorChipReport;F)F
    .locals 0

    iput p1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mUserParameter:F

    return p1
.end method

.method private installSwitchBarToggleSwitch()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->onInstallSwitchBarToggleSwitch()V

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    return-void
.end method

.method private removeSwitchBarToggleSwitch()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    return-void
.end method


# virtual methods
.method public ReadjustLayout()V
    .locals 7

    const/16 v6, 0xa

    const/4 v5, 0x3

    const/high16 v4, 0x41200000    # 10.0f

    const/4 v3, 0x0

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mSettingValue:Lcom/android/settings/accessibility/colorblind/ColorChipSettingValue;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/colorblind/ColorChipSettingValue;->UpdatePrefCVDSettingValue()V

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mSettingValue:Lcom/android/settings/accessibility/colorblind/ColorChipSettingValue;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/colorblind/ColorChipSettingValue;->getCVDType()I

    move-result v0

    iput v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mCVDType:I

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mSettingValue:Lcom/android/settings/accessibility/colorblind/ColorChipSettingValue;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/colorblind/ColorChipSettingValue;->getCVDseverity()F

    move-result v0

    iput v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mCVDseverity:F

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mSettingValue:Lcom/android/settings/accessibility/colorblind/ColorChipSettingValue;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/colorblind/ColorChipSettingValue;->getUserParameter()F

    move-result v0

    iput v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mUserParameter:F

    invoke-virtual {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "color_blind_test"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mTestCheck:I

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v6}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar1:Landroid/widget/SeekBar;

    invoke-virtual {v0, v6}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mUserParameter:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar1:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mUserParameter:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mTestCheck:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mResultText:Landroid/widget/TextView;

    const v1, 0x7f0a1536

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar1:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustment:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustment1:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mCVDType:I

    iget-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mSettingValue:Lcom/android/settings/accessibility/colorblind/ColorChipSettingValue;

    if-ne v0, v5, :cond_1

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mResultText:Landroid/widget/TextView;

    const v1, 0x7f0a1537

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustment:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustment1:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar1:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mResultText:Landroid/widget/TextView;

    const v1, 0x7f0a1538

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar1:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustment:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustment1:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mTestCheck:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mResultText:Landroid/widget/TextView;

    const v1, 0x7f0a1536

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar1:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustment:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustment1:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mCVDType:I

    iget-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mSettingValue:Lcom/android/settings/accessibility/colorblind/ColorChipSettingValue;

    if-ne v0, v5, :cond_4

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mResultText:Landroid/widget/TextView;

    const v1, 0x7f0a1537

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustment:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustment1:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar1:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mResultText:Landroid/widget/TextView;

    const v1, 0x7f0a1538

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar1:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustment:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustment1:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public checkColorBlindState()V
    .locals 9

    const/4 v8, 0x1

    invoke-direct {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->CheckSwitch()Z

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->SetSwitchOnOff(Z)V

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v6}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->ReadjustLayout()V

    iget-boolean v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->isSwitch:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mCVDType:I

    iget-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mSettingValue:Lcom/android/settings/accessibility/colorblind/ColorChipSettingValue;

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/accessibility/AccessibilityManager;

    iget v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mCVDseverity:F

    const v1, 0x3f19999a    # 0.6f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/16 v0, 0xa

    invoke-virtual {v7, v0, v8}, Landroid/view/accessibility/AccessibilityManager;->setmDNIeAccessibilityMode(IZ)Z

    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->cvdCalculator:Ldmc/cvd/cvdcalculator/CVDCalculator;

    iget v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mCVDType:I

    iget v2, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mCVDseverity:F

    float-to-double v2, v2

    iget v4, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mUserParameter:F

    float-to-double v4, v4

    invoke-virtual/range {v0 .. v5}, Ldmc/cvd/cvdcalculator/CVDCalculator;->getRGBCMY(IDD)[I

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Landroid/view/accessibility/AccessibilityManager;->setmDNIeColorBlind(Z[I)Z

    :cond_1
    return-void
.end method

.method public isOptionsMenuEnable()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->CheckSwitch()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->setHasOptionsMenu(Z)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->setHasOptionsMenu(Z)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v2, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "color_blind"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    iget-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-direct {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->installSwitchBarToggleSwitch()V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    const-string v0, "ColorChipReport"

    const-string v1, "onCheckedChanged() is called"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->SetSwitchOnOff(Z)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->ReadjustLayout()V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const/4 v0, 0x1

    const v1, 0x7f0a1539

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const v0, 0x7f040039

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->rel:Landroid/view/View;

    new-instance v0, Lcom/android/settings/accessibility/colorblind/ColorChipSettingValue;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/accessibility/colorblind/ColorChipSettingValue;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mSettingValue:Lcom/android/settings/accessibility/colorblind/ColorChipSettingValue;

    new-instance v0, Ldmc/cvd/cvdcalculator/CVDCalculator;

    invoke-direct {v0}, Ldmc/cvd/cvdcalculator/CVDCalculator;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->cvdCalculator:Ldmc/cvd/cvdcalculator/CVDCalculator;

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mSettingValue:Lcom/android/settings/accessibility/colorblind/ColorChipSettingValue;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/colorblind/ColorChipSettingValue;->UpdatePrefCVDSettingValue()V

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mSettingValue:Lcom/android/settings/accessibility/colorblind/ColorChipSettingValue;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/colorblind/ColorChipSettingValue;->getCVDType()I

    move-result v0

    iput v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mCVDType:I

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mSettingValue:Lcom/android/settings/accessibility/colorblind/ColorChipSettingValue;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/colorblind/ColorChipSettingValue;->getCVDseverity()F

    move-result v0

    iput v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mCVDseverity:F

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mSettingValue:Lcom/android/settings/accessibility/colorblind/ColorChipSettingValue;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/colorblind/ColorChipSettingValue;->getUserParameter()F

    move-result v0

    iput v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mUserParameter:F

    const-string v0, "ColorChipReport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate : mCVDType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mCVDType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCVDseverity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mCVDseverity:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mUserParameter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mUserParameter:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v3}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->InitControls(Z)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar1:Landroid/widget/SeekBar;

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustment:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustment1:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->rel:Landroid/view/View;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar1:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustment:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustment1:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->cvdCalculator:Ldmc/cvd/cvdcalculator/CVDCalculator;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->cvdCalculator:Ldmc/cvd/cvdcalculator/CVDCalculator;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mSettingValue:Lcom/android/settings/accessibility/colorblind/ColorChipSettingValue;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mSettingValue:Lcom/android/settings/accessibility/colorblind/ColorChipSettingValue;

    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mRetestDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mRetestDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mRetestDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_2
    iput-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mRetestDialog:Landroid/app/AlertDialog;

    :cond_3
    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mNegativeColorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mNegativeColorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mNegativeColorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_4
    iput-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mNegativeColorDialog:Landroid/app/AlertDialog;

    :cond_5
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    invoke-direct {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->removeSwitchBarToggleSwitch()V

    return-void
.end method

.method public onDetach()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDetach()V

    return-void
.end method

.method protected onInstallSwitchBarToggleSwitch()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    new-instance v1, Lcom/android/settings/accessibility/colorblind/ColorChipReport$1;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport$1;-><init>(Lcom/android/settings/accessibility/colorblind/ColorChipReport;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :sswitch_0
    invoke-direct {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->CheckSwitch()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->RetestOperate()V

    goto :goto_0

    :sswitch_1
    const-string v0, "ColorChipReport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Click actionbar home icon : mUserParameter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mUserParameter:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x102002c -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColorBlindObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mNegColorObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mGreyscaleObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "ColorChipReport"

    const-string v1, "onResume() is called"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->isOptionsMenuEnable()V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "color_blind"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColorBlindObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "high_contrast"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mNegColorObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "greyscale_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mGreyscaleObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->checkColorBlindState()V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    return-void
.end method
