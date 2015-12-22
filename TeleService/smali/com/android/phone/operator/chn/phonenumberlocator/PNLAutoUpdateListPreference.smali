.class public Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;
.super Landroid/preference/ListPreference;
.source "PNLAutoUpdateListPreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/content/DialogInterface;

.field private mSuperClickedDialogEntryIndex:I

.field private mTempDialogEntryIndex:I

.field private writeFlag:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->writeFlag:Z

    iput-object p1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->readChargesNotificationPrefrence()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;)Landroid/content/DialogInterface;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->mDialog:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;Landroid/content/DialogInterface;)Landroid/content/DialogInterface;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->mDialog:Landroid/content/DialogInterface;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->mTempDialogEntryIndex:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->mTempDialogEntryIndex:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->showChargesNotificationDialog()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->mSuperClickedDialogEntryIndex:I

    return p1
.end method

.method static synthetic access$502(Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->writeFlag:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->writeChargesNotificationPrefrence()V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 2

    const-string v0, "PNLAutoUpdateListPreference"

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.method private readChargesNotificationPrefrence()Z
    .locals 4

    iget-object v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "charges_notification_key2"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readChargesNotificationPrefrence : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->log(Ljava/lang/String;)V

    return v1
.end method

.method private showChargesNotificationDialog()V
    .locals 12

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->writeFlag:Z

    const/4 v7, -0x1

    const/4 v1, -0x1

    iget-object v8, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->mContext:Landroid/content/Context;

    const-string v9, "layout_inflater"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v8, 0x7f040053

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v8, 0x7f100060

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iget-object v8, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->mContext:Landroid/content/Context;

    sget-object v9, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorRegisterService;->PNL_AUTO_UPDATE:Ljava/lang/String;

    const/4 v10, 0x3

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v8, "WLANOnly"

    invoke-interface {v6, v8, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v2, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v8, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference$2;

    invoke-direct {v8, p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference$2;-><init>(Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;)V

    invoke-virtual {v2, v8}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    if-nez v4, :cond_0

    const v7, 0x7f0a03d9

    const v1, 0x7f0a03d8

    :goto_0
    const v8, 0x7f0a03fe

    invoke-virtual {v2, v8}, Landroid/widget/CheckBox;->setText(I)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0a0283

    new-instance v10, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference$4;

    invoke-direct {v10, p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference$4;-><init>(Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0a0282

    new-instance v10, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference$3;

    invoke-direct {v10, p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference$3;-><init>(Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_0
    const v7, 0x7f0a03de

    const v1, 0x7f0a03df

    goto :goto_0
.end method

.method private writeChargesNotificationPrefrence()V
    .locals 4

    iget-boolean v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->writeFlag:Z

    if-eqz v2, :cond_0

    const-string v2, "writeChargesNotificationPrefrence true"

    invoke-direct {p0, v2}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "charges_notification_key2"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    invoke-virtual {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz p1, :cond_0

    iget v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->mSuperClickedDialogEntryIndex:I

    if-ltz v2, :cond_0

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->mSuperClickedDialogEntryIndex:I

    aget-object v2, v0, v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->mSuperClickedDialogEntryIndex:I

    invoke-virtual {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->mSuperClickedDialogEntryIndex:I

    new-instance v2, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference$1;

    invoke-direct {v2, p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference$1;-><init>(Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, v3, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method
