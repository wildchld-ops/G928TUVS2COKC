.class final enum Lcom/android/settings/TrustedCredentialsSettings$Tab;
.super Ljava/lang/Enum;
.source "TrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Tab"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/TrustedCredentialsSettings$Tab;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/TrustedCredentialsSettings$Tab;

.field public static final enum SYSTEM:Lcom/android/settings/TrustedCredentialsSettings$Tab;

.field public static final enum USER:Lcom/android/settings/TrustedCredentialsSettings$Tab;


# instance fields
.field private final mExpandableList:I

.field private final mLabel:I

.field private final mList:I

.field private final mProgress:I

.field private final mStatus:Z

.field private final mTag:Ljava/lang/String;

.field private final mText:I

.field private final mView:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/android/settings/TrustedCredentialsSettings$Tab;

    const-string v1, "SYSTEM"

    const/4 v2, 0x0

    const-string v3, "system"

    const v4, 0x7f0a0cc0

    const v5, 0x7f10043d

    const v6, 0x7f10043e

    const v7, 0x7f10043f

    const v8, 0x7f100440

    const v9, 0x7f100441

    const/4 v10, 0x1

    invoke-direct/range {v0 .. v10}, Lcom/android/settings/TrustedCredentialsSettings$Tab;-><init>(Ljava/lang/String;ILjava/lang/String;IIIIIIZ)V

    sput-object v0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->SYSTEM:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    new-instance v0, Lcom/android/settings/TrustedCredentialsSettings$Tab;

    const-string v1, "USER"

    const/4 v2, 0x1

    const-string v3, "user"

    const v4, 0x7f0a0cc1

    const v5, 0x7f100442

    const v6, 0x7f100443

    const v7, 0x7f100444

    const v8, 0x7f100445

    const v9, 0x7f100446

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Lcom/android/settings/TrustedCredentialsSettings$Tab;-><init>(Ljava/lang/String;ILjava/lang/String;IIIIIIZ)V

    sput-object v0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->USER:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/settings/TrustedCredentialsSettings$Tab;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/settings/TrustedCredentialsSettings$Tab;->SYSTEM:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/settings/TrustedCredentialsSettings$Tab;->USER:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->$VALUES:[Lcom/android/settings/TrustedCredentialsSettings$Tab;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;IIIIIIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIIIIIZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mTag:Ljava/lang/String;

    iput p4, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mLabel:I

    iput p5, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mView:I

    iput p6, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mProgress:I

    iput p7, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mText:I

    iput p8, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mList:I

    iput p9, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mExpandableList:I

    iput-boolean p10, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mStatus:Z

    return-void
.end method

.method static synthetic access$1800(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mProgress:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mText:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/settings/TrustedCredentialsSettings$Tab;Landroid/security/IKeyChainService;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->getAliases(Landroid/security/IKeyChainService;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/settings/TrustedCredentialsSettings$Tab;Landroid/security/IKeyChainService;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->deleted(Landroid/security/IKeyChainService;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/TrustedCredentialsSettings$Tab;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/settings/TrustedCredentialsSettings$Tab;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mStatus:Z

    return v0
.end method

.method static synthetic access$3300(Lcom/android/settings/TrustedCredentialsSettings$Tab;Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->getButtonLabel(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/android/settings/TrustedCredentialsSettings$Tab;Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->getButtonConfirmation(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mView:I

    return v0
.end method

.method static synthetic access$4000(Lcom/android/settings/TrustedCredentialsSettings$Tab;ZLcom/android/settings/TrustedCredentialsSettings$CertHolder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->postOperationUpdate(ZLcom/android/settings/TrustedCredentialsSettings$CertHolder;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mLabel:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mExpandableList:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mList:I

    return v0
.end method

.method private deleted(Landroid/security/IKeyChainService;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    sget-object v1, Lcom/android/settings/TrustedCredentialsSettings$9;->$SwitchMap$com$android$settings$TrustedCredentialsSettings$Tab:[I

    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-interface {p1, p2}, Landroid/security/IKeyChainService;->containsCaAlias(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :pswitch_1
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getAliases(Landroid/security/IKeyChainService;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/security/IKeyChainService;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/util/ParcelableString;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/android/settings/TrustedCredentialsSettings$9;->$SwitchMap$com$android$settings$TrustedCredentialsSettings$Tab:[I

    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-interface {p1}, Landroid/security/IKeyChainService;->getSystemCaAliases()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    invoke-interface {p1}, Landroid/security/IKeyChainService;->getUserCaAliases()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getButtonConfirmation(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)I
    .locals 2

    sget-object v0, Lcom/android/settings/TrustedCredentialsSettings$9;->$SwitchMap$com$android$settings$TrustedCredentialsSettings$Tab:[I

    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    # getter for: Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mDeleted:Z
    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$000(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0a0cc5

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0a0cc6

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0a0cc7

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getButtonLabel(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)I
    .locals 2

    sget-object v0, Lcom/android/settings/TrustedCredentialsSettings$9;->$SwitchMap$com$android$settings$TrustedCredentialsSettings$Tab:[I

    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    # getter for: Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mDeleted:Z
    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$000(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0a0cc3

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0a0cc2

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0a0cc4

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private postOperationUpdate(ZLcom/android/settings/TrustedCredentialsSettings$CertHolder;)V
    .locals 1

    if-eqz p1, :cond_2

    # getter for: Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mTab:Lcom/android/settings/TrustedCredentialsSettings$Tab;
    invoke-static {p2}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$100(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Lcom/android/settings/TrustedCredentialsSettings$Tab;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mStatus:Z

    if-eqz v0, :cond_1

    # getter for: Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mDeleted:Z
    invoke-static {p2}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$000(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # setter for: Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mDeleted:Z
    invoke-static {p2, v0}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$002(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;Z)Z

    :goto_1
    # getter for: Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mAdapter:Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;
    invoke-static {p2}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$200(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;->notifyDataSetChanged()V

    :goto_2
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    # getter for: Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mAdapter:Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;
    invoke-static {p2}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$200(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;->remove(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V

    goto :goto_1

    :cond_2
    # getter for: Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mAdapter:Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;
    invoke-static {p2}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$200(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;->load()V

    goto :goto_2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/TrustedCredentialsSettings$Tab;
    .locals 1

    const-class v0, Lcom/android/settings/TrustedCredentialsSettings$Tab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/TrustedCredentialsSettings$Tab;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/TrustedCredentialsSettings$Tab;
    .locals 1

    sget-object v0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->$VALUES:[Lcom/android/settings/TrustedCredentialsSettings$Tab;

    invoke-virtual {v0}, [Lcom/android/settings/TrustedCredentialsSettings$Tab;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/TrustedCredentialsSettings$Tab;

    return-object v0
.end method
