.class public Lcom/android/settings/TrustedCredentialsSettings;
.super Landroid/app/Fragment;
.source "TrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/TrustedCredentialsSettings$9;,
        Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;,
        Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;,
        Lcom/android/settings/TrustedCredentialsSettings$CertHolder;,
        Lcom/android/settings/TrustedCredentialsSettings$AdapterData;,
        Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;,
        Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;,
        Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;,
        Lcom/android/settings/TrustedCredentialsSettings$Tab;
    }
.end annotation


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAliasLoaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/settings/TrustedCredentialsSettings$Tab;",
            "Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;",
            ">;"
        }
    .end annotation
.end field

.field private mAliasOperation:Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;

.field private mCertDialog:Landroid/app/Dialog;

.field private mContext:Landroid/content/Context;

.field protected mEdmRefreshUiReceiver:Landroid/content/BroadcastReceiver;

.field private mInForeground:Z

.field private final mKeyChainConnectionByProfileId:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/security/KeyChain$KeyChainConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mRefreshUI:Z

.field private mTabHost:Landroid/widget/TabHost;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    iput-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings;->mCertDialog:Landroid/app/Dialog;

    iput-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mAliasLoaders:Ljava/util/HashMap;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    iput-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mRefreshUI:Z

    new-instance v0, Lcom/android/settings/TrustedCredentialsSettings$8;

    invoke-direct {v0, p0}, Lcom/android/settings/TrustedCredentialsSettings$8;-><init>(Lcom/android/settings/TrustedCredentialsSettings;)V

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mEdmRefreshUiReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/os/UserManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$CertHolder;Lcom/android/settings/TrustedCredentialsSettings$Tab;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/TrustedCredentialsSettings;->getViewForCertificate(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;Lcom/android/settings/TrustedCredentialsSettings$Tab;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/TrustedCredentialsSettings;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mAliasLoaders:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/widget/TabHost;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings;->showtConfirmDialog(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mCertDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;)Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mAliasOperation:Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/android/settings/TrustedCredentialsSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mInForeground:Z

    return v0
.end method

.method static synthetic access$4200(Lcom/android/settings/TrustedCredentialsSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsSettings;->refreshUI()V

    return-void
.end method

.method static synthetic access$4302(Lcom/android/settings/TrustedCredentialsSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mRefreshUI:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings;->showCertDialog(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V

    return-void
.end method

.method private addCertChain(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/TrustedCredentialsSettings$CertHolder;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/TrustedCredentialsSettings;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mProfileId:I

    invoke-virtual {v14, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/security/KeyChain$KeyChainConnection;

    invoke-virtual {v11}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v13

    # getter for: Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mAlias:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$3200(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-interface {v13, v14, v15}, Landroid/security/IKeyChainService;->getCaCertificateChainAliases(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v12

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v12}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v12, :cond_0

    :try_start_1
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    const/4 v15, 0x1

    invoke-interface {v13, v14, v15}, Landroid/security/IKeyChainService;->getEncodedCaCertificate(Ljava/lang/String;Z)[B

    move-result-object v7

    invoke-static {v7}, Landroid/security/KeyChain;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :catch_0
    move-exception v8

    :goto_1
    const-string v14, "TrustedCredentialsSettings"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "RemoteException while retrieving certificate chain for root "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    # getter for: Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mAlias:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$3200(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void

    :cond_0
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v3, v1, v2}, Lcom/android/settings/TrustedCredentialsSettings;->addCertDetails(Ljava/security/cert/X509Certificate;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_3

    :cond_1
    move-object v4, v5

    goto :goto_2

    :catch_1
    move-exception v8

    move-object v4, v5

    goto :goto_1
.end method

.method private addCertDetails(Ljava/security/cert/X509Certificate;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/net/http/SslCertificate;

    invoke-direct {v0, p1}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/http/SslCertificate;->inflateCertificateView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addTab(Lcom/android/settings/TrustedCredentialsSettings$Tab;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    # getter for: Lcom/android/settings/TrustedCredentialsSettings$Tab;->mTag:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->access$300(Lcom/android/settings/TrustedCredentialsSettings$Tab;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    # getter for: Lcom/android/settings/TrustedCredentialsSettings$Tab;->mLabel:I
    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->access$500(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    # getter for: Lcom/android/settings/TrustedCredentialsSettings$Tab;->mView:I
    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->access$400(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    iget-object v3, p0, Lcom/android/settings/TrustedCredentialsSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    # getter for: Lcom/android/settings/TrustedCredentialsSettings$Tab;->mExpandableList:I
    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->access$600(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ExpandableListView;

    new-instance v0, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;

    invoke-direct {v0, p0, p1, v6}, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;-><init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$Tab;Lcom/android/settings/TrustedCredentialsSettings$1;)V

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    new-instance v3, Lcom/android/settings/TrustedCredentialsSettings$1;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/TrustedCredentialsSettings$1;-><init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;)V

    invoke-virtual {v1, v3}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    # getter for: Lcom/android/settings/TrustedCredentialsSettings$Tab;->mList:I
    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->access$900(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    new-instance v0, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    invoke-direct {v0, p0, p1, v6}, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;-><init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$Tab;Lcom/android/settings/TrustedCredentialsSettings$1;)V

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v3, Lcom/android/settings/TrustedCredentialsSettings$2;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/TrustedCredentialsSettings$2;-><init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method

.method private closeKeyChainConnections()V
    .locals 3

    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/security/KeyChain$KeyChainConnection;

    invoke-virtual {v2}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method private getViewForCertificate(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;Lcom/android/settings/TrustedCredentialsSettings$Tab;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p3, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0401e6

    invoke-virtual {v1, v2, p4, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    new-instance v0, Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;-><init>(Lcom/android/settings/TrustedCredentialsSettings$1;)V

    const v2, 0x7f100439

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    # setter for: Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;->mSubjectPrimaryView:Landroid/widget/TextView;
    invoke-static {v0, v2}, Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;->access$2602(Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v2, 0x7f10043a

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    # setter for: Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;->mSubjectSecondaryView:Landroid/widget/TextView;
    invoke-static {v0, v2}, Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;->access$2702(Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v2, 0x7f10043b

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    # setter for: Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0, v2}, Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;->access$2802(Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;Landroid/widget/Switch;)Landroid/widget/Switch;

    invoke-virtual {p3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    # getter for: Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;->mSubjectPrimaryView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;->access$2600(Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    # getter for: Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mSubjectPrimary:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$2900(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    # getter for: Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;->mSubjectSecondaryView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;->access$2700(Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    # getter for: Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mSubjectSecondary:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$3000(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    # getter for: Lcom/android/settings/TrustedCredentialsSettings$Tab;->mStatus:Z
    invoke-static {p2}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->access$3100(Lcom/android/settings/TrustedCredentialsSettings$Tab;)Z

    move-result v2

    if-eqz v2, :cond_0

    # getter for: Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;->access$2800(Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;)Landroid/widget/Switch;

    move-result-object v5

    # getter for: Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mDeleted:Z
    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$000(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/widget/Switch;->setChecked(Z)V

    # getter for: Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;->access$2800(Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;)Landroid/widget/Switch;

    move-result-object v2

    iget-object v5, p0, Lcom/android/settings/TrustedCredentialsSettings;->mUserManager:Landroid/os/UserManager;

    const-string v6, "no_config_credentials"

    new-instance v7, Landroid/os/UserHandle;

    iget v8, p1, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mProfileId:I

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v6, v7}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v5

    if-nez v5, :cond_3

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    # getter for: Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;->access$2800(Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setVisibility(I)V

    :cond_0
    return-object p3

    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1

    :cond_3
    move v3, v4

    goto :goto_2
.end method

.method private refreshUI()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mAlertDialog:Landroid/app/AlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mCertDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mCertDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mCertDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mCertDialog:Landroid/app/Dialog;

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    return-void
.end method

.method private showCertDialog(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V
    .locals 27

    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v7, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v23, 0x10405ce

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/TrustedCredentialsSettings;->addCertChain(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    new-instance v5, Landroid/widget/ArrayAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    const v24, 0x7f0401d3

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v21

    invoke-direct {v5, v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v23, 0x1090009

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    new-instance v20, Landroid/widget/Spinner;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    new-instance v16, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v23, -0x2

    const/16 v24, -0x2

    move-object/from16 v0, v16

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TrustedCredentialsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0d03d1

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TrustedCredentialsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0d002a

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TrustedCredentialsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0d0029

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    new-instance v23, Lcom/android/settings/TrustedCredentialsSettings$3;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/settings/TrustedCredentialsSettings$3;-><init>(Lcom/android/settings/TrustedCredentialsSettings;Ljava/util/ArrayList;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    new-instance v12, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v12, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v17, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v23, -0x1

    const/16 v24, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TrustedCredentialsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0d03d2

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v19, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v23

    move/from16 v3, v19

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/4 v14, 0x0

    :goto_0
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v14, v0, :cond_1

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    if-eqz v14, :cond_0

    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v12, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v7, v12}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v23, 0x104000a

    new-instance v24, Lcom/android/settings/TrustedCredentialsSettings$4;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/TrustedCredentialsSettings$4;-><init>(Lcom/android/settings/TrustedCredentialsSettings;)V

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v7, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    const-string v23, "TrustedCredentialsSettings"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "showCertDialog() view size : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v23

    if-lez v23, :cond_7

    const v23, 0x1020405

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v11, :cond_3

    invoke-virtual {v6, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    instance-of v0, v10, Landroid/widget/TextView;

    move/from16 v23, v0

    if-eqz v23, :cond_2

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TrustedCredentialsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0900d2

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getColor(I)I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v15

    const v23, 0x7f0401e7

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v15, v0, v6, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TrustedCredentialsSettings;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v23, v0

    const-string v24, "no_config_credentials"

    new-instance v25, Landroid/os/UserHandle;

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mProfileId:I

    move/from16 v26, v0

    invoke-direct/range {v25 .. v26}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual/range {v23 .. v25}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v23

    if-nez v23, :cond_4

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->getInstance(Landroid/content/Context;)Lcom/sec/enterprise/knox/certificate/CertificatePolicy;

    move-result-object v13

    # getter for: Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mDeleted:Z
    invoke-static/range {p1 .. p1}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$000(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Z

    move-result v23

    if-eqz v23, :cond_5

    if-eqz v13, :cond_5

    # getter for: Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mAlias:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$3200(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->isCaCertificateDisabled(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_5

    const/16 v23, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_5
    # getter for: Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mDeleted:Z
    invoke-static/range {p1 .. p1}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$000(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Z

    move-result v23

    if-nez v23, :cond_6

    invoke-virtual {v13}, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->isUserRemoveCertificatesAllowed()Z

    move-result v23

    if-nez v23, :cond_6

    const/16 v23, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_6
    # getter for: Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mTab:Lcom/android/settings/TrustedCredentialsSettings$Tab;
    invoke-static/range {p1 .. p1}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$100(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Lcom/android/settings/TrustedCredentialsSettings$Tab;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    # invokes: Lcom/android/settings/TrustedCredentialsSettings$Tab;->getButtonLabel(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)I
    invoke-static {v0, v1}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->access$3300(Lcom/android/settings/TrustedCredentialsSettings$Tab;Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)I

    move-result v23

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    new-instance v23, Lcom/android/settings/TrustedCredentialsSettings$5;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/settings/TrustedCredentialsSettings$5;-><init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/settings/TrustedCredentialsSettings;->mCertDialog:Landroid/app/Dialog;

    return-void
.end method

.method private showtConfirmDialog(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    # getter for: Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mTab:Lcom/android/settings/TrustedCredentialsSettings$Tab;
    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$100(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Lcom/android/settings/TrustedCredentialsSettings$Tab;

    move-result-object v3

    # invokes: Lcom/android/settings/TrustedCredentialsSettings$Tab;->getButtonConfirmation(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)I
    invoke-static {v3, p1}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->access$3500(Lcom/android/settings/TrustedCredentialsSettings$Tab;Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v3, 0x1040013

    new-instance v4, Lcom/android/settings/TrustedCredentialsSettings$6;

    invoke-direct {v4, p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$6;-><init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v3, 0x1040009

    new-instance v4, Lcom/android/settings/TrustedCredentialsSettings$7;

    invoke-direct {v4, p0}, Lcom/android/settings/TrustedCredentialsSettings$7;-><init>(Lcom/android/settings/TrustedCredentialsSettings;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mAlertDialog:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mEdmRefreshUiReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "edm.intent.action.REFRESH_UI"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v3, "com.samsung.permission.mdm.MDM_REFRESH_CREDENTIAL_UI_INTERNAL"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0401e8

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    sget-object v0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->SYSTEM:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    invoke-direct {p0, v0}, Lcom/android/settings/TrustedCredentialsSettings;->addTab(Lcom/android/settings/TrustedCredentialsSettings$Tab;)V

    sget-object v0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->USER:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    invoke-direct {p0, v0}, Lcom/android/settings/TrustedCredentialsSettings;->addTab(Lcom/android/settings/TrustedCredentialsSettings$Tab;)V

    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "com.android.settings.TRUSTED_CREDENTIALS_USER"

    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    sget-object v1, Lcom/android/settings/TrustedCredentialsSettings$Tab;->USER:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    # getter for: Lcom/android/settings/TrustedCredentialsSettings$Tab;->mTag:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->access$300(Lcom/android/settings/TrustedCredentialsSettings$Tab;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setElevation(F)V

    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings;->setTabViewTts()V

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method public onDestroy()V
    .locals 4

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings;->mAliasLoaders:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;

    invoke-virtual {v0, v3}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->cancel(Z)Z

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings;->mAliasOperation:Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings;->mAliasOperation:Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;

    invoke-virtual {v2, v3}, Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;->cancel(Z)Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings;->mAliasOperation:Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsSettings;->closeKeyChainConnections()V

    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/TrustedCredentialsSettings;->mEdmRefreshUiReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mInForeground:Z

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mInForeground:Z

    iget-boolean v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mRefreshUI:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsSettings;->refreshUI()V

    :cond_0
    return-void
.end method

.method public setTabViewTts()V
    .locals 9

    iget-object v4, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v4, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x1020016

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0a0cc8

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    add-int/lit8 v8, v1, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/TrustedCredentialsSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
