.class public Lcom/ime/implement/setting/LanguageItemPreference;
.super Landroid/preference/Preference;
.source "LanguageItemPreference.java"


# instance fields
.field private mInputManager:Lcom/ime/framework/common/InputManager;

.field private mLanguage:Lcom/ime/framework/common/Language;

.field private mRadioButton:Landroid/widget/RadioButton;

.field private misTablet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ime/framework/common/Language;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/ime/implement/setting/LanguageItemPreference;->mLanguage:Lcom/ime/framework/common/Language;

    iget-object v0, p0, Lcom/ime/implement/setting/LanguageItemPreference;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/implement/setting/LanguageItemPreference;->mInputManager:Lcom/ime/framework/common/InputManager;

    :cond_0
    iget-object v0, p0, Lcom/ime/implement/setting/LanguageItemPreference;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getRepository()Lcom/ime/framework/repository/Repository;

    move-result-object v0

    const-string v1, "TABLET_MODE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ime/implement/setting/LanguageItemPreference;->misTablet:Z

    iget-boolean v0, p0, Lcom/ime/implement/setting/LanguageItemPreference;->misTablet:Z

    if-eqz v0, :cond_1

    const v0, 0x7f030078

    invoke-virtual {p0, v0}, Lcom/ime/implement/setting/LanguageItemPreference;->setLayoutResource(I)V

    :goto_0
    return-void

    :cond_1
    const v0, 0x7f030085

    invoke-virtual {p0, v0}, Lcom/ime/implement/setting/LanguageItemPreference;->setWidgetLayoutResource(I)V

    goto :goto_0
.end method

.method private currentSelected()V
    .locals 3

    iget-object v1, p0, Lcom/ime/implement/setting/LanguageItemPreference;->mLanguage:Lcom/ime/framework/common/Language;

    invoke-virtual {v1}, Lcom/ime/framework/common/Language;->getInputMethodSubtype()I

    move-result v0

    invoke-virtual {p0}, Lcom/ime/implement/setting/LanguageItemPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/implement/setting/LanguageItemPreference;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/implement/setting/LanguageItemPreference;->mRadioButton:Landroid/widget/RadioButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    iget-boolean v0, p0, Lcom/ime/implement/setting/LanguageItemPreference;->misTablet:Z

    if-eqz v0, :cond_0

    const v0, 0x7f1000c8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/ime/implement/setting/LanguageItemPreference;->mRadioButton:Landroid/widget/RadioButton;

    :goto_0
    iget-object v0, p0, Lcom/ime/implement/setting/LanguageItemPreference;->mRadioButton:Landroid/widget/RadioButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setClickable(Z)V

    invoke-direct {p0}, Lcom/ime/implement/setting/LanguageItemPreference;->currentSelected()V

    return-void

    :cond_0
    const v0, 0x7f1000cb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/ime/implement/setting/LanguageItemPreference;->mRadioButton:Landroid/widget/RadioButton;

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/LanguageItemPreference;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/implement/setting/LanguageItemPreference;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_0
    return-void
.end method
