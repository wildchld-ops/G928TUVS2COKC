.class public Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;
.super Landroid/preference/PreferenceActivity;
.source "RoamingCallSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;->procDialCommand(Ljava/lang/String;)V

    return-void
.end method

.method private procDialCommand(Ljava/lang/String;)V
    .locals 4

    iget-object v2, p0, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    :cond_0
    const/16 v2, 0xc8

    invoke-virtual {p0, v2}, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;->showDialog(I)V

    sget-object v2, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;->LOG_TAG:Ljava/lang/String;

    const-string v3, "cannot dial because sim state is unknown or absent"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private showAlertDialogActiveVoiceMailbox()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a0749

    invoke-virtual {p0, v4}, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-array v0, v6, [Ljava/lang/String;

    const-string v4, "%s"

    aput-object v4, v0, v5

    new-array v2, v6, [Ljava/lang/String;

    const-string v4, "+819044441418"

    aput-object v4, v2, v5

    const v4, 0x7f0a074a

    invoke-virtual {p0, v4}, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, v0, v2}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f0a0242

    invoke-virtual {p0, v4}, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings$2;

    invoke-direct {v5, p0}, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings$2;-><init>(Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f0a0283

    invoke-virtual {p0, v4}, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showAlertDialogDeactieVoicemail()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a074b

    invoke-virtual {p0, v1}, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a074c

    invoke-virtual {p0, v1}, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a0242

    invoke-virtual {p0, v1}, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings$3;

    invoke-direct {v2, p0}, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings$3;-><init>(Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a0283

    invoke-virtual {p0, v1}, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showAlertDialogDeactivateAllSetting()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a0753

    invoke-virtual {p0, v1}, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a0754

    invoke-virtual {p0, v1}, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a0242

    invoke-virtual {p0, v1}, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings$7;

    invoke-direct {v2, p0}, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings$7;-><init>(Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a0283

    invoke-virtual {p0, v1}, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showAlertDialogDeactivateForwarding()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a0751

    invoke-virtual {p0, v1}, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a0752

    invoke-virtual {p0, v1}, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a0242

    invoke-virtual {p0, v1}, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings$6;

    invoke-direct {v2, p0}, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings$6;-><init>(Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a0283

    invoke-virtual {p0, v1}, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showAlertDialogFullforwarding()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a074f

    invoke-virtual {p0, v1}, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a0750

    invoke-virtual {p0, v1}, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a0242

    invoke-virtual {p0, v1}, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings$5;

    invoke-direct {v2, p0}, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings$5;-><init>(Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a0283

    invoke-virtual {p0, v1}, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showAlertDialogPlayVoicemailMessage()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a074d

    invoke-virtual {p0, v1}, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a074e

    invoke-virtual {p0, v1}, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a0242

    invoke-virtual {p0, v1}, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings$4;

    invoke-direct {v2, p0}, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings$4;-><init>(Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a0283

    invoke-virtual {p0, v1}, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    const v1, 0x7f070035

    invoke-virtual {p0, v1}, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;->addPreferencesFromResource(I)V

    const-string v1, "button_active_voice_mailbox"

    invoke-virtual {p0, v1}, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v1, "button_deactivate_voicemail"

    invoke-virtual {p0, v1}, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v1, "button_play_voicemail_message"

    invoke-virtual {p0, v1}, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v1, "button_full_forwarding"

    invoke-virtual {p0, v1}, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v1, "button_deactivate_forwarding"

    invoke-virtual {p0, v1}, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v1, "button_deactivate_all_setting"

    invoke-virtual {p0, v1}, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    if-ne v1, v2, :cond_2

    :cond_1
    const/16 v1, 0xc8

    invoke-virtual {p0, v1}, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;->showDialog(I)V

    sget-object v1, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;->LOG_TAG:Ljava/lang/String;

    const-string v2, "sim state is unknown or absent"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7

    sget-object v4, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "displayDialog() , id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x12c

    if-eq p1, v4, :cond_0

    const/16 v4, 0xc8

    if-eq p1, v4, :cond_0

    const/16 v4, 0x320

    if-eq p1, v4, :cond_0

    const/16 v4, 0x2bc

    if-ne p1, v4, :cond_1

    :cond_0
    const v3, 0x7f0a00e8

    sparse-switch p1, :sswitch_data_0

    const v2, 0x7f0a00ed

    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v3}, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v2}, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f0a0282

    invoke-virtual {p0, v4}, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings$1;

    invoke-direct {v5, p0}, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings$1;-><init>(Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    :goto_1
    return-object v0

    :sswitch_0
    const v2, 0x7f0a00ec

    goto :goto_0

    :sswitch_1
    const v2, 0x7f0a00ee

    goto :goto_0

    :sswitch_2
    const v2, 0x7f0a030b

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x12c -> :sswitch_0
        0x2bc -> :sswitch_2
        0x320 -> :sswitch_1
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x102002c

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v3

    if-gtz v3, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x4000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "com.android.phone.MAIN"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;->finish()V

    const/4 v3, 0x1

    :goto_1
    return v3

    :catch_0
    move-exception v0

    sget-object v3, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ActivityNotFoundException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    goto :goto_1
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "button_active_voice_mailbox"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;->showAlertDialogActiveVoiceMailbox()V

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "button_deactivate_voicemail"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;->showAlertDialogDeactieVoicemail()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "button_play_voicemail_message"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;->showAlertDialogPlayVoicemailMessage()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "button_full_forwarding"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;->showAlertDialogFullforwarding()V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "button_deactivate_forwarding"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;->showAlertDialogDeactivateForwarding()V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "button_deactivate_all_setting"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;->showAlertDialogDeactivateAllSetting()V

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    return-void
.end method
