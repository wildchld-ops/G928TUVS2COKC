.class public Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;
.super Landroid/app/ListActivity;
.source "DataNetworkMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/mobilenetworks/kor/DataNetworkMode$SettingListItem;
    }
.end annotation


# static fields
.field private static mConnectivityManager:Landroid/net/ConnectivityManager;

.field private static mIsConnectedDataCall:Z


# instance fields
.field private mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

.field private mHandler:Landroid/os/Handler;

.field private mListView:Landroid/widget/ListView;

.field private mNowPosition:I

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mTargetBand:Lcom/android/phone/mobilenetworks/kor/DataNetworkMode$SettingListItem;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;->mIsConnectedDataCall:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    new-instance v0, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode$1;-><init>(Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode$2;

    invoke-direct {v0, p0}, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode$2;-><init>(Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;)V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;->displayBandSelectionResult(Ljava/lang/Throwable;)V

    return-void
.end method

.method private displayBandSelectionResult(Ljava/lang/Throwable;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    const-string v0, "DataNetworkMode"

    const-string v1, "mToast cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    if-eqz p1, :cond_2

    const v0, 0x7f0a07d7

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;->mTargetBand:Lcom/android/phone/mobilenetworks/kor/DataNetworkMode$SettingListItem;

    invoke-virtual {v2}, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode$SettingListItem;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;->mToast:Landroid/widget/Toast;

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;->setItemCheck()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setEnabled(Z)V

    return-void

    :cond_2
    const-string v0, "DataNetworkMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayBandSelectionResult mNowPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;->mNowPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;->mNowPosition:I

    if-nez v0, :cond_3

    const v0, 0x7f0a07d8

    invoke-virtual {p0, v0}, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lte_mode_on"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_1
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    const-string v0, "DataNetworkMode"

    const-string v1, "mToast show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;->mNowPosition:I

    if-ne v0, v3, :cond_4

    const v0, 0x7f0a07d9

    invoke-virtual {p0, v0}, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lte_mode_on"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_4
    const-string v0, "DataNetworkMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error!! position is another value, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;->mNowPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;->setItemCheck()V

    goto :goto_1
.end method

.method private getDataEnabledForDomestic()Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setItemCheck()V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lte_mode_on"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iput v2, p0, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;->mNowPosition:I

    :goto_1
    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;->mListView:Landroid/widget/ListView;

    iget v3, p0, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;->mNowPosition:I

    invoke-virtual {v2, v3, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iput v1, p0, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;->mNowPosition:I

    goto :goto_1
.end method

.method private setMobileDataEnabled(Z)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x11

    if-gt v0, v1, :cond_1

    sget-object v1, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-static {v0}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0, p1}, Landroid/net/ConnectivityManager;->setDataDependency(IZ)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    iput-object v5, p0, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    sput-object v5, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;->getListView()Landroid/widget/ListView;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    iget-object v5, p0, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v7}, Landroid/widget/ListView;->setChoiceMode(I)V

    iget-object v5, p0, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setEnabled(Z)V

    new-instance v1, Landroid/widget/ArrayAdapter;

    const v5, 0x7f040067

    invoke-direct {v1, p0, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    const/4 v5, 0x2

    new-array v2, v5, [Ljava/lang/String;

    const v5, 0x7f0a07d5

    invoke-virtual {p0, v5}, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v6

    const v5, 0x7f0a07d6

    invoke-virtual {p0, v5}, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v7

    const/4 v3, 0x0

    :goto_1
    array-length v5, v2

    if-ge v3, v5, :cond_2

    new-instance v4, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode$SettingListItem;

    aget-object v5, v2, v3

    invoke-direct {v4, v3, v5}, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode$SettingListItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    goto :goto_0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4

    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;->getDataEnabledForDomestic()Z

    move-result v1

    if-nez v1, :cond_1

    const v1, 0x7f0a07da

    invoke-virtual {p0, v1}, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;->setItemCheck()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;->mNowPosition:I

    if-eq v1, p3, :cond_0

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEnabled(Z)V

    iput p3, p0, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;->mNowPosition:I

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode$SettingListItem;

    iput-object v1, p0, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;->mTargetBand:Lcom/android/phone/mobilenetworks/kor/DataNetworkMode$SettingListItem;

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;->mTargetBand:Lcom/android/phone/mobilenetworks/kor/DataNetworkMode$SettingListItem;

    invoke-virtual {v1}, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode$SettingListItem;->getValue()I

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "DataNetworkMode"

    const-string v2, "SetPreferredNetworkType is PREFERRED_NETWORK_MODE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;->mPhone:Lcom/android/internal/telephony/Phone;

    sget v2, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    invoke-interface {v1, v2, v0}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0

    :cond_2
    const-string v1, "DataNetworkMode"

    const-string v2, "SetPreferredNetworkType is NETWORK_MODE_GSM_UMTS"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x3

    invoke-interface {v1, v2, v0}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    sget-boolean v0, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;->mIsConnectedDataCall:Z

    if-eqz v0, :cond_0

    const-string v0, "DataNetworkMode"

    const-string v1, "Enabling data connectivity..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;->setMobileDataEnabled(Z)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;->mIsConnectedDataCall:Z

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DataNetworkMode"

    const-string v1, "Disabling data connectivity..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;->setMobileDataEnabled(Z)V

    sput-boolean v3, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;->mIsConnectedDataCall:Z

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;->setItemCheck()V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setEnabled(Z)V

    return-void
.end method
