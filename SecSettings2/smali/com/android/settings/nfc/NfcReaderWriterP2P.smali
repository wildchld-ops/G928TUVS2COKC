.class public Lcom/android/settings/nfc/NfcReaderWriterP2P;
.super Landroid/app/Fragment;
.source "NfcReaderWriterP2P.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# instance fields
.field private activity:Landroid/app/Activity;

.field private activitySwitchBar:Lcom/android/settings/SettingsActivity;

.field private final carrier:Ljava/lang/String;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

.field private mOldActivityTitle:Ljava/lang/CharSequence;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mView:Landroid/view/View;

.field private mfilter:Landroid/content/IntentFilter;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcReaderWriterP2P;->carrier:Ljava/lang/String;

    new-instance v0, Lcom/android/settings/nfc/NfcReaderWriterP2P$1;

    invoke-direct {v0, p0}, Lcom/android/settings/nfc/NfcReaderWriterP2P$1;-><init>(Lcom/android/settings/nfc/NfcReaderWriterP2P;)V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcReaderWriterP2P;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/nfc/NfcReaderWriterP2P;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nfc/NfcReaderWriterP2P;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method private initView(Landroid/view/View;)V
    .locals 2

    const v1, 0x7f10029e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const v1, 0x7f0a1635

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string v0, "[NfcReaderWriterP2P]"

    const-string v1, "[S] onActivityCreated"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcReaderWriterP2P;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcReaderWriterP2P;->mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcReaderWriterP2P;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    iput-object v0, p0, Lcom/android/settings/nfc/NfcReaderWriterP2P;->activitySwitchBar:Lcom/android/settings/SettingsActivity;

    iget-object v0, p0, Lcom/android/settings/nfc/NfcReaderWriterP2P;->activitySwitchBar:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcReaderWriterP2P;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v0, p0, Lcom/android/settings/nfc/NfcReaderWriterP2P;->activity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcReaderWriterP2P;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    iget-object v0, p0, Lcom/android/settings/nfc/NfcReaderWriterP2P;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/nfc/NfcReaderWriterP2P;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/nfc/NfcReaderWriterP2P;->mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getRWP2pStatus()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/nfc/NfcReaderWriterP2P;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcReaderWriterP2P;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/nfc/NfcReaderWriterP2P;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcReaderWriterP2P;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    :cond_1
    const-string v0, "[NfcReaderWriterP2P]"

    const-string v1, "[E] onActivityCreated"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/settings/nfc/NfcReaderWriterP2P;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/16 v4, 0x10

    const/4 v5, -0x2

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcReaderWriterP2P;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/nfc/NfcReaderWriterP2P;->activity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcReaderWriterP2P;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    iput-object v1, p0, Lcom/android/settings/nfc/NfcReaderWriterP2P;->activitySwitchBar:Lcom/android/settings/SettingsActivity;

    new-instance v1, Lcom/android/settings/widget/SwitchBar;

    iget-object v2, p0, Lcom/android/settings/nfc/NfcReaderWriterP2P;->activitySwitchBar:Lcom/android/settings/SettingsActivity;

    invoke-direct {v1, v2}, Lcom/android/settings/widget/SwitchBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/nfc/NfcReaderWriterP2P;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const-string v1, "[NfcReaderWriterP2P]"

    const-string v2, "[S] onCreate"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/nfc/NfcReaderWriterP2P;->activity:Landroid/app/Activity;

    instance-of v1, v1, Landroid/preference/PreferenceActivity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/nfc/NfcReaderWriterP2P;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d008d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/nfc/NfcReaderWriterP2P;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v3, v3, v0, v3}, Lcom/android/settings/widget/SwitchBar;->setPaddingRelative(IIII)V

    iget-object v1, p0, Lcom/android/settings/nfc/NfcReaderWriterP2P;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    iget-object v1, p0, Lcom/android/settings/nfc/NfcReaderWriterP2P;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/nfc/NfcReaderWriterP2P;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const v4, 0x800015

    invoke-direct {v3, v5, v5, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    iget-object v1, p0, Lcom/android/settings/nfc/NfcReaderWriterP2P;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/nfc/NfcReaderWriterP2P;->mOldActivityTitle:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcReaderWriterP2P;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v2, 0x7f0a1615

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_0
    const-string v1, "[NfcReaderWriterP2P]"

    const-string v2, "[E] onCreate"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f04012e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcReaderWriterP2P;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/nfc/NfcReaderWriterP2P;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/settings/nfc/NfcReaderWriterP2P;->initView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcReaderWriterP2P;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcReaderWriterP2P;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcReaderWriterP2P;->mOldActivityTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcReaderWriterP2P;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/nfc/NfcReaderWriterP2P;->mOldActivityTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    const-string v0, "[NfcReaderWriterP2P]"

    const-string v1, "[S] onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcReaderWriterP2P;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/nfc/NfcReaderWriterP2P;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcReaderWriterP2P;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/nfc/NfcReaderWriterP2P;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    :cond_0
    const-string v0, "[NfcReaderWriterP2P]"

    const-string v1, "[E] onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    const-string v0, "[NfcReaderWriterP2P]"

    const-string v1, "NfcReaderWriterP2P onResume & registerReceiver"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcReaderWriterP2P;->mfilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/android/settings/nfc/NfcReaderWriterP2P;->mfilter:Landroid/content/IntentFilter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/nfc/NfcReaderWriterP2P;->mfilter:Landroid/content/IntentFilter;

    const-string v1, "com.felicanetworks.nfc.action.ADAPTER_RW_P2P_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcReaderWriterP2P;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/nfc/NfcReaderWriterP2P;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/nfc/NfcReaderWriterP2P;->mfilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcReaderWriterP2P;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/nfc/NfcReaderWriterP2P;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    :cond_1
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "[NfcReaderWriterP2P]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[S] onSwitchChanged carrier = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/nfc/NfcReaderWriterP2P;->carrier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "desiredState ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/settings/nfc/NfcReaderWriterP2P;->mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getRWP2pStatus()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/nfc/NfcReaderWriterP2P;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcReaderWriterP2P;->mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v0, v4}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->setRWP2pStatus(Z)Z

    iget-object v0, p0, Lcom/android/settings/nfc/NfcReaderWriterP2P;->mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    const-string v0, "KDI"

    iget-object v1, p0, Lcom/android/settings/nfc/NfcReaderWriterP2P;->carrier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/nfc/NfcReaderWriterP2P;->mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getABeamStatus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/nfc/NfcReaderWriterP2P;->mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v0, v4}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->setABeamStatus(Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/nfc/NfcReaderWriterP2P;->mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getRWP2pStatus()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/nfc/NfcReaderWriterP2P;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcReaderWriterP2P;->mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v0, v3}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->setRWP2pStatus(Z)Z

    goto :goto_0
.end method
