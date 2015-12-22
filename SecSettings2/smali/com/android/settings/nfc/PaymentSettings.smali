.class public Lcom/android/settings/nfc/PaymentSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PaymentSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;,
        Lcom/android/settings/nfc/PaymentSettings$SettingsPackageMonitor;
    }
.end annotation


# static fields
.field private static final SALES_CODE:Ljava/lang/String;

.field private static mOperator:Ljava/lang/String;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/nfc/PaymentSettings;->SALES_CODE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/settings/nfc/PaymentSettings$SettingsPackageMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/nfc/PaymentSettings$SettingsPackageMonitor;-><init>(Lcom/android/settings/nfc/PaymentSettings;Lcom/android/settings/nfc/PaymentSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/nfc/PaymentSettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    new-instance v0, Lcom/android/settings/nfc/PaymentSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/nfc/PaymentSettings$1;-><init>(Lcom/android/settings/nfc/PaymentSettings;)V

    iput-object v0, p0, Lcom/android/settings/nfc/PaymentSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/nfc/PaymentSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/nfc/PaymentSettings$2;-><init>(Lcom/android/settings/nfc/PaymentSettings;)V

    iput-object v0, p0, Lcom/android/settings/nfc/PaymentSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/nfc/PaymentSettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nfc/PaymentSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/nfc/PaymentSettings;->mOperator:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    iget-object v1, v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    iget-object v2, v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Lcom/android/settings/nfc/PaymentBackend;->setDefaultPaymentApp(Landroid/content/ComponentName;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->refresh()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/nfc/PaymentBackend;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/PaymentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/nfc/PaymentSettings;->mInflater:Landroid/view/LayoutInflater;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/PaymentSettings;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/PaymentSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_NFC_ConfigOperatorSettingUI"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/nfc/PaymentSettings;->mOperator:Ljava/lang/String;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "payment_service_search_uri"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const v2, 0x7f0a0d36

    invoke-interface {p1, v2}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_NFC_EnableFelica"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "DCM"

    sget-object v3, Lcom/android/settings/nfc/PaymentSettings;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const v2, 0x7f0a1637

    invoke-interface {p1, v5, v5, v6, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x5

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/nfc/PaymentSettings;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040128

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    if-eqz v4, :cond_0

    const-string v0, "com.gsma.services.nfc.SELECT_DEFAULT_SERVICE"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    iget-object v4, v1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    iget-object v5, v1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Lcom/android/settings/nfc/PaymentBackend;->setDefaultPaymentApp(Landroid/content/ComponentName;)V

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->refresh()V

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iget-object v4, v1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/settings/nfc/PaymentSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v4, 0x1

    return v4

    :catch_0
    move-exception v2

    const-string v4, "PaymentSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HCE Setting Activity is not found. : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    const/4 v4, 0x0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_NFC_EnableFelica"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "DCM"

    sget-object v1, Lcom/android/settings/nfc/PaymentSettings;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    if-nez v6, :cond_0

    const-class v0, Lcom/android/settings/nfc/OtherSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0a02bc

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/nfc/PaymentSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->finishFragment()V

    const/4 v4, 0x1

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/nfc/PaymentSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/settings/nfc/PaymentSettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/nfc/PaymentBackend;->setForegroundMode(Z)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "org.mobilenfcassociation.CardEmulation.action.AID_TABLE_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/nfc/PaymentSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/nfc/PaymentSettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->refresh()V

    return-void
.end method

.method public refresh()V
    .locals 19

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/nfc/PaymentSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v3}, Lcom/android/settings/nfc/PaymentBackend;->getPaymentAppInfos()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    new-instance v9, Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v9, v3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const v3, 0x7f04013d

    invoke-virtual {v9, v3}, Landroid/preference/Preference;->setLayoutResource(I)V

    const v3, 0x7f0a02c4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/nfc/PaymentSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Landroid/preference/Preference;->setSelectable(Z)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    new-instance v2, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/nfc/PaymentSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    move-object/from16 v6, p0

    move-object/from16 v7, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;-><init>(Landroid/content/Context;Landroid/nfc/NfcAdapter;Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    iget-object v3, v5, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->caption:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v3, v5, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->banner:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_0
    const-string v3, "PaymentSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t load banner drawable of service "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v5, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/nfc/PaymentSettings;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f100298

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/nfc/PaymentSettings;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f100297

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    invoke-virtual/range {v18 .. v18}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    const v3, 0x7f050012

    invoke-virtual {v10, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    invoke-virtual {v10}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    check-cast v14, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v14}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/nfc/PaymentSettings;->getListView()Landroid/widget/ListView;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setVisibility(I)V

    :goto_1
    new-instance v17, Landroid/content/Intent;

    const-string v3, "com.sec.settings.action.NFC_PAYMENT_REFRESH"

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.sec.android.widgetapp.tapandpay"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/nfc/PaymentSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    return-void

    :cond_2
    new-instance v12, Landroid/preference/SwitchPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v12, v3}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v3}, Lcom/android/settings/nfc/PaymentBackend;->isForegroundMode()Z

    move-result v13

    const/4 v3, 0x0

    invoke-virtual {v12, v3}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    const v3, 0x7f0a0d33

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/nfc/PaymentSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v12, v13}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    const/16 v3, 0x8

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v3, 0x8

    invoke-virtual {v10, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/nfc/PaymentSettings;->getListView()Landroid/widget/ListView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_1
.end method
