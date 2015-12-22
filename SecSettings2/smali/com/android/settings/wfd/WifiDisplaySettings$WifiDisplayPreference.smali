.class final Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;
.super Landroid/preference/Preference;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WifiDisplayPreference"
.end annotation


# instance fields
.field private mDeviceType:I

.field private final mDisplay:Landroid/hardware/display/WifiDisplay;

.field public final sDeviceTypeImages:[I

.field final synthetic this$0:Lcom/android/settings/wfd/WifiDisplaySettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/hardware/display/WifiDisplay;)V
    .locals 5

    const/16 v4, 0x9

    const/4 v3, 0x1

    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const/16 v1, 0xb

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->sDeviceTypeImages:[I

    const/4 v0, 0x0

    iput-object p3, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->mDisplay:Landroid/hardware/display/WifiDisplay;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->mDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x7f04020f

    invoke-virtual {p0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->setLayoutResource(I)V

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->mDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->getPrimaryDeviceType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->mDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->getPrimaryDeviceType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->mDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->getPrimaryDeviceType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_3

    array-length v1, v0

    if-ge v1, v3, :cond_3

    :cond_1
    const-string v1, "WifiDisplaySettings"

    const-string v2, "Malformed primaryDeviceType"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->sDeviceTypeImages:[I

    aget v1, v1, v4

    invoke-virtual {p0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->setIcon(I)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const-string v2, "#8e9ca3"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-void

    :cond_3
    if-eqz v0, :cond_2

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->mDeviceType:I

    iget v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->mDeviceType:I

    if-lt v1, v3, :cond_4

    iget v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->mDeviceType:I

    const/16 v2, 0xc

    if-ge v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->sDeviceTypeImages:[I

    iget v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->mDeviceType:I

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->setIcon(I)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->sDeviceTypeImages:[I

    aget v1, v1, v4

    invoke-virtual {p0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->setIcon(I)V

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x7f020191
        0x7f020194
        0x7f020197
        0x7f020190
        0x7f020198
        0x7f020196
        0x7f020192
        0x7f020195
        0x7f020193
        0x7f020199
        0x7f02018f
    .end array-data
.end method


# virtual methods
.method public getDisplay()Landroid/hardware/display/WifiDisplay;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->mDisplay:Landroid/hardware/display/WifiDisplay;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v3, 0x7f1002ef

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    const v3, 0x1020016

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_0
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->mDisplay:Landroid/hardware/display/WifiDisplay;

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v4, v4, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, -0xff5f32

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x1010033

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageAlpha(I)V

    :cond_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->mDisplay:Landroid/hardware/display/WifiDisplay;

    # invokes: Lcom/android/settings/wfd/WifiDisplaySettings;->showOptionsDialog(Landroid/hardware/display/WifiDisplay;)V
    invoke-static {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$800(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)V

    return-void
.end method
