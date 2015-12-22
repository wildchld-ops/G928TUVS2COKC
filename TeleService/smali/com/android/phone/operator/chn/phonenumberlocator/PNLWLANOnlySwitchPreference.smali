.class public Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference;
.super Landroid/preference/SwitchPreference;
.source "PNLWLANOnlySwitchPreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private writeFlag:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101036d

    invoke-direct {p0, p1, p2, v0}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference;->writeFlag:Z

    iput-object p1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$002(Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference;->writeFlag:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference;->writeChargesNotificationPrefrence()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference;->userConfirmClick()V

    return-void
.end method

.method private readChargesNotificationPrefrence()Z
    .locals 4

    iget-object v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "charges_notification_key3"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private showChargesNotificationDialog()V
    .locals 7

    const/4 v6, 0x1

    iget-object v4, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference;->mContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v4, 0x7f040053

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f100060

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-boolean v6, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference;->writeFlag:Z

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v4, Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference$1;

    invoke-direct {v4, p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference$1;-><init>(Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference;)V

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v4, 0x7f0a03fe

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setText(I)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a03d8

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a03d9

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a0283

    new-instance v6, Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference$3;

    invoke-direct {v6, p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference$3;-><init>(Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a0282

    new-instance v6, Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference$2;

    invoke-direct {v6, p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference$2;-><init>(Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private userConfirmClick()V
    .locals 0

    invoke-super {p0}, Landroid/preference/SwitchPreference;->onClick()V

    return-void
.end method

.method private writeChargesNotificationPrefrence()V
    .locals 4

    iget-boolean v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference;->writeFlag:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "charges_notification_key3"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 1

    const-string v0, "support_charges_notification_in_pnl"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference;->readChargesNotificationPrefrence()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference;->showChargesNotificationDialog()V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Landroid/preference/SwitchPreference;->onClick()V

    goto :goto_0
.end method
