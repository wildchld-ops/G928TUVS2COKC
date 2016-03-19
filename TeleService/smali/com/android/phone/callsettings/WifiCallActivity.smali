.class public Lcom/android/phone/callsettings/WifiCallActivity;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "WifiCallActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;
    }
.end annotation


# instance fields
.field private mCallType:[Ljava/lang/String;

.field private mCallTypeValue:[Ljava/lang/String;

.field private mListView:Landroid/widget/ListView;

.field protected mPhone:Lcom/android/internal/telephony/Phone;

.field private mSubAppBarOnffTextview:Landroid/widget/TextView;

.field private mSubAppBarSwitch:Landroid/widget/Switch;

.field private mSubAppBarView:Landroid/view/View;

.field private mWifiCallAdapter:Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;

.field private wifiCallList:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/callsettings/WifiCallActivity;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mSubAppBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/callsettings/WifiCallActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/WifiCallActivity;->updateLayout(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/callsettings/WifiCallActivity;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/callsettings/WifiCallActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/WifiCallActivity;->setWiFiPrefValue(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/callsettings/WifiCallActivity;)Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mWifiCallAdapter:Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;

    return-object v0
.end method

.method private initLayout(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f10001a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mSubAppBarOnffTextview:Landroid/widget/TextView;

    const v0, 0x7f10001b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mSubAppBarSwitch:Landroid/widget/Switch;

    const v0, 0x7f100019

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mSubAppBarView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mSubAppBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mSubAppBarView:Landroid/view/View;

    new-instance v1, Lcom/android/phone/callsettings/WifiCallActivity$1;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/WifiCallActivity$1;-><init>(Lcom/android/phone/callsettings/WifiCallActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initializeList()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mCallType:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/WifiCallActivity;->wifiCallList:Ljava/util/TreeMap;

    iget-object v2, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mCallTypeValue:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mCallType:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private sendIntent()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/phone/callsettings/WifiCallActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_call_enable"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/WifiCallActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_call_preferred"

    const/4 v5, 0x2

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v3, "WifiCallActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendIntent wfcEnabled : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", wfcPreferred : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    new-instance v2, Landroid/content/Intent;

    const-string v3, "action_wifi_call_enable_broadcast"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "wifi_call_enable"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "wifi_call_preferred"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setWiFiPrefValue(I)V
    .locals 3

    const-string v0, "WifiCallActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWiFiPrefValue position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-virtual {p0}, Lcom/android/phone/callsettings/WifiCallActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_call_preferred"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/android/phone/callsettings/WifiCallActivity;->sendIntent()V

    return-void
.end method

.method private updateLayout(Z)V
    .locals 2

    iget-object v1, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mListView:Landroid/widget/ListView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    const/4 v1, 0x1

    const-string v0, "WifiCallActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCheckedChanged isChecked : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mSubAppBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p2}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mSubAppBarOnffTextview:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/WifiCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a0771

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/WifiCallActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_call_enable"

    if-eqz p2, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/android/phone/callsettings/WifiCallActivity;->sendIntent()V

    invoke-direct {p0, p2}, Lcom/android/phone/callsettings/WifiCallActivity;->updateLayout(Z)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/WifiCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a0772

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/WifiCallActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x1

    const v1, 0x7f040009

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    iget-object v1, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/WifiCallActivity;->initLayout(Landroid/view/View;)V

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, p0, Lcom/android/phone/callsettings/WifiCallActivity;->wifiCallList:Ljava/util/TreeMap;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/WifiCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090060

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mCallType:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/WifiCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090061

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mCallTypeValue:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/phone/callsettings/WifiCallActivity;->initializeList()V

    new-instance v1, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/WifiCallActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/WifiCallActivity;->wifiCallList:Ljava/util/TreeMap;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;-><init>(Lcom/android/phone/callsettings/WifiCallActivity;Landroid/app/Activity;Ljava/util/TreeMap;)V

    iput-object v1, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mWifiCallAdapter:Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;

    iget-object v1, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mWifiCallAdapter:Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/WifiCallActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "wifi_call_enable"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mSubAppBarOnffTextview:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mSubAppBarSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mSubAppBarSwitch:Landroid/widget/Switch;

    if-ne v0, v2, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mSubAppBarOnffTextview:Landroid/widget/TextView;

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/callsettings/WifiCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0a0771

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    if-ne v0, v2, :cond_3

    :goto_2
    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/WifiCallActivity;->updateLayout(Z)V

    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/callsettings/WifiCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0a0772

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_2
.end method
