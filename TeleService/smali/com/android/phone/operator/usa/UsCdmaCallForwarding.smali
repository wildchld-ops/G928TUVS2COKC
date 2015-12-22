.class public Lcom/android/phone/operator/usa/UsCdmaCallForwarding;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "UsCdmaCallForwarding.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/operator/usa/UsCdmaCallForwarding;Ljava/lang/String;Z)V
    .locals 0
    .param p0    # Lcom/android/phone/operator/usa/UsCdmaCallForwarding;
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    invoke-direct {p0, p1, p2}, Lcom/android/phone/operator/usa/UsCdmaCallForwarding;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/operator/usa/UsCdmaCallForwarding;I)V
    .locals 0
    .param p0    # Lcom/android/phone/operator/usa/UsCdmaCallForwarding;
    .param p1    # I

    invoke-virtual {p0, p1}, Lcom/android/phone/operator/usa/UsCdmaCallForwarding;->showDialog(I)V

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    const-string v0, "UsCdmaCallForwarding"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;

    const/4 v4, 0x1

    const-string v3, "onCreate"

    invoke-direct {p0, v3, v4}, Lcom/android/phone/operator/usa/UsCdmaCallForwarding;->log(Ljava/lang/String;Z)V

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v3, 0x7f070042

    invoke-virtual {p0, v3}, Lcom/android/phone/operator/usa/UsCdmaCallForwarding;->addPreferencesFromResource(I)V

    const-string v3, "us_cdma_call_forwarding_activate_key"

    invoke-virtual {p0, v3}, Lcom/android/phone/operator/usa/UsCdmaCallForwarding;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    const-string v3, "us_cdma_call_forwarding_deactivate_key"

    invoke-virtual {p0, v3}, Lcom/android/phone/operator/usa/UsCdmaCallForwarding;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    new-instance v3, Lcom/android/phone/operator/usa/UsCdmaCallForwarding$1;

    invoke-direct {v3, p0}, Lcom/android/phone/operator/usa/UsCdmaCallForwarding$1;-><init>(Lcom/android/phone/operator/usa/UsCdmaCallForwarding;)V

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    new-instance v3, Lcom/android/phone/operator/usa/UsCdmaCallForwarding$2;

    invoke-direct {v3, p0}, Lcom/android/phone/operator/usa/UsCdmaCallForwarding$2;-><init>(Lcom/android/phone/operator/usa/UsCdmaCallForwarding;)V

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/UsCdmaCallForwarding;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 10
    .param p1    # I

    const/4 v9, 0x0

    const/high16 v8, 0x1040000

    const/4 v7, 0x1

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/UsCdmaCallForwarding;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x2

    new-array v2, v4, [Ljava/lang/CharSequence;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/UsCdmaCallForwarding;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a04e3

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/UsCdmaCallForwarding;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a04e4

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v7

    const v3, 0x7f0a04e5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreateDialog id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v7}, Lcom/android/phone/operator/usa/UsCdmaCallForwarding;->log(Ljava/lang/String;Z)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/phone/operator/usa/UsCdmaCallForwarding;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :pswitch_0
    const v3, 0x7f0a04e2

    new-instance v4, Lcom/android/phone/operator/usa/UsCdmaCallForwarding$3;

    invoke-direct {v4, p0}, Lcom/android/phone/operator/usa/UsCdmaCallForwarding$3;-><init>(Lcom/android/phone/operator/usa/UsCdmaCallForwarding;)V

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :pswitch_1
    const v3, 0x7f0a04e2

    new-instance v4, Lcom/android/phone/operator/usa/UsCdmaCallForwarding$4;

    invoke-direct {v4, p0}, Lcom/android/phone/operator/usa/UsCdmaCallForwarding$4;-><init>(Lcom/android/phone/operator/usa/UsCdmaCallForwarding;)V

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
