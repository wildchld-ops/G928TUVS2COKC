.class public Lcom/android/settings/accessibility/colorblind/ColorChipSettingValue;
.super Ljava/lang/Object;
.source "ColorChipSettingValue.java"


# instance fields
.field private con:Landroid/content/Context;

.field private mCVDType:I

.field private mCVDseverity:F

.field private mUserParameter:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipSettingValue;->con:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipSettingValue;->UpdatePrefCVDSettingValue()V

    return-void
.end method


# virtual methods
.method public UpdatePrefCVDSettingValue()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipSettingValue;->con:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "color_blind_cvdtype"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipSettingValue;->mCVDType:I

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipSettingValue;->con:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "color_blind_cvdseverity"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipSettingValue;->mCVDseverity:F

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipSettingValue;->con:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "color_blind_user_parameter"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipSettingValue;->mUserParameter:F

    return-void
.end method

.method public getCVDType()I
    .locals 1

    iget v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipSettingValue;->mCVDType:I

    return v0
.end method

.method public getCVDseverity()F
    .locals 1

    iget v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipSettingValue;->mCVDseverity:F

    return v0
.end method

.method public getUserParameter()F
    .locals 1

    iget v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipSettingValue;->mUserParameter:F

    return v0
.end method

.method public setPrefUserParameter(F)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipSettingValue;->con:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "color_blind_user_parameter"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    iput p1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipSettingValue;->mUserParameter:F

    return-void
.end method
