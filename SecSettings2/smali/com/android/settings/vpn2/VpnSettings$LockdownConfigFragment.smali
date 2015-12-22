.class public Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;
.super Landroid/app/DialogFragment;
.source "VpnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/vpn2/VpnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LockdownConfigFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment$TitleAdapter;
    }
.end annotation


# instance fields
.field private mCurrentIndex:I

.field private mProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/net/VpnProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mTitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;->mCurrentIndex:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;->mProfiles:Ljava/util/List;

    return-object v0
.end method

.method private static getStringOrNull(Landroid/security/KeyStore;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v1, "LOCKDOWN_VPN"

    invoke-virtual {p0, v1}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method private initProfiles(Landroid/security/KeyStore;Landroid/content/res/Resources;)V
    .locals 6

    const/4 v5, 0x0

    const-string v3, "LOCKDOWN_VPN"

    invoke-static {p1, v3}, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;->getStringOrNull(Landroid/security/KeyStore;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [I

    aput v5, v3, v5

    # invokes: Lcom/android/settings/vpn2/VpnSettings;->loadVpnProfiles(Landroid/security/KeyStore;[I)Ljava/util/List;
    invoke-static {p1, v3}, Lcom/android/settings/vpn2/VpnSettings;->access$000(Landroid/security/KeyStore;[I)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;->mProfiles:Ljava/util/List;

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;->mTitles:Ljava/util/List;

    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;->mTitles:Ljava/util/List;

    const v4, 0x7f0a0cbc

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput v5, p0, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;->mCurrentIndex:I

    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;->mProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    iget-object v3, v2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;->mTitles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iput v3, p0, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;->mCurrentIndex:I

    :cond_0
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;->mTitles:Ljava/util/List;

    iget-object v4, v2, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static show(Lcom/android/settings/vpn2/VpnSettings;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;

    invoke-direct {v0}, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "lockdown"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 14

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-direct {p0, v5, v11}, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;->initProfiles(Landroid/security/KeyStore;Landroid/content/res/Resources;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v11, 0x7f0a0cba

    invoke-virtual {v1, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v11, 0x7f040205

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v3, v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    const v11, 0x102000a

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    new-instance v11, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment$1;

    invoke-direct {v11, p0}, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment$1;-><init>(Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;)V

    invoke-virtual {v7, v11}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment$TitleAdapter;

    iget-object v11, p0, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;->mTitles:Ljava/util/List;

    invoke-direct {v0, v2, v11}, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment$TitleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Landroid/widget/ListView;->setChoiceMode(I)V

    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v7}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v11

    invoke-virtual {v7}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v12

    add-int v9, v11, v12

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment$TitleAdapter;->getCount()I

    move-result v11

    if-ge v4, v11, :cond_1

    const/4 v11, 0x0

    invoke-virtual {v0, v4, v11, v7}, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment$TitleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    instance-of v11, v6, Landroid/view/ViewGroup;

    if-eqz v11, :cond_0

    new-instance v11, Landroid/view/ViewGroup$LayoutParams;

    const/4 v12, -0x2

    const/4 v13, -0x2

    invoke-direct {v11, v12, v13}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v6, v11, v12}, Landroid/view/View;->measure(II)V

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v9, v11

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v7}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iput v9, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v11, p0, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;->mCurrentIndex:I

    const/4 v12, 0x1

    invoke-virtual {v7, v11, v12}, Landroid/widget/ListView;->setItemChecked(IZ)V

    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v11, 0x104000a

    new-instance v12, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment$2;

    invoke-direct {v12, p0, v7, v5, v2}, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment$2;-><init>(Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;Landroid/widget/ListView;Landroid/security/KeyStore;Landroid/content/Context;)V

    invoke-virtual {v1, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    return-object v11
.end method
