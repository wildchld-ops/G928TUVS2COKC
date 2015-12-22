.class public Lcom/android/phone/operator/usa/AllowDataAccess;
.super Landroid/app/ListActivity;
.source "AllowDataAccess.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/operator/usa/AllowDataAccess$RoamSettingsObserver;,
        Lcom/android/phone/operator/usa/AllowDataAccess$RoamAdapter;
    }
.end annotation


# instance fields
.field entries:[Ljava/lang/CharSequence;

.field entryValues:[Ljava/lang/CharSequence;

.field private mCurrentMode:I

.field mInflater:Landroid/view/LayoutInflater;

.field private mRoamSettingsObserver:Lcom/android/phone/operator/usa/AllowDataAccess$RoamSettingsObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/operator/usa/AllowDataAccess;->mCurrentMode:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/operator/usa/AllowDataAccess;)I
    .locals 1
    .param p0    # Lcom/android/phone/operator/usa/AllowDataAccess;

    iget v0, p0, Lcom/android/phone/operator/usa/AllowDataAccess;->mCurrentMode:I

    return v0
.end method

.method private fillArrays()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/AllowDataAccess;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090082

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    array-length v4, v3

    div-int/lit8 v2, v4, 0x2

    new-array v4, v2, [Ljava/lang/CharSequence;

    iput-object v4, p0, Lcom/android/phone/operator/usa/AllowDataAccess;->entries:[Ljava/lang/CharSequence;

    new-array v4, v2, [Ljava/lang/CharSequence;

    iput-object v4, p0, Lcom/android/phone/operator/usa/AllowDataAccess;->entryValues:[Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/operator/usa/AllowDataAccess;->entries:[Ljava/lang/CharSequence;

    aget-object v5, v3, v0

    aput-object v5, v4, v1

    iget-object v4, p0, Lcom/android/phone/operator/usa/AllowDataAccess;->entryValues:[Ljava/lang/CharSequence;

    add-int/lit8 v0, v0, 0x1

    aget-object v5, v3, v0

    aput-object v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getMode()I
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/AllowDataAccess;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "data_roaming"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/AllowDataAccess;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "data_roaming_onetime"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x0

    if-ne v1, v6, :cond_0

    if-ne v0, v6, :cond_1

    const/4 v2, 0x1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x2

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1    # Landroid/os/Bundle;

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v3, "AllowDataAccess"

    const-string v4, "onCreate()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "tablet_device"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/android/phone/operator/usa/AllowDataAccess;->setRequestedOrientation(I)V

    :cond_0
    const v3, 0x7f040005

    invoke-virtual {p0, v3}, Lcom/android/phone/operator/usa/AllowDataAccess;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/AllowDataAccess;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0500

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/phone/operator/usa/AllowDataAccess;->setTitle(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/phone/operator/usa/AllowDataAccess;->fillArrays()V

    invoke-direct {p0}, Lcom/android/phone/operator/usa/AllowDataAccess;->getMode()I

    move-result v3

    iput v3, p0, Lcom/android/phone/operator/usa/AllowDataAccess;->mCurrentMode:I

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/AllowDataAccess;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/AllowDataAccess;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iput-object v3, p0, Lcom/android/phone/operator/usa/AllowDataAccess;->mInflater:Landroid/view/LayoutInflater;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/phone/operator/usa/AllowDataAccess;->mInflater:Landroid/view/LayoutInflater;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/operator/usa/AllowDataAccess;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f04004a

    invoke-virtual {v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3, v6, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    iget-object v3, p0, Lcom/android/phone/operator/usa/AllowDataAccess;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040048

    invoke-virtual {v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3, v6, v5}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    new-instance v3, Lcom/android/phone/operator/usa/AllowDataAccess$RoamAdapter;

    invoke-direct {v3, p0}, Lcom/android/phone/operator/usa/AllowDataAccess$RoamAdapter;-><init>(Lcom/android/phone/operator/usa/AllowDataAccess;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_1
    const v3, 0x7f100018

    invoke-virtual {p0, v3}, Lcom/android/phone/operator/usa/AllowDataAccess;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v3, Lcom/android/phone/operator/usa/AllowDataAccess$1;

    invoke-direct {v3, p0}, Lcom/android/phone/operator/usa/AllowDataAccess$1;-><init>(Lcom/android/phone/operator/usa/AllowDataAccess;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Lcom/android/phone/operator/usa/AllowDataAccess$RoamSettingsObserver;

    invoke-direct {v3, p0}, Lcom/android/phone/operator/usa/AllowDataAccess$RoamSettingsObserver;-><init>(Lcom/android/phone/operator/usa/AllowDataAccess;)V

    iput-object v3, p0, Lcom/android/phone/operator/usa/AllowDataAccess;->mRoamSettingsObserver:Lcom/android/phone/operator/usa/AllowDataAccess$RoamSettingsObserver;

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/AllowDataAccess;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "data_roaming"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/operator/usa/AllowDataAccess;->mRoamSettingsObserver:Lcom/android/phone/operator/usa/AllowDataAccess$RoamSettingsObserver;

    invoke-virtual {v0, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v3, "data_roaming_onetime"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/operator/usa/AllowDataAccess;->mRoamSettingsObserver:Lcom/android/phone/operator/usa/AllowDataAccess$RoamSettingsObserver;

    invoke-virtual {v0, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v3, "data_roam_access_notify"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/operator/usa/AllowDataAccess;->mRoamSettingsObserver:Lcom/android/phone/operator/usa/AllowDataAccess$RoamSettingsObserver;

    invoke-virtual {v0, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    const-string v0, "AllowDataAccess"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/AllowDataAccess;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/operator/usa/AllowDataAccess;->mRoamSettingsObserver:Lcom/android/phone/operator/usa/AllowDataAccess$RoamSettingsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 7
    .param p1    # Landroid/widget/ListView;
    .param p2    # Landroid/view/View;
    .param p3    # I
    .param p4    # J

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-lez p3, :cond_1

    const/4 v2, 0x3

    if-ge p3, v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/operator/usa/AllowDataAccess;->entryValues:[Ljava/lang/CharSequence;

    add-int/lit8 v3, p3, -0x1

    aget-object v2, v2, v3

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "AllowDataAccess"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onListItemClick(): position = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCurrentMode:value - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/operator/usa/AllowDataAccess;->mCurrentMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/AllowDataAccess;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "data_roam_access_notify"

    invoke-static {v0, v2, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget v2, p0, Lcom/android/phone/operator/usa/AllowDataAccess;->mCurrentMode:I

    if-eq v2, v1, :cond_0

    packed-switch v1, :pswitch_data_0

    const-string v2, "data_roaming"

    invoke-static {v0, v2, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "data_roaming_onetime"

    invoke-static {v0, v2, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getNotificationMgr()Lcom/android/phone/NotificationMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/NotificationMgr;->cancelAllowDataAccess()V

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/AllowDataAccess;->finish()V

    :cond_1
    return-void

    :pswitch_0
    const-string v2, "data_roaming"

    invoke-static {v0, v2, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "data_roaming_onetime"

    invoke-static {v0, v2, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :pswitch_1
    const-string v2, "data_roaming"

    invoke-static {v0, v2, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "data_roaming_onetime"

    invoke-static {v0, v2, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1    # Landroid/content/Intent;

    const-string v0, "AllowDataAccess"

    const-string v1, "onNewIntent()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/operator/usa/AllowDataAccess;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/phone/operator/usa/AllowDataAccess;->mCurrentMode:I

    return-void
.end method
