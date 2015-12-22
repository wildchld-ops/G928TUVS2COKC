.class public Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;
.super Landroid/preference/CheckBoxPreference;
.source "RadioButtonPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference$OnClickListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101007e

    invoke-direct {p0, p1, p2, v0}, Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_0
    return-void
.end method

.method public onClick()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;->mListener:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;->mListener:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference$OnClickListener;

    invoke-interface {v0, p0}, Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference$OnClickListener;->onRadioButtonClicked(Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;)V

    :cond_0
    return-void
.end method
