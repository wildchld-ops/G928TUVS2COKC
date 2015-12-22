.class Lcom/android/settings/deviceinfo/UsbSettings$UsbSettingsPreference;
.super Landroid/preference/TwoStatePreference;
.source "UsbSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/UsbSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UsbSettingsPreference"
.end annotation


# instance fields
.field index:I

.field isChecked:Z

.field final synthetic this$0:Lcom/android/settings/deviceinfo/UsbSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/deviceinfo/UsbSettings;Landroid/content/Context;ILjava/lang/String;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/UsbSettings$UsbSettingsPreference;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-direct {p0, p2}, Landroid/preference/TwoStatePreference;-><init>(Landroid/content/Context;)V

    const v0, 0x7f040183

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/UsbSettings$UsbSettingsPreference;->setLayoutResource(I)V

    invoke-virtual {p0, p4}, Lcom/android/settings/deviceinfo/UsbSettings$UsbSettingsPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {p0, p5}, Lcom/android/settings/deviceinfo/UsbSettings$UsbSettingsPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p6}, Lcom/android/settings/deviceinfo/UsbSettings$UsbSettingsPreference;->setEnabled(Z)V

    invoke-virtual {p0, p7}, Lcom/android/settings/deviceinfo/UsbSettings$UsbSettingsPreference;->setSummary(Ljava/lang/CharSequence;)V

    iput p3, p0, Lcom/android/settings/deviceinfo/UsbSettings$UsbSettingsPreference;->index:I

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/preference/TwoStatePreference;->onBindView(Landroid/view/View;)V

    const v4, 0x7f10034e

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iget-boolean v4, p0, Lcom/android/settings/deviceinfo/UsbSettings$UsbSettingsPreference;->isChecked:Z

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget v4, p0, Lcom/android/settings/deviceinfo/UsbSettings$UsbSettingsPreference;->index:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v4, 0x7f1001fb

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v4, 0x7f10034d

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings$UsbSettingsPreference;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    iget-object v4, v4, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbSettingsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$UsbSettingsPreference;->isChecked:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/UsbSettings$UsbSettingsPreference;->isChecked:Z

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings$UsbSettingsPreference;->notifyChanged()V

    :cond_0
    return-void
.end method
