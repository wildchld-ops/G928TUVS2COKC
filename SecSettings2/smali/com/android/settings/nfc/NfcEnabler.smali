.class public Lcom/android/settings/nfc/NfcEnabler;
.super Ljava/lang/Object;
.source "NfcEnabler.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# instance fields
.field private final mAndroidBeam:Landroid/preference/PreferenceScreen;

.field private mBeamDisallowed:Z

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private final mNfcSettings:Landroid/preference/PreferenceScreen;

.field private final mReaderSwitch:Landroid/preference/PreferenceScreen;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private final mTapPay:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/settings/nfc/NfcEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/nfc/NfcEnabler$1;-><init>(Lcom/android/settings/nfc/NfcEnabler;)V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iput-object p4, p0, Lcom/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/preference/PreferenceScreen;

    iput-object p3, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSettings:Landroid/preference/PreferenceScreen;

    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    const-string v1, "no_outgoing_beam"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mBeamDisallowed:Z

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iput-object v3, p0, Lcom/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mBeamDisallowed:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.nfc.action.ABEAM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/settings/nfc/NfcEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/nfc/NfcEnabler$1;-><init>(Lcom/android/settings/nfc/NfcEnabler;)V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p2, p0, Lcom/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iput-object p4, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/PreferenceScreen;

    iput-object p3, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    iput-object p1, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iput-object v3, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSettings:Landroid/preference/PreferenceScreen;

    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    iput-object p5, p0, Lcom/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    const-string v1, "no_outgoing_beam"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mBeamDisallowed:Z

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iput-object v3, p0, Lcom/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mBeamDisallowed:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_2
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.nfc.action.ABEAM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGE_READER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/nfc/NfcEnabler;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/nfc/NfcEnabler;->handleNfcStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/nfc/NfcEnabler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/nfc/NfcEnabler;->handleNfcStateABeamChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/nfc/NfcEnabler;)Landroid/nfc/NfcAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/nfc/NfcEnabler;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method private checkKnox()V
    .locals 9

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_3

    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "isNFCEnabled"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    :try_start_0
    const-string v0, "isNFCEnabled"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "false"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    const-string v0, "content://com.sec.knox.provider2/MiscPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "isNFCStateChangeAllowed"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    :try_start_1
    const-string v0, "isNFCStateChangeAllowed"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "false"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V
    :try_end_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_5

    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "isAndroidBeamAllowed"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    :try_start_2
    const-string v0, "isAndroidBeamAllowed"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V
    :try_end_2
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_2
    return-void

    :catch_0
    move-exception v6

    :try_start_3
    invoke-virtual {v6}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :catch_1
    move-exception v6

    :try_start_4
    invoke-virtual {v6}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :catch_2
    move-exception v6

    :try_start_5
    invoke-virtual {v6}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_2
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getBeamShareActivityState()Z
    .locals 9

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.android.nfc"

    const-string v5, "com.android.nfc.BeamShareActivity"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v4, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    const-string v5, "android"

    const/4 v6, 0x0

    new-instance v7, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eq v4, v3, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "NfcEnabler"

    const-string v4, "Failed to retrieve PackageManager for user"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleNfcStateABeamChanged()V
    .locals 3

    const-string v0, "NfcEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBeamDisallowed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mBeamDisallowed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/nfc/NfcEnabler;->getBeamShareActivityState()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NfcEnabler"

    const-string v1, " beamshare state is true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/nfc/NfcEnabler;->getBeamShareActivityState()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mBeamDisallowed:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0a0e2d

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0a0e2e

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0
.end method

.method private handleNfcStateChanged(I)V
    .locals 5

    const v3, 0x7f0a0e2e

    const v4, 0x7f0a0e2d

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/nfc/NfcEnabler;->checkKnox()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_2
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "GATE"

    const-string v1, "<GATE-M>NFC_OFF</GATE-M>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_4
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSettings:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    :cond_5
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_6
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    iget-boolean v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mBeamDisallowed:Z

    if-nez v0, :cond_b

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_7
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "GATE"

    const-string v2, "<GATE-M>NFC_ON</GATE-M>"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/preference/PreferenceScreen;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :cond_9
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSettings:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    :cond_a
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto/16 :goto_0

    :cond_b
    move v0, v2

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_c
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_d
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_e
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSettings:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    :cond_f
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_10
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_11
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_12
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSettings:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    :cond_13
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_14
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_15
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_16
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSettings:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    :cond_17
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private isNfcTurnOn()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeAlertDialog()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a02cd

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a02d1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/nfc/NfcEnabler$2;

    invoke-direct {v2, p0}, Lcom/android/settings/nfc/NfcEnabler$2;-><init>(Lcom/android/settings/nfc/NfcEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/settings/nfc/NfcEnabler$3;

    invoke-direct {v2, p0}, Lcom/android/settings/nfc/NfcEnabler$3;-><init>(Lcom/android/settings/nfc/NfcEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/settings/nfc/NfcEnabler$4;

    invoke-direct {v1, p0}, Lcom/android/settings/nfc/NfcEnabler$4;-><init>(Lcom/android/settings/nfc/NfcEnabler;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/nfc/NfcEnabler;->isNfcTurnOn()Z

    move-result v0

    if-ne v0, p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enable()Z

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/nfc/NfcEnabler;->checkKnox()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/settings/nfc/NfcEnabler;->makeAlertDialog()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disable()Z

    goto :goto_1
.end method

.method public pause()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/nfc/NfcEnabler;->handleNfcStateChanged(I)V

    invoke-direct {p0}, Lcom/android/settings/nfc/NfcEnabler;->handleNfcStateABeamChanged()V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    goto :goto_0
.end method
