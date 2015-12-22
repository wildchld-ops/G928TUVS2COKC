.class Lcom/android/settings/vpn2/VpnDialog;
.super Landroid/app/AlertDialog;
.source "VpnDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private isUserChangeProfilesAllowed:I

.field private mAdding:Z

.field private mCcModeEnabled:Z

.field private mCcModeEnforcing:Z

.field private mDnsServers:Landroid/widget/TextView;

.field private mEditing:Z

.field private mIpsecCaCert:Landroid/widget/Spinner;

.field private mIpsecIdentifier:Landroid/widget/TextView;

.field private mIpsecSecret:Landroid/widget/TextView;

.field private mIpsecServerCert:Landroid/widget/Spinner;

.field private mIpsecUserCert:Landroid/widget/Spinner;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mL2tpSecret:Landroid/widget/TextView;

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mMppe:Landroid/widget/CheckBox;

.field private mName:Landroid/widget/TextView;

.field private mOcspServerUrl:Landroid/widget/TextView;

.field private mPassword:Landroid/widget/TextView;

.field private final mProfile:Lcom/android/internal/net/VpnProfile;

.field private mRoutes:Landroid/widget/TextView;

.field private mSaveLogin:Landroid/widget/CheckBox;

.field private mSearchDomains:Landroid/widget/TextView;

.field private mServer:Landroid/widget/TextView;

.field private mType:Landroid/widget/Spinner;

.field private mUsername:Landroid/widget/TextView;

.field private mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/internal/net/VpnProfile;Z)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mKeyStore:Landroid/security/KeyStore;

    const-string v0, "security.mdpp"

    const-string v1, "Disabled"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Enabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mCcModeEnabled:Z

    const-string v0, "security.mdpp"

    const-string v1, "Disabled"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Enforcing"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mCcModeEnforcing:Z

    iput-object p2, p0, Lcom/android/settings/vpn2/VpnDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p3, p0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iput-boolean p4, p0, Lcom/android/settings/vpn2/VpnDialog;->mEditing:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mAdding:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/internal/net/VpnProfile;ZZ)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mKeyStore:Landroid/security/KeyStore;

    const-string v0, "security.mdpp"

    const-string v1, "Disabled"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Enabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mCcModeEnabled:Z

    const-string v0, "security.mdpp"

    const-string v1, "Disabled"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Enforcing"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mCcModeEnforcing:Z

    iput-object p2, p0, Lcom/android/settings/vpn2/VpnDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p3, p0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iput-boolean p4, p0, Lcom/android/settings/vpn2/VpnDialog;->mEditing:Z

    iput-boolean p5, p0, Lcom/android/settings/vpn2/VpnDialog;->mAdding:Z

    return-void
.end method

.method private changeType(I)V
    .locals 7

    const v6, 0x7f10045f

    const v5, 0x7f10046d

    const v4, 0x7f10045d

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mMppe:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v1, 0x7f100462

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v1, 0x7f100464

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mMppe:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :pswitch_4
    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :pswitch_5
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v1, 0x7f100462

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :pswitch_6
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v1, 0x7f100464

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_6
        :pswitch_2
        :pswitch_5
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private getSelectedConnectionType()I
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/vpn2/VpnDialog;->isCcModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mType:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mType:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    goto :goto_0
.end method

.method private isCcModeEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mCcModeEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mCcModeEnforcing:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;ILjava/lang/String;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const v7, 0x7f0a03a7

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-nez p3, :cond_2

    move-object v4, v6

    :goto_0
    iget-object v7, p0, Lcom/android/settings/vpn2/VpnDialog;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v7, p2}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v7, v2

    if-nez v7, :cond_3

    :cond_0
    new-array v2, v9, [Ljava/lang/String;

    aput-object v4, v2, v8

    :goto_1
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v7, 0x7f04025c

    invoke-direct {v0, v3, v7, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v7, 0x1090009

    invoke-virtual {v0, v7}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const/4 v5, 0x1

    :goto_2
    array-length v7, v2

    if-ge v5, v7, :cond_1

    aget-object v7, v2, v5

    invoke-virtual {v7, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {p1, v5}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v3, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_3
    array-length v7, v2

    add-int/lit8 v7, v7, 0x1

    new-array v1, v7, [Ljava/lang/String;

    aput-object v4, v1, v8

    array-length v7, v2

    invoke-static {v2, v8, v1, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v1

    goto :goto_1

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method private setSelectedConnectionType(I)V
    .locals 3

    invoke-direct {p0}, Lcom/android/settings/vpn2/VpnDialog;->isCcModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v0, p1, -0x4

    if-ltz v0, :cond_0

    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Illegal VPN method in CC mode."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mType:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mType:Landroid/widget/Spinner;

    invoke-virtual {v1, p1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0
.end method

.method private validate(Z)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_2

    iget-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget v4, v4, Lcom/android/internal/net/VpnProfile;->type:I

    const/4 v5, 0x6

    if-eq v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget v4, v4, Lcom/android/internal/net/VpnProfile;->type:I

    const/4 v5, 0x7

    if-eq v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mUsername:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    :pswitch_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mName:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mServer:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mDnsServers:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v3}, Lcom/android/settings/vpn2/VpnDialog;->validateAddresses(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mRoutes:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v2}, Lcom/android/settings/vpn2/VpnDialog;->validateAddresses(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    move v2, v3

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/android/settings/vpn2/VpnDialog;->getSelectedConnectionType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    move v2, v3

    goto :goto_0

    :pswitch_1
    iget-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mIpsecSecret:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_0

    :pswitch_2
    iget-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mOcspServerUrl:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    iget-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mIpsecUserCert:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mIpsecCaCert:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-nez v4, :cond_0

    :cond_6
    move v2, v3

    goto :goto_0

    :catch_0
    move-exception v0

    move v2, v3

    goto :goto_0

    :pswitch_3
    iget-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mOcspServerUrl:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_7

    :try_start_1
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_7
    :pswitch_4
    iget-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mIpsecUserCert:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move v2, v3

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private validateAddresses(Ljava/lang/String;Z)Z
    .locals 11

    :try_start_0
    const-string v9, " "

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v6, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_4

    aget-object v0, v1, v4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/16 v8, 0x20

    if-eqz p2, :cond_2

    const-string v9, "/"

    const/4 v10, 0x2

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    aget-object v0, v7, v9

    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    :cond_2
    invoke-static {v0}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    const/4 v9, 0x3

    aget-byte v9, v2, v9

    and-int/lit16 v9, v9, 0xff

    const/4 v10, 0x2

    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    const/4 v10, 0x1

    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v9, v10

    const/4 v10, 0x0

    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x18

    or-int v5, v9, v10

    array-length v9, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v10, 0x4

    if-ne v9, v10, :cond_3

    if-ltz v8, :cond_3

    const/16 v9, 0x20

    if-gt v8, v9, :cond_3

    const/16 v9, 0x20

    if-ge v8, v9, :cond_0

    shl-int v9, v5, v8

    if-eqz v9, :cond_0

    :cond_3
    const/4 v9, 0x0

    :goto_1
    return v9

    :catch_0
    move-exception v3

    const/4 v9, 0x0

    goto :goto_1

    :cond_4
    const/4 v9, 0x1

    goto :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/VpnDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mEditing:Z

    invoke-direct {p0, v1}, Lcom/android/settings/vpn2/VpnDialog;->validate(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearEditables()V

    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mServer:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearEditables()V

    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mUsername:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearEditables()V

    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearEditables()V

    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mSearchDomains:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearEditables()V

    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mDnsServers:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearEditables()V

    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mRoutes:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearEditables()V

    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mL2tpSecret:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearEditables()V

    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mIpsecIdentifier:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearEditables()V

    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mIpsecSecret:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearEditables()V

    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mOcspServerUrl:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearEditables()V

    return-void
.end method

.method getProfile()Lcom/android/internal/net/VpnProfile;
    .locals 2

    new-instance v0, Lcom/android/internal/net/VpnProfile;

    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v1, v1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/settings/vpn2/VpnDialog;->getSelectedConnectionType()I

    move-result v1

    iput v1, v0, Lcom/android/internal/net/VpnProfile;->type:I

    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mServer:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mUsername:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mSearchDomains:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mDnsServers:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mRoutes:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    iget v1, v0, Lcom/android/internal/net/VpnProfile;->type:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mSaveLogin:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    return-object v0

    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mMppe:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/net/VpnProfile;->mppe:Z

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mL2tpSecret:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mIpsecIdentifier:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mIpsecSecret:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mL2tpSecret:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mIpsecUserCert:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mIpsecUserCert:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    :cond_1
    :pswitch_4
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mIpsecCaCert:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mIpsecCaCert:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    :cond_2
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mIpsecServerCert:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mIpsecServerCert:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    goto :goto_0

    :pswitch_5
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mIpsecUserCert:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mIpsecUserCert:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    :cond_3
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mIpsecCaCert:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mIpsecCaCert:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    :cond_4
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mIpsecServerCert:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mIpsecServerCert:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    :cond_5
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mOcspServerUrl:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method isEditing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mEditing:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    const v1, 0x7f100468

    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mServer:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImeOptions(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mServer:Landroid/widget/TextView;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImeOptions(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 24

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/vpn2/VpnDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v20

    const v21, 0x7f040203

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/vpn2/VpnDialog;->setView(Landroid/view/View;)V

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/vpn2/VpnDialog;->setInverseBackgroundForced(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/vpn2/VpnDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f100087

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/vpn2/VpnDialog;->mName:Landroid/widget/TextView;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/vpn2/VpnDialog;->isCcModeEnabled()Z

    move-result v20

    if-eqz v20, :cond_7

    const v19, 0x7f0e009c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f10045a

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/Spinner;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/vpn2/VpnDialog;->mType:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f10028d

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f100459

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v18

    new-instance v5, Landroid/widget/ArrayAdapter;

    const v20, 0x7f04025c

    move/from16 v0, v20

    move-object/from16 v1, v18

    invoke-direct {v5, v6, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v20, 0x1090009

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mType:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f10045b

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/vpn2/VpnDialog;->mServer:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f100470

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/vpn2/VpnDialog;->mUsername:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f100471

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/vpn2/VpnDialog;->mPassword:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f100469

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/vpn2/VpnDialog;->mSearchDomains:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f10046a

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/vpn2/VpnDialog;->mDnsServers:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f10046c

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/vpn2/VpnDialog;->mRoutes:Landroid/widget/TextView;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/vpn2/VpnDialog;->isCcModeEnabled()Z

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    const-string v20, "VpnDialog"

    const-string v21, "CC mode enabled.  Routes is disappeared!"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f10046b

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f10046c

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f10045c

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/CheckBox;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/vpn2/VpnDialog;->mMppe:Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f10045e

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/vpn2/VpnDialog;->mL2tpSecret:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f100460

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/vpn2/VpnDialog;->mIpsecIdentifier:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f100461

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/vpn2/VpnDialog;->mIpsecSecret:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f100463

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/Spinner;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/vpn2/VpnDialog;->mIpsecUserCert:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f100465

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/Spinner;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/vpn2/VpnDialog;->mIpsecCaCert:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f100466

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/Spinner;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/vpn2/VpnDialog;->mIpsecServerCert:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f10046e

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/vpn2/VpnDialog;->mOcspServerUrl:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f100472

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/CheckBox;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/vpn2/VpnDialog;->mSaveLogin:Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mName:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mAdding:Z

    move/from16 v20, v0

    if-eqz v20, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/vpn2/VpnDialog;->isCcModeEnabled()Z

    move-result v20

    if-eqz v20, :cond_8

    const/16 v20, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/settings/vpn2/VpnDialog;->setSelectedConnectionType(I)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mServer:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mUsername:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mPassword:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mSearchDomains:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mDnsServers:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mRoutes:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mMppe:Landroid/widget/CheckBox;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/internal/net/VpnProfile;->mppe:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/CheckBox;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mL2tpSecret:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mIpsecIdentifier:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mIpsecSecret:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mIpsecUserCert:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    const-string v21, "USRPKEY_"

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v22

    move-object/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/vpn2/VpnDialog;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mIpsecCaCert:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    const-string v21, "CACERT_"

    const v22, 0x7f0a0cae

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v22

    move-object/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/vpn2/VpnDialog;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mIpsecServerCert:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    const-string v21, "USRCERT_"

    const v22, 0x7f0a0caf

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v22

    move-object/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/vpn2/VpnDialog;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mOcspServerUrl:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mSaveLogin:Landroid/widget/CheckBox;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/CheckBox;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mName:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mType:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mServer:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mUsername:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mPassword:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mDnsServers:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mRoutes:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mIpsecSecret:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mIpsecUserCert:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mIpsecCaCert:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mOcspServerUrl:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/settings/vpn2/VpnDialog;->validate(Z)Z

    move-result v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mEditing:Z

    move/from16 v20, v0

    if-nez v20, :cond_2

    if-nez v17, :cond_9

    :cond_2
    const/16 v20, 0x1

    :goto_2
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/vpn2/VpnDialog;->mEditing:Z

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v11, v0, [Ljava/lang/String;

    const/16 v20, 0x0

    const-string v21, "false"

    aput-object v21, v11, v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/vpn2/VpnDialog;->getContext()Landroid/content/Context;

    move-result-object v20

    const-string v21, "content://com.sec.knox.provider2/vpnPolicy"

    const-string v22, "isUserChangeProfilesAllowed"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2, v11}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/vpn2/VpnDialog;->isUserChangeProfilesAllowed:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mEditing:Z

    move/from16 v20, v0

    if-eqz v20, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/vpn2/VpnDialog;->isUserChangeProfilesAllowed:I

    move/from16 v20, v0

    if-nez v20, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/vpn2/VpnDialog;->dismiss()V

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mAdding:Z

    move/from16 v20, v0

    if-eqz v20, :cond_a

    const v20, 0x7f0a0cb4

    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/vpn2/VpnDialog;->setTitle(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f100458

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/net/VpnProfile;->type:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/settings/vpn2/VpnDialog;->changeType(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f100467

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/net/VpnProfile;->type:I

    move/from16 v20, v0

    const/16 v21, 0x7

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/net/VpnProfile;->type:I

    move/from16 v20, v0

    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_b

    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f10045b

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/widget/EditText;->setSelection(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f100087

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setSelection(I)V

    const/16 v20, -0x1

    const v21, 0x7f0a0cb1

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/vpn2/VpnDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_5
    const/16 v20, -0x2

    const v21, 0x7f0a0cb0

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/vpn2/VpnDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-super {v0, v1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    const/16 v20, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/vpn2/VpnDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mEditing:Z

    move/from16 v20, v0

    if-eqz v20, :cond_e

    move/from16 v20, v17

    :goto_6
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mEditing:Z

    move/from16 v20, v0

    if-nez v20, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/net/VpnProfile;->type:I

    move/from16 v20, v0

    const/16 v21, 0x6

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/net/VpnProfile;->type:I

    move/from16 v20, v0

    const/16 v21, 0x7

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_6

    :cond_5
    const/16 v20, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/vpn2/VpnDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mEditing:Z

    move/from16 v21, v0

    if-eqz v21, :cond_f

    :goto_7
    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/vpn2/VpnDialog;->getWindow()Landroid/view/Window;

    move-result-object v20

    const/16 v21, 0x14

    invoke-virtual/range {v20 .. v21}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_6
    return-void

    :cond_7
    const v19, 0x7f0e009b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f100459

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/Spinner;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/vpn2/VpnDialog;->mType:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f10028d

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f10045a

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/net/VpnProfile;->type:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/settings/vpn2/VpnDialog;->setSelectedConnectionType(I)V

    goto/16 :goto_1

    :cond_9
    const/16 v20, 0x0

    goto/16 :goto_2

    :cond_a
    const v20, 0x7f0a0cb3

    goto/16 :goto_3

    :cond_b
    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/vpn2/VpnDialog;->onClick(Landroid/view/View;)V

    goto/16 :goto_4

    :cond_c
    const v20, 0x7f0a0cb5

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    aput-object v23, v21, v22

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/vpn2/VpnDialog;->setTitle(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/net/VpnProfile;->type:I

    move/from16 v20, v0

    const/16 v21, 0x6

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/net/VpnProfile;->type:I

    move/from16 v20, v0

    const/16 v21, 0x7

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f10046f

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f100470

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/EditText;

    invoke-virtual/range {v16 .. v16}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v20

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f100471

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_d
    const/16 v20, -0x1

    const v21, 0x7f0a0cb2

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/vpn2/VpnDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_5

    :cond_e
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/settings/vpn2/VpnDialog;->validate(Z)Z

    move-result v20

    goto/16 :goto_6

    :cond_f
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/settings/vpn2/VpnDialog;->validate(Z)Z

    move-result v17

    goto/16 :goto_7
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mType:Landroid/widget/Spinner;

    if-ne p1, v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/vpn2/VpnDialog;->isCcModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v1, p3, 0x4

    invoke-direct {p0, v1}, Lcom/android/settings/vpn2/VpnDialog;->changeType(I)V

    :goto_0
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mIpsecCaCert:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-direct {p0}, Lcom/android/settings/vpn2/VpnDialog;->getSelectedConnectionType()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mIpsecCaCert:Landroid/widget/Spinner;

    const-string v2, "CACERT_"

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v4, v4, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/settings/vpn2/VpnDialog;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;ILjava/lang/String;)V

    :goto_1
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mIpsecCaCert:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/vpn2/VpnDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/vpn2/VpnDialog;->mEditing:Z

    invoke-direct {p0, v2}, Lcom/android/settings/vpn2/VpnDialog;->validate(Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    :cond_1
    invoke-direct {p0, p3}, Lcom/android/settings/vpn2/VpnDialog;->changeType(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mIpsecCaCert:Landroid/widget/Spinner;

    const-string v2, "CACERT_"

    const v3, 0x7f0a0cae

    iget-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v4, v4, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/settings/vpn2/VpnDialog;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
