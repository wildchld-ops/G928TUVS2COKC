.class public Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;
.super Landroid/preference/Preference;
.source "PaymentSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/PaymentSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PaymentAppPreference"
.end annotation


# instance fields
.field private final appInfo:Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

.field private isTrusted:Z

.field private final listener:Landroid/view/View$OnClickListener;

.field private final longListener:Landroid/view/View$OnLongClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/nfc/NfcAdapter;Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const v2, 0x7f040129

    invoke-virtual {p0, v2}, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;->setLayoutResource(I)V

    iput-object p3, p0, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;->appInfo:Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    iput-object p4, p0, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;->listener:Landroid/view/View$OnClickListener;

    iput-object p5, p0, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;->longListener:Landroid/view/View$OnLongClickListener;

    const-string v1, "SIM"

    iget-object v2, p3, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DT"

    # getter for: Lcom/android/settings/nfc/PaymentSettings;->mOperator:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/nfc/PaymentSettings;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2, v1, v0}, Landroid/nfc/NfcAdapter;->isTrustedPkg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;->isTrusted:Z

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;->isTrusted:Z

    goto :goto_0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v3, 0x1020019

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iget-object v3, p0, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;->appInfo:Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    iget-boolean v3, v3, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->isDefault:Z

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;->longListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v3, p0, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;->appInfo:Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    const v3, 0x7f10029a

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;->appInfo:Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    iget-object v3, v3, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->banner:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;->longListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v3, p0, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;->appInfo:Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const v3, 0x7f10029b

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;->isTrusted:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v3, 0x8

    goto :goto_0
.end method
