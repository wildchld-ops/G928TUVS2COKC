.class public Lcom/android/phone/operator/chn/spamcall/SpamCall;
.super Landroid/preference/PreferenceActivity;
.source "SpamCall.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private first:Z

.field private mActionBar:Landroid/app/ActionBar;

.field private mAutoReject:Landroid/preference/PreferenceScreen;

.field private mAutoUpdate:Landroid/preference/SwitchPreference;

.field private mDescriptionText:Landroid/widget/TextView;

.field private mListView:Landroid/widget/ListView;

.field protected mPhone:Lcom/android/internal/telephony/Phone;

.field private mSubAppBarOnffTextview:Landroid/widget/TextView;

.field private mSubAppBarSwitch:Landroid/widget/Switch;

.field private mSubAppBarView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/operator/chn/spamcall/SpamCall;->first:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/operator/chn/spamcall/SpamCall;)Landroid/widget/Switch;
    .locals 1
    .param p0    # Lcom/android/phone/operator/chn/spamcall/SpamCall;

    iget-object v0, p0, Lcom/android/phone/operator/chn/spamcall/SpamCall;->mSubAppBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method private initLayout()V
    .locals 2

    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/android/phone/operator/chn/spamcall/SpamCall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/phone/operator/chn/spamcall/SpamCall;->mListView:Landroid/widget/ListView;

    const v0, 0x7f10001a

    invoke-virtual {p0, v0}, Lcom/android/phone/operator/chn/spamcall/SpamCall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/operator/chn/spamcall/SpamCall;->mSubAppBarOnffTextview:Landroid/widget/TextView;

    const v0, 0x7f10001b

    invoke-virtual {p0, v0}, Lcom/android/phone/operator/chn/spamcall/SpamCall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/phone/operator/chn/spamcall/SpamCall;->mSubAppBarSwitch:Landroid/widget/Switch;

    const v0, 0x7f100019

    invoke-virtual {p0, v0}, Lcom/android/phone/operator/chn/spamcall/SpamCall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/operator/chn/spamcall/SpamCall;->mSubAppBarView:Landroid/view/View;

    const v0, 0x7f1001e3

    invoke-virtual {p0, v0}, Lcom/android/phone/operator/chn/spamcall/SpamCall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/operator/chn/spamcall/SpamCall;->mDescriptionText:Landroid/widget/TextView;

    const-string v0, "support_spam_call_reject"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/chn/spamcall/SpamCall;->mDescriptionText:Landroid/widget/TextView;

    const v1, 0x7f0a078d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/phone/operator/chn/spamcall/SpamCall;->mSubAppBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/android/phone/operator/chn/spamcall/SpamCall;->mSubAppBarView:Landroid/view/View;

    new-instance v1, Lcom/android/phone/operator/chn/spamcall/SpamCall$1;

    invoke-direct {v1, p0}, Lcom/android/phone/operator/chn/spamcall/SpamCall$1;-><init>(Lcom/android/phone/operator/chn/spamcall/SpamCall;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/operator/chn/spamcall/SpamCall;->first:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/operator/chn/spamcall/SpamCall;->mDescriptionText:Landroid/widget/TextView;

    const v1, 0x7f0a078c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private initPreference()V
    .locals 2

    const-string v0, "button_auto_reject_calls"

    invoke-virtual {p0, v0}, Lcom/android/phone/operator/chn/spamcall/SpamCall;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/operator/chn/spamcall/SpamCall;->mAutoReject:Landroid/preference/PreferenceScreen;

    const-string v0, "button_auto_update"

    invoke-virtual {p0, v0}, Lcom/android/phone/operator/chn/spamcall/SpamCall;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/phone/operator/chn/spamcall/SpamCall;->mAutoUpdate:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/phone/operator/chn/spamcall/SpamCall;->mAutoUpdate:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/chn/spamcall/SpamCall;->mAutoUpdate:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    const-string v0, "support_spam_call_reject"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/operator/chn/spamcall/SpamCall;->mAutoReject:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/operator/chn/spamcall/SpamCall;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/operator/chn/spamcall/SpamCall;->mAutoReject:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/operator/chn/spamcall/SpamCall;->mAutoReject:Landroid/preference/PreferenceScreen;

    :cond_1
    return-void
.end method

.method private updateAutoupdate()V
    .locals 5

    const/4 v1, 0x1

    const-string v2, "SpamCall"

    const-string v3, "updateAutoupdate"

    invoke-static {v2, v3, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v2, p0, Lcom/android/phone/operator/chn/spamcall/SpamCall;->mAutoUpdate:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/operator/chn/spamcall/SpamCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "spam_call_auto_update"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_1

    move v0, v1

    :goto_0
    const-string v2, "SpamCall"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateAutoupdate : updateValue - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v1, p0, Lcom/android/phone/operator/chn/spamcall/SpamCall;->mAutoUpdate:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateLayout(Z)V
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Lcom/android/phone/operator/chn/spamcall/SpamCall;->mAutoReject:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/chn/spamcall/SpamCall;->mAutoReject:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/operator/chn/spamcall/SpamCall;->mAutoUpdate:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/operator/chn/spamcall/SpamCall;->mAutoUpdate:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1    # Landroid/widget/CompoundButton;
    .param p2    # Z

    const-string v0, "SpamCall"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckedChanged isChecked : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-virtual {p0, p2}, Lcom/android/phone/operator/chn/spamcall/SpamCall;->updateTurnOnStatus(Z)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "SpamCall"

    const-string v1, "onCreate"

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const v0, 0x7f0400b5

    invoke-virtual {p0, v0}, Lcom/android/phone/operator/chn/spamcall/SpamCall;->setContentView(I)V

    const v0, 0x7f070040

    invoke-virtual {p0, v0}, Lcom/android/phone/operator/chn/spamcall/SpamCall;->addPreferencesFromResource(I)V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/operator/chn/spamcall/SpamCall;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {p0}, Lcom/android/phone/operator/chn/spamcall/SpamCall;->initLayout()V

    invoke-direct {p0}, Lcom/android/phone/operator/chn/spamcall/SpamCall;->initPreference()V

    invoke-virtual {p0}, Lcom/android/phone/operator/chn/spamcall/SpamCall;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/operator/chn/spamcall/SpamCall;->mActionBar:Landroid/app/ActionBar;

    iget-object v0, p0, Lcom/android/phone/operator/chn/spamcall/SpamCall;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/chn/spamcall/SpamCall;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1    # Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/operator/chn/spamcall/SpamCall;->finish()V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Landroid/preference/Preference;
    .param p2    # Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v2, "SpamCall"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPreferenceChange(). preferenece: \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", value: \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/operator/chn/spamcall/SpamCall;->mAutoUpdate:Landroid/preference/SwitchPreference;

    if-ne p1, v2, :cond_1

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/android/phone/operator/chn/spamcall/SpamCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "spam_call_auto_update"

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_0
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string v2, "action_auto_update_broadcast"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "spam_call_auto_update"

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    move v4, v3

    :cond_0
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/phone/operator/chn/spamcall/SpamCall;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return v3

    :cond_2
    move v2, v4

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1    # Landroid/preference/PreferenceScreen;
    .param p2    # Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/phone/operator/chn/spamcall/SpamCall;->mAutoReject:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.bst.spamcall"

    const-string v3, "com.bst.spamcall.SpamCallAutoRejectSettingActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/phone/operator/chn/spamcall/SpamCall;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    :catch_0
    move-exception v1

    const-string v2, "SpamCall"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity for adding calls isn\'t found. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    const-string v0, "SpamCall"

    const-string v1, "onResume"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-virtual {p0}, Lcom/android/phone/operator/chn/spamcall/SpamCall;->updateTurnOnStatus()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/operator/chn/spamcall/SpamCall;->first:Z

    invoke-direct {p0}, Lcom/android/phone/operator/chn/spamcall/SpamCall;->updateAutoupdate()V

    return-void
.end method

.method public updateTurnOnStatus()V
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/phone/operator/chn/spamcall/SpamCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "spam_call_enable"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/operator/chn/spamcall/SpamCall;->mSubAppBarOnffTextview:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/operator/chn/spamcall/SpamCall;->mSubAppBarSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/android/phone/operator/chn/spamcall/SpamCall;->mSubAppBarSwitch:Landroid/widget/Switch;

    if-ne v0, v2, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/phone/operator/chn/spamcall/SpamCall;->mSubAppBarOnffTextview:Landroid/widget/TextView;

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/operator/chn/spamcall/SpamCall;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0a0771

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    if-ne v0, v2, :cond_3

    :goto_2
    invoke-direct {p0, v2}, Lcom/android/phone/operator/chn/spamcall/SpamCall;->updateLayout(Z)V

    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/operator/chn/spamcall/SpamCall;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0a0772

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_2
.end method

.method public updateTurnOnStatus(Z)V
    .locals 6
    .param p1    # Z

    const/4 v3, 0x0

    const-string v4, "spam_calls_dialog_do_not_show"

    invoke-static {v4, v3}, Lcom/android/services/telephony/common/SystemDBInterface;->getSettingDB(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/phone/operator/chn/spamcall/SpamCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "spam_call_enable"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    if-nez v2, :cond_0

    iget-boolean v4, p0, Lcom/android/phone/operator/chn/spamcall/SpamCall;->first:Z

    if-nez v4, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/phone/operator/chn/spamcall/SpamCall;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/android/phone/SpamCallsLegalInfoDialog;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/android/phone/operator/chn/spamcall/SpamCall;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/operator/chn/spamcall/SpamCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "spam_call_enable"

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    :cond_1
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/phone/operator/chn/spamcall/SpamCall;->updateTurnOnStatus()V

    goto :goto_0
.end method
