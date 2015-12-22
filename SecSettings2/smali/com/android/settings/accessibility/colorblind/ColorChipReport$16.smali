.class Lcom/android/settings/accessibility/colorblind/ColorChipReport$16;
.super Ljava/lang/Object;
.source "ColorChipReport.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/colorblind/ColorChipReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/colorblind/ColorChipReport;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/colorblind/ColorChipReport;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport$16;->this$0:Lcom/android/settings/accessibility/colorblind/ColorChipReport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 8

    const/4 v7, 0x1

    const-string v0, "ColorChipReport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mClearControlListener :: onProgressChanged() is called start progress "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fromUser "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport$16;->this$0:Lcom/android/settings/accessibility/colorblind/ColorChipReport;

    int-to-float v1, p2

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v1, v2

    # setter for: Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mUserParameter:F
    invoke-static {v0, v1}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->access$902(Lcom/android/settings/accessibility/colorblind/ColorChipReport;F)F

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport$16;->this$0:Lcom/android/settings/accessibility/colorblind/ColorChipReport;

    # getter for: Lcom/android/settings/accessibility/colorblind/ColorChipReport;->isSwitch:Z
    invoke-static {v0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->access$1000(Lcom/android/settings/accessibility/colorblind/ColorChipReport;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport$16;->this$0:Lcom/android/settings/accessibility/colorblind/ColorChipReport;

    # getter for: Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mCVDType:I
    invoke-static {v0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->access$1100(Lcom/android/settings/accessibility/colorblind/ColorChipReport;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport$16;->this$0:Lcom/android/settings/accessibility/colorblind/ColorChipReport;

    # getter for: Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mSettingValue:Lcom/android/settings/accessibility/colorblind/ColorChipSettingValue;
    invoke-static {v1}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->access$1200(Lcom/android/settings/accessibility/colorblind/ColorChipReport;)Lcom/android/settings/accessibility/colorblind/ColorChipSettingValue;

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport$16;->this$0:Lcom/android/settings/accessibility/colorblind/ColorChipReport;

    const-string v1, "accessibility"

    # invokes: Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->access$1300(Lcom/android/settings/accessibility/colorblind/ColorChipReport;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/accessibility/AccessibilityManager;

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport$16;->this$0:Lcom/android/settings/accessibility/colorblind/ColorChipReport;

    # getter for: Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mCVDseverity:F
    invoke-static {v0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->access$1400(Lcom/android/settings/accessibility/colorblind/ColorChipReport;)F

    move-result v0

    const v1, 0x3f19999a    # 0.6f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/16 v0, 0xa

    invoke-virtual {v6, v0, v7}, Landroid/view/accessibility/AccessibilityManager;->setmDNIeAccessibilityMode(IZ)Z

    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport$16;->this$0:Lcom/android/settings/accessibility/colorblind/ColorChipReport;

    # getter for: Lcom/android/settings/accessibility/colorblind/ColorChipReport;->cvdCalculator:Ldmc/cvd/cvdcalculator/CVDCalculator;
    invoke-static {v0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->access$1500(Lcom/android/settings/accessibility/colorblind/ColorChipReport;)Ldmc/cvd/cvdcalculator/CVDCalculator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport$16;->this$0:Lcom/android/settings/accessibility/colorblind/ColorChipReport;

    # getter for: Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mCVDType:I
    invoke-static {v1}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->access$1100(Lcom/android/settings/accessibility/colorblind/ColorChipReport;)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport$16;->this$0:Lcom/android/settings/accessibility/colorblind/ColorChipReport;

    # getter for: Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mCVDseverity:F
    invoke-static {v2}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->access$1400(Lcom/android/settings/accessibility/colorblind/ColorChipReport;)F

    move-result v2

    float-to-double v2, v2

    iget-object v4, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport$16;->this$0:Lcom/android/settings/accessibility/colorblind/ColorChipReport;

    # getter for: Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mUserParameter:F
    invoke-static {v4}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->access$900(Lcom/android/settings/accessibility/colorblind/ColorChipReport;)F

    move-result v4

    float-to-double v4, v4

    invoke-virtual/range {v0 .. v5}, Ldmc/cvd/cvdcalculator/CVDCalculator;->getRGBCMY(IDD)[I

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Landroid/view/accessibility/AccessibilityManager;->setmDNIeColorBlind(Z[I)Z

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport$16;->this$0:Lcom/android/settings/accessibility/colorblind/ColorChipReport;

    # getter for: Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mSettingValue:Lcom/android/settings/accessibility/colorblind/ColorChipSettingValue;
    invoke-static {v0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->access$1200(Lcom/android/settings/accessibility/colorblind/ColorChipReport;)Lcom/android/settings/accessibility/colorblind/ColorChipSettingValue;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport$16;->this$0:Lcom/android/settings/accessibility/colorblind/ColorChipReport;

    # getter for: Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mUserParameter:F
    invoke-static {v1}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->access$900(Lcom/android/settings/accessibility/colorblind/ColorChipReport;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/colorblind/ColorChipSettingValue;->setPrefUserParameter(F)V

    const-string v0, "ColorChipReport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgressChanged() mUserParameter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport$16;->this$0:Lcom/android/settings/accessibility/colorblind/ColorChipReport;

    # getter for: Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mUserParameter:F
    invoke-static {v2}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->access$900(Lcom/android/settings/accessibility/colorblind/ColorChipReport;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    const-string v0, "ColorChipReport"

    const-string v1, "onStartTrackingTouch() is called"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    const-string v0, "ColorChipReport"

    const-string v1, "onStopTrackingTouch() is called"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
